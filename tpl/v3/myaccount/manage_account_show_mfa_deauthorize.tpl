<!-- begin manage_account_show_mfa_deauthorize.tpl -->

<input type="hidden" NAME="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<input type="hidden" NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<input type="hidden" NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<input type="hidden" NAME="NEW_MFA" VALUE="<TMPL_VAR NAME=MFA_MACHINE_ACTIVATE_ENABLED>">
<input type="hidden" NAME="SHOW_BACK_BUTTON" VALUE="1">

<div class="myaccount-section-title">De-Authorize User Device</div>

<div class="section-row" style="padding: 15px 150px;">
  <fieldset class="mgb0">
    <div align="center">
      <TMPL_INCLUDE NAME=myaccount/myaccount_messages.tpl>
    </div>

    <table cellpadding="0" cellspacing="0" class="myaccountbody">
      <tr><td>&nbsp;</td></tr>
    </table>
    <table cellpadding="0" cellspacing="0" class="myaccountbody">
      <tr>
        <td>
          <table border=0 cellpadding="8" cellspacing="0" >
            <tr>
              <td align="center">&nbspDe-Authorize all currently authorized devices for user:</td>
            </tr>
            <tr>
              <td align="center" width="30%">&nbsp;<b><TMPL_VAR NAME="LOGINID"></b></td>
            </tr>
            <tr>
              <td align="center">
                <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP_USER');">&nbsp;&nbsp;
                <input name="BUTTON" class="btn red-btn" type="button" value="De-Authorize" onClick="send_event('OTP/SEND_MFA_DEAUTHORIZE');">
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </fieldset>
</div>
<!-- end manage_account_show_mfa_deauthorize.tpl -->
