<?php
use Illuminate\Support\Facades\Route;

Route::group(['prefix'=>config('candidate.candidate_route_prefix')],function(){
    Route::get('/'.config('candidate.candidate_category_route_prefix').'/{slug}', 'CategoryController@index')->name('candidate.category.index');
    Route::get('/','CandidateController@index')->name('candidate.index');// Candidates Page
    Route::get('/{slug}','CandidateController@detail')->name('candidate.detail');// Detail
    Route::post('/contact/store','CandidateController@storeContact')->name("candidate.contact.store");
});

Route::get('/my-resumes', 'ResumeController@index')->name('resumes');
Route::get('/resume/create', 'ResumeController@create')->name('resume.create');
Route::post('/resume/store', 'ResumeController@store')->name('resume.store');
Route::get('/resume/edit/{id}', 'ResumeController@edit')->name('resume.edit');
Route::post('/resume/update/{id}', 'ResumeController@update')->name('resume.update');
Route::post('/resume/delete/{id}', 'ResumeController@delete')->name('resume.delete');

//Route::get('category/{slug}','CategoryController@index')->name('category.index');// Detail

