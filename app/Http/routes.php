<?php

//Route::group(['middleware' => 'auth'], function () {
Route::group(['prefix' => 'api', 'middleware' => 'cors'], function () {
    Route::resource('users', 'UsersController', ['except' => ['create', 'edit']]);
    Route::post('login','Auth\TokenAuthController@authenticate');
});
    Route::resource('sport', 'Product\SportController');
    Route::resource('category', 'Product\CategoryController');