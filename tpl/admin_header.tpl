<!-- begin admin_header.tpl -->

<div id="pleasewait" style="position:absolute; top:250px;left:300px; visibility:hidden; z-index:1000;">
<img src="<TMPL_VAR NAME=IMGPATH>/v2/bg_processing.gif" id="pw" name="pw" width="300" height="65" border="0">
</div>

<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js" type="text/javascript"></script>

<script type="text/javascript">
var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
function open_help() {
    if (vertical == 'gov' || vertical == 'le') {
        window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov");
    } else {
        window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx");
    }
}
function open_help_html(help_url,help_win) {
    general_win('<TMPL_VAR NAME=HLPPATH>/' + help_url,help_win,780,490,1,1,1,1,1,0);
}
function myaccount_event(param1,param2) { // IE 6 Needs
    if (param2) {
	setTimeout(function(){send_event(param1,param2)},250);
    } else {
	setTimeout(function(){send_event(param1)},250);
    }
    setTimeout(function() { showpw(); }, 250);
}
</script>

<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurintMyAccount.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<style type="text/css">
#myaccounttabs {
    background:url(<TMPL_VAR NAME=IMGPATH>/v2/my_account_blank_tab.gif);
    font-family: Arial, Helvetica, sans-serif;
    font-size: 9pt;
    line-height:95%;
    width: 80px;
    height: 40px;
}
#slug {
    background:url(<TMPL_VAR NAME=IMGPATH>/v2/my_account_slug_blue.gif);
    width:100%;
}
#myaccounttabs a { color:#666666; }
#myaccounttabson {
    background:url(<TMPL_VAR NAME=IMGPATH>/v2/my_account_blank_tab_over.gif);
    font-family: Arial, Helvetica, sans-serif;
    font-weight: bold;
    font-size: 9pt;
    line-height:95%;
    width: 80px;
    height: 40px;
}
#myaccounttabson .active { color:#000000; }
#myaccounttabstxt { padding-top: 10px; }

<TMPL_IF GOV_CLIENT>
   #hd{
	   background:url(<TMPL_VAR NAME='IMGPATH'>/v2/gov/logo_client.png) no-repeat;
	   padding-right:15px;
	   height:55px;
   }
<TMPL_ELSE>
<TMPL_IF LE_CLIENT>
   #hd{
	   background:url(<TMPL_VAR NAME='IMGPATH'>/v2/le/logo_client.png) no-repeat;
	   padding-right:15px;
	   height:55px;
   }
</TMPL_IF>
</TMPL_IF>

</style>

<div id="hd"><span trackid="hdr_top_logo"></span></div>

