<?php
$app->get('/tips', function () use($app) {
    
    // cache
    $app->etag('tips' + time() >> 16 + 1); // the id is the ame for 1 day >>16
    $app->expires('+1 day');
    
    $app->render('tips.twig');
})
    ->name('tips');