<?php

use App\Http\Controllers\BoleiasController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;
use App\Models\User;

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



$users = User::all();

Route::get('/', function () {
    return view('welcome');
});


Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::group(['middleware' => 'auth'], function () {

    Route::resource('users', \App\Http\Controllers\UsersController::class);

    Route::get('boleias/minhas', [BoleiasController::class, 'minhas'])->name('boleias.minhas');

    Route::get('boleias/minhas/create', [BoleiasController::class, 'createminhas'])->name('boleias.createminhas');
    Route::post('boleias/minhas', [BoleiasController::class, 'storeminhas'])->name('boleias.storeminhas');

    Route::get('boleias/minhas/{boleia}', [BoleiasController::class, 'showminhas'])->name('boleias.showminhas');

    Route::get('boleias/minhas/{boleia}/editminhas', [BoleiasController::class, 'editminhas'])->name('boleias.editminhas');
    Route::put('boleias/minhas/{boleia}', [BoleiasController::class, 'updateminhas'])->name('boleias.updateminhas');

    Route::delete('boleias/minhas/{boleia}', [BoleiasController::class, 'destroyminhas'])->name('boleias.destroyminhas');

    Route::resource('boleias', \App\Http\Controllers\BoleiasController::class);
    //Route::get('boleias/', [BoleiasController::class, 'minhas'])->name('teacher.minhas');
    /*Route::get('boleias/minhas', function()
        {
            return view('boleias.minhas');
        });*/
});

//Route::get('/boleias/minhas', BoleiasController::class)->name('boleias.minhas');