<table border="0" cellpadding="0" cellspacing="0" width="880">
  <tr>
     
    <TMPL_UNLESS BILL_PMT_ONLY>
      <TMPL_IF NAME="MOBILE_ONLY_USER">
        <TMPL_UNLESS HIDE_PASSWORD_CHANGE>
            <TMPL_IF NAME="SA">
                <td onClick="myaccount_event('MANAGE/MANAGE_ACCOUNTS');" onMouseOver="this.style.cursor = 'pointer';document.getElementById('listmanage').style.left = findPos(this) + 'px';document.getElementById('listmanage').style.display = 'block';" onMouseOut="document.getElementById('listmanage').style.display = 'none';">
                    <div align="center" id="<TMPL_IF MANAGE_TAB>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF MANAGE_TAB>class="active" </TMPL_IF>href="javascript:void(0);">Manage</a></span></div></div>
                </td>
            </TMPL_IF>
 			<td onClick="myaccount_event('MANAGE/MANAGE_SINGLE_ACCOUNT');" onMouseOver="this.style.cursor = 'pointer';document.getElementById('listcredentials').style.left = findPos(this) + 'px';document.getElementById('listcredentials').style.display = 'block';" onMouseOut="document.getElementById('listcredentials').style.display = 'none';">
      			<div align="center" id="<TMPL_IF CHANGE_PASSWORD_TAB>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF CHANGE_PASSWORD_TAB>class="active" </TMPL_IF>href="javascript:void(0);">Account<br>Credentials</a></span></div></div>
            </td>
        </TMPL_UNLESS>
        <TMPL_UNLESS CSAML_LOGIN>
            <TMPL_UNLESS DA_ONLY>
                <td onClick="myaccount_event('MYACCOUNT/SHOW_PREFERENCES');" onMouseOver="this.style.cursor = 'pointer';">
                    <div align="center" id="<TMPL_IF MYACCOUNT_PREFERENCES>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF MYACCOUNT_PREFERENCES>class="active" </TMPL_IF>href="javascript:void(0);">Preferences</a></span></div></div>
                </td>
            </TMPL_UNLESS>
        </TMPL_UNLESS>
        <TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>
            <td onClick="myaccount_event('MYACCOUNT/SHOW_ORDER_MGR');" onMouseOver="this.style.cursor = 'pointer';document.getElementById('listreports').style.left = findPos(this) + 'px';document.getElementById('listreports').style.display = 'block';" onMouseOut="document.getElementById('listreports').style.display = 'none';">
                <div align="center" id="<TMPL_IF MYACCOUNT_ORDER_MGR>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF MYACCOUNT_ORDER_MGR>class="active" </TMPL_IF>href="javascript:void(0);">Report<br>Manager</a></span></div></div>
            </td>
        </TMPL_UNLESS>
      <TMPL_ELSE>

      <TMPL_UNLESS BILLING_END_USER>
      <td onClick="myaccount_event('MYACCOUNT/SHOW_PROFILE');" onMouseOver="this.style.cursor = 'pointer';">
      <div align="center" id="<TMPL_IF MYACCOUNT_PROFILE>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF MYACCOUNT_PROFILE>class="active" </TMPL_IF>href="javascript:void(0);">Summary</a></span></div></div>
      </td>
      </TMPL_UNLESS>

      <TMPL_IF NAME="SA">
      <td onClick="myaccount_event('MANAGE/MANAGE_ACCOUNTS');" onMouseOver="this.style.cursor = 'pointer';document.getElementById('listmanage').style.left = findPos(this) + 'px';document.getElementById('listmanage').style.display = 'block';" onMouseOut="document.getElementById('listmanage').style.display = 'none';">
      <div align="center" id="<TMPL_IF MANAGE_TAB>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF MANAGE_TAB>class="active" </TMPL_IF>href="javascript:void(0);">Manage</a></span></div></div>
      </td>
      <TMPL_ELSE>
      <TMPL_IF NAME="DYNAMIC_DESKTOP_CHAT">
      <td onClick="myaccount_event('DYNAMIC_DESKTOP/MANAGE_CHAT');" onMouseOver="this.style.cursor = 'pointer';document.getElementById('listmanage').style.left = findPos(this) + 'px';document.getElementById('listmanage').style.display = 'block';" onMouseOut="document.getElementById('listmanage').style.display = 'none';">
      <div align="center" id="<TMPL_IF MANAGE_TAB>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF MANAGE_TAB>class="active" </TMPL_IF>href="javascript:void(0);">Manage</a></span></div></div>
      <TMPL_ELSE>
      <TMPL_IF NAME="SHOW_OTP_USER_TAB">
      <td>
      <div align="center" id="<TMPL_IF MANAGE_TAB>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt">Manage</div></div>
      </TMPL_IF>
      </TMPL_IF>
      </TMPL_IF>

      <TMPL_UNLESS HIDE_PASSWORD_CHANGE>
      <td onClick="myaccount_event('MANAGE/MANAGE_SINGLE_ACCOUNT');" onMouseOver="this.style.cursor = 'pointer';document.getElementById('listcredentials').style.left = findPos(this) + 'px';document.getElementById('listcredentials').style.display = 'block';" onMouseOut="document.getElementById('listcredentials').style.display = 'none';">
      		<div align="center" id="<TMPL_IF CHANGE_PASSWORD_TAB>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF CHANGE_PASSWORD_TAB>class="active" </TMPL_IF>href="javascript:void(0);">Account<br>Credentials</a></span></div></div>
      </td>
    </TMPL_UNLESS>
    
    <TMPL_IF CASE_AUDITOR_TAB>
      <TMPL_IF SHOW_CASE_CONNECT>
      <td onClick="myaccount_event('CC/MANAGER');" onMouseOver="this.style.cursor = 'pointer';document.getElementById('listcc').style.left = findPos(this) + 'px';document.getElementById('listcc').style.display = 'block';" onMouseOut="document.getElementById('listcc').style.display = 'none';">
      <div align="center" id="<TMPL_IF AUDITOR>myaccounttabson<TMPL_ELSE><TMPL_IF CC_MANAGER>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF></TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF AUDITOR>class="active" <TMPL_ELSE><TMPL_IF CC_MANAGER>class="active" </TMPL_IF></TMPL_IF>href="javascript:void(0);">Case<br>Connect</a></span></div></div>
      </td>
      <TMPL_ELSE>
      <td onClick="myaccount_event('CC/SHOW_AUDIT');" onMouseOver="this.style.cursor = 'pointer';">
      <div align="center" id="<TMPL_IF AUDITOR>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF AUDITOR>class="active" </TMPL_IF>href="javascript:void(0);">Case<br>Audit</a></span></div></div>
      </td>
      </TMPL_IF>
    <TMPL_ELSE>
      <TMPL_IF SHOW_CASE_CONNECT>
      <td onClick="myaccount_event('CC/MANAGER');" onMouseOver="this.style.cursor = 'pointer';document.getElementById('listcc').style.left = findPos(this) + 'px';document.getElementById('listcc').style.display = 'block';" onMouseOut="document.getElementById('listcc').style.display = 'none';">
      <div align="center" id="<TMPL_IF AUDITOR>myaccounttabson<TMPL_ELSE><TMPL_IF CC_MANAGER>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF></TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF AUDITOR>class="active" <TMPL_ELSE><TMPL_IF CC_MANAGER>class="active" </TMPL_IF></TMPL_IF>href="javascript:void(0);">Case<br>Connect</a></span></div></div>
      </td>
      </TMPL_IF>
    </TMPL_IF>

    <TMPL_IF NAME="SA">
    <td onClick="myaccount_event('BILLING/SUMMARY');" onMouseOver="this.style.cursor = 'pointer';">
    <div align="center" id="<TMPL_IF BILLING_SECTION>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF BILLING_SECTION>class="active" </TMPL_IF>href="javascript:void(0);">Billing<br>Information</a></span></div></div>
    </td>
    <TMPL_ELSE>
      <TMPL_IF NAME="BILLING_END_USER">
        <td onClick="myaccount_event('BILLING/SUMMARY');" onMouseOver="this.style.cursor = 'pointer';">
        <div align="center" id="<TMPL_IF BILLING_SECTION>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF BILLING_SECTION>class="active" </TMPL_IF>href="javascript:void(0);">Billing<br>Information</a></span></div></div>
      </TMPL_IF>
    </TMPL_IF>

      <TMPL_UNLESS HIDE_ACTIVITY>
      <td onClick="myaccount_event('MYACCOUNT/SHOW_ACTIVITY','<TMPL_VAR NAME=ACTION_ADMIN>');" onMouseOver="this.style.cursor = 'pointer';<TMPL_IF NAME="ENABLE_GROUP_REPORTS"><TMPL_IF SA>document.getElementById('listactivity').style.left = findPos(this) + 'px';document.getElementById('listactivity').style.display = 'block';" onMouseOut="document.getElementById('listactivity').style.display = 'none';</TMPL_IF></TMPL_IF>">
      <div align="center" id="<TMPL_IF MYACCOUNT_ACTIVITY>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF MYACCOUNT_ACTIVITY>class="active" </TMPL_IF>href="javascript:void(0);">Activity</a></span></div></div>
      </td>
      </TMPL_UNLESS>

      <td onClick="myaccount_event('SECURITY/SHOW_SECURITY', '<TMPL_VAR NAME=ACTION_ADMIN>');" onMouseOver="this.style.cursor = 'pointer';"> 
      <div align="center" id="<TMPL_IF MYACCOUNT_SECURITY>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF MYACCOUNT_SECURITY>class="active" </TMPL_IF>href="javascript:void(0);">Company<br>Security</a></span></div></div> 
      </td> 

      <TMPL_UNLESS CSAML_LOGIN>
      <TMPL_UNLESS DA_ONLY>
      <td onClick="myaccount_event('MYACCOUNT/SHOW_PREFERENCES');" onMouseOver="this.style.cursor = 'pointer';">
      <div align="center" id="<TMPL_IF MYACCOUNT_PREFERENCES>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF MYACCOUNT_PREFERENCES>class="active" </TMPL_IF>href="javascript:void(0);">Preferences</a></span></div></div>
      </td>
      </TMPL_UNLESS>
      </TMPL_UNLESS>

      <td onClick="myaccount_event('MYACCOUNT/SHOW_ORDER_MGR');" onMouseOver="this.style.cursor = 'pointer';document.getElementById('listreports').style.left = findPos(this) + 'px';document.getElementById('listreports').style.display = 'block';" onMouseOut="document.getElementById('listreports').style.display = 'none';">
      <div align="center" id="<TMPL_IF MYACCOUNT_ORDER_MGR>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF MYACCOUNT_ORDER_MGR>class="active" </TMPL_IF>href="javascript:void(0);">Report<br>Manager</a></span></div></div>
      </td>
    <!-- End check for Mobile Only User -->
    </TMPL_IF>

    <TMPL_ELSE>
      <td onClick="myaccount_event('MANAGE/MANAGE_SINGLE_ACCOUNT');" onMouseOver="this.style.cursor = 'pointer';document.getElementById('listcredentials').style.left = findPos(this) + 'px';document.getElementById('listcredentials').style.display = 'block';" onMouseOut="document.getElementById('listcredentials').style.display = 'none';">
        <div align="center" id="<TMPL_IF CHANGE_PASSWORD_TAB>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF CHANGE_PASSWORD_TAB>class="active" </TMPL_IF>href="javascript:void(0);">Account<br>Credentials</a></span></div></div>
      </td>
      <td onClick="myaccount_event('BILLING/SUMMARY');" onMouseOver="this.style.cursor = 'pointer';">
      <div align="center" id="<TMPL_IF BILLING_SECTION>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF BILLING_SECTION>class="active" </TMPL_IF>href="javascript:void(0);">Billing<br>Information</a></span></div></div>
      </td>

    </TMPL_UNLESS>

    <TMPL_IF NAME="SA">
      <TMPL_IF PRICE_CAP_COMPANY>
        <td onClick="myaccount_event('MYACCOUNT/SHOW_PRICE_CAP_CONTROLS');" onMouseOver="this.style.cursor = 'pointer';">
          <div align="center" id="<TMPL_IF MYACCOUNT_PRICE_CAP_CONTROLS>myaccounttabson<TMPL_ELSE>myaccounttabs</TMPL_IF>"><div id="myaccounttabstxt"><a <TMPL_IF MYACCOUNT_PRICE_CAP_CONTROLS>class="active" </TMPL_IF>href="javascript:void(0);">Usage<br>Controls</a></span></div></div>
        </td>
      </TMPL_IF>
    </TMPL_IF>

    <!-- Stretching Begins Here -->
    <td id="slug"></td>
    <!-- End Stretching -->

    <td valign="bottom">
        <TMPL_IF MOBILE_ONLY_USER>
            <a href="javascript:send_event('LOGOUT');" onMouseOver="closewin.src='<TMPL_VAR NAME=IMGPATH>/v2/sign_out_corner_close_over.gif';" onMouseOut="closewin.src='<TMPL_VAR NAME=IMGPATH>/v2/sign_out_corner_close.gif';"><img border="0" width="70" height="30" name="closewin" src="<TMPL_VAR NAME=IMGPATH>/v2/sign_out_corner_close.gif" style="vertical-align: bottom;"></a>
        <TMPL_ELSE>
        <TMPL_IF NON_BILLABLE_SYSTEM_ADMIN>
            <a href="javascript:send_event('LOGOUT');" onMouseOver="closewin.src='<TMPL_VAR NAME=IMGPATH>/v2/sign_out_corner_close_over.gif';" onMouseOut="closewin.src='<TMPL_VAR NAME=IMGPATH>/v2/sign_out_corner_close.gif';"><img border="0" width="70" height="30" name="closewin" src="<TMPL_VAR NAME=IMGPATH>/v2/sign_out_corner_close.gif" style="vertical-align: bottom;"></a>
        <TMPL_ELSE>
            <TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT><a href="javascript:void(0);" onClick="self.onerror = function() {<TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>window.close();<TMPL_ELSE>javascript:send_event('LOGOUT');</TMPL_UNLESS> return true;}; if (opener) {if (!opener.closed){opener.focus()}}; <TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>window.close();<TMPL_ELSE>javascript:send_event('LOGOUT');</TMPL_UNLESS>" onMouseOver="closewin.src='<TMPL_VAR NAME=IMGPATH>/v2/search_corner_close_over.gif';" onMouseOut="closewin.src='<TMPL_VAR NAME=IMGPATH>/v2/search_corner_close.gif';"><img border="0" width="50" height="30" name="closewin" src="<TMPL_VAR NAME=IMGPATH>/v2/search_corner_close.gif" style="vertical-align: bottom;"></a></TMPL_UNLESS>
        </TMPL_IF>
        </TMPL_IF>
    </td>

  </tr>
</table>
<TMPL_UNLESS IRS>
<TMPL_UNLESS IRB>
<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
  <tr height="12">
    <td colspan="3" height="12" width="880"><img height="12" width="880" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr height="12">
    <td align="center" height="12" width="800" class="unifont2white"><b>24/7 Search and Technical Assistance: 1-866-277-8407&nbsp; OR&nbsp; <a style="text-decoration: underline; color: yellow;" href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php" target="_blank">Click For Live Chat</a></b></td>
    <td align="right" height="12" width="80" class="unifont2white">
    <TMPL_IF CC_MANAGER>
      <a href="javascript:void(0);" id="CC_HELP_LNK"><img id="CC_HELP_ON" src="<TMPL_VAR NAME=IMGPATH>/v2/help1_on.gif" alt="Launch eLearning"/><img id="CC_HELP_OVER" src="<TMPL_VAR NAME=IMGPATH>/v2/help1_over.gif"alt="Launch eLearning"/></a>
    <TMPL_ELSE>
    <script>
        <TMPL_UNLESS LOC>
        document.write('<a style="cursor: help;" href="javascript:void(0);" onClick="javascript:'
+'<TMPL_IF AUDITOR>open_help_html(\'case_audit_help.html#track\',\'Deconfliction\');<TMPL_ELSE>'
+'<TMPL_IF SHOW_CASE_CONNECT_PREFS>open_help_html(\'case_deconfliction_help.html#setupPref\',\'Deconfliction\');<TMPL_ELSE>'
+'open_help();</TMPL_IF></TMPL_IF>" onMouseOver="help1.src=\'<TMPL_VAR IMGPATH>/'
+'v2/help1_over.gif\';" onMouseOut="help1.src=\'<TMPL_VAR NAME=IMGPATH>/'
+'v2/help1_on.gif\';"><img name="help1" border="0" height="18" width="43" '
+'src="<TMPL_VAR NAME=IMGPATH>/v2/help1_on.gif" title="Launch eLearning" alt="Launch eLearning"></a>');
        <TMPL_ELSE>
	document.write('<a style="cursor: help;" href="javascript:void(0);" onClick="open_help_html(\'loc/myaccount_help.html\',\'MyAccountHelp\');" onMouseOver="help1.src=\'<TMPL_VAR NAME=IMGPATH>/v2/help1_over.gif\';" onMouseOut="help1.src=\'<TMPL_VAR NAME=IMGPATH>/v2/help1_on.gif\';"><img name="help1" border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/v2/help1_on.gif" title="MyAccount Help" alt="MyAccount Help"></a>');
	</TMPL_UNLESS>
    </script>
    </TMPL_IF>
    </td>
    <td height="12" width="10"><img height="12" width="10" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
</TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_INCLUDE NAME="myaccount_pulldown_menus.tpl">

<!-- end admin_header.tpl -->
