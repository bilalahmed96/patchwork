<?php

use Illuminate\Support\Facades\Route;

Route::get('/','BrandsController@index')->name('brand.admin.index');
Route::get('/create','BrandsController@create')->name('brand.admin.create');
Route::get('/edit/{id}', 'BrandsController@edit')->name('brand.admin.edit');
Route::post('/bulkEdit','BrandsController@bulkEdit')->name('brand.admin.bulkEdit');
Route::post('/store/{id}','BrandsController@store')->name('brand.admin.store');
// Route::get('/getForSelect2','JobController@getForSelect2')->name('job.admin.getForSelect2');


