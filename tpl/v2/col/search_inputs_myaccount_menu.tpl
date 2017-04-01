<!-- Start My Account section -->
<div id="myAccount">
	<div class="myAccountHdr">My Account</div>
	<ul>
        <!--<li><a href="http://learn.lexisnexis.com/lexisnexis/default.aspx" target="_blank">E-Learning</a></li>-->
        <li><a href="http://www.accurint.com/security_center/index.html?source=<TMPL_VAR NAME=APPLICATION_TYPE>" target="_blank">Security Center</a></li>
        <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);">Preferences</a></li>

        <TMPL_UNLESS NAME="DISABLE_USER_PASSWORD_CHANGES"><TMPL_UNLESS NAME="HIDE_PASSWORD_CHANGE">
           <li><a href="javascript:show_post_popup('MANAGE/MANAGE_SINGLE_ACCOUNT','MyAccountWin','','',1,1,1,1,1,0);">Account Credentials</a></li>
	</TMPL_UNLESS></TMPL_UNLESS>

        <TMPL_IF COL>
	   <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);">Change Accurint Theme</a></li>
        </TMPL_IF>

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

	<TMPL_UNLESS IS_RESELLER>
	<li><TMPL_IF ALLOW_BATCH_JOBS><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ORDER_MGR_BATCH','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Batch Output</a><TMPL_ELSE>Batch Output</TMPL_IF></li>
	</TMPL_UNLESS>

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

        <TMPL_UNLESS GCOL>
        <TMPL_IF FCOL_TCOL>
            <li><a href="javascript:show_post_popup('SEARCH2/SHOW_CONSUMER_COMMENTS_POPUP','MyAccountWin','','',1,1,1,1,1,1,0,'');"><strong>Address &amp; Phone Comments</strong></a></li>
        </TMPL_IF>
        </TMPL_UNLESS>

          <TMPL_IF NAME=SA>
	     <li><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','AdminContactUsWin','450','500',0,0,0,0,0,0,'','customer_support');">Product Support</a></li>
	  </TMPL_IF> 

	  <TMPL_UNLESS IS_RESELLER>
	  	<li><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','FAQMenuWindow','450','500',1,0,0,1,1,0,'','faq');" >Frequently Asked Questions</a></li>
	  </TMPL_UNLESS>
        </ul>
</div>
<div id="myAccountBot"></div>

<!-- End My Account section -->
