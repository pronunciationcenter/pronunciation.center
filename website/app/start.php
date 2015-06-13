<?php

	require_once __DIR__.'/../vendor/autoload.php';
	
	/**
	 * Settings**********************************************
	 */
	// Set the mode
	$app = new \Slim\Slim(array(
			'view' => new \Slim\Views\Twig(),
			'mode' => 'development',
	));
	
	// Only invoked if mode is "production"
	$app->configureMode ( 'production', function () use($app) {
		$view = $app->view();
		$view->parserOptions = array(
				'debug' => false,
				'cache' => __DIR__.'/../cache/'
		);
		$app->config ( array (
				'log.enable' => true,
				'debug' => false 
		) );
	} );
	
	// Only invoked if mode is "development"
	$app->configureMode ( 'development', function () use($app) {
		$view = $app->view();
		$view->parserOptions = array(
				'debug' => true,
				'cache' => __DIR__.'/../cache/'
		);
		$app->config ( array (
				'log.enable' => false,
				'debug' => true 
		) );
	} );
	
	/**
	 * Views************************************************
	 */
	$view = $app->view();
	$view->setTemplatesDirectory(__DIR__.'/templates/');
	$view->parserExtensions = array(
			new \Slim\Views\TwigExtension()
	);
	
	/**
	 * Database
	 */
	$app->container->singleton('db', function(){
		return new PDO('mysql:host=127.0.0.1;dbname=pronunciationDB;charset=utf8','root','');
	});
	
	/**
	 **Routes************************************************
	 */
	require_once __DIR__.'/routers/routers.php';
	
	$app->run ();
?>