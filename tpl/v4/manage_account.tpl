<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- begin manage_account.tpl -->
        <!--<TMPL_VAR NAME=SERVER_ID>-->
        <!-- <title>My Account</title> -->
        <TMPL_INCLUDE NAME="myaccount/myaccount_includes.tpl">
    </head>

    <body onLoad="<TMPL_IF MANAGE_SHOW_USERS>populate_data_grid();</TMPL_IF><TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS> init_dropdowns();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>
	<div id="container" role="dialog">
	    <TMPL_INCLUDE NAME="myaccount/myaccount_header.tpl">
	    <TMPL_INCLUDE NAME="myaccount/myaccount_navigation.tpl">
	    <form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
		    <TMPL_INCLUDE NAME="myaccount/common_myaccount_hidden_input.tpl">
		    <div id="maincontents">
            <div class="error_message redtxt rcorner3" style="display: none;">
              <span class="fl_right"><a class="close_error" href="javascript:void(0);"><i class="fa fa-14 fa-times pos_1 fa-fw redtxt"></i></a></span>
              <i class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw redtxt"></i> <span class="error_text"></span>
              <span class="clear"></span>
            </div>
			  <TMPL_IF NAME="DISABLED">
				<TMPL_INCLUDE NAME=myaccount_disabled.tpl>
			  <TMPL_ELSE>
			    <TMPL_IF NAME="SA_DISABLED">
			      <TMPL_INCLUDE NAME="myaccount/sa_disabled_message.tpl">
			    <TMPL_ELSE>
			      <TMPL_IF NAME="MANAGE_SHOW_USERS">
				    <TMPL_INCLUDE NAME=myaccount/users/manage_account_users.tpl>
			      </TMPL_IF>
                  <TMPL_IF NAME="MANAGE_ADD_USER">
                    <TMPL_INCLUDE NAME=myaccount/users/add_edit_users.tpl>
                  </TMPL_IF>
                  <TMPL_IF NAME="MANAGE_UPDATE_USER">
                    <TMPL_INCLUDE NAME=myaccount/users/add_edit_users.tpl>
                  </TMPL_IF>
                  <TMPL_IF NAME="MANAGE_COPY_USER">
                    <TMPL_INCLUDE NAME=myaccount/users/add_edit_users.tpl>
                  </TMPL_IF>
                  <TMPL_IF NAME="MANAGE_GROUPS_SHOW">
                    <TMPL_INCLUDE NAME="myaccount/groups/manage_groups.tpl">
                  </TMPL_IF>
                  <TMPL_IF NAME="ADD_GROUP">
                    <TMPL_INCLUDE NAME=myaccount/groups/add_group.tpl>
                  </TMPL_IF>                              
                  <TMPL_IF NAME="MANAGE_UPDATE_GROUP">
                    <TMPL_INCLUDE NAME=myaccount/groups/add_group.tpl>
                  </TMPL_IF>

                  <TMPL_IF NAME="MANAGE_ADD_GROUP">
                    <TMPL_INCLUDE NAME=myaccount/groups/add_group.tpl>
                  </TMPL_IF> 
                  <TMPL_IF NAME="MANAGE_USERS_REPORT">
                    <TMPL_INCLUDE NAME=myaccount/reports/user_report/manage_user_report.tpl>
                  </TMPL_IF>
                  <TMPL_IF MANAGE_GROUPS_REPORT>
                    <TMPL_INCLUDE NAME=myaccount/reports/group_report_form_input.tpl>
                  </TMPL_IF> 
                  <TMPL_IF MANAGE_INVESTIGATE>
                    <TMPL_INCLUDE NAME=myaccount/users/investigate_user.tpl>
                  </TMPL_IF>
                </TMPL_IF>                               
			  </TMPL_IF>
		   </div>
	    </form>
        </div>

        <TMPL_INCLUDE NAME="search_hidden_form.tpl">
        <TMPL_INCLUDE NAME="verify_password_trigger.tpl">

	<TMPL_INCLUDE NAME="myaccount/myaccount_footer.tpl">
    </body>
</html>

<!-- end manage_account.tpl -->
