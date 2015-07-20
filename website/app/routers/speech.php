<?php
$app->get('/text-to-speech', function () use($app) {
    
    // cache
    $app->etag('speech' + time() >> 16); // the id is the ame for 1 day >>16
    $app->expires('+1 day');
    
    $app->render('speech.twig');
})
    ->name('speech');