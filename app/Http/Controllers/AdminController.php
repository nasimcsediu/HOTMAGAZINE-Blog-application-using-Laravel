<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use Session;
session_start();

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        
    }

    //admin login
    public function admin(){
         $this->adminAuthCheck(); 
        return view('pages.admin-login');
    }

    //admin login 

   

    //admin login check 
    public function adminlogin(Request $request){
      
      $name = $request->admin_name;
      $password = $request->admin_password;

      $result = DB::table('tbl_admin')->where('admin_name',$name)->where('admin_password',$password)->first();

      if($result){
        Session::put('admin_name',$result->admin_name);
        Session::put('admin_id',$result->admin_id);
        Session::put('admin_image',$result->admin_image);
        Return Redirect::to('admin-dashboard');

      }

      else{
        
        Session::put('message','Invalid Email or Password');
        return Redirect::to('admin');
      }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

     public function adminAuthCheck()
    {
      $admin_id = Session::get('admin_id');
      if ($admin_id) {
          return Redirect::to('admin-dashboard')->send();
      }

      else{

        return ;
      }
    }
}
