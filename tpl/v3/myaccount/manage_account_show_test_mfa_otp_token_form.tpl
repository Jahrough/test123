<!-- begin manage_account_show_test_mfa_otp_token_form.tpl -->
<script>
function do_edit() 
{
  send_event('OTP/DO_EDIT_SMS_OTP_TOKEN_USER');
}

function doKey(e)
{
  var typedkey = (IE4) ? event.keyCode : e.which;


  if (typedkey == 13 && !ENTER_FOCUS) {
     do_edit();
  }
}


IE4 = document.all;
NS4 = document.layers;
ENTER_FOCUS = 0;
dokey_stop_flag = false;

var agt = navigator.userAgent.toLowerCase();
if (agt.indexOf("safari") == -1) { // If NOT Safari or Google Chrome run doKey.
  if (!NS4) {
    document.onkeyup = doKey;
    document.onkeydown = keyClear;
  } else {
    document.captureEvents(Event.KEYPRESS);
    document.onkeypress = doKey;
  }
}


function keyClear(e)
{
  var homekey = (IE4) ? event.keyCode : e.which;
  var controlkeypressed = (IE4) ? event.ctrlKey : e.ctrlKey;
  if (controlkeypressed && homekey == '36') {
  clearAll();
  }
}
</script>


<input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">
<input type="hidden" NAME="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<INPUT type=hidden NAME="NEW_MFA" VALUE="<TMPL_VAR NAME=MFA_MACHINE_ACTIVATE_ENABLED>">
<INPUT type=hidden NAME="EMAIL" VALUE="<TMPL_VAR NAME=USER_EMAIL>">
<INPUT type=hidden NAME="SMS_PHONE" VALUE="<TMPL_VAR NAME=SMS_PHONE>">
<INPUT type=hidden NAME="VOICE_PHONE" VALUE="<TMPL_VAR NAME=VOICE_PHONE>">
<INPUT type=hidden NAME="SHOW_BACK_BUTTON" VALUE="1">


<div class="myaccount-section-title">Test Multi-Factor Security Token</div>

<div class="section-row" style="padding: 15px 150px;">
  <fieldset class="mgt15">
    <div align="center">
      <TMPL_INCLUDE NAME=myaccount/myaccount_messages.tpl>
    </div>

    <table cellpadding="0" cellspacing="0" class="myaccountbody">
      <tr><td>&nbsp;</td></tr>
    </table>
    <table cellpadding="0" cellspacing="0" class="myaccountbody">
      <tr>
        <td>
          <table border=0 cellpadding="2" cellspacing="0" class="w100pc">
            <tr>
              <td colspan="6" align="center">Select the email address or phone where you want the token to be sent to.</td>
            </tr>
            <tr>
              <td colspan="6">&nbsp;</td>
            </tr>
            <tr>
              <td width="10">&nbsp;</td>
              <td align="left" width="16%">User:</td>
              <td align="center" width="40%">&nbsp;<b><TMPL_VAR NAME="LOGINID"></b></td>
              <td align="center" width="16%">Send Token:</td>
              <td align="center" width="16%">Send Voice:</td>
              <td align="left" width="24%">&nbsp;</td>
            </tr>
            <tr>
              <td width="10">&nbsp;</td>
              <td align="left" width="16%">Email:</td>
              <td style="text-align:center;" width="40%"><TMPL_VAR NAME=USER_EMAIL></td>
              <td style="text-align:center;" width="16%">
                <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_EMAIL" CHECKED>
              </td>
              <td style="text-align:center;" width="16%">&nbsp;</td>
              <td align="left" width="24%">&nbsp;</td>
            </tr>
            <tr>
              <td width="10">&nbsp;</td>
              <td align="left" width="16%">Primary Phone:</td>
              <td style="text-align:center;" width="40%"><TMPL_IF NAME=SMS_PHONE><TMPL_VAR NAME=SMS_PHONE></TMPL_IF></td>
              <td style="text-align:center;" width="16%">
                <TMPL_IF NAME=SMS_PHONE>
                <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_PHONE">
                </TMPL_IF>
              </td>
              <td style="text-align:center;" width="16%">
                <TMPL_IF NAME=SMS_PHONE>
                <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_PHONE_VOICE">
                </TMPL_IF>
              </td>
              <td align="left" width="24%">&nbsp;</td>
            </tr>
            <tr>
              <td width="10">&nbsp;</td>
              <td align="left" width="16%">Alternate Phone:</td>
              <td style="text-align:center;" width="40%"><TMPL_IF NAME=VOICE_PHONE><TMPL_VAR NAME=VOICE_PHONE></TMPL_IF></td>
              <td style="text-align:center;" width="16%">
                <TMPL_IF NAME=VOICE_PHONE>
                <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_ALT_PHONE">
                </TMPL_IF>
              </td>
              <td style="text-align:center;" width="16%">
                <TMPL_IF NAME=VOICE_PHONE>
                <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_ALT_PHONE_VOICE">
                </TMPL_IF>
              </td>
              <td align="left" width="24%">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="6">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="6" align="center">
                <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP_USER');">
                <input name="BUTTON" class="btn red-btn" type="button" value="Send" onClick="return do_edit();  ">
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </fieldset>
</div>
<!-- end manage_account_show_test_mfa_otp_token_form.tpl -->
