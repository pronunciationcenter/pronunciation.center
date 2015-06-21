<?php
require_once 'home.php';
require_once 'ipa.php';
require_once 'settings.php';
require_once 'suggestions.php';
require_once 'tips.php';
require_once 'articles.php';

/*
 * Deprecated routers
 */
$app->get('/pronunciation-tips', function () use($app) {
    $app->redirect('tips');
});

$app->get('/suggestions', function () use($app) {
    $app->redirect('suggested-sites');
});

$app->get('/ipa', function () use($app) {
    $app->redirect('international-phonetic-alphabet');
});