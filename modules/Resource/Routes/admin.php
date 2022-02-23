<?php
use Illuminate\Support\Facades\Route;

// Route::match(['get','post'],'/','ResourceController@index')->name('review.admin.index');
Route::get('/', 'ResourceController@index')->name('resource.admin.index');
Route::get('/create', 'ResourceController@create')->name('resource.admin.create');
Route::post('/store/{id}', 'ResourceController@store')->name('resource.admin.store');
Route::get('/edit/{id}', 'ResourceController@edit')->name('resource.admin.edit');
Route::post('/bulkEdit','ResourceController@bulkEdit')->name('resource.admin.bulkEdit');
