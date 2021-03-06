<!-- Start My Account section -->
<div id="rpMyAccount">
	<ul>
        <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);">Preferences</a></li>
        
	<TMPL_UNLESS NAME="DISABLE_USER_PASSWORD_CHANGES"><TMPL_UNLESS NAME="HIDE_PASSWORD_CHANGE">
	    <li><a href="javascript:show_post_popup('MANAGE/MANAGE_SINGLE_ACCOUNT','MyAccountWin','','',1,1,1,1,1,0);">Account Credentials</a></li>
	</TMPL_UNLESS></TMPL_UNLESS>

	<TMPL_IF NAME="SHOW_REPORT_MANAGER"><li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ORDER_MGR','MyAccountWin','','',1,1,1,1,1,0);">Report Manager</a></li></TMPL_IF>
	<TMPL_UNLESS DELETE_ALERTING><TMPL_UNLESS IS_RESELLER><li><TMPL_IF NAME="DISABLE_ENTITY_ALERTING">Person Alerts<TMPL_ELSE><a href="javascript:show_post_popup('ALERT/SHOW_ALERTS_MGR','MyAccountWin','','',1,1,1,1,1,0);" title="View Person Alerts"><TMPL_IF NAME="ALERTING_NEW_COUNT">View <TMPL_VAR NAME="ALERTING_NEW_COUNT"> New Person Alerts!<TMPL_ELSE>Person Alerts</TMPL_IF></a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS>
    <TMPL_IF SHOW_CASE_CONNECT><li><a href="javascript:show_post_popup('CC/MANAGER','MyAccountWin','','',1,1,1,1,1,0);"
      id="CC_COUNTER">Case Deconfliction Alerts</a></li></TMPL_IF>
	<TMPL_UNLESS IS_RESELLER>
	<TMPL_IF SA>
	<li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_BATCH_REPORTING_DASHBOARD','MyAccountWin','960','900',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Batch Reporting Dashboard</a></li>
	</TMPL_IF>
	<TMPL_UNLESS SA>
	<TMPL_IF BATCH_DASHBOARD_ONLY>
	<li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_BATCH_REPORTING_DASHBOARD','MyAccountWin','960','900',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Batch Reporting Dashboard</a></li>
	</TMPL_IF>
	</TMPL_UNLESS>
	</TMPL_UNLESS>
        <TMPL_UNLESS DELETE_BATCH>
	<TMPL_UNLESS IS_RESELLER><li><TMPL_IF ALLOW_BATCH_JOBS><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ORDER_MGR_BATCH','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Batch Output</a><TMPL_ELSE>Batch Output</TMPL_IF></li></TMPL_UNLESS>
        </TMPL_UNLESS>
        <TMPL_IF NAME="SHOW_ADMIN_CONTACT">
	<li>
        <a href="javascript:show_post_popup('LOGIN/SHOW_ADMIN_POPUP','ADMIN_CONTACT','475','610',0,0,0,1,1,0,'','display_admin_contact');">
        Your Company Administrator</a></li>
        </TMPL_IF>
      <TMPL_UNLESS NAME="MFA_MACHINE_ACTIVATE_ENABLED">
      <TMPL_IF NAME=SHOW_OTP_ADD_USER>
         <li><a href="javascript:show_post_popup('LOGIN/SMS_2FA_REGISTRATION_USER_SETUP','MyAccountWin','','',1,1,1,1,1,0);">Add Multi-Factor Token</a></li>
      </TMPL_IF>
      <TMPL_IF NAME=SHOW_OTP_USER>
         <li><a href="javascript:show_post_popup('OTP/USER_SHOW_EDIT_SMS_OTP_TOKEN','MyAccountWin','','',1,1,1,1,1,0);">Edit Multi-Factor Token</a></li>
         <li><a href="javascript:show_post_popup('OTP/SHOW_USER_UNASSIGN_SMS_OTP_FORM','MyAccountWin','','',1,1,1,1,1,0);">Unassign Multi-Factor Token</a></li>     
     </TMPL_IF>
     </TMPL_UNLESS>
        </ul>
</div>
<!-- End My Account section -->
