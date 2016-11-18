<?php

//Route::group(['middleware' => 'auth'], function () {
Route::group(['prefix' => 'api', 'middleware' => ['cors','lang']], function () {
    Route::post('login','Auth\TokenAuthController@authenticate');
    Route::resource('sports', 'Sport\SportController');
    Route::resource('sports.lines', 'Sport\SportLineController');
    Route::resource('sports.categories', 'Sport\SportCategoryController');
    Route::resource('sports.categories.products', 'Sport\SportCategoryProductController');
    Route::resource('categories', 'Category\CategoryController');
    Route::resource('lines', 'Sport\LineController');
});

