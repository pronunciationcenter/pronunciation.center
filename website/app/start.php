<?php

	require_once __DIR__.'/../vendor/autoload.php';
	require_once __DIR__.'/config/config.php';
	require_once __DIR__.'/dao/connection.php';
	
	use Slim\View;
	
	
	/**
	 * Settings**********************************************
	 */
	// Set the mode
	$app = new \Slim\Slim ( array (
			// 'mode' => 'production'
			'mode' => 'development'
	) );
	
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
	 * Option 2: array('templates.path' => __DIR__.'/templates/')
	 */
 	$view = $app->view();
	$view->setTemplatesDirectory(__DIR__.'/templates/');
	
	/**
	 **routes************************************************
	 */
	$app->get ( '/', function () use($app) {
		$app->render ( 'index.php' );
	} )->name ( 'home' );
	
	$app->get ( '/ipa', function () use($app) {
		$app->render ( 'ipa.php' );
	} )->name ( 'ipa' );
	
	$app->get ( '/ipa/:id', function ($id) use($app) {
		$app->render ( 'ipa.php', array (
				'id' => $id 
		) );
	} );
	
	$app->get ( '/tips', function () use($app) {
		$app->render ( 'tips.php' );
	} )->name ( 'tips' );
	
	$app->get ( '/suggestions', function () use($app) {
		$app->render ( 'suggestions.php' );
	} )->name ( 'suggestions' );
	
	$app->get ( '/settings', function () use($app) {
		$app->render ( 'settings.php' );
	} )->name ( 'settings' );
	
	$app->run ();

?>