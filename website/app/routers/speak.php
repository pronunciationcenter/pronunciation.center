<?php
$app->get('/text-to-speak', function () use($app) {
    
    // cache
    $app->etag('speak' + time() >> 16); // the id is the ame for 1 day >>16
    $app->expires('+1 day');
    
    $app->render('speak.twig');
})
    ->name('speak');