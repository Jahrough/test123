<!-- begin manage_account_chpasswd.tpl -->
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='LOGINID'>">
<input type="hidden" name="MIN_PW_LEN" value="<TMPL_VAR NAME='MIN_PASSWORD_LENGTH'>">
<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <TMPL_IF NAME="MESSAGE">
      <TR>
        <td class="myaccounttitle" align="center" width="860" colspan="2"><TMPL_VAR NAME="MESSAGE">&nbsp;</TD>
      </TR>
      </TMPL_IF>
      <TMPL_IF NAME="PASSWORD_CHANGE_DONE">
      <tr>
        <td colspan="2" height="40" class="unifont1">&nbsp;</td>
      </tr>
      <TMPL_ELSE>
      <tr>
	<td align="center" class="unifont1" colspan="2"><b>If you don't remember your password, please contact your System Administrator.</b></td>
      </tr>
      <tr>
        <td width="460" align="center">
        <br><br><br>
        <table border="0" cellpadding="2" cellspacing="0" width="360">
          <tr>
            <td class="unifont1" align="left" width="160"><b><label for="cur_password">Current Password:</label></b></TD>
            <td align="left" width="200"><INPUT TYPE="password" id="cur_password" NAME="CURR_PASSWORD" SIZE="20" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
          </tr>
          <tr>
            <td class="unifont1" align="left" width="160"><b><label for="new_password">Type New Password:</label></b></TD>
            <td align="left" width="200"><INPUT TYPE="password" id="new_password" NAME="NEWPASSWORD" SIZE="20" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
          </tr>
          <tr>
            <td class="unifont1" align="left" width="160"><b><label for="con_password">Confirm New Password:</label></b></TD>
            <td align="left" width="200"><INPUT TYPE="password" id="con_password" NAME="CONFIRM_PASSWORD" SIZE="20" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
          </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td align="left">
              <br><br>
              <table border=0 cellspacing=10 cellpadding=5>
                  <tr>
                  <TMPL_UNLESS NAME="REQUIRE_PASSWORD_CHANGE">
                  <TMPL_IF ENABLE_SECURITY_QUESTION>
                  <td>
                    <a class="myaccount-btn red-btn" name="accept" href="javascript:send_event('MANAGE/MANAGE_SINGLE_ACCOUNT');" style="float:left;">Back</a>
                  </td>
                   </TMPL_IF> 
                  </TMPL_UNLESS>
                  <td>
                    <a class="myaccount-btn red-btn" name="accept" href="javascript:if(password_match(document.forms[0].NEWPASSWORD, document.forms[0].CONFIRM_PASSWORD, document.forms[0].CURR_PASSWORD, <TMPL_VAR NAME=MIN_PASSWORD_LENGTH>, <TMPL_IF SHA2_PASSWORD>1<TMPL_ELSE><TMPL_IF PW_COMPLEXITY_FOUR>2<TMPL_ELSE>0</TMPL_IF></TMPL_IF>)) send_event(document.forms[0].EVENT.value);" style="float:left;">Save</a>
                   </td>
                    <TMPL_IF NAME="REQUIRE_PASSWORD_CHANGE">
                    <td>
                        <a class="myaccount-btn grey-btn" name="accept" href="javascript:send_event('LOGOUT');" style="float:left;">Cancel</a>
                    </td>
                    </TMPL_IF>
                  </tr>
	           </table>
	    </td>
	  </tr>
        </table>
	
	<br><br><br>
	</td>
	<td width="300" align="center" valign="top">
	<br>
	<br>
	<div>
	<TMPL_INCLUDE NAME="manage_account_password_req.tpl">
	</div>
    	<br>
      </tr>
      </TMPL_IF>
    </table>
    </td>
  </tr>
</table>

<script>
if (document.forms[0].CURR_PASSWORD) {
  document.forms[0].CURR_PASSWORD.focus();
} else if (document.forms[0].NEWPASSWORD) {
  document.forms[0].NEWPASSWORD.focus();
}
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<script>
  document.forms[0].EVENT.value = '<TMPL_IF NAME=REQUIRE_PASSWORD_CHANGE>LOGIN/REQUIRE_PASSWORD_CHANGE_DO<TMPL_ELSE>MANAGE/UPDATE_SINGLE_USER</TMPL_IF>';
  setup_keypress_handler();
</script>        
<noscript>Your browser does not support JavaScript!</noscript>
<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end manage_account_chpasswd.tpl -->
