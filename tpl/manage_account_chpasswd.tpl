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
      <tr>
        <td colspan="2" align="center" class="myaccounttitle"><br>Change Password</td>
      </tr>
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
        <td width="380" align="center">
        <br><br><br>
        <table border="0" cellpadding="2" cellspacing="0" width="360">
          <tr>
            <td class="unifont1" align="left" width="160"><b>Current Password:</b></TD>
            <td align="left" width="200"><INPUT tabindex="1" TYPE="password" NAME="CURR_PASSWORD" SIZE="20" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
          </tr>
          <tr>
            <td class="unifont1" align="left" width="160"><b>Type New Password:</b></TD>
            <td align="left" width="200"><INPUT tabindex="2" TYPE="password" NAME="NEWPASSWORD" SIZE="20" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
          </tr>
          <tr>
            <td class="unifont1" align="left" width="160"><b>Confirm New Password:</b></TD>
            <td align="left" width="200"><INPUT tabindex="3" TYPE="password" NAME="CONFIRM_PASSWORD" SIZE="20" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
          </tr>
	  <tr>
	    <script>
              document.forms[0].EVENT.value = '<TMPL_IF NAME=REQUIRE_PASSWORD_CHANGE>LOGIN/REQUIRE_PASSWORD_CHANGE_DO<TMPL_ELSE>MANAGE/UPDATE_SINGLE_USER</TMPL_IF>';
	      setup_keypress_handler();
	    </script>
	    <td>&nbsp;</td>
	    <td align="left">
              <br><br>
              <table border=0 cellspacing=10 cellpadding=0>
	      <tr>
	      <TMPL_UNLESS NAME="REQUIRE_PASSWORD_CHANGE">
	      <TMPL_IF ENABLE_SECURITY_QUESTION>
	      <td>
	      	<input name="back" tabindex="4" class="rb_otp_small" type="button" value="Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT');" onMouseOut="flip_style(this,'rb_otp_small');"> 
	      </td>
	       </TMPL_IF> 
	      </TMPL_UNLESS>
	      <td>
	      <input name="save" tabindex="5" class="rb_otp_small" type="button" value="Save" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="if(password_match(document.forms[0].NEWPASSWORD, document.forms[0].CONFIRM_PASSWORD, document.forms[0].CURR_PASSWORD, <TMPL_VAR NAME=MIN_PASSWORD_LENGTH>, <TMPL_IF SHA2_PASSWORD>1<TMPL_ELSE><TMPL_IF PW_COMPLEXITY_FOUR>2<TMPL_ELSE>0</TMPL_IF></TMPL_IF>)) send_event(document.forms[0].EVENT.value);" onMouseOut="flip_style(this,'rb_otp_small');"> 
	       </td>
	      	<TMPL_IF NAME="REQUIRE_PASSWORD_CHANGE">
		<td>
		<input name="logout" tabindex="6" class="rb_otp_small" type="button" value="Cancel" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('LOGOUT');" onMouseOut="flip_style(this,'rb_otp_small');"> 
		</td>
		</TMPL_IF>
	      </tr>
	      </table>
	    </td>
	  </tr>
        </table>
	
	<br><br><br>
	</td>
	<td width="380" align="center" valign="top">
	<br><br>
	<TMPL_INCLUDE NAME="manage_account_password_req.tpl">
	<br><br><br>
	</td>
      </tr>
      </TMPL_IF>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<script>
if (document.forms[0].CURR_PASSWORD) {
  document.forms[0].CURR_PASSWORD.focus();
} else if (document.forms[0].NEWPASSWORD) {
  document.forms[0].NEWPASSWORD.focus();
}
</script>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end manage_account_chpasswd.tpl -->
