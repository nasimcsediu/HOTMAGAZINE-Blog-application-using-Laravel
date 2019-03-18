@extends('layout.blog-layout')

@section('blog_main_content')

<div class="single-post-box">

        @foreach($search_blog as $all_result)
								<div class="title-post">
									<a href="{{URL::to('details-blog/'.$all_result->blog_id)}}"><h1>{{$all_result->blog_name}}</h1></a>
									
								</div>

							

								<div class="post-gallery">
									<img src="{{asset($all_result->blog_image)}}" alt="">
									
								</div>

								
							</div>

	  @endforeach
							@endsection
