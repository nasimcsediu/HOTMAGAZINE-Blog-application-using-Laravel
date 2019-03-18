@extends('layout.admin-layout')
@section('admin_main_content')


                <div class="span12">
                    <!-- BEGIN SAMPLE FORMPORTLET-->
                    <div class="widget green">
                        <div class="widget-title">
                            <h4><i class="icon-reorder"></i> Catagori Add Form </h4>
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
                            <!-- BEGIN FORM-->
                            <form action="{{url('save-catagory')}}" method="post">
                                {{ csrf_field() }}
                            <div class="control-group">
                                <label class="control-label">Catagorie Name</label>
                                <div class="controls">
                                    <input type="text" class="span6 " name="catagory_name" required="" />
                                    
                                </div>
                            </div>
                           
                          

                            
                            <div class="control-group">
                                <label class="control-label">Catagorie Description</label>
                                <div class="controls">
                                    <textarea class="span6" id="richTextBody" name="catagory_description" required="" rows="3"></textarea>
                                </div>
                            </div>
                            
                            
                          
                           
                          
                            <div class="control-group">
                                <label class="control-label">Publish Status</label>
                                <div class="controls">
                                    <select class="span6 " required="" name="catagory_status" data-placeholder="Choose a Category" tabindex="1">
                                        
                                        <option value=" 1">Publish</option>
                                        <option value=" 0">Unpublish</option>
                                    </select>
                                </div>
                            </div>
                            
                         
                            
                            

                            <div class="form-actions">
                                <button type="submit" class="btn btn-success">Submit</button>
                                <button type="button" class="btn">Cancel</button>
                            </div>
                            </form>
                            <!-- END FORM-->
                        </div>
                    </div>

@endsection