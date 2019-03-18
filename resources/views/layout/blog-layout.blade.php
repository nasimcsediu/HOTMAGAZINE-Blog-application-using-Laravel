<!doctype html>
<html lang="en" class="no-js">


<head>
    <title>HotMagazines</title>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,400italic' rel='stylesheet' type='text/css'>
    <link href="../../../maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="{{asset('front-design/css/bootstrap.min.css')}}" media="screen"> 
    <link rel="stylesheet" type="text/css" href="{{asset('front-design/css/jquery.bxslider.css')}}" media="screen">
    <link rel="stylesheet" type="text/css" href="{{asset('front-design/css/font-awesome.css')}}" media="screen">
    <link rel="stylesheet" type="text/css" href="{{asset('front-design/css/magnific-popup.css')}}" media="screen">    
    <link rel="stylesheet" type="text/css" href="{{asset('front-design/css/owl.carousel.css')}}" media="screen">
    <link rel="stylesheet" type="text/css" href="{{asset('front-design/css/owl.theme.css')}}" media="screen">
    <link rel="stylesheet" type="text/css" href="{{asset('front-design/css/ticker-style.css')}}"/>
    <link rel="stylesheet" type="text/css" href="{{asset('front-design/css/style.css')}}" media="screen">

</head>
<body>

    <!-- Container -->
    <div id="container">

        <!-- Header
            ================================================== -->
        <header class="clearfix">
            <!-- Bootstrap navbar -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation">

                <!-- Top line -->
                
                <!-- End Top line -->

                <!-- Logo & advertisement -->
                <div class="logo-advertisement">
                    <div class="container">

                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="index-2.html"><img src="{{asset('front-design/images/logo.png')}}" alt=""></a>
                        </div>

                        <div class="advertisement">
                            <div class="desktop-advert">
                                <span>Advertisement</span>
                                <img src="{{asset('front-design/upload/addsense/728x90.jpg')}}" alt="">
                            </div>
                            <div class="tablet-advert">
                                <span>Advertisement</span>
                                <img src="{{asset('front-design/upload/addsense/468x60.jpg')}}" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Logo & advertisement -->

                <!-- navbar list container -->
                <div class="nav-list-container">
                    <div class="container">
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-left">

                                <li class="drop"><a class="home" href="{{'/'}}">Home</a>
                                    
                                    
                                </li>
                                 <?php 
                            $result = DB::table('tbl_catagory')->where('catagory_status', 1)->get();
                             ?>
                            @foreach($result as $all_result)
                                <li><a  href="#">{{($all_result->catagory_name)}}</a></li>

                             @endforeach  

                              

                            </ul>
                            <form class="navbar-form navbar-right" role="search">
                                <input type="text" id="search" name="search" placeholder="Search here">
                                <button type="submit" id="search-submit"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                        <!-- /.navbar-collapse -->
                    </div>
                </div>
                <!-- End navbar list container -->

            </nav>
            <!-- End Bootstrap navbar -->

        </header>
        <!-- End Header -->

		<!-- ticker-news-section
			================================================== -->
		

		<!-- block-wrapper-section
			================================================== -->
		<section class="block-wrapper">
			<div class="container">
				<div class="row">
					<div class="col-sm-8">

						<!-- block content -->
						<div class="block-content">

							<!-- single-post box -->
							

                              @yield('blog_main_content')

							<!-- End single-post box -->

						</div>
						<!-- End block content -->

					</div>

					<div class="col-sm-4">

						<!-- sidebar -->
						<div class="sidebar">

							<div class="widget social-widget">
								<div class="title-section">
									<h1><span>Stay Connected</span></h1>
								</div>
								<ul class="social-share">
									<li>
										<a href="#" class="rss"><i class="fa fa-rss"></i></a>
										<span class="number">9,455</span>
										<span>Subscribers</span>
									</li>
									<li>
										<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
										<span class="number">56,743</span>
										<span>Fans</span>
									</li>
									<li>
										<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
										<span class="number">43,501</span>
										<span>Followers</span>
									</li>
									<li>
										<a href="#" class="google"><i class="fa fa-google-plus"></i></a>
										<span class="number">35,003</span>
										<span>Followers</span>
									</li>
								</ul>
							</div>

							
							

							<div class="widget post-widget">
								<div class="title-section">
									<h1><span>Featured Post</span></h1>
								</div>
                                <?php
                                $result = DB::table('tbl_blog')->where('publication_status',1)->orderBy('blog_id','asc')->first(); 
                                ?>

								<div class="news-post video-post">
									<img alt="" src="{{asset($result->blog_image)}}">
									<a href="#" class="video-link"></a>
									<div class="hover-box">
										<h2><a href="{{URL::to('details-blog/'.$result->blog_id)}}">{{$result->blog_name}} </a></h2>
										
									</div>
								</div>

								
							</div>

							<div class="widget subscribe-widget">
								<form class="subscribe-form">
									<h1>Subscribe to RSS Feeds</h1>
									<input type="text" name="sumbscribe" id="subscribe" placeholder="Email"/>
									<button id="submit-subscribe">
										<i class="fa fa-arrow-circle-right"></i>
									</button>
									<p>Get all latest content delivered to your email a few times a month.</p>
								</form>
							</div>

							<div class="widget tags-widget">

								<div class="title-section">
									<h1><span>Popular Tags</span></h1>
								</div>

								<ul class="tag-list">
									<li><a href="#">News</a></li>
									<li><a href="#">Fashion</a></li>
									<li><a href="#">Politics</a></li>
									<li><a href="#">Sport</a></li>
									<li><a href="#">Food</a></li>
									<li><a href="#">Videos</a></li>
									<li><a href="#">Business</a></li>
									<li><a href="#">Travel</a></li>
									<li><a href="#">World</a></li>
									<li><a href="#">Music</a></li>
								</ul>

							</div>

							<div class="advertisement">
								<div class="desktop-advert">
									<span>Advertisement</span>
									<img src="{{asset('front-design/upload/addsense/300x250.jpg')}}" alt="">
								</div>
								
							</div>

						</div>
						<!-- End sidebar -->

					</div>

				</div>

			</div>
		</section>
		<!-- End block-wrapper-section -->

		<!-- footer 
			================================================== -->
		<footer>
			<div class="container">
				<div clahttp://127.0.0.1:8000/front-design/upload/addsense/300x250.jpgss="footer-widgets-part">
					<div class="row">
						<div class="col-md-3">
							<div class="widget text-widget">
								<h1>About</h1>
								<p>Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis. </p>
								<p>Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. </p>
							</div>
							<div class="widget social-widget">
								<h1>Stay Connected</h1>
								<ul class="social-icons">
									<li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#" class="google"><i class="fa fa-google-plus"></i></a></li>
									<li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#" class="youtube"><i class="fa fa-youtube"></i></a></li>
									<li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
									<li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#" class="vimeo"><i class="fa fa-vimeo-square"></i></a></li>
									<li><a href="#" class="dribble"><i class="fa fa-dribbble"></i></a></li>
									<li><a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a></li>
									<li><a href="#" class="flickr"><i class="fa fa-flickr"></i></a></li>
									<li><a href="#" class="rss"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3">
							<div class="widget posts-widget">
								<h1>Random Post</h1>
								<ul class="list-posts">
									<?php
                              $result = DB::table('tbl_blog')->where('publication_status',1)->limit(3)->orderBy('blog_id','asc')->get();
                          ?>
                            @foreach($result as $result)
                                    <li>
                                        <img src="{{asset($result->blog_image)}}" alt="">
                                        <div class="post-content">
                                           
                                            <h2><a href="single-post.html">{{$result->blog_name}}</a></h2>
                                           
                                        </div>
                                    </li>
                            @endforeach

								</ul>
							</div>
						</div>
						<div class="col-md-3">
							<div class="widget categories-widget">
								<h1>Hot Categories</h1>
								<ul class="category-list">
									<?php 
                                      $result = DB::table('tbl_catagory')->where('catagory_status',1)->get();
                                    ?>
                                    @foreach($result as $result)
                                    <li>
                                        <a href="#">{{$result->catagory_name}} </a>
                                    </li>
                                    @endforeach 
                                </ul>
								</ul>
							</div>
						</div>
						<div class="col-md-3">
							<div class="widget flickr-widget">
								<h1>Flickr Photos</h1>
								<ul class="flickr-list">
									<li><a href="#"><img src="{{asset('front-design/upload/flickr/1.jpg')}}" alt=""></a></li>
									<li><a href="#"><img src="{{asset('front-design/upload/flickr/2.jpg')}}" alt=""></a></li>
									<li><a href="#"><img src="{{asset('front-design/upload/flickr/3.jpg')}}" alt=""></a></li>
									<li><a href="#"><img src="{{asset('front-design/upload/flickr/4.jpg')}}" alt=""></a></li>
									<li><a href="#"><img src="{{asset('front-design/upload/flickr/5.jpg')}}" alt=""></a></li>
									<li><a href="#"><img src="{{asset('front-design/upload/flickr/6.jpg')}}" alt=""></a></li>
								</ul>
								<a href="#">View more photos...</a>
							</div>
						</div>
					</div>
				</div>
				<div class="footer-last-line">
					<div class="row">
						<div class="col-md-6">
							<p>&copy; COPYRIGHT 2015 hotmagazine.com</p>
						</div>
						
					</div>
				</div>
			</div>
		</footer>
		<!-- End footer -->

	</div>
	 <!-- End Container -->
    
    <script type="text/javascript" src="{{asset('front-design/js/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('front-design/js/jquery.migrate.js')}}"></script>
    <script type="text/javascript" src="{{asset('front-design/js/jquery.bxslider.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('front-design/js/jquery.magnific-popup.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('front-design/js/bootstrap.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('front-design/js/jquery.ticker.js')}}"></script>
    <script type="text/javascript" src="{{asset('front-design/js/jquery.imagesloaded.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('front-design/js/jquery.isotope.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('front-design/js/owl.carousel.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('front-design/js/retina-1.1.0.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('front-design/js/plugins-scroll.js')}}"></script>
    <script type="text/javascript" src="{{asset('front-design/js/script.js')}}"></script>

</body>

</html>