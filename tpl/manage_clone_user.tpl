<!-- begin manage_clone_user.tpl -->
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='CURR_LOGINID'>">
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
        <td colspan="2" align="center" class="myaccounttitle"><br>Rename User</td>
      </tr>
      <TMPL_IF NAME="MESSAGE">
      <TR>
        <td class="myaccounttitle" align="center" width="860" colspan="2"><TMPL_VAR NAME="MESSAGE">&nbsp;</TD>
      </TR>
      </TMPL_IF>
      <tr>
        <td width="380" align="center">
        <br><br>
        <table border="0" cellpadding="2" cellspacing="0" width="360">
          <tr>
            <td class="unifont1" align="left" width="160"><b>Current Login ID:</b></TD>
            <td class="unifont1" align="left" width="200"><TMPL_VAR NAME=CURR_LOGINID></TD>
          </tr>
          <tr>
            <td class="unifont1" align="left" width="160"><b>Type New Login ID:</b></TD>
            <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="NEW_LOGINID" SIZE="25" VALUE="<TMPL_VAR NAME=NEW_LOGINID>" MAXLENGTH=<TMPL_IF IRS>20<TMPL_ELSE>30</TMPL_IF>></TD>
          </tr>
          <tr>
            <td align="center" colspan="2">
              <br><br><a href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS')"><img alt="" width="65" height="24" border="0" name="backadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a>&nbsp;&nbsp;<a href="javascript:send_event(document.forms[0].EVENT.value)" onClick="return validate_loginid();"><img alt="" height="24" width="65" src="<TMPL_VAR NAME=IMGPATH>/save.gif" border="0"></a>
            </td>
          </tr>
        </table>
        </td>
        <td width="380" align="center" valign="top">
          <br><br>
          <table border="0" cellpadding="1" cellspacing="0" width="70%" class="myaccountborder" style="margin: 0 auto">
            <tr>
              <td align="center">
              <table border="0" cellpadding="0" cellspacing="0" width="100%" class="myaccountalert">
                <tr>
                  <td class="smallfont1" align="left">
                  <img alt="" border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif">&nbsp;<strong>Login ID Requirements:</strong>
                  <ol style="margin-top: 2px; margin-bottom: 2px;">
                    <li>Must be at least 6 characters long.</li>
                  </ol>
                  </td>
                </tr>
              </table>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<script>
if (document.forms[0].NEW_LOGINID) {
  document.forms[0].NEW_LOGINID.focus();
}
document.forms[0].EVENT.value = 'MANAGE/CLONE_USER_NOW';
setup_keypress_handler();
<TMPL_IF NAME='EDITING_CURRENT_USER'>
alert("You are attempting to re-name yourself, doing so will invalidate your session and require you to login again.");
</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end manage_clone_user.tpl -->
