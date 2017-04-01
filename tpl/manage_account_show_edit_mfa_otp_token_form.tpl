<!-- begin manage_account_show_edit_mfa_otp_token_form.tpl -->
<script>
function do_edit() 
{
  df = document.forms[0];
  if (df.EMAIL_ADDR_PREFIX) {
    if(!validate_email_prefix('EMAIL_ADDR_PREFIX')) {
      return false;
    }
  }
  else if (df.EMAIL) {
    if(!validate_email('EMAIL')) {
      return false;
    }
  }
  if (df.SMS_PHONE.value != '') {
    var re = df.SMS_PHONE.value.replace(/[^\d*]/g,'');
    if (re.length != 10) {
      alert("Please enter a 10 digit primary phone number");
      return false;
    }
  }
  if (df.VOICE_PHONE.value != '') {
    var re = df.VOICE_PHONE.value.replace(/[^\d*]/g,'');
    if (re.length != 10) {
      alert("Please enter a 10 digit alternate phone number");
      return false;
    }
  }
  send_event('OTP/DO_EDIT_SMS_OTP_TOKEN_USER');
}

function isNumberKey(evt)
{
  var charCode = (evt.which) ? evt.which : event.keyCode

  if (charCode > 31 && (charCode < 48 || charCode > 57)){
    return false;
  }
  return true;
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
        <td colspan="2" align="center" class="myaccounttitle"><br>Edit Multi-Factor Security Tokens</td>
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
          <td align="center" class="warningmessage" colspan="4">
            <span class="successmessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
          </td>
        </TMPL_IF>
        </tr>
      </TMPL_IF>

      <tr>
        <td align="center">
          <table border=0 cellpadding="2" cellspacing="0" class="myaccountbody">
            <tr><td colspan="4">&nbsp;</td></tr>
            <tr>
              <td class="unifont1" colspan="4" align="center"><b>Update the email address or any phone numbers where the security token can be sent.</b></td>
            </tr>
            <tr><td colspan="4">&nbsp;</td></tr>
              <td>
                <table width="640" border=0 cellpadding="2" cellspacing="0" class="myaccountbody">
                  <tr height="26">
                    <td width="10%">&nbsp;</td>
                    <td class="unifont1" align="left" width="28%"><b>User:</b></td>
                    <td class="unifont1" align="center" width="30%">&nbsp;<b><TMPL_VAR NAME="LOGINID"></b></td>
                    <td class="unifont1" align="left" width="32%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="10%">&nbsp;</td>
                    <td class="unifont1" align="left" width="28%"><b>Email:</b></td>
                    <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
                      <td style="text-align:center;" width="30%">
                        <input type="text" name="EMAIL_ADDR_PREFIX" size="30" value="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX></TMPL_UNLESS>" MAXLENGTH=60>
                      </td>
                      <td class="unifont1" align="left" width="32%"><span>@&nbsp;</span>
                          <select id="email_domain" name="EMAIL_DOMAIN">
                            <option value="" selected>Select One</option>
                            <TMPL_LOOP NAME="EMAIL_DOMAIN_LIST">
                              <option<TMPL_IF NAME='EMAIL_CURR_DOMAIN'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option>
                            </TMPL_LOOP>
                          </select>
                      </td>
                    <TMPL_ELSE>
                      <td style="text-align:center;" width="40%">
                        <input type=text name="EMAIL" size="40" maxlength="60" tabindex="1" value="<TMPL_VAR NAME=USER_EMAIL>" >
                      </td>
                      <td class="unifont1" align="left" width="32%"><span>&nbsp;</span></td>
                    </TMPL_IF>
                  </tr>
                  <tr>
                    <td width="10%">&nbsp;</td>
                    <td class="unifont1" align="left" width="28%"><b>Primary Phone:</b></td>
                    <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
                      <td style="text-align:center;" width="30%">
                        <input type=text name="SMS_PHONE" size="30" maxlength="12" tabindex="2" onkeypress="return isNumberKey(event)" value="<TMPL_VAR NAME=SMS_PHONE>">
                      </td>
                      <td class="unifont1" align="left" width="32%">&nbsp;</td>
                    <TMPL_ELSE>
                      <td style="text-align:center;" width="40%">
                        <input type=text name="SMS_PHONE" size="40" maxlength="12" tabindex="2" onkeypress="return isNumberKey(event)" value="<TMPL_VAR NAME=SMS_PHONE>">
                      </td>
                      <td class="unifont1" align="left" width="32%">&nbsp;</td>
                    </TMPL_IF>
                  </tr>
                  <tr>
                    <td width="10%">&nbsp;</td>
                    <td class="unifont1" align="left" width="28%"><b>Alternate Phone:</b></td>
                    <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
                      <td style="text-align:center;" width="30%">
                        <input type=text name="VOICE_PHONE" size="30" maxlength="12" tabindex="3" onkeypress="return isNumberKey(event)" value="<TMPL_VAR NAME=VOICE_PHONE>">
                      </td>
                      <td class="unifont1" align="left" width="32%">&nbsp;</td>
                    <TMPL_ELSE>
                      <td style="text-align:center;" width="40%">
                        <input type=text name="VOICE_PHONE" size="40" maxlength="12" tabindex="3" onkeypress="return isNumberKey(event)" value="<TMPL_VAR NAME=VOICE_PHONE>">
                      </td>
                      <td class="unifont1" align="left" width="32%">&nbsp;</td>
                    </TMPL_IF>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
          <br>
          <table border=0 cellpadding="2" cellspacing="0" width="750">
            <tr>
              <td align="right"><input name="BUTTON" class="myaccount-btn darkgrey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP_USER');disable_buttons('BUTTON');"></td>
              <td align="left"><input name="BUTTON" class="myaccount-btn red-btn" type="button" value="Update" onClick="return do_edit(); disable_buttons('BUTTON');"></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
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

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end manage_account_show_edit_mfa_otp_token_form.tpl -->
