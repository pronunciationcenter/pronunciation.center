<?php
require 'vendor/autoload.php';

$app = new Slim\Slim ();

$app->get ( '/', function () use($app){
	$app->render ( 'index.php' );
})->name('home');

$app->get ( '/ipa', function () use($app) {
	$app->render ( 'ipa.php' );
})->name('ipa');

$app->get ( '/ipa/:id', function ($id) use($app) {
	$app->render ( 'ipa.php', array('id' => $id));
});

$app->get ( '/tips', function () use($app) {
	$app->render ( 'tips.php' );
})->name('tips');

$app->get ( '/suggestions', function () use($app) {
	$app->render ( 'suggestions.php' );
})->name('suggestions');

$app->get ( '/settings', function () use($app) {
	$app->render ( 'settings.php' );
})->name('settings');

$app->run ();
?>
