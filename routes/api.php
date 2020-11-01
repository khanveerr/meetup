<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::post('register', 'Auth\RegisterController@register');
Route::post('login', 'Auth\LoginController@user_login');
Route::post('logout', 'Auth\LoginController@user_logout');


Route::group(['middleware' => 'auth:api'], function() {
    Route::get('participants', 'ParticipantController@index');
    Route::get('participants/{participant}', 'ParticipantController@show');
    Route::post('participants', 'ParticipantController@store');
    Route::put('participants/{participant}', 'ParticipantController@update');
    Route::delete('participants/{participant}', 'ParticipantController@delete');
});

