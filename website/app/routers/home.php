<?php
	$app->get ( '/home', function () use($app) {
		
		//cache
		$app->etag('home' + time()>>19);   //the id is the ame for 1 week with >>19
		$app->expires('+2 days');
		
		$app->render ( 'home.twig' );
		
	} )->name ( 'home' );
	
	$app->get ( '/', function () use($app) {
		$app->redirect('home');
	} );
?>