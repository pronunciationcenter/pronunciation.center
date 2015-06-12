<?php

	require_once '/../vendor/autoload.php';
	require_once '/config/config.php';
	
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
		$app->config ( array (
				'log.enable' => true,
				'debug' => false 
		) );
	} );
	
	// Only invoked if mode is "development"
	$app->configureMode ( 'development', function () use($app) {
		$app->config ( array (
				'log.enable' => false,
				'debug' => true 
		) );
	} );
	
	/**
	 * Views************************************************
	 */
	$view = $app->view();
	$view->parserOptions = array(
		'debug' => true,
		'cache' => __DIR__.'/cache/'
	);
	$view->setTemplatesDirectory(__DIR__.'/templates/');
	$view->parserExtensions = array(
			new \Slim\Views\TwigExtension()
	);
/* 	$twig = $app->view()->getEnvironment();
	$lexer = new Twig_Lexer($twig,array(
			'tag_block' => array('{','}'),
			'tag_variable' => array('{{','}}')
	));
	$twig->setLexer($lexer); */
	
	/**
	 * Database
	 */
	$app->container->singleton('db', function(){
		return new PDO('mysql:host=127.0.0.1;dbname=pronunciationDB;charset=utf8','root','');
		//return new PDO('mysql:host=127.0.0.1;dbname=pronunciationDB;charset=utf8','root','password');
	});
	
	/**
	 **Routes************************************************
	 */
	require_once '/routers/routers.php';
	
	$app->run ();
?>