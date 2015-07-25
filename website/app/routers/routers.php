<?php
require_once 'home.php';
require_once 'phonemes.php';
require_once 'settings.php';
require_once 'suggestions.php';
require_once 'tips.php';
require_once 'articles.php';
require_once 'speech.php';
require_once 'admin/home.php';

$app->get('/text-to-speak', function () use($app) {
    $app->redirect('text-to-speech');
});