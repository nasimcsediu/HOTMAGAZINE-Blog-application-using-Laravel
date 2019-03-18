@extends('layout.admin-layout')
@section('admin_main_content')

        <div class="row-fluid">
                    <div class="span12">
                        <!-- BEGIN BASIC PORTLET-->
                        <div class="widget orange">
                            <div class="widget-title">
                                <h4><i class="icon-reorder"></i> Catagory Manage Table</h4>
                            <span class="tools">
                                <a href="javascript:;" class="icon-chevron-down"></a>
                                <a href="javascript:;" class="icon-remove"></a>
                            </span>

                            </div>
                                   <h3 align="center" style="color: green">
                             <?php 
                                $message=Session::get('message');
                                if ($message) {
                                    echo $message;
                                    Session::put('message','');
                                   }   
                              ?>
                        </h3>
                            <div class="widget-body">
                                <table class="table table-striped table-bordered table-advance table-hover">
                                    <thead>
                                    <tr>
                                        <th> Catagory ID</th>
                                        <th> Catagory Name</th>
                                        <th>Catagory Description</th>
                                        <th>Status</th>
                                        
                                    </tr>
                                    </thead>
                                    <tbody>
                                    	
                                   @foreach($allcatagory as $v_all_catagory) 
                                    <tr>
                                        <td>{{$v_all_catagory->catagory_id}}</td>
                                        <td>{{$v_all_catagory->catagory_name}}</td>
                                        <td><?php echo $v_all_catagory->catagory_description ?></td>
                                        <td>
                                         @if($v_all_catagory->catagory_status==1)
                                        	<span class="label label-success label-mini">{{'Publish'}}</span>
                                        @else($v_all_catagory->catagory_status==0)
                                       <span class="label label-important label-mini">{{'Unpublish'}}</span>
                                      @endif
                                        </td>

                                        <td>
                                        	 
                                         
                                         @if($v_all_catagory->catagory_status==1)	                	
                                            <a href="{{('unpublish-catagory/'.$v_all_catagory->catagory_id)}}" class="btn btn-danger"><i class="icon-thumbs-down"></i></a>
                                         @else($v_all_catagory->catagory_status==0)
                                            <a href="{{('publish-catagory/'.$v_all_catagory->catagory_id)}}" class="btn btn-success"><i class="icon-thumbs-up"></i></a>

                                         @endif
                                         

                                            <a href="{{('edit-catagory/'.$v_all_catagory->catagory_id)}}" class="btn btn-primary"><i class="icon-pencil"></i></a>
                                            

                                            <a href="{{URL::to('delete-catagory/'.$v_all_catagory->catagory_id)}}" onclick="return checkDelete()" class="btn btn-danger"><i class="icon-trash "></i></a>


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

