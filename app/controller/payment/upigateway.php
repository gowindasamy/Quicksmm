<?php
if (!defined('PAYMENT')) {
    http_response_code(404);
    die();
}

$api_key = $methodExtras["APIKey"];
$currentDate = date('d-m-Y'); 

if ($_SERVER["REQUEST_METHOD"] == "GET") {

    if (isset($_GET['client_txn_id']) && isset($_GET['txn_id'])) {

        $transactionId = htmlspecialchars($_GET["txn_id"]);
        $transactionReference = htmlspecialchars($_GET["client_txn_id"]);

        if (empty($transactionId) || empty($transactionReference)) {
            errorExit("Missing data.");
        }

        $paymentDetails = $conn->prepare("SELECT * FROM payments WHERE payment_extra=:transactionReference");
        $paymentDetails->execute([
            "transactionReference" => $transactionReference
        ]);

        if ($paymentDetails->rowCount()) {
            $paymentDetails = $paymentDetails->fetch(PDO::FETCH_ASSOC);

            if (
                !countRow([
                    'table' => 'payments',
                    'where' => [
                        'client_id' => $user['client_id'],
                        'payment_method' => $methodId,
                        'payment_status' => 3,
                        'payment_delivery' => 2,
                        'payment_extra' => $transactionReference
                    ]
                ])
            ) {
                 $postData = [
                    "key" => $api_key,
                    "client_txn_id" => $transactionReference,
                    "txn_date" => $currentDate 
                ];

                $postData = json_encode($postData);

                $curl = curl_init();
                curl_setopt_array($curl, [
                    CURLOPT_URL => 'https://api.ekqr.in/api/check_order_status',
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => '',
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => 'POST',
                    CURLOPT_POSTFIELDS => $postData,
                    CURLOPT_HTTPHEADER => [
                        'Content-Type: application/json'
                    ]
                ]);

                $result = curl_exec($curl);
                curl_close($curl);

                $result = json_decode($result, true);

                $gatewayPaidAmount = $result["data"]["amount"];

                if ($result["status"] == true && $gatewayPaidAmount == floatval($paymentDetails["payment_amount"]) && $result['data']['status'] == 'success') {

                    $paidAmount = floatval($paymentDetails["payment_amount"]);

                    if ($paymentFee > 0) {
                        $fee = ($paidAmount * ($paymentFee / 100));
                        $paidAmount -= $fee;
                    }
                    if ($paymentBonusStartAmount != 0 && $paidAmount > $paymentBonusStartAmount) {
                        $bonus = $paidAmount * ($paymentBonus / 100);
                        $paidAmount += $bonus;
                    }

                    $paidAmount = from_to($currencies_array, $methodCurrency, $settings["site_base_currency"], $paidAmount);

                    $update = $conn->prepare('UPDATE payments SET 
                    client_balance=:balance,
                    payment_status=:status, 
                    payment_delivery=:delivery WHERE payment_id=:id');

                    $update->execute([
                        'balance' => $user["balance"],
                        'status' => 3,
                        'delivery' => 2,
                        'id' => $paymentDetails['payment_id']
                    ]);

                    $balance = $conn->prepare('UPDATE clients SET balance=:balance WHERE client_id=:id');
                    $balance->execute([
                        "balance" => $user["balance"] + $paidAmount,
                        "id" => $user["client_id"]
                    ]);

                    header("Location: " . site_url("addfunds"));

                } else {
                   header("Location: " . site_url("addfunds"));
                   errorExit("Fraudulent activity detected.");
                }

            } else {
                header("Location: " . site_url("addfunds"));
                errorExit("Order ID is already used.");
            }

        } else {
            header("Location: " . site_url("addfunds"));
            errorExit("Order ID not found.");
        }

    } else {
       header("Location: " . site_url("addfunds"));
       errorExit("Payment not successful.");
    }

} else {
    http_response_code(405);
    die();
}

?>