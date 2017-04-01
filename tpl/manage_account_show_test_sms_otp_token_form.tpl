<!-- begin manage_account_show_test_otp_token_form.tpl -->

<script>
function doKey(e)
{
    var typedkey = (IE4) ? event.keyCode : e.which;

    if (typedkey == 13 && !ENTER_FOCUS) {
       validateSMSOTPTestForm('OTP/DO_TEST_SMS_OTP_TOKEN_USER');
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
<INPUT type="hidden" NAME="NEW_MFA" VALUE="<TMPL_VAR NAME=MFA_MACHINE_ACTIVATE_ENABLED>">
<INPUT type="hidden" NAME="TOKEN_TYPE" VALUE="<TMPL_VAR NAME=TOKEN_TYPE>">
<INPUT type="hidden" NAME="TOKEN_DEST" VALUE="<TMPL_VAR NAME=TOKEN_DEST>">
<INPUT type="hidden" NAME="ALT_TOKEN_DETAILS" VALUE="<TMPL_VAR NAME=ALT_TOKEN_DETAILS>">


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
        <td colspan="2" align="center" class="myaccounttitle"><br>Test Multi-Factor Security Token</td>
      </tr>

      <TMPL_IF NAME="MESSAGE">
      <tr>
        <td align="center" class="myaccounttitle" width="856" colspan="2"><br></TD>     
      </tr>
      <tr>
        <TMPL_IF NAME="TASK_FAILURE">
        <td align="center" class="errormessage" colspan="4">
          <span class="errormessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
        </td>
        <TMPL_ELSE>
        <td align="center" class="successmessage" colspan="4">
          <span class="successmessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
        </td>
        </TMPL_IF>
      </tr>
      </TMPL_IF>

      <tr>
        <td align="center">
        <TMPL_UNLESS NAME=TOKEN_ERROR>
        <table border=0 cellpadding="5" cellspacing="0">
          <tr>
            <td width="2">&nbsp</td>
            <td colspan=2 class="unifont1">
              <TMPL_UNLESS NAME="MFA_MACHINE_ACTIVATE_ENABLED">
              <br>An SMS with a 6 digit token number has been sent to the Phone # of the user:&nbsp; <b>'<TMPL_VAR NAME="LOGINID">'</b>.
              <TMPL_ELSE>
              <br>A one-time passcode (OTP) has been sent to user:&nbsp; <b>'<TMPL_VAR NAME="LOGINID">'</b>.
              </TMPL_UNLESS>
           </td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <TMPL_UNLESS NAME="MFA_MACHINE_ACTIVATE_ENABLED">
            <td colspan="2" class="unifont1" align="left" ><br> <b>Phone Number:</b>&nbsp; <TMPL_VAR NAME="PHONE"></b></td>
            <TMPL_ELSE>
            <td colspan="2" class="unifont1" align="left" ><br> <b>OTP Delivered To:</b>&nbsp; <TMPL_VAR NAME="TOKEN_DEST"></b></td>
            </TMPL_UNLESS>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <TMPL_UNLESS NAME="MFA_MACHINE_ACTIVATE_ENABLED">
            <td class="unifont1" align="left" colspan=2><br>Please enter the 6 digit token number sent via SMS to your phone below:</td>
            <TMPL_ELSE>
             <td class="unifont1" align="left" colspan=2><br>Enter the OTP you received via email, voice or text.  Please allow sufficient time for delivery.  It is valid for 60 minutes.</td>
            </TMPL_UNLESS>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <TMPL_UNLESS NAME="MFA_MACHINE_ACTIVATE_ENABLED">
            <td nowrap class="unifont1" colspan="2"><b>Token Number:</b>&nbsp; <INPUT TYPE="text" NAME="OTP1" SIZE="6" VALUE="" MAXLENGTH=6>&nbsp; [Ex: 123456]</td>
            <TMPL_ELSE>
            <td nowrap class="unifont1" colspan="2"><b>Token Number:</b>&nbsp; <INPUT TYPE="text" NAME="OTP1" SIZE="8" VALUE="" MAXLENGTH=8>&nbsp;</td>
            </TMPL_UNLESS>
          </tr>
        </table>
        </TMPL_UNLESS>
        <br><br>
    <table border=0 cellpadding="5" cellspacing="0">
      <tr>
        <td width="2">&nbsp;</td>
        <td><input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/SHOW_TEST_SMS_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
        <TMPL_UNLESS NAME=TOKEN_ERROR>
          <td><input name="BUTTON" class="rb_otp_small" type="button" value="Submit" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="return validateSMSOTPTestForm('OTP/DO_TEST_SMS_OTP_TOKEN_USER'); disable_buttons('BUTTON'); " onMouseOut="flip_style(this,'rb_otp_small');"></td>
          <td><input name="BUTTON" class="rb_otp_small" type="button" value="Resend" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/RESEND_TEST_SMS_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
        </TMPL_UNLESS>
      </tr>
        </table>
    <br><br><br>
    </td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- manage_account_show_test_otp_token_form.tpl-->
