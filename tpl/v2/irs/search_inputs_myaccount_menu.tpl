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
        <TMPL_IF SA>
	<li><a href="javascript:show_post_popup('BILLING/SUMMARY','MyAccountWin','','',1,1,1,1,1,0);">Billing Info</a></li>
	</TMPL_IF>
        <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ACTIVITY','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');">Activity</a></li>
        <li><a href="javascript:show_post_popup('SECURITY/SHOW_SECURITY','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');">Company Security</a></li>
        <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);">Preferences</a></li>

	<TMPL_IF NAME="SHOW_REPORT_MANAGER">
           <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ORDER_MGR','MyAccountWin','','',1,1,1,1,1,0);">Report Manager</a></li>
        </TMPL_IF>
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
        <TMPL_IF NAME=SA>
	<li><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','AdminContactUsWin','450','400',0,0,0,0,0,0,'','irs/customer_support');">Customer Support</a></li>
	</TMPL_IF> 
        <TMPL_UNLESS IS_RESELLER>
	<li><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','TrainingMaterials','700','500',0,0,0,1,1,0,'','irs/training_materials');" title="Training and Resources">Training and Resources</a></li>
	<li><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','ResearchTools','700','500',0,0,0,1,1,0,'','irs/research_tools');" title="Free Internet Research Tools">Free Internet Research Tools</a></li>
	</TMPL_UNLESS>
	</ul>
</div>
<div id="myAccountBot"></div>

<!-- End My Account section -->
