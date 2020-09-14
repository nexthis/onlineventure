<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

// $router->get('/', function () use ($router) {
//     return view("home");
// });
$router->group([ 'prefix' => 'api'],  function ($router) {
    $router->get('/articles','ArticlesController@index');
    $router->get('/article/{id}','ArticlesController@show');
    $router->get('/articles/user/{name}','ArticlesController@showByName');
    $router->get('/articles/most-polular-of-the-week','ArticlesController@topOfTheWeek');

    $router->post('/login','AuthController@authenticate');

    $router->group([ 'middleware' => 'auth'],  function ($router) {
        $router->post('/article','ArticlesController@store');
        $router->put('/article','ArticlesController@update');
        $router->delete('/article/{id}','ArticlesController@destroy');
    });
});