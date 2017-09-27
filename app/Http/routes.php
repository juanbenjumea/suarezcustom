<?php

//Route::group(['middleware' => 'auth'], function () {
Route::group(['prefix' => 'api', 'middleware' => ['cors','lang']], function () {
    Route::post('login','Auth\TokenAuthController@authenticate');
    Route::resource('sports', 'Sport\SportController');
    Route::resource('sports.lines', 'Sport\SportLineController');
    Route::resource('sports.lines.categories', 'Sport\SportLineCategoryController');
    Route::resource('sports.categories', 'Sport\SportCategoryController');
    Route::resource('sports.categories.products', 'Sport\SportCategoryProductController');
    Route::resource('categories', 'Category\CategoryController');
    Route::resource('lines', 'Line\LineController');
    Route::resource('lines.categories', 'Sport\LineCategoryController');
    Route::resource('categories.templates', 'Category\CategoryTemplateController');
    Route::resource('style-guides.designs', 'Design\StyleGuideDesignController');
});

