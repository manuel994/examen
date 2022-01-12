<?php

use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('empleados', 'EmpleadosController');
Route::resource('calculo', 'CalculoSalarioController');
Route::get('/empleados/{id}/eliminar', 'EmpleadosController@delete')->name('empleados.delete');
Route::get('/calculo/{id}/salario', 'CalculoSalarioController@salario')->name('calculo.salario');
Route::get('/calculo/{id}/puesto', 'CalculoSalarioController@puesto')->name('calculo.puesto');
Route::get('/calculo/{id}/estatus', 'CalculoSalarioController@estatus')->name('calculo.estatus');
