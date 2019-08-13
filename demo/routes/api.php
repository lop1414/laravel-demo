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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//登录
Route::post('login', 'Api\PassportController@login');
//注册
Route::post('register', 'Api\PassportController@register');
//需要认证的资源Api组
Route::group(['middleware' => 'auth:api'], function() {
    Route::any('get-details', 'Api\PassportController@getDetails');
});