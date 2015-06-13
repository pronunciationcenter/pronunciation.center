<?php
	$app->get ( '/suggestions', function () use($app) {
		$app->expires('+1 hour');
		$app->render ( 'suggestions.twig' );
	} )->name ( 'suggestions' );
?>