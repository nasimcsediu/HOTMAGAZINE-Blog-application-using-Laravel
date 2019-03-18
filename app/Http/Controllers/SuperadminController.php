<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use Session;
session_start();
class SuperadminController extends Controller
{

	 public function adminDashboard(){
        $this->AuthCheck();
        return view('pages.admin-home');
    }


    public function adminlogout(){
     Session::put('admin_name','');
     Session::put('admin_id','');
     Session::put('messages','Successful logout !!!');
     return Redirect::to('admin');
    }
// add catagory

    public function addcatagory(){
        $this->AuthCheck();
      return view('pages.add-catagori');
    }


      public function saveCatagori(Request $request){
    
   $data = array();

   $data['catagory_name']        = $request->catagory_name;
   $data['catagory_description'] = $request->catagory_description;
   $data['catagory_status']      = $request->catagory_status;
   DB::table('tbl_catagory')->insert($data);
   Session::put('message','Successful Add Catagory !!');
   return Redirect::to('add-catagory');
    }

    public function manageCatagory(){
        $this->AuthCheck();
     $manageCatagory = DB::table('tbl_catagory')->get();
     $result = view('pages.manage-catagory')->with('allcatagory',$manageCatagory);
     return view('layout.admin-layout')->with('pages.manage-catagory',$result);

    }

    //catagory delete
    public function deleteCatagory($catagory_id){
       DB::table('tbl_catagory')->where('catagory_id',$catagory_id)->delete();
       return Redirect::to('manage-catagory');
    }

    //unpublish catagory 
     public function unpublishCatagory($catagory_id){
       DB::table('tbl_catagory')->where('catagory_id',$catagory_id)->update(['catagory_status'=>0]);
       return Redirect::to('manage-catagory');
     }
    //publish catagory  

     public function publishCatagory($catagory_id){
       DB::table('tbl_catagory')->where('catagory_id',$catagory_id)->update(['catagory_status'=>1]);
          return Redirect::to('manage-catagory');
     }

    //edit catagory 

     public function editCatagory($catagory_id){
         $catagory_edit = DB::table('tbl_catagory')->where('catagory_id',$catagory_id)->first();

        $catagory_manage = view('pages.edit-catagory')->with('catagory_manage_info',$catagory_edit);

        return view('layout.admin-layout')->with('pages.edit-catagory',$catagory_manage);
     }

    //update catagory 

    public function updateCatagory(Request $request, $catagory_id){
    $data = array();

   $data['catagory_name']        = $request->catagory_name;
   $data['catagory_description'] = $request->catagory_description;
   $data['catagory_status']      = $request->catagory_status;
   DB::table('tbl_catagory')->where('catagory_id',$catagory_id)->update($data);
   Session::put('message','Successful update Catagory !!');
   return Redirect::to('manage-catagory');
    }

    //add blog page
    public function addBlog(){
        $allcatagory = DB::table('tbl_catagory')->get();
        $result = view('pages.add-blog')->with('allcatagory_info',$allcatagory);
        return view ('layout.admin-layout')->with('pages.add-blog',$result);
    }

    //save blog 

    public function saveBlog(Request $request){
    
      $data=array();
      $data['blog_name']              = $request->blog_name;
      $data['catagory_id']            = $request->catagory_id;
      $data['blog_short_description'] = $request->blog_short_description;
      $data['blog_long_description']  = $request->blog_long_description;
      $data['publication_status']     = $request->publication_status;
      $data['author_name']            = Session::get('admin_name'); 
 

     /*
        upload File
        */

        $file = $request->file('blog_image');
        $filename= $file->getClientOriginalName();
        //$extention=$file->getClientOriginalExtention();
        $picture  = date('His').$filename;
        $image_url='post-image/'.$picture;
        $destinationPath= base_path().'/public/post-image/';
        $success = $file->move($destinationPath,$picture);
        
           if ($success) {
                
      $data['blog_image']= $image_url;
      DB::table('tbl_blog')->insert($data);
      Session::put('messages','Add Successfull Post !!');
      return Redirect::to('add-blog');
       
            }  

            else{
                $error=$files->getErrorMessage();
            }
    }

    //mange blog page

    public function manageBlog(){

      $manageBlog = DB::table('tbl_blog')->get();
      $result     = view('pages.manage-blog')->with('manage_blog',$manageBlog);
      return view('layout.admin-layout')->with('pages.manage-blog',$result);
    
    }

    

    //delete blog 

    public function deleteBlog($blog_id){
      DB::table('tbl_blog')->where('blog_id',$blog_id)->delete();
      return Redirect::to('manage-blog');
    }
  //unpublish blog

    public function unpublishBlog($blog_id){
     DB::table('tbl_blog')->where('blog_id',$blog_id)->update(['publication_status'=>0]);
     return Redirect::to('manage-blog');
     
    }

    //publish blog
    public function publishblog($blog_id){
    DB::table('tbl_blog')->where('blog_id',$blog_id)->update(['publication_status'=>1]);
     return Redirect::to('manage-blog');
    } 

    //detils blog=========================================
     public function detailsBlog($blog_id){
        $blog = DB::table('tbl_blog')->where('blog_id',$blog_id)->first();
        $data['hit_counter'] = $blog->hit_counter +1;
        DB::table('tbl_blog')->where('blog_id',$blog_id)->update($data);
        $all_blog = view('pages.blog-details')->with('blog',$blog);

        return view('layout.blog-layout')->with('pages.blog-details',$all_blog);
     }


     //catagory blog

     public function catagoryBlog($catagory_id){
      $all_catagory = DB::table('tbl_blog')->where('publication_status',1)->where('catagory_id',$catagory_id)->get();

     $manage_catagory= view('pages.catagory-blog')->with('all_catagory',$all_catagory);
     return view('layout.blog-layout')->with('pages.catagory-blog',$manage_catagory);
     }

     //search blog
     public function searchBlog(Request $request){
      $search_text = $request->search_text;
        $search_blog = DB::table('tbl_blog')->where('publication_status',1)->where('blog_name','like','%'.$search_text.'%')->orderBy('blog_id','desc')->get();

         $blog = view('pages.search-blog')->with('search_blog',$search_blog);

        return view('layout.blog-layout')->with('pages.search-blog',$blog);
     }

   public function AuthCheck()
    {
      $admin_id = Session::get('admin_id');
      if ($admin_id) {
          return;
      }

      else{

        return Redirect::to('admin')->send();
      }
    }

}
