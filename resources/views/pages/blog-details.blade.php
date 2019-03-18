@extends('layout.blog-layout')

@section('blog_main_content')
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2&appId=2363544190345267&autoLogAppEvents=1"></script>
<div class="single-post-box">

								<div class="title-post">
									<h1>{{$blog->blog_name}}</h1>
									
								</div>

							

								<div class="post-gallery">
									<img src="{{asset($blog->blog_image)}}" alt="">
									
								</div>

								<div class="post-content">

									<p><?php echo $blog->blog_long_description ?></p>

									
								</div>
							</div>
							<div class="fb-comments" data-href="{{ Request::url()}}" data-numposts="10"></div>
							@endsection
