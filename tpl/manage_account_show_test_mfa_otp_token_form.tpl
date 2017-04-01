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


<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td align="center" class="myaccounttitle"><br>Test Multi-Factor Security Tokens</td>
      </tr>

      <TMPL_IF NAME="MESSAGE">
        <tr>
          <td align="center" class="myaccounttitle" width="856"><br></TD>
        </tr>
        <tr>
        <TMPL_IF NAME="TASK_FAILURE">
          <td align="center" class="errormessage">
            <span class="errormessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
          </td>
        <TMPL_ELSE>
          <td align="center" class="successmessage">
            <span class="successmessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
          </td>
        </TMPL_IF>
        </tr>
      </TMPL_IF>

      <tr>
        <td align="center">
          <table cellpadding="0" cellspacing="0" class="myaccountbody" width="700">
                  <tr><td colspan="4">&nbsp;</td></tr>
                  <tr>
                    <td class="unifont1" colspan="4" align="center"><b>Select the email address or phone where you want the token to be sent to.</b></td>
                  </tr>
                  <tr><td colspan="4">&nbsp;</td></tr>
                  <tr height="24">
                    <td class="unifont1" align="left" width="20%"><b>User:</b></td>
                    <td class="unifont1" align="center" width="42%">&nbsp;<b><TMPL_VAR NAME="LOGINID"></b></td>
                    <td class="unifont1" align="center" width="18%">Send Token:</td>
                    <td class="unifont1" align="center" width="18%">Send Voice:</td>
                  </tr>
                  <tr>
                    <td class="unifont1" align="left" width="20%"><b>Email:</b></td>
                    <td class="unifont1" style="text-align:center;" width="42%"><TMPL_VAR NAME=USER_EMAIL></td>
                    <td class="unifont1" style="text-align:center;" width="18%">
                      <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_EMAIL" CHECKED>
                    </td>
                    <td style="text-align:center;" width="18%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="unifont1" align="left" width="20%"><b>Primary Phone:</b></td>
                    <td class="unifont1" style="text-align:center;" width="42%"><TMPL_IF NAME=SMS_PHONE><TMPL_VAR NAME=SMS_PHONE></TMPL_IF></td>
                    <td class="unifont1" style="text-align:center;" width="18%">
                      <TMPL_IF NAME=SMS_PHONE>
                      <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_PHONE">
                      </TMPL_IF>
                    </td>
                    <td style="text-align:center;" width="18%">
                      <TMPL_IF NAME=SMS_PHONE>
                      <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_PHONE_VOICE">
                      </TMPL_IF>
                    </td>
                  </tr>
                  <tr>
                    <td class="unifont1" align="left" width="20%"><b>Alternate Phone:</b></td>
                    <td class="unifont1" style="text-align:center;" width="42%"><TMPL_IF NAME=VOICE_PHONE><TMPL_VAR NAME=VOICE_PHONE></TMPL_IF></td>
                    <td class="unifont1" style="text-align:center;" width="18%">
                      <TMPL_IF NAME=VOICE_PHONE>
                      <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_ALT_PHONE">
                      </TMPL_IF>
                    </td>
                    <td style="text-align:center;" width="18%">
                      <TMPL_IF NAME=VOICE_PHONE>
                      <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_ALT_PHONE_VOICE">
                      </TMPL_IF>
                    </td>
                  </tr>
                  <tr><td colspan="4">&nbsp;</td></tr>
          </table>
          <table>
            <tr>
              <td align="center">
                <table>
                  <td align="right"><input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/MANAGE_OTP_USER');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
                  <td align="left"><input name="BUTTON" class="rb_otp_small" type="button" value="Send" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="return do_edit(); disable_buttons('BUTTON'); " onMouseOut="flip_style(this,'rb_otp_small');"></td>
                </table>
              </td>
            </tr>
            <tr><td>&nbsp;</td></tr>
          </table>
        <td>
      <tr>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end manage_account_show_test_mfa_otp_token_form.tpl -->
