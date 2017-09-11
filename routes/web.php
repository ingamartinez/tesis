<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('layouts.dashboard');
});

Route::post('validar-usuario','UserController@validar')->name('usuario.validar');
Route::resource('gestion-usuarios','UserController',['names'=>[
    'store' => 'usuario.store'
]]);