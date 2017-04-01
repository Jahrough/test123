<!-- begin manage_account_show_edit_mfa_otp_token_form.tpl -->

<script type="text/javascript">
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
<input type="hidden" NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<input type="hidden" NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<input type="hidden" NAME="NEW_MFA" VALUE="<TMPL_VAR NAME=MFA_MACHINE_ACTIVATE_ENABLED>">
<input type="hidden" NAME="UPDATE_USER" VALUE="1">
<INPUT type="hidden" NAME="SHOW_BACK_BUTTON" VALUE="1">

<div class="myaccount-section-title">Edit Multi-Factor Security Token</div>

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
          <table border=0 cellpadding="2" cellspacing="0" class="w100pc">
            <tr>
              <td colspan="4" align="center">&nbsp;Update the email address or any phone numbers where the security token can be sent.</td>
            </tr>
            <tr>
              <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
              <td width="10%">&nbsp;</td>
              <td align="left" width="20%">User:</td>
              <td align="center" width="30%">&nbsp;<b><TMPL_VAR NAME="LOGINID"></b></td>
              <td align="left" width="40%">&nbsp;</td>
            </tr>
            <tr>
              <td width="10%">&nbsp;</td>
              <td align="left" width="20%">Email:</td>
              <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
                <td style="text-align:center;" width="30%">
                  <input type="text" name="EMAIL_ADDR_PREFIX" size="30" value="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX></TMPL_UNLESS>" MAXLENGTH=60>
                </td>
                <td align="left" width="40%"><span>@&nbsp;</span>
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
                <td align="left" width="30%"><span>&nbsp;</span></td>
              </TMPL_IF>
            </tr>
            <tr>
              <td width="10%">&nbsp;</td>
              <td align="left" width="20%">Primary Phone:</td>
              <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
                <td style="text-align:center;" width="30%">
                  <input type=text name="SMS_PHONE" size="30" maxlength="12" tabindex="2" onkeypress="return isNumberKey(event)" value="<TMPL_VAR NAME=SMS_PHONE>">
                </td>
                <td align="left" width="40%">&nbsp;</td>
              <TMPL_ELSE>
                <td style="text-align:center;" width="40%">
                  <input type=text name="SMS_PHONE" size="40" maxlength="12" tabindex="2" onkeypress="return isNumberKey(event)" value="<TMPL_VAR NAME=SMS_PHONE>">
                </td>
                <td align="left" width="30%">&nbsp;</td>
              </TMPL_IF>
            </tr>
            <tr>
              <td width="10%">&nbsp;</td>
              <td align="left" width="20%">Alternate Phone:</td>
              <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
                <td style="text-align:center;" width="30%">
                  <input type=text name="VOICE_PHONE" size="30" maxlength="12" tabindex="3" onkeypress="return isNumberKey(event)" value="<TMPL_VAR NAME=VOICE_PHONE>">
                </td>
                <td align="left" width="40%">&nbsp;</td>
              <TMPL_ELSE>
                <td style="text-align:center;" width="40%">
                  <input type=text name="VOICE_PHONE" size="40" maxlength="12" tabindex="3" onkeypress="return isNumberKey(event)" value="<TMPL_VAR NAME=VOICE_PHONE>">
                </td>
                <td align="left" width="30%">&nbsp;</td>
              </TMPL_IF>
            </tr>
            <tr>
              <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="4" align="center">
                <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP_USER');">
                <input name="BUTTON" class="btn red-btn" type="button" value="Update" onClick="return do_edit();  ">
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </fieldset>
</div>
<!-- end manage_account_show_edit_mfa_otp_token_form.tpl -->
