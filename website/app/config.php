<?php
return array (
		'mode' => 'development', // or production
		
		'development' => [ 
				'log.enable' => false,
				'debug' => true 
		],
		
		'prodution' => [ 
				'log.enable' => true,
				'debug' => false 
		],
		
		'view' => [
				'cache_path' =>  __DIR__.'/../cache/',
				'templates_path' => __DIR__.'/templates/'
		],
		
		'dbstring' => 'mysql:host=127.0.0.1;dbname=pronunciationDB;charset=utf8', 
		'dbusername' => 'root',
		'dbpassword' => '',
);
?>