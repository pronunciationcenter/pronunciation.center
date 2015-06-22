<?php
$app->get('/home', function () use($app) {
    
    // cache
    $app->etag('home' + time() >> 12); // the id is the ame for 1 hour with >>12
    $app->expires('+1 hour');
    
    $app->render('home.twig');
})
    ->name('home');

$app->get('/', function () use($app) {
    $app->redirect('home');
});