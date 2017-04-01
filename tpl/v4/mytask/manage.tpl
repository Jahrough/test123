<!DOCTYPE html>
<html lang="en">
    <head>
        <TMPL_INCLUDE NAME="../includes_mytasks.tpl">
        <style>
            #table-manage thead th {
            color: #999;
            }
            table#table-manage thead th{
            border:0!important;
            }
            table#table-manage thead th.sorting:after {
            /*display:none;*/
            }
            table#table-manage thead th.sorting,
            table#table-manage thead th.sorting_asc,
            table#table-manage thead th.sorting_desc{
            color:#2e2efe;
            }
            .top-page-controls, .bottom-page-controls {
            background-color: #999;
            /*                display:inline-block;*/
            height:28px;
            }
            .top-page-controls {
            margin-bottom: 15px;
            }
            .bottom-page-controls {
            margin-top: 5px;
            }
            .dataTables_paginate a {
            margin-left: 10px;
            color: #333;
            }
            .toolbar-cmt {
            float: left;   
            margin-left:8px;
            color: #2e2efe!important;
            font-size: 13px;
            line-height: 28px;
            }
            .table-responsive {
            padding-left: 15px;
            overflow:visible;
            }
            .together {
            margin-left: -10px;
            }                
        </style>
    </head>
    <body class="menu-on-top">
        <TMPL_INCLUDE NAME="../header.tpl">
        <div id="main" role="main" style="margin-top: 0px!important;">
            <TMPL_INCLUDE NAME="top_navigation.tpl">
            <!-- actual start of the create mytask part -->
            <div class="col col-10">
                <h4 class="page-title">
                    <!-- PAGE HEADER -->
                    <i class="fa-fw fa fa-user"></i> 
                    <i class="fa-fw fa fa-desktop together"></i><strong> Manage myTasks</strong>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onClick="javascript:send_event('SEARCH/SHOW_MENU'); return false;">Return to Home &raquo; </a>
                </h4>
            </div>
            <div>
                <div class="row" >
                    <div class="col col-10">
                        <header>
                            <!--<a href="javascript:createMytask(this);"><h2> <span class="widget-icon"> <i class="fa fa-edit"></i> </span> Create myTasks</h2></a>-->
                        </header>
                        <div>
                            <form id="mytask-form" method="POST" action="<tmpl_var name='action'>">
                                <div class="col col-10">
                                    <div class="table-responsive">
                                        <table id="table-manage" class="table table-striped table-bordered table-hover" width="100%">
                                            <thead>
                                                <th>
                                                    myTask Name   
                                                    <div class="btn-group" id='rmd'><button id="nav-fav-select"></button></div>
                                                </th>
                                                <th>Ver			  </th>
                                                <th>Description   </th>
                                                <th>Status		  </th>
                                                <th>Date Created  </th>
                                                <th>Date Published</th>
                                                <th></th>
                                            </thead>
                                            <tbody>
                                                <tmpl_loop name="MYTASKVALS">
                                                    <tr id="row<tmpl_var name='index'>">
                                                        <td>
                                                            <div class="btn-group">
                                                                <button id="nav-fav-select" data-toggle="dropdown" class="dropdown-toggle">
                                                                    <tmpl_var name='name'>
                                                                    <i class="fa fa-fw fa fa-chevron-circle-down"></i>
                                                                </button>
                                                                <ul id="nav-mytask-dropdown" class="dropdown-menu tab-dropdown anim-fadeInDown" style="margin-top:0;">
                                                                    <li><a href="#" onClick="javascript:edit(<tmpl_var name='index'>); return false;">Edit</a></li>
                                                                    <li><a href="#" onClick="javascript:copy(<tmpl_var name='index'>); return false;">Copy</a></li>
                                                                    <li><a href="#" onClick="javascript:notes(<tmpl_var name='index'>); return false;">Notes</a></li>
                                                                    <li><a href="#" onClick="javascript:revhist(<tmpl_var name='index'>); return false;">Revision History</a></li>
                                                                    <li><a href="#" onClick="javascript:auditrep(<tmpl_var name='index'>); return false;">Audit Report</a></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <tmpl_var name='version'>
                                                        </td>
                                                        <td>
                                                            <tmpl_var name='description'>
                                                        </td>
                                                        <td>
                                                            <tmpl_var name='status'>
                                                        </td>
                                                        <td>
                                                            <tmpl_var name='create_datetime'>
                                                        </td>
                                                        <td>
                                                            <tmpl_var name='publish_datetime'>
                                                        </td>
                                                        <td> <i class="fa-fw fa fa-remove" style='color:red' onclick="javascript:showdelete(<tmpl_var name='index'>);"></i> </td>
                                                    </tr>
                                                </tmpl_loop>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <input type='hidden' name='MID'        value="0">
                                <input type='hidden' name='RUNMODE'    value="0">
                                <input type='hidden' name='MYTASK'     value="0">
                                <input type='hidden' name='MYTASKVALS' value="0">
                                <input type='hidden' name='EDIT' value="<tmpl_var name=EDIT>">
                                <input type='hidden' name='EVENT'      value="MYTASK/SAVE">
                            </form>
                        </div>
                        <header>
                            <!--<a href="javascript:void(0);" onclick="javascript:createMytask(this);"><h2> <span class="widget-icon"> <i class="fa fa-edit"></i> </span> Create myTasks</h2></a>-->
                        </header>
                    </div>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                            </button>
                            <h4 class="modal-title" id="myModalLabel">Article Post</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Title" required />
                                    </div>
                                    <div class="form-group">
                                        <textarea class="form-control" placeholder="Content" rows="5" required></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="category"> Category</label>
                                        <select class="form-control" id="category">
                                            <option>Articles</option>
                                            <option>Tutorials</option>
                                            <option>Freebies</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="tags"> Tags</label>
                                        <input type="text" class="form-control" id="tags" placeholder="Tags" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="well well-sm well-primary">
                                        <form class="form form-inline " role="form">
                                            <div class="form-group">
                                                <input type="text" class="form-control" value="" placeholder="Date" required />
                                            </div>
                                            <div class="form-group">
                                                <select class="form-control">
                                                    <option>Draft</option>
                                                    <option>Published</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-success btn-sm">
                                                <span class="glyphicon glyphicon-floppy-disk"></span> Save
                                                </button>
                                                <button type="button" class="btn btn-default btn-sm">
                                                <span class="glyphicon glyphicon-eye-open"></span> Preview
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">
                            Cancel
                            </button>
                            <button type="button" class="btn btn-primary">
                            Post Article
                            </button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!--
                <script src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/datatables/jquery.dataTables.min.js"></script>
                <script src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/datatables/dataTables.colVis.min.js"></script>
                <script src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/datatables/dataTables.tableTools.min.js"></script>
                <script src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/datatables/dataTables.bootstrap.min.js"></script>
                <script src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/datatable-responsive/datatables.responsive.min.js"></script>
                -->
            <script src="<TMPL_VAR NAME='JSPATH'>/v4/notification/SmartNotification.min.js"></script>
            <script type="text/javascript">
                // var mytasks = <tmpl_var name=SELECTIONS>;
                
                
                $(function(){
                
                    setupTable();
                    // Three Navigation buttons
                    $('#cancelBtn').click(function(e){
                        send_event('SEARCH/SHOW_MENU');
                    });
                    $('#prevBtn').click(function(e){
                        $("input[name=BACKEDIT]").val('1'); 
                        send_event('MYTASK/CREATE_STEP2');
                    });
                    $('#submitBtn').click(function(e){
                        send_event('MYTASK/SAVE');
                    });
                    //for some quirky mode this button group needs to exist on page load.
                    $('#rmd').remove();
                })
                
                function setupTable (argument) {
                    /* BASIC ;*/
                    var responsiveHelper_dt_basic = undefined;
                            var responsiveHelper_datatable_fixed_column = undefined;
                            var responsiveHelper_datatable_col_reorder = undefined;
                            var responsiveHelper_datatable_tabletools = undefined;
                            var breakpointDefinition = {
                            tablet : 1024,
                                    phone : 480
                            };
                            /*
                             $('#sections-x').dataTable({
                             "autoWidth" : true,
                             "preDrawCallback" : function() {
                             // Initialize the responsive datatables helper once.
                             if (!responsiveHelper_dt_basic) {
                             responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($('#sections-x'), breakpointDefinition);
                             }
                             },
                             "rowCallback" : function(nRow) {
                             responsiveHelper_dt_basic.createExpandIcon(nRow);
                             },
                             "drawCallback" : function(oSettings) {
                             responsiveHelper_dt_basic.respond();
                             },
                             "order": [[ 5, "asc" ]]
                             });*/
                            /*        $('#sections-x').dataTable({
                             "bFilter": false,
                             "bLengthChange": false
                             });
                             */
                
                            $('#table-manage').dataTable({
                                "autoWidth" : true,
                                "filter": false,
                                "lengthChange": false,
                                "dom":'r<"top-page-controls"p><"dt-top-length"l>t<"bottom-page-controls"p><"dt-bottom-length"l>',
                                "pagingType":"full_numbers",
                                "language": {
                                    "paginate": {
                                        "first":      '&laquo;',
                                        "last":       '&raquo;',
                                        "next":       '&gt;',
                                        "previous":   '&lt;'
                                    },
                                },
                                "columns": [
                                    { "orderable": true },
                                    { "orderable": false },
                                    { "orderable": false },
                                    { "orderable": false },
                                    { "orderable": true },
                                    { "orderable": true },
                                    { "orderable": false }
                                ],
                                "order": [[ 5, "desc" ]]
                            });
                            
                            $(".top-page-controls").prepend('<a href="#" onClick="javascript:mytask_step1(); return false;" class="toolbar-cmt">Create myTasks</a>');
                            $(".bottom-page-controls").prepend('<a href="#" onClick="javascript:mytask_step1(); return false;" class="toolbar-cmt">Create myTasks</a>');
                
                
                            /* 	                $('#sections').dataTable({
                             "sDom": "<'dt-toolbar'<'col-sm-6'f><'col-sm-6 hidden-xs'l>r>"+
                             "t"+
                             "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
                             "autoWidth" : true,
                             "preDrawCallback" : function() {
                             // Initialize the responsive datatables helper once.
                             if (!responsiveHelper_dt_basic) {
                             responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($('#sections'), breakpointDefinition);
                             }
                             },
                             "rowCallback" : function(nRow) {
                             responsiveHelper_dt_basic.createExpandIcon(nRow);
                             },
                             "drawCallback" : function(oSettings) {
                             responsiveHelper_dt_basic.respond();
                             },
                             "order": [[ 5, "asc" ]]
                             });
                             */
                            /* END BASIC */
                
                            // body...
                }
                
                function mytask_step1() {
                    send_event('MYTASK/CREATE_STEP1');
                }
                
                function edit(mid){
                    $('input[name=MID]').val(mid);
                    $('input[name=EDIT]').val(1);
                    send_event('MYTASK/CREATE_STEP1');
                }
                
                function copy(mid){
                    $('input[name=MID]').val(mid);
                    send_event('MYTASK/COPY');
                }
                
                function notes(mid){
                    $('input[name=MID]').val(mid);
                    $('#myModal').load('<tmpl_var name=action>', {'MID': mid, 'SESSION_ID' : '<tmpl_var name=SESSION_ID>',   'CSRF_TOKEN':'<tmpl_var name=CSRF_TOKEN>','EVENT':'MYTASK/NOTES'},
                        function(res, status, xhr){
                            $('#myModal').modal('show');
                        }
                    );
                    
                }
                
                function revhist(mid){
                    $('#myModal').load('<tmpl_var name=action>', {'MID':mid, 'SESSION_ID':'<tmpl_var name=SESSION_ID>',   'CSRF_TOKEN':'<tmpl_var name=CSRF_TOKEN>','EVENT':'MYTASK/REVHISTORY'},
                        function(res, status, xhr){
                            $('#myModal').modal('show');
                        }
                    );
                    
                }
                
                function auditrep(mid){
                    $('input[name=MID]').val(mid);
                    send_event('MYTASK/AUDITREP');
                }
                
                function showdelete(mid) {
                    //var _modal_title = 'Delete myTask!';
                    //var _modal_msg = 'Are you sure you want to delete the mytask?';
                    //var _modal_body = "Are you sure you want to delete the mytask?<p class='text-align-right'><a href='javascript:deleteMytask(" + mid + ");' class='btn btn-primary btn-sm'>Yes</a> <a href='javascript:void(0);' class='btn btn-danger btn-sm'>No</a></p>";
                    //var _modal_body = '<div class="well well-sm"><span class="loading_icon svg-icon-x-large loading-text">'+_modal_msg+'</span></div>';
                    //var _timer_id = new_modal({title:_modal_title, sub_title:'',body_html:_modal_body,_modal_class:' modal-white',_hide:1,_max_hide_ms:1000,_min_display_ms:500},1);
                    
                    $("#button-delete-yes").unbind("click"); //clear any previous click handler
                    $("#button-delete-yes").click(function() {
                        deleteMytask(mid);
                    });
                    $("#delete-task-modal").modal("show");

                    //        $.smallBox({
                    //        title : "Delete myTask!",
                    //                content : "Are you sure you want to delete the mytask?<p class='text-align-right'><a href='javascript:deleteMytask(" + mid + ");' class='btn btn-primary btn-sm'>Yes</a> <a href='javascript:void(0);' class='btn btn-danger btn-sm'>No</a></p>",
                    //                color : "#9F81F7",
                    //                //timeout: 8000,
                    //                icon : "fa fa-bell swing animated",
                    //                sound : 0
                    //        });
                }
                
                function deleteMytask(mid){
                    $('input[name=MID]').val(mid);
                    send_event('MYTASK/DELETE');
                }
                
                
                
            </script>
            <!-- End of the create mytask part -->
        </div>
        <div id="delete-task-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="logoutModal" aria-hidden="true">
            <div class="modal-dialog trap">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                        </button>
                        <h2 class="modal-title">Delete myTask!</h2>
                    </div>
                    <div class="modal-body">
                        <div>
                            <span>Are you sure you want to delete the mytask?</span>
                            <br/><br/><br/>
                            <!--
                                <button class="btn btn-danger" onclick="update_clear_tabs_prefs('no');" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                                <button class="btn btn-default" onclick="$('#delete-task-modal').modal('hide');" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
                                -->
                            <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                            <button id="button-delete-yes" type="button" class="btn btn-danger btn-ok" data-dismiss="modal" class="btn-delete-task-yes">Yes</button>
                            <!--<a class="btn btn-danger btn-ok">Yes</a>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <TMPL_INCLUDE NAME="footer.tpl">
    </body>
</html>