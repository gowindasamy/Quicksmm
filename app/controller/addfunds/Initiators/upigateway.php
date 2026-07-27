<?php
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://paymentpg1.com/order/create',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "token": "06cd18-df25af-b823d1-c5f0e4-656ee3",
    "order_id": "12319871231",
    "txn_amount": 5,
    "txn_note": "Pay For UPI Gateway",
    "product_name": "Redmi Note 12 Pro",
    "customer_name": "Dummy",
    "customer_mobile": "9999999999",
    "customer_email": "customer@gmail.com",
    "callback_url": "https://your-domain/callback.php"
}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;

?>