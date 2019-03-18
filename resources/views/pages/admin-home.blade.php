@extends('layout.admin-layout')
@section('admin_main_content')
 
 <div class="row-fluid">
                <!--BEGIN METRO STATES-->
                <div class="metro-nav">
                    <div class="metro-nav-block nav-block-orange">
                        <a data-original-title="" href="#">
                            <i class="icon-user"></i>
                            <div class="info">321</div>
                            <div class="status">New User</div>
                        </a>
                    </div>
                    <div class="metro-nav-block nav-block-yellow">
                        <a data-original-title="" href="#">
                            <i class="icon-tags"></i>
                            <div class="info">+970</div>
                            <div class="status">Sales</div>
                        </a>
                    </div>
                    <div class="metro-nav-block nav-block-grey">
                        <a data-original-title="" href="#">
                            <i class="icon-comments-alt"></i>
                            <div class="info">49</div>
                            <div class="status">Comments</div>
                        </a>
                    </div>
                    <div class="metro-nav-block nav-block-blue double">
                        <a data-original-title="" href="#">
                            <i class="icon-eye-open"></i>
                            <div class="info">+897</div>
                            <div class="status">Unique Visitor</div>
                        </a>
                    </div>
                    <div class="metro-nav-block nav-block-red">
                        <a data-original-title="" href="#">
                            <i class="icon-bar-chart"></i>
                            <div class="info">+288</div>
                            <div class="status">Update</div>
                        </a>
                    </div>
                </div>
                <div class="metro-nav">
                    <div class="metro-nav-block nav-block-blue">
                        <a data-original-title="" href="#">
                            <i class="icon-shopping-cart"></i>
                            <div class="info">29</div>
                            <div class="status">New Order</div>
                        </a>
                    </div>
                    <div class="metro-nav-block nav-block-green double">
                        <a data-original-title="" href="#">
                            <i class="icon-tasks"></i>
                            <div class="info">$37624</div>
                            <div class="status">Stock</div>
                        </a>
                    </div>
                    <div class="metro-nav-block nav-block-orange">
                        <a data-original-title="" href="#">
                            <i class="icon-envelope"></i>
                            <div class="info">123</div>
                            <div class="status">Messages</div>
                        </a>
                    </div>
                    <div class="metro-nav-block nav-block-purple">
                        <a data-original-title="" href="#">
                            <i class="icon-remove-sign"></i>
                            <div class="info">34</div>
                            <div class="status">Cancelled</div>
                        </a>
                    </div>
                    <div class="metro-nav-block nav-block-grey ">
                        <a data-original-title="" href="#">
                            <i class="icon-external-link"></i>
                            <div class="info">$53412</div>
                            <div class="status">Total Profit</div>
                        </a>
                    </div>
                </div>
                <div class="space10"></div>
                <!--END METRO STATES-->
            </div>
            <div class="row-fluid">
                <div class="span6">
                    <!-- BEGIN CHART PORTLET-->
                    <div class="widget ">
                        <div class="widget-title">
                            <h4><i class="icon-reorder"></i> Doughnut</h4>
                            <span class="tools">
                                <a href="javascript:;" class="icon-chevron-down"></a>
                                <a href="javascript:;" class="icon-remove"></a>
                            </span>
                        </div>
                        <div class="widget-body">
                            <div class="text-center">
                                <canvas id="doughnut" height="300" width="400"></canvas>
                            </div>
                        </div>
                    </div>
                    <!-- END CHART PORTLET-->
                </div>
                <div class="span6">
                    <!-- BEGIN CHART PORTLET-->
                    <div class="widget green">
                        <div class="widget-title">
                            <h4><i class="icon-reorder"> </i> Line</h4>
                            <span class="tools">
                                <a href="javascript:;" class="icon-chevron-down"></a>
                                <a href="javascript:;" class="icon-remove"></a>
                            </span>
                        </div>
                        <div class="widget-body">
                            <div class="text-center">
                                <canvas id="line" height="300" width="450"></canvas>
                            </div>
                        </div>
                    </div>
                    <!-- END CHART PORTLET-->
                </div>
            </div>

            
@endsection