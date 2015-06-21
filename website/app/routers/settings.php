<?php
$app->get('/settings', function () use($app) {
    
    $app->etag('settings' + time() >> 19); // the id is the ame for 1 week with >>19
    $app->expires('+2 days');
    
    $app->render('settings.twig');
})
    ->name('settings');