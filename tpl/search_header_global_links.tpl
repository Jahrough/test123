<!-- begin search_header_global_links.tpl -->
<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>

<TMPL_IF NAME="IS_DEMO_ENV">
     <TMPL_INCLUDE NAME="accurint_demo_env_message.tpl">
</TMPL_IF>

    <td align="right" class="smallfont1">
    <TMPL_UNLESS DA_ONLY>
    <a class="searchheader" href="javascript:send_event('SEARCH/SHOW_MENU')">Main Menu</a>
    &nbsp;|&nbsp;
    </TMPL_UNLESS>
    <TMPL_UNLESS HIDE_MYACCOUNT>
    <a class="searchheader" href="javascript:show_post_popup('MYACCOUNT/SHOW_PROFILE','MyAccountWin','','',1,1,1,1,1,0);">My Account</a>
    &nbsp;|&nbsp;
    </TMPL_UNLESS>
    <a class="searchheader" href="javascript:printit();">Print</a>
    &nbsp;|&nbsp;
    
    <TMPL_IF IRS>
    <a class="searchheader" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','IRSCustomerSupport',450,400,0,0,0,0,0,0,'','irs/customer_support');">Customer Support</a>
    <TMPL_ELSE>
    <TMPL_IF IRB>
    <a class="searchheader" href="javascript:show_post_popup('MYACCOUNT/SHOW_CONTACT_US','ContactUs',450,500);">Contact Us</a>
    <TMPL_ELSE>
    <a class="searchheader" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','475','610',1,1,1,1,1,0,'','contact_select');">Contact Us</a>
    </TMPL_IF>
    </TMPL_IF>
    
    &nbsp;|&nbsp;
    <TMPL_IF NAME=IS_DEMO_ENV>
	      <TMPL_IF IRS>
		 <a class="searchheader" href="javascript:window.close();opener.focus();">Back to Accurint</a>
	      <TMPL_ELSE>
		 <a class="searchheader" href="javascript:send_event('LOGOUT');">Log Out</a>
	      </TMPL_IF>
    <TMPL_ELSE>
         <a class="searchheader" href="javascript:send_event('LOGOUT');">Log Out</a>
    </TMPL_IF>
    </td>
  </tr>
</table>
<!-- end search_header_global_links.tpl -->
