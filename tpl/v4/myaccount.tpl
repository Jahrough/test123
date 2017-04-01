<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- begin manage_account.tpl -->
        <!--<TMPL_VAR NAME=SERVER_ID>-->
        <!-- <title>My Account</title> -->
        <TMPL_INCLUDE NAME="myaccount/myaccount_includes.tpl">
    </head>

    <body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS> init_dropdowns();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>
	<div id="container" role="dialog">
	    <TMPL_INCLUDE NAME="myaccount/myaccount_header.tpl">
	    <TMPL_INCLUDE NAME="myaccount/myaccount_navigation.tpl">
	    <form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
		    <TMPL_INCLUDE NAME="myaccount/common_myaccount_hidden_input.tpl">

		    <div id="maincontents">	
			<TMPL_IF NAME="DISABLED">
              <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
			<TMPL_ELSE>
			  <TMPL_IF SA_DISABLED>
			    <TMPL_INCLUDE NAME="myaccount/sa_disabled_message.tpl">
			  <TMPL_ELSE>
              <TMPL_IF NAME="MYACCOUNT_ACTIVITY">
                <link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/myaccount/report.css" />                                
                <TMPL_IF MYACCOUNT_SHOW_ACTIVITY>
                  <TMPL_INCLUDE NAME=myaccount/reports/report_activity_form_inputs.tpl>  
                </TMPL_IF>
                <TMPL_IF MYACCOUNT_SHOW_UER_LIST_REPORT>
                  <TMPL_INCLUDE NAME=myaccount/reports/report_user_list_form_inputs.tpl>  
                </TMPL_IF>
                <TMPL_IF MYACCOUNT_MANAGEMENT_REPORT>
                  <TMPL_INCLUDE NAME=myaccount/reports/report_management_form_inputs.tpl>  
                </TMPL_IF>
                <TMPL_IF SHOW_ACTIVITY_BILLGROUP_LIST>
                  <TMPL_INCLUDE NAME=myaccount/reports/billgroup_list_form.tpl>
                </TMPL_IF>
              </TMPL_IF>
              <TMPL_IF SHOW_AUTHENTICATION_SERVICE>
                <TMPL_INCLUDE NAME=myaccount/reports/authentication_service.tpl>
              </TMPL_IF>
              <TMPL_IF SHOW_ADMIN_REPORT>
                <TMPL_INCLUDE NAME=myaccount/reports/admin_report_input_form.tpl>
              </TMPL_IF>
              <TMPL_IF SHOW_ALERT_REPORT>
                <TMPL_INCLUDE NAME=myaccount/reports/alert_report_input_form.tpl>
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
