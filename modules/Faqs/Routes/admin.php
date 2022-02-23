<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 7/1/2019
 * Time: 10:02 AM
 */
use Illuminate\Support\Facades\Route;

Route::get('/','FaqsController@index')->name('faqs.admin.index');
Route::get('/create','FaqsController@create')->name('faqs.admin.create');
Route::get('/edit/{id}', 'FaqsController@edit')->name('faqs.admin.edit');
Route::post('/bulkEdit','FaqsController@bulkEdit')->name('faqs.admin.bulkEdit');
Route::post('/store/{id}','FaqsController@store')->name('faqs.admin.store');

Route::get('/category','CategoryController@index')->name('faqs.admin.category.index');
Route::get('/category/getForSelect2','CategoryController@getForSelect2')->name('faqs.admin.category.getForSelect2');
Route::get('/category/edit/{id}','CategoryController@edit')->name('faqs.admin.category.edit');
Route::post('/category/store/{id}','CategoryController@store')->name('faqs.admin.category.store');
Route::post('/category/bulkEdit','CategoryController@bulkEdit')->name('faqs.admin.category.bulkEdit');

Route::get('/tag','TagController@index')->name('faqs.admin.tag.index');
Route::get('/tag/edit/{id}','TagController@edit')->name('faqs.admin.tag.edit');
Route::post('/tag/store/{id}','TagController@store')->name('faqs.admin.tag.store');
Route::post('/tag/bulkEdit','TagController@bulkEdit')->name('faqs.admin.tag.bulkEdit');