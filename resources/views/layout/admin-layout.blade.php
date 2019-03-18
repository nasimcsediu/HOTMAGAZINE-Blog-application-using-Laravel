<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
   <meta charset="utf-8" />
   <title>Metro Lab</title>
   <meta content="width=device-width, initial-scale=1.0" name="viewport" />
   <meta content="Nashim Hasan" name="Nashim" />
   <meta content="Nashim" name="author" />
   <link href="{{asset('admin-design/assets/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" />
   <link href="{{asset('admin-design/assets/bootstrap/css/bootstrap-responsive.min.css')}}" rel="stylesheet" />
   <link href="{{asset('admin-design/assets/bootstrap/css/bootstrap-fileupload.css')}}" rel="stylesheet" />
   <link href="{{asset('admin-design/assets/font-awesome/css/font-awesome.css')}}" rel="stylesheet" />
   <link href="{{asset('admin-design/css/style.css')}}" rel="stylesheet" />
   <link href="{{asset('admin-design/css/style-responsive.css')}}" rel="stylesheet" />
   <link href="{{asset('admin-design/css/style-default.css')}}" rel="stylesheet" id="style_color" />
   <link href="{{asset('admin-design/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css')}}" rel="stylesheet" />
   <link href="{{asset('admin-design/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css')}}" rel="stylesheet" type="text/css" media="screen"/>

   <script src="https://cdn.ckeditor.com/4.11.3/standard/ckeditor.js"></script>
   <!--check delete function -->
   <script type="text/javascript">
     
     function checkDelete(){
     chk=confirm('Are you suru to Delete this');

     if (chk) {
      return true;
     }
     else{
      return false;
     }

     }
   </script>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-top">
   <!-- BEGIN HEADER -->
   <div id="header" class="navbar navbar-inverse navbar-fixed-top">
       <!-- BEGIN TOP NAVIGATION BAR -->
       <div class="navbar-inner">
           <div class="container-fluid">
               <!--BEGIN SIDEBAR TOGGLE-->
               <div class="sidebar-toggle-box hidden-phone">
                   <div class="icon-reorder"></div>
               </div>
               <!--END SIDEBAR TOGGLE-->
               <!-- BEGIN LOGO -->
               <a class="brand" href="index.html">
                   <img src="{{asset('front-design/images/logo.png')}}" alt="Metro Lab" />
               </a>
               <!-- END LOGO -->
               <!-- BEGIN RESPONSIVE MENU TOGGLER -->
               
               <!-- END RESPONSIVE MENU TOGGLER -->
               
               <!-- END  NOTIFICATION -->
               <div class="top-nav ">
                   <ul class="nav pull-right top-menu" >
                       <!-- BEGIN SUPPORT -->
                       <li class="dropdown mtop5">

                           <a class="dropdown-toggle element" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Chat">
                               <i class="icon-comments-alt"></i>
                           </a>
                       </li>
                       <li class="dropdown mtop5">
                           <a class="dropdown-toggle element" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Help">
                               <i class="icon-headphones"></i>
                           </a>
                       </li>
                       <!-- END SUPPORT -->
                       <!-- BEGIN USER LOGIN DROPDOWN -->
                       <li class="dropdown">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                               <img src="{{Session::get('admin_image')}}" alt="">
                               <span class="username">{{Session::get('admin_name')}}</span>
                                <span class="username">{{Session::get('admin_id')}}</span>
                               <b class="caret"></b>
                           </a>
                           <ul class="dropdown-menu extended logout">
                               <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
                               <li><a href="#"><i class="icon-cog"></i> My Settings</a></li>
                               <li><a href="{{URL::to('admin-logout')}}"><i class="icon-key"></i> Log Out</a></li>
                           </ul>
                       </li>
                       <!-- END USER LOGIN DROPDOWN -->
                   </ul>
                   <!-- END TOP NAVIGATION MENU -->
               </div>
           </div>
       </div>
       <!-- END TOP NAVIGATION BAR -->
   </div>
   <!-- END HEADER -->
   <!-- BEGIN CONTAINER -->
   <div id="container" class="row-fluid">
      <!-- BEGIN SIDEBAR -->
      <div class="sidebar-scroll">
        <div id="sidebar" class="nav-collapse collapse">

         <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
         <div class="navbar-inverse">
            <form class="navbar-search visible-phone">
               <input type="text" class="search-query" placeholder="Search" />
            </form>
         </div>
         <!-- END RESPONSIVE QUICK SEARCH FORM -->
         <!-- BEGIN SIDEBAR MENU -->
          <ul class="sidebar-menu">
              <li class="sub-menu active">
                  <a class="" href="index.html">
                      <i class="icon-dashboard"></i>
                      <span>Dashboard</span>
                  </a>
              </li>
              <li class="sub-menu">
                  <a href="javascript:;" class="">
                      <i class="icon-book"></i>
                      <span>Blog  Catagories</span>
                      <span class="arrow"></span>
                  </a>
                  <ul class="sub">
                      <li><a class="" href="{{URL::to('add-catagory')}}">Add Catagory</a></li>

                      <li><a class="" href="{{URL::to('manage-catagory')}}">Manage Catagory</a></li>
                  
                      
                  </ul>

                   
                      
              </li>
              <li class="sub-menu">
                  <a href="javascript:;" class="">
                      <i class="icon-cogs"></i>
                      <span>Blog</span>
                      <span class="arrow"></span>
                  </a>
                  <ul class="sub">
                      <li><a class="" href="{{URL::to('add-blog')}}">Add Blog</a></li>
                      <li><a class="" href="{{URL::to('manage-blog')}}">Manage Blog</a></li>
                      
                  </ul>
              </li>
              <li class="sub-menu">
                  <a href="javascript:;" class="">
                      <i class="icon-tasks"></i>
                      <span>Blog Comments</span>
                      <span class="arrow"></span>
                  </a>
                  <ul class="sub">
                      <li><a class="" href="">Manage Comments</a></li>
                      
                  </ul>
              </li>
          


             
             
              
          </ul>
         <!-- END SIDEBAR MENU -->
      </div>
      </div>
      <!-- END SIDEBAR -->
      <!-- BEGIN PAGE -->  
      <div id="main-content">
      @yield('admin_main_content')
      <!-- END PAGE -->  
   </div>
   <!-- END CONTAINER -->

   <!-- BEGIN FOOTER -->
   <div id="footer">
       2013 &copy; Metro Lab Dashboard.
   </div>
   <!-- END FOOTER -->

   <!-- BEGIN JAVASCRIPTS -->
   <!-- Load javascripts at bottom, this will reduce page load time -->
   <script src="{{asset('admin-design/js/jquery-1.8.3.min.js')}}"></script>
   <script src="{{asset('admin-design/js/jquery.nicescroll.js')}}" type="text/javascript"></script>
   <script type="text/javascript" src="{{asset('admin-design/assets/jquery-slimscroll/jquery-ui-1.9.2.custom.min.js')}}"></script>
   <script type="text/javascript" src="{{asset('admin-design/assets/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
   <script src="{{asset('admin-design/assets/fullcalendar/fullcalendar/fullcalendar.min.js')}}"></script>
   <script src="{{asset('admin-design/assets/bootstrap/js/bootstrap.min.js')}}"></script>

   <!-- ie8 fixes -->
   <!--[if lt IE 9]>
   <script src="js/excanvas.js"></script>
   <script src="js/respond.js"></script>
   <![endif]-->

   <script src="{{asset('admin-design/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js')}}" type="text/javascript"></script>
   <script src="{{asset('admin-design/js/jquery.sparkline.js')}}" type="text/javascript"></script>
   <script src="{{asset('admin-design/assets/chart-master/Chart.js')}}"></script>

   <!--common script for all pages-->
   <script src="{{asset('admin-design/js/common-scripts.js')}}"></script>

   <!--script for this page only-->

   <script src="{{asset('admin-design/js/easy-pie-chart.js')}}"></script>
   <script src="{{asset('admin-design/js/sparkline-chart.js')}}"></script>
   <script src="{{asset('admin-design/js/home-page-calender.js')}}"></script>
   <script src="{{asset('admin-design/js/chartjs.js')}}"></script>

   <!-- END JAVASCRIPTS -->  

    <script type="text/javascript">
      $(document).ready(function(){
         CKEDITOR.replace('richTextBody');
      });

      $(document).ready(function(){
         CKEDITOR.replace('richTextBody1');
      });

   </script>
      
   
</body>
<!-- END BODY -->
</html>