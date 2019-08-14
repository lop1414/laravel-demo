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

    Route::prefix('student')->group(function(){
        Route::get('select', 'Api\StudentController@select');
        Route::get('read/{id}', 'Api\StudentController@read');
        Route::post('create', 'Api\StudentController@create');
        Route::post('update/{id}', 'Api\StudentController@update');
        Route::post('delete/{id}', 'Api\StudentController@delete');
        Route::get('course/{id}', 'Api\StudentController@course');
        Route::post('course_choose/{id}', 'Api\StudentController@course_sync');
    });

});