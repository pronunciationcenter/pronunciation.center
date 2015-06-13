<?php
	$app->get ( '/settings', function () use($app) {
		$app->expires('+1 week');
		$app->render ( 'settings.twig' );
	} )->name ( 'settings' );
?>