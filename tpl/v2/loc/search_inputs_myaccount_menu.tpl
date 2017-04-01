<!-- Start My Account section -->
<div id="myAccount">
	<div class="myAccountHdr">My Account</div>
	<ul>
        <!--<li><a href="http://learn.lexisnexis.com/lexisnexis/default.aspx" target="_blank">E-Learning</a></li>-->
        <li><a href="http://www.accurint.com/security_center/" target="_blank">Security Center</a></li>
        <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);">Preferences</a></li>

        <TMPL_UNLESS NAME="DISABLE_USER_PASSWORD_CHANGES"><TMPL_UNLESS NAME="HIDE_PASSWORD_CHANGE">
           <li><a href="javascript:show_post_popup('MANAGE/MANAGE_SINGLE_ACCOUNT','MyAccountWin','','',1,1,1,1,1,0);">Account Credentials</a></li>
	</TMPL_UNLESS></TMPL_UNLESS>

	<TMPL_IF NAME="SHOW_REPORT_MANAGER">
           <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ORDER_MGR','MyAccountWin','','',1,1,1,1,1,0);">Report Manager</a></li>
        </TMPL_IF>

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
