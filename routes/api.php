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

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::group(['namespace' => 'Api'], function () {
    Route::post('api/signup', 'ApiController@registerUser');
//    Route::post('users/login', 'AuthController@login');
//    Route::post('users', 'AuthController@register');


//    Route::match(['put', 'patch'], 'user', 'UserController@update');

//    Route::get('profiles/{user}', 'ProfileController@show');
//    Route::post('profiles/{user}/follow', 'ProfileController@follow');
//    Route::delete('profiles/{user}/follow', 'ProfileController@unFollow');
//
//    Route::get('articles/feed', 'FeedController@index');
//    Route::post('articles/{article}/favorite', 'FavoriteController@add');
//    Route::delete('articles/{article}/favorite', 'FavoriteController@remove');
//
//    Route::resource('articles', 'ArticleController', [
//        'except' => [
//            'create', 'edit'
//        ]
//    ]);
//
//    Route::resource('articles/{article}/comments', 'CommentController', [
//        'only' => [
//            'index', 'store', 'destroy'
//        ]
//    ]);
//
//    Route::get('tags', 'TagController@index');

});