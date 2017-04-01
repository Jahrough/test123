<!-- begin manage_account_mfa_background_rskad.tpl -->
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME='CSSPATH'>/evolution.css">
<link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME='CSSPATH'>/myaccount/admin.css"> 

<div id="container" role="dialog">
    <div id="ln_banner">
        <div class="ln_logo">
            <a href="javascript:void(0);"><img src="<tmpl_var name=IMGPATH>/LN-Admin.png" alt="LexisNexis© Administration"></a>
        </div>
        <div class="ln_login">
            <a href="javascript:void()" title="My Profile"><i class="fa fa-14 fa-user pos_1 fa-fw"></i>User ID</a> 
            <a href="javascript:void();" title="Sign Out" class="margin_left_15"><i class="fa fa-14 fa-sign-out pos_1 fa-fw"></i>Sign Out</a>
        </div>
        <div class="clear"></div>
    </div>
    <div id="topheader" class="original" style="visibility: visible;">
        <div class="dropdown_menu">
            <ul>
                <li><a class="" href="javascript:void();" title="Users"><span class="fa fa-16 fa-user pos_1 fa-fw"></span> Users</a></li>
                <li><a href="javacript:void(0)" title="Groups"><span class="fa fa-14 fa-users pos_1 fa-fw"></span> Groups <span class="fa fa-angle-down fa-fw"></span></a>
            <ul>
                <li><a href="javascript:void();" title="Manage Groups"><span class="fa fa-14 fa-pencil pos_1 fa-fw"></span> Manage Groups</a></li>
                <li><a href="javascript:void();" title="Create Group"><span class="fa fa-14 fa-users pos_1 fa-fw"></span> Create Group</a></li>
            </ul>
                </li>
                <li><a href="javacript: void(0)" title="Reports"><span class="fa fa-14 fa-file pos_1 fa-fw"></span> Reports <span class="fa fa-angle-down fa-fw"></span></a>
            <ul>
                <li><a href="javascript:void();" title="User Report"><span class="fa fa-14 fa-user pos_1 fa-fw"></span> User Report</a></li>
                <li><a href="javascript:void();" title="Group Report"><span class="fa fa-14 fa-users pos_1 fa-fw"></span> Group Report</a></li>
                <li><a href="javascript:void();" title="User List Report"><span class="fa fa-14 fa-list pos_1 fa-fw"></span> User List Report</a></li>
                <li><a href="javascript:void();" title="Management Report"><span class="fa fa-14 fa-briefcase pos_1 fa-fw"></span> Management Report</a></li>
                <li><a href="javascript:void();" title="Activity Report"><span class="fa fa-14 fa-history pos_1 fa-fw"></span> Activity Report</a></li>
                <li><a href="javascript:void();" title="Admin Report"><span class="fa fa-14 fa-file-text-o pos_1 fa-fw"></span> Admin Report</a></li>
                <li><a href="javascript:void();" title="Authentication Services"><span class="fa fa-14 fa-check-circle-o pos_1 fa-fw"></span> Authentication Services</a></li>
            </ul>
                </li>
                <li><a href="javascript:void();" title="Tutorial"><span class="fa fa-17 fa-info-circle pos_1 fa-fw"></span> Tutorial</a></li>
                <li><a id="risk-admin-help" href="javascript:void();" title="Help"><span class="fa fa-17 fa-question-circle pos_1 fa-fw"></span> Help</a></li>
            </ul>
        </div>
    </div>
    <div id="maincontents">
        <i class="fa fa-16 fa-user pos_1 fa-fw bluetxt"></i> <span class="fa-16 bluetxt">Manage Users</span>
        <p></p>
        <div class="formfields">
            <span class="fl_right">
                <a href="javascript:void();" title="Create User" class="iconButton"><i class="fa fa-16 fa-user-plus pos_1 fa-fw"></i></a>&nbsp;
            </span>
            <span class="clear"></span>    
                <div class="form_label"><label for="SEARCH_FIRSTNAME">Name</label>:</div>
                <div class="form_field">
                    <label for="SEARCH_LASTNAME" style="display: none">Last Name</label>
                    <input type="text" placeholder="Last Name" id="SEARCH_LASTNAME" name="SEARCH_LASTNAME" value="" maxlength="30">
                    <input type="text" placeholder="First Name" id="SEARCH_FIRSTNAME" name="SEARCH_FIRSTNAME" value="" maxlength="30">
                </div>
                <div class="clear"></div>
                <div class="form_section">
                    <div class="form_label"><label for="SEARCH_LOGINID">User ID</label>:</div>
                    <div class="form_field">
                        <input type="text" placeholder="Login ID" id="SEARCH_LOGINID" name="SEARCH_LOGINID" value="" maxlength="20">
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="form_section">
                    <div class="form_label"><label for="employee_num">Employee #</label>:</div>
                    <div class="form_field">
                        <input type="text" name="employee_num" placeholder="Employee #" id="employee_num" title="Employee Number" value=""> 
                        <a id="emp_identifier" href="javascript:void(0);"><i class="fa fa-14 fa-info-circle pos_1 fa-fw"></i></a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
                <div class="form_section">    
                    <div class="form_label"><label for="DD_BILLGROUP">Billgroup</label>:</div>
                    <div class="form_field">
                        <select name="DD_BILLGROUP" id="DD_BILLGROUP" title="Billgroup">
                        </select>
                        <a class="submitBtn" href="javascript:void();"> Select </a>
                    </div>
                    <div class="clear"></div>    
                </div> 
                <div class="form_section">
                    <div class="form_label"><span id="ALLUSERS">User Status</span>:</div>
                    <div class="form_field nowrap"> </div> 
                    <div id="status_type" style="display: none">   
                        <div class="clear"></div>      
                        <div class="form_label"><label for="usertype">Status Type</label>:</div>
                        <div class="form_field">
                            <select id="usertype" name="usertype">
                            </select>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="form_section">
                    <div class="form_label"><label for="accesslevel">Access Level</label>:</div>
                    <div class="form_field nowrap">
                        <input name="accesslevel" class="accesslevel" id="accesslevel1" type="radio" value="admin"> <label for="accesslevel1">Admin</label> &nbsp;&nbsp;
                        <input name="accesslevel" class="accesslevel" id="accesslevel2" type="radio" value="user"> <label for="accesslevel2">User</label> &nbsp;&nbsp;
                        <input name="accesslevel" class="accesslevel" id="accesslevel3" type="radio" checked="checked" value="all"> <label for="accesslevel3">All</label>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="myaccount-containers">
                <div class="section">
                    <table id="userList" class="table data_table" width="100%">
                    <thead>
                        <tr>
                            <th><label for="checkall" style="display: none">Dummy-508</label><input aria-label="All Users" class="inputCheck" type="checkbox" name="select" title="All Users" id="checkall" disabled=""></th>
                            <th id="col_lst_nam">Last Name</th>
                            <th id="col_frst_nam">First Name</th>
                            <th id="col_access_lvl">Access Level</th>
                            <th id="col_user_id">User ID</th>
                            <th id="col_emp_id">Employee #</th>
                            <th id="col_bill_grp">Billgroup</th>
                            <th id="col_status">Status</th>
                            <th id="col_status_typ">Status Type</th>
                            <th id="col_locked">Locked?</th>
                            <th id="col_edt">Edit/View</th>
                            <th id="col_cpy">Copy</th>
                            <th id="col_inv">Investigate</th>
                            <th id="col_alrt">Alert</th>
                        </tr>
                    </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
