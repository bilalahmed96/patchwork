<?php
use Illuminate\Support\Facades\Route;

Route::group(['prefix'=>config('faqs.faqs_route_prefix')],function(){
    Route::get('/'.config('faqs.faqs_category_route_prefix').'/{slug}', 'CategoryFaqsController@index')->name('faqs.category.index');
    Route::get('/'.config('faqs.faqs_tag_route_prefix').'/{slug}', 'TagFaqsController@index')->name('faqs.tag.index');
    Route::get('/','FaqsController@index')->name('faqs.index');// News Page
    Route::get('/{slug}','FaqsController@detail')->name('faqs.detail');// Detail
});
