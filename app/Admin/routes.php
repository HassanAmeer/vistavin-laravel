<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('categoriesmodels', categoriescontroller::class);
    $router->resource('contactus', contactUsController::class);
    $router->resource('settings', settingsController::class);
    $router->resource('pagesDesigns', PagesDesignController::class);
    $router->resource('downloaded-docs', downloadedDocController::class);
    $router->resource('vehicle-history-reports', vehicleHistoryReportsController::class);
    $router->resource('additional-histories', additionalHistoryController::class);
    $router->resource('title-histories', titleHistoryController::class);
    $router->resource('ownership-histories', ownershipHistoryController::class);
    $router->resource('owners-lists', ownersListController::class);
    $router->resource('glossaries', glossaryController::class);
    $router->resource('report-settings', reportSettingController::class);
    $router->resource('pagesDesigns', PagesDesignController::class);
    $router->resource('users-msgs', UsersMsgsController::class);
    
});