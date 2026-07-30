<?php
define('PATH', realpath('.'));
define('SUBFOLDER', false);

define('URL', 'https://quicksmm.onrender.com');
define('STYLESHEETS_URL', '//quicksmm.onrender.com');

date_default_timezone_set('Asia/Kolkata');

error_reporting(0);

return [
  'db' => [
    'name'    => getenv('DB_NAME'),
    'host'    => getenv('DB_HOST'),
    'user'    => getenv('DB_USER'),
    'pass'    => getenv('DB_PASS'),
    'port'    => getenv('DB_PORT'),
    'charset' => 'utf8mb4'
  ]
];
