<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TaskController;
use App\Http\Controllers\ArchivedTaskController;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


#Route::resource('tasks', TaskController::class);
#Route::get('/tasks', [TaskController::class, 'index'])->name('tasks.index');
#Route::get('/tasks/create', [TaskController::class, 'create'])->name('tasks.create');
/*
Route::middleware('auth')->group(function() {
    Route::resource('tasks', TaskController::class)->except(['show']);
});
*/

Route::middleware('auth')->group(function() {
    Route::resource('tasks', TaskController::class);
});

Route::middleware('auth')->group(function() {
    Route::get('/archive', [ArchivedTaskController::class, 'index'])->name('archive.index');
    Route::get('/archive/{archivedTask}/reopen', [ArchivedTaskController::class, 'reopen'])->name('archive.reopen');
});








