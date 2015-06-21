<?php
return array(
    'mode' => 'development', // or development
    
    'default_lang' => 'en',
    
    'development' => [
        'log.enable' => false,
        'debug' => true
    ],
    
    'production' => [
        'log.enable' => true,
        'debug' => false
    ],
    
    'view' => [
        'cache_path' => __DIR__ . '/../cache/',
        'templates_path' => __DIR__ . '/templates/'
    ],
    
    'dbstring' => 'mysql:host=127.0.0.1;dbname=pronunciationDB2;charset=utf8',
    'dbusername' => 'root',
    'dbpassword' => ''
);