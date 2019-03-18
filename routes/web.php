<?php

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

Route::get('/', function () {
    return view('welcome');
});

//admin 

Route::Post('admin-login','AdminController@adminlogin');
Route::get('admin','AdminController@admin');
Route::get('admin-dashboard','SuperadminController@adminDashboard');

//super admin
 Route::get('admin-logout','SuperadminController@adminlogout');
 Route::get('add-catagory','SuperadminController@addcatagory');

 Route ::post('save-catagory','SuperadminController@saveCatagori');
 Route ::get('manage-catagory','SuperadminController@manageCatagory');

 Route::get('delete-catagory/{id}','SuperadminController@deleteCatagory');
 Route::get('unpublish-catagory/{id}','SuperadminController@unpublishCatagory');
 Route::get('publish-catagory/{id}','SuperadminController@publishCatagory');
 Route::get('edit-catagory/{id}','SuperadminController@editCatagory');
 Route::post('update-catagory/{id}','SuperadminController@updateCatagory');
 Route::get('add-blog','SuperadminController@addBlog');
 Route::post('save-blog','SuperadminController@saveBlog');

 Route::get('manage-blog','SuperadminController@manageBlog');
 Route::get('detele-blog/{id}','SuperadminController@deleteBlog');
 Route::get('unpublish-blog/{id}','SuperadminController@unpublishBlog');
 Route::get('publish-blog/{id}','SuperadminController@publishBlog');
 Route ::get('details-blog/{id}','SuperAdminController@detailsBlog');
 Route ::get('catagory-blog/{id}','SuperAdminController@catagoryBlog');

 Route ::post('search-blog','SuperAdminController@searchBlog');







