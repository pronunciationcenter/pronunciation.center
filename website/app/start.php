<?php
require_once __DIR__ . '/../vendor/autoload.php';

$config = require_once __DIR__ . '/config.php';

/**
 * Settings**********************************************
 */

// Set the mode
$app = new \Slim\Slim(array(
    'view' => new \Slim\Views\Twig(),
    'mode' => $config['mode']
));

// Only invoked if mode is "production" or "development"
$app->configureMode($config['mode'], function () use($app, $config) {
    $mode = $config['mode'];
    $view = $app->view();
    $view->parserOptions = array(
        'debug' => $config[$mode]['debug'],
        'cache' => $config['view']['cache_path']
    );
    
    $app->config($config[$mode]);
});

/**
 * Views************************************************
 */
$view = $app->view();
$view->setTemplatesDirectory($config['view']['templates_path']);
$view->parserExtensions = array(
    new \Slim\Views\TwigExtension()
);

/**
 * Database
 */
$app->container->singleton('db', function () use($config) {
    return new PDO($config['dbstring'], $config['dbusername'], $config['dbpassword']);
});

/**
 * *Routes************************************************
 */
require_once __DIR__ . '/routers/routers.php';

$app->run();