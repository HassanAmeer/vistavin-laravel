<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\userside\HomeController;
use App\Http\Controllers\userside\PagesByEditorByController;
use App\Http\Controllers\userside\StripeController;
use App\Http\Controllers\userside\pdfController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('signup', function () {
    return view('signup');
})->name('signup');


// without login side
Route::get('/', [HomeController::class, 'home']); 
Route::get('/home', [HomeController::class, 'home'])->name('home'); 
Route::get('/fillreport', [HomeController::class, 'fillreport'])->name('fillreport');
Route::post('/sendcontactusmsg', [HomeController::class, 'sendcontactusmsg'])->name('sendcontactusmsg');
Route::get('/contactus', [PagesByEditorByController::class, 'contactus'])->name('contactus');
Route::get('/privacyPolicy', [PagesByEditorByController::class, 'privacypolicy'])->name('privacyPolicy');
Route::get('/returnpolicy', [PagesByEditorByController::class, 'returnpolicy'])->name('returnpolicy');
// Route::get('/shippingpolicy', [PagesByEditorByController::class, 'shippingpolicy'])->name('shippingpolicy');
Route::get('/terms', [PagesByEditorByController::class, 'terms'])->name('terms');


Route::get('/stripe', [StripeController::class, 'stripeForm'])->name('stripe');
Route::post('/stripe/pay', [StripeController::class, 'processPayment'])->name('stripepay');

Route::get('/downloadpdf', [pdfController::class, 'downloadPdfF'])->name('downloadpdf');
































//////////////////////////////////////////////////////////////////////////
/////////// for clear cache 
Route::get('/clear', function () {
    $run = Artisan::call('config:clear');
    $run = Artisan::call('cache:clear');
    $run = Artisan::call('config:cache');
    $run = Artisan::call('route:clear');

    // Restart the queue worker (if applicable):
    // $run = Artisan::call('queue:restart');
    
    $run = Artisan::call('view:clear');
    return 'Cache Cleard';
});
//////////////////////////////////////////////////////////////////////////