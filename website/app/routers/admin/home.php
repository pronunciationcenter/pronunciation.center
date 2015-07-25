<?php
$app->get('/home-admin', function () use($app) {
    
    // cache
    $app->etag('home-admin' + time() >> 12); // the id is the ame for 1 hour with >>12
    $app->expires('+1 hour');
    
    $app->render('admin/home.twig');
})
    ->name('home-admin');