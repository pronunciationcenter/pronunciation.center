<?php
	$app->get ( '/home', function () use($app) {
		$app->expires('+1 week');
		$app->render ( 'home.twig' );
	} )->name ( 'home' );
	
	$app->get ( '/', function () use($app) {
		$app->redirect('home');
	} );
?>