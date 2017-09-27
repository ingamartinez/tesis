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


Route::get('logout','LoginController@logout');

Route::resource('login','LoginController');

Route::middleware(['role:admin|super-admin|user','auth'])->group(function () {
    Route::get('/', function () {
        return view('layouts.dashboard');
    });
});

Route::middleware(['role:admin|super-admin','auth'])->group(function () {

    Route::post('validar-usuario','UserController@validar')->name('usuario.validar');
    Route::post('restaurar-usuario/{id}','UserController@restore')->name('usuario.restore');
    Route::resource('gestion-usuarios','UserController',['names'=>[
        'store' => 'usuario.store',
        'show' => 'usuario.show',
        'update' => 'usuario.update',
        'delete' => 'usuario.delete'
    ]]);

    Route::post('validar-arduino','ArduinoController@validar')->name('arduino.validar');
    Route::post('restaurar-arduino/{id}','ArduinoController@restore')->name('arduino.restore');
    Route::resource('gestion-arduinos','ArduinoController',['names'=>[
        'store' => 'arduino.store',
        'show' => 'arduino.show',
        'update' => 'arduino.update',
        'delete' => 'arduino.delete'
    ]]);

    Route::post('validar-zona','ZonaController@validar')->name('zona.validar');
    Route::post('restaurar-zona/{id}','ZonaController@restore')->name('zona.restore');
    Route::resource('gestion-zonas','ZonaController',['names'=>[
        'store' => 'zona.store',
        'show' => 'zona.show',
        'update' => 'zona.update',
        'delete' => 'zona.delete'
    ]]);

    Route::get('monitoreo', function () {
        return view('usuario.monitoreo.index');
    });

});