<?php

use Illuminate\Support\Facades\Auth;
use \Illuminate\Support\Facades\Route;
Auth::routes(['verify' => true]);
Route::group(['prefix'=>'user','middleware' => ['auth','verified']],function(){
    Route::match(['get'],'/dashboard','UserController@dashboard')->name("vendor.dashboard");
    Route::post('/reloadChart','UserController@reloadChart');

    Route::get('/profile','UserController@profile')->name("user.profile.index");
    Route::post('/profile','UserController@profileUpdate')->name("user.profile.update");
    Route::get('/profile/change-password','UserController@changePassword')->name("user.change_password");
    Route::get('/account', 'UserController@account')->name('user.account');
    Route::post('/account', 'UserController@update_account')->name('user.account');
    Route::post('/profile/change-password','UserController@changePasswordUpdate')->name("user.change_password.update");
    Route::get('/booking-history','UserController@bookingHistory')->name("user.booking_history");
    Route::get('/enquiry-report','UserController@enquiryReport')->name("vendor.enquiry_report");
    Route::get('/enquiry-report/bulkEdit/{id}','UserController@enquiryReportBulkEdit')->name("vendor.enquiry_report.bulk_edit");

    Route::post('/wishlist','UserWishListController@handleWishList')->name("user.wishList.handle");
    Route::get('/bookmark','UserWishListController@index')->name("user.wishList.index");
    Route::get('/wishlist/remove','UserWishListController@remove')->name("user.wishList.remove");

    Route::group(['prefix'=>'verification'],function(){
        Route::match(['get'],'/','VerificationController@index')->name("user.verification.index");
        Route::match(['get'],'/update','VerificationController@update')->name("user.verification.update");
        Route::post('/store','VerificationController@store')->name("user.verification.store");
        Route::post('/send-code-verify-phone','VerificationController@sendCodeVerifyPhone')->name("user.verification.phone.sendCode");
        Route::post('/verify-phone','VerificationController@verifyPhone')->name("user.verification.phone.field");
    });

    Route::group(['prefix'=>'/booking'],function(){
        Route::get('{code}/invoice','BookingController@bookingInvoice')->name('user.booking.invoice');
        Route::get('{code}/ticket','BookingController@ticket')->name('user.booking.ticket');
    });

    Route::match(['get'],'/upgrade-vendor','UserController@upgradeVendor')->name("user.upgrade_vendor");

    Route::get('wallet','WalletController@wallet')->name('user.wallet');
    Route::get('wallet/buy','WalletController@buy')->name('user.wallet.buy');
    Route::post('wallet/buyProcess','WalletController@buyProcess')->name('user.wallet.buyProcess');

    Route::get('chat','ChatController@index')->name('user.chat');
});

Route::group(['prefix'=>config('chatify.path'),'middleware'=>'auth'],function(){
    Route::get('/', 'ChatController@iframe')->name(config('chatify.path'));
    Route::post('search','ChatController@search')->name('search');
    Route::post('getContacts', 'ChatController@getContacts')->name('contacts.get');
    Route::post('idInfo', 'ChatController@idFetchData');
});

Route::group(['prefix'=>'profile'],function(){
    Route::match(['get'],'/{id}','ProfileController@profile')->name("user.profile");
    Route::match(['get'],'/{id}/reviews','ProfileController@allReviews')->name("user.profile.reviews");
    Route::match(['get'],'/{id}/services','ProfileController@allServices')->name("user.profile.services");
});

//Newsletter
Route::post('newsletter/subscribe','UserController@subscribe')->name('newsletter.subscribe');


Route::get('/my-plan','PlanController@myPlan')->name('user.plan')->middleware('auth');
Route::get('/plan','PlanController@index')->name('plan');
Route::get('/plan/buy/{id}','PlanController@buy')->name('user.plan.buy')->middleware('auth');
Route::post('/plan/buy/{id}','PlanController@buy')->name('user.plan.buy')->middleware('auth');
Route::get('/single-package','PlanController@single_package')->name('single-package')->middleware('auth');
Route::get('/monthly-package','PlanController@monthly_package')->name('monthly-package')->middleware('auth');
Route::get('/annual-package','PlanController@annual_package')->name('annual-package')->middleware('auth');

