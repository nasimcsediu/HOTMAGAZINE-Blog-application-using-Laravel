@extends('layout.admin-layout')
@section('admin_main_content')

        <div class="row-fluid">
                    <div class="span12">
                        <!-- BEGIN BASIC PORTLET-->
                        <div class="widget orange">
                            <div class="widget-title">
                                <h4><i class="icon-reorder"></i> Blog manage Table</h4>
                            <span class="tools">
                                <a href="javascript:;" class="icon-chevron-down"></a>
                                <a href="javascript:;" class="icon-remove"></a>
                            </span>
                            </div>
                            <div class="widget-body">
                                <table class="table table-striped table-bordered table-advance table-hover">
                                    <thead>
                                    <tr>
                                        <th>  ID</th>
                                        <th class="hidden-phone"> Name</th>

                                        <th class="hidden-phone">  Catagory Name</th>

                                        <th class="hidden-phone">  Short Description</th>


                                        <th class="hidden-phone"> Long Description</th>

                                        <th class="hidden-phone">Image</th>
                                        
                                        <th> Status</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    	
                                 @foreach($manage_blog as $v_manage_blog)
                                    <tr>
                                        <td>{{$v_manage_blog->blog_id}}</td>
                                        <td>{{$v_manage_blog->blog_name}}</td>
                                        <td>{{$v_manage_blog->catagory_id}}</td>


                                        <td><?php echo $v_manage_blog->blog_short_description ?></td>
                                        <td><?php echo $v_manage_blog->blog_long_description ?></td>
                                        <td><img src="{{asset($v_manage_blog->blog_image)}}" height="50px" width="100px"></td>

                                        <td>
                                        
                                        @if($v_manage_blog->publication_status==1)   
                                        <span class="label label-success label-mini">{{'Publish'}}</span>

                                       @else($v_manage_blog->publication_status==0)
                                        <span class="label label-danger label-mini">{{'UnPublish'}}</span>
                                      @endif
                                        </td>


                                        <td>
                                        	 
                                           
                                          @if($v_manage_blog->publication_status==1)	                                                                      	
                                            <a href="{{('unpublish-blog/'.$v_manage_blog->blog_id)}}" class="btn btn-danger"><i class="icon-thumbs-down"></i></a>
                                       
                                           @else($v_manage_blog->publication_status==0)
                                            <a href="{{('publish-blog/'.$v_manage_blog->blog_id)}}" class="btn btn-success"><i class="icon-thumbs-up"></i></a>
                                         
                                        @endif

                                            <a href="" class="btn btn-primary"><i class="icon-pencil"></i></a>
                                            
                                            <a href="{{('detele-blog/'.$v_manage_blog->blog_id)}}" onclick="return checkDelete()" class="btn btn-danger"><i class="icon-trash "></i></a>


                                        </td>
                                    </tr>
                                        
                                     @endforeach

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END BASIC PORTLET-->
                    </div>
                </div>



@endsection

