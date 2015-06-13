<?php
	$app->get ( '/tips', function () use($app) {
		$app->expires('+1 hour');
		$app->render ( 'tips.twig' );
	} )->name ( 'tips' );
?>