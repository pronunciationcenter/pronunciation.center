<?php
	$app->get ( '/suggestions', function () use($app) {
		$app->render ( 'suggestions.twig' );
	} )->name ( 'suggestions' );
?>