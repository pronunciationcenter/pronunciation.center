<?php
	$app->get ( '/tips', function () use($app) {
		$app->render ( 'tips.twig' );
	} )->name ( 'tips' );
?>