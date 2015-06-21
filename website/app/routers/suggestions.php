<?php
$app->get('/suggested-sites', function () use($app) {
    
    $app->etag('suggestions' + time() >> 16); // the id is the ame for 1 day with >>16
    $app->expires('+1 day');
    
    $app->render('suggestions.twig');
})
    ->name('suggestions');