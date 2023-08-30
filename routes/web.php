<?php

use App\Http\ControllersTagController;
use function Laravel\Prompts\select;
use Illuminate\Support\Facades\Auth;

use UniSharp\LaravelFilemanager\Lfm;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\LocalizationController;

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

Route::get(
    '/localization/{language}',
    [\App\Http\Controllers\LocalizationController::class, 'switch']
)->name('localization.switch');

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [\App\Http\Controllers\BlogController::class, 'home'])->name('blog.home');
Route::get('/post/{slug}', [\App\Http\Controllers\BlogController::class, 'showPostDetail'])->name('blog.posts.detail');
Route::get('/categories', [\App\Http\Controllers\BlogController::class, 'showCategories'])->name('blog.categories');
Route::get('/categories/{slug}', [\App\Http\Controllers\BlogController::class, 'showPostByCategories'])->name('blog.posts.category');
Route::get('/tags', [\App\Http\Controllers\BlogController::class, 'showTags'])->name('blog.tags');
Route::get('/tags/{slug}', [\App\Http\Controllers\BlogController::class, 'showPostsByTag'])->name('blog.posts.tag');
Route::get('/search', [\App\Http\Controllers\BlogController::class, 'searchPosts'])->name('blog.search');

Auth::routes([
    'register' => false
]);

Route::group(['prefix' => 'dashboard', 'middleware' => ['web', 'auth']], function () {
    Route::get('/', [\App\Http\Controllers\DashboardController::class, 'index'])->name('dashboard.index');
    // categories
    Route::get('/categories/select', [\App\Http\Controllers\CategoryController::class, 'select'])->name('categories.select');
    Route::resource('/categories', \App\Http\Controllers\CategoryController::class);
    // tags
    Route::get('/tags/select', [\App\Http\Controllers\TagController::class, 'select'])->name('tags.select');
    Route::resource('/tags', \App\Http\Controllers\TagController::class)->except(['show']);
    // posts
    Route::resource('/posts', \App\Http\Controllers\PostController::class);
    // file manager
    Route::group(['prefix' => 'filemanager'], function () {
        Route::get('/index', [\App\Http\Controllers\FileManagerController::class, 'index'])->name('filemanager.index');
        \UniSharp\LaravelFilemanager\Lfm::routes();
    });
    // Roles
    Route::get('/roles/select', [\App\Http\Controllers\RoleController::class, 'select'])->name('roles.select');
    Route::resource('/roles', \App\Http\Controllers\RoleController::class);
    // Users
    Route::resource('/users', \App\Http\Controllers\UserController::class)->except('show');
});
