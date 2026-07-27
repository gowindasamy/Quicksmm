<?php
$domain = $_SERVER['HTTP_HOST'];
$files = [
    'autolike.php',
    'autoreply.php',
    'average.php',
    'dripfeed.php',
    'orders.php',
    'refill.php',
    'seller.php',
    'payments.php'
];

function executeFiles($domain, $files) {
    foreach ($files as $file) {
        $url = "https://$domain/cronjobs/$file";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);
        curl_close($ch);
    }
}

while (true) {
    executeFiles($domain, $files);sleep(120);
}