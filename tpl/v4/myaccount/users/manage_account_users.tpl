<!-- begin manage_account_users.tpl -->
<input type=hidden name="PAGE_NUMBER" value=<TMPL_IF name="CURRENT_PAGE"><TMPL_VAR name="CURRENT_PAGE"><TMPL_ELSE>1</TMPL_IF>>
<input type=hidden name="PREVIOUS_ALL_USERS" value=<TMPL_VAR name="PREVIOUS_ALL_USERS">>
<input type=hidden name="SUSPEND_CHECKED_USERS" value=0>
<input type=hidden name="DELETE_CHECKED_USERS" value=0>
<input type=hidden id="FIRST_TIME_LOAD_DONE" name="FIRST_TIME_LOAD_DONE" value="<TMPL_VAR FIRST_TIME_LOAD_DONE>">
<input type=hidden id="RUN_ONE_TIME_SCRIPT" name="RUN_ONE_TIME_SCRIPT" value="<TMPL_VAR RUN_ONE_TIME_SCRIPT>">
<input type=hidden name="SUBSCRIPTIONID">
<input type=hidden name="COMPANY_ID">
<input type=hidden name="INV_SUBJECT_USER_ID">
<input type=hidden name="INV_SUBJECT_USER_NAME">
<input type=hidden name="INV_SUBJECT_EXT_EMP_ID">
<input type=hidden id="DISABLE_RUN_REPORT" value="<TMPL_VAR DISABLE_RUN_REPORT>">
<input type=hidden id="DISABLE_USER_MODIFY" value="<TMPL_VAR DISABLE_USER_MODIFY>">
<input type=hidden id="DISABLE_USER_COPY" value="<TMPL_VAR DISABLE_USER_COPY>">
<input type=hidden id="IS_ALERT_ALLOWED" value="<TMPL_VAR IS_ALERT_ALLOWED>">
<input type=hidden id="SELECTED_USERS" name="SELECTED_USERS" value="<TMPL_VAR SELECTED_USERS>">
<input type=hidden name="ACTIVATE_USERS">
<input type=hidden name="INACTIVATE_USERS">
<input type=hidden name="HELP_PAGE_NAME" value="bsp_lp_admin_users_c.html">


<TMPL_UNLESS IS_ADMIN_REPORTING>
<i class="fa fa-16 fa-user pos_1 fa-fw bluetxt"></i> <span class="fa-16 bluetxt">Manage Users</span>
<TMPL_ELSE>
<i class="fa fa-16 fa-user pos_1 fa-fw bluetxt"></i> <span class="fa-16 bluetxt">User Report</span>
</TMPL_UNLESS>
<p></p>
<div class="formfields">

    <TMPL_IF name=MANAGE_ACCOUNT_ERROR>
        <div class="error_message redtxt rcorner3">
            <span class="fl_right"><a class="close_error" href="javascript:void(0);"><i class="fa fa-14 fa-times pos_1 fa-fw redtxt"></i></a></span>
            <TMPL_IF name=ERROR_MESSAGE>
                <i class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw redtxt"></i> <TMPL_VAR name=ERROR_MESSAGE>
            <TMPL_ELSE>
                    <TMPL_IF name=ERROR_NOSELECT>
                            <i class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw redtxt"></i> You must select a user.
                    <TMPL_ELSE>
                            <TMPL_IF name=ERROR_UNKNOWN_USER>
                                    <i class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw redtxt"></i> Unknown USER.
                            <TMPL_ELSE>
                                        <TMPL_IF name=ERROR_SECURITY_LOCKED>
                                            <i class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw redtxt"></i> Account is LOCKED.
                                        <TMPL_ELSE>
                                            <i class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw redtxt"></i> Unknown ERROR
                                        </TMPL_IF>
                            </TMPL_IF>
                    </TMPL_IF>
           </TMPL_IF>
        <span class="clear"></span>
        </div>
    </TMPL_IF>
    <TMPL_UNLESS IS_ADMIN_REPORTING>
    <TMPL_IF CANNOT_ADD_USER>
        <i class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw redtxt"></i> The maximum number of users has been reached for your account.  To create additional users you must first delete an existing user.
    <TMPL_ELSE>    
            <span class="fl_right">
                <a href="javascript:void(0);" onClick="javascript:send_event('MANAGE/ADD_USER'); return false;" title="Create User" class="iconButton"><i class="fa fa-16 fa-user-plus pos_1 fa-fw"></i></a>&nbsp;
            </span>
    </TMPL_IF>
    </TMPL_UNLESS>     
    <span class="clear"></span>    
    
    <input type=hidden name="SEARCH_FIRSTNAME_PREV" value="<TMPL_VAR name="SEARCH_FIRSTNAME_PREV">">
    <input type=hidden name="SEARCH_LASTNAME_PREV" value="<TMPL_VAR name="SEARCH_LASTNAME_PREV">">
    <input type=hidden name="SEARCH_LOGINID_PREV" value="<TMPL_VAR name="SEARCH_LOGINID_PREV">">    
    
<TMPL_INCLUDE NAME=myaccount/user_filters.tpl>    
<div id="reset-row">
    <a class="cancelBtn" href="javascript:resetUserList();">Reset</a>
</div>
</div>
<!-- START div.myaccount-containers -->
<div class="myaccount-containers">
    <div class="section">
        
    

           <!-- START USER LIST -->
			<table id="userList" class="table data_table" width="100%">
				<thead>
					<tr>
                                            <th><label for="checkall" style="display: none">Dummy-508</label><input aria-label="All Users" class="inputCheck" type="checkbox" name="select" title="All Users" id="checkall" disabled/></th>
                                            <th id="col_lst_nam">Last Name</th>
                                            <th id="col_frst_nam">First Name</th>
                                            <th id="col_access_lvl">Access Level</th>
                                            <th id="col_user_id">User ID</th>
                                            <th id="col_emp_id">Employee #</th>
                                            <th id="col_bill_grp">Billgroup</th>
                                            <th id="col_status">Status</th>
                                            <th id="col_status_typ">Status Type</th>
                                            <th id="col_locked">Locked?</th>
                                            <TMPL_IF IS_ADMIN_REPORTING>
                                                <th id="col_rn_rpt">Run Report</th>
                                            <TMPL_ELSE>
                                                <th id="col_edt">Edit/View</th>
                                                <th id="col_cpy">Copy</th>
                                                <th id="col_inv">Investigate</th>
                                                <th id="col_alrt">Alert</th>
                                            </TMPL_IF>
					</tr>
				</thead>
			</table>
        <!-- END USER LIST -->
    </div>
</div>
<!-- END div.myaccount-containers -->

<INPUT TYPE="HIDDEN" name="LOGINID" VALUE="">
<INPUT TYPE="HIDDEN" name="UPDATE_USER_COMPANYID" VALUE="">
<INPUT TYPE="HIDDEN" name="SORT" VALUE="<TMPL_VAR NAME=SORT>">
<INPUT TYPE="HIDDEN" name="OLDSORT" VALUE="<TMPL_VAR NAME=SORT>">
<INPUT TYPE="HIDDEN" name="SORTDIR" VALUE="<TMPL_VAR NAME=SORTDIR>">
<!-- end manage_account_users.tpl -->
