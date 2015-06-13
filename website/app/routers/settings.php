<?php
	$app->get ( '/settings', function () use($app) {
		$app->render ( 'settings.twig' );
	} )->name ( 'settings' );
?>