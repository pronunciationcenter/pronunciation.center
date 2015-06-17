<?php
	$app->get ( '/articles', function () use($app) {
		
		//cache
		$app->etag('articles' + time()>>16);   //the id is the ame for 1 day >>16
		$app->expires('+1 day');
		
		$app->render ( 'articles.twig' );
	} )->name ( 'articles' );
?>