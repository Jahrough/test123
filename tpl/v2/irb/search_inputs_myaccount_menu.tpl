<!-- Start My Account section -->
<div id="myAccount">
	<div class="myAccountHdr">My Account</div>
	<ul>
	<li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_PROFILE','MyAccountWin','','',1,1,1,1,1,0)">Summary</a></li>
	<TMPL_IF NAME=SA>
	<li><a href="javascript:show_post_popup('MANAGE/MANAGE_ACCOUNTS','MyAccountWin','','',1,1,1,1,1,0);">Manage Users</a> </li>
	</TMPL_IF>
	<TMPL_IF NAME=SA>
	<TMPL_UNLESS NAME="MANAGE_COMPANY_DISABLED">
	<li><a href="javascript:show_post_popup('SECURITY/SHOW_COMPANY_SECURITY','MyAccountWin','','',1,1,1,1,1,0);">Manage Company</a></li>
	</TMPL_UNLESS>
	</TMPL_IF>
        <TMPL_UNLESS NAME="DISABLE_USER_PASSWORD_CHANGES"><TMPL_UNLESS NAME="HIDE_PASSWORD_CHANGE">
           <li><a href="javascript:show_post_popup('MANAGE/MANAGE_SINGLE_ACCOUNT','MyAccountWin','','',1,1,1,1,1,0);">Account Credentials</a></li>
	</TMPL_UNLESS></TMPL_UNLESS>
	<li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);">Change IRBsearch Theme</a></li>
        <TMPL_IF SA>
	<li><a href="javascript:show_post_popup('BILLING/SUMMARY','MyAccountWin','','',1,1,1,1,1,0);">Billing Info</a></li>
	</TMPL_IF>
        <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ACTIVITY','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');">Activity</a></li>
        <li><a href="javascript:show_post_popup('SECURITY/SHOW_SECURITY','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');">Company Security</a></li>
        <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);">Preferences</a></li>

	<TMPL_IF NAME="SHOW_REPORT_MANAGER">
           <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ORDER_MGR','MyAccountWin','','',1,1,1,1,1,0);">Report Manager</a></li>
        </TMPL_IF>
	<TMPL_UNLESS DELETE_ALERTING>
	  <TMPL_UNLESS IS_RESELLER>
	      <li>
		<TMPL_IF NAME="DISABLE_ENTITY_ALERTING">Person Alerts<TMPL_ELSE><a href="javascript:show_post_popup('ALERT/SHOW_ALERTS_MGR','MyAccountWin','','',1,1,1,1,1,0);" title="View Person Alerts"><TMPL_IF NAME="ALERTING_NEW_COUNT">View <TMPL_VAR NAME="ALERTING_NEW_COUNT"> New Person Alerts!<TMPL_ELSE>Person Alerts</TMPL_IF></a></TMPL_IF>
	      </li>  
	  </TMPL_UNLESS>
	</TMPL_UNLESS>
	<!--
	<TMPL_UNLESS IS_RESELLER>
	<li><TMPL_IF ALLOW_BATCH_JOBS><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ORDER_MGR_BATCH','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Batch Output</a><TMPL_ELSE>Batch Output</TMPL_IF></li>
	</TMPL_UNLESS>
	-->
        <TMPL_IF NAME=SA>
	<li><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','AdminContactUsWin','450','500',0,0,0,0,0,0,'','customer_support');" title="Customer Support For Administrator Accounts">Product Support</a></li>
	</TMPL_IF> 
	<TMPL_UNLESS IS_RESELLER>
	<li><a href="javascript:general_win('http://www.irbsearch.com/faq.html','FAQMenuWindow','990','600',1,1,1,1,1,0);void(0);" title="Frequently Asked Questions">Frequently Asked Questions</a></li>
	</TMPL_UNLESS>
        </ul>
</div>
<div id="myAccountBot"></div>

<!-- End My Account section -->
