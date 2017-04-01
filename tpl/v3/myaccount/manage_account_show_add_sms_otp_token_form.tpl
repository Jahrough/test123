<!-- begin manage_account_show_add_sms_otp_token_form.tpl -->

<script>
function doKey(e)
{
    var typedkey = (IE4) ? event.keyCode : e.which;


    if (typedkey == 13 && !ENTER_FOCUS) {
       validateSMSOTPRegForm('OTP/DO_ASSIGN_SMS_OTP_TOKEN_USER');
    }
}


function add_sms_2fa_auth() 
{
    df = document.forms[0];
    if (df.CHECK_CARRIER && df.CHECK_CARRIER.value == 1) {
        if (999 == df.SMS_CARRIER_CODE.value) {
            alert('Please select a US cell phone carrier');
            df.SMS_CARRIER_CODE.focus();
            return false;
        }
    }

    if (df.SMS_PHONE.value.length < 10) {
    alert('Please enter your 10 digit cell phone');
    df.SMS_PHONE.focus();
    return false;
    } else {
    df.SMS_PHONE.value = df.SMS_PHONE.value.toUpperCase();
    //df.submit;
    validateSMSOTPRegForm('OTP/DO_ASSIGN_SMS_OTP_TOKEN_USER');
    //return true;
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

function isNumberKey(evt)
{
    var charCode = (evt.which) ? evt.which : event.keyCode

    if (charCode > 31 && (charCode < 48 || charCode > 57)){
        return false;
    }
    return true;
}

</script>
     

<div class="myaccount-section-title">Add Multi-Factor Security Token</div>

<input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">
<INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<TMPL_UNLESS name="MFA_MACHINE_ACTIVATE_ENABLED">
<INPUT type=hidden NAME="CHECK_CARRIER" VALUE="1">
</TMPL_UNLESS>



<table border="0" class="w100pc">
  <tr>
    <td align="center" valign="top" class="pd15">

<fieldset>
 
    <TMPL_INCLUDE NAME=myaccount/myaccount_messages.tpl>


    <table class="myaccountbody">
      <tr>
        <td>

        <table border="0" cellpadding="2" width="700">
         <br/>
         <br/>
        <TMPL_UNLESS name="MFA_MACHINE_ACTIVATE_ENABLED">
        <tr>
          <td align=left class="myaccountlabel" width="400"><b>&nbsp;&nbsp;1. Select the user:</b></td>

          <TMPL_IF NAME=MANAGE_USER_OTP>
                <td width="300" class="unifont1" align="left"><b>
            <TMPL_IF NAME=OTP_LOGINID>
            <INPUT type=hidden NAME="LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>"><TMPL_VAR NAME="OTP_LOGINID">
            <TMPL_ELSE>
            An Error Occured. Please go back and try again !
            </TMPL_IF></b>
          </td>
          <TMPL_ELSE>
              <td width="300">
                      <TMPL_IF NAME=USER_SELECT_LOOP>
            <select name='LOGINID'><TMPL_LOOP NAME='USER_SELECT_LOOP'>
              <OPTION VALUE="<TMPL_VAR NAME=LOGINID>" <TMPL_IF NAME=SELECTED>SELECTED="SELECTED"</TMPL_IF>> <TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME> (<TMPL_VAR NAME=LOGINID>)</OPTION>
            </TMPL_LOOP>
                        </select>
                      <TMPL_ELSE>
            <b>No Active Users</b>
                      </TMPL_IF>
              </td>
          </TMPL_IF>
        </tr>
        <tr>
          <td align=left class="myaccountlabel" width="400"><b>&nbsp;&nbsp;2. Please select your US cell phone carrier:</b></td>
          <td width="300">
          <select name='SMS_CARRIER_CODE'>
              <option value="999">Select Carrier</option>
              <TMPL_LOOP NAME='SMS_CARRIER_INFO'>
                 <option value="<TMPL_VAR name='code'>"><TMPL_VAR name="desc"></option>
              </TMPL_LOOP>
          </select>
          </td>
        </tr>
        <tr>
          <td align=left class="myaccountlabel"><b>&nbsp;&nbsp;3. Enter your 10-digit cell phone number:</b></td>
          <td><input type=text name="SMS_PHONE" size="10" maxlength="10" tabindex="1" onkeypress="return isNumberKey(event)" ></td>
        </tr>
        <TMPL_ELSE>
        <tr>
          <td align=left class="myaccountlabel" width="300"><b>&nbsp;&nbsp;User:</b></td>
          <td width="400" class="unifont1" align="left"><b>
            <TMPL_IF NAME=OTP_LOGINID>
            <INPUT type=hidden NAME="LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>"><TMPL_VAR NAME="OTP_LOGINID">
            <TMPL_ELSE>
            An Error Occured. Please go back and try again !
            </TMPL_IF></b>
          </td>
        </tr>
        <tr>
          <td align=left class="myaccountlabel"><b>&nbsp;&nbsp;Email:</b></td>
          <td><input type=text name="EMAIL" size="32" maxlength="60" tabindex="1"></td>
        </tr>
        <tr>
          <td align=left class="myaccountlabel"><b>&nbsp;&nbsp;Primary Phone:</b></td>
          <td><input type=text name="SMS_PHONE" size="32" maxlength="12" tabindex="2" ></td>
        </tr>
        <tr>
          <td align=left class="myaccountlabel"><b>&nbsp;&nbsp;Alternate Phone:</b></td>
          <td><input type=text name="VOICE_PHONE" size="32" maxlength="12" tabindex="3" ></td>
        </tr>
        </TMPL_UNLESS>
    </table>

    <table width="730" class="myaccountbody">
      <tr>
        <TMPL_UNLESS name="MFA_MACHINE_ACTIVATE_ENABLED">
        <td width="390">&nbsp;</td>
        <td colspan="2" align="left" class="myaccounttitle"><br>Your standard text message fees will apply.  Please see your service provider for details.</td>
        <TMPL_ELSE>
        <td width="300">&nbsp;</td>
        <td colspan="2" align="left" class="myaccounttitle"><br>Your standard text message fees will apply for SMS services.  Please see your service provider for details.</td>
        </TMPL_UNLESS>
      </tr>
    </table>

    <table border=0 cellpadding="2" width="750">
    <tr><td height="10"></td>
    <tr>
      <tr>
       <TMPL_IF NAME=MANAGE_USER_OTP>
          <td align="right"><input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP_USER');"></td>
       <TMPL_ELSE>
          <td align="right"><input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_SMS_OTP');"></td>
       </TMPL_IF>
       <td align="left"><input name="BUTTON" class="btn red-btn" type="button" value="Save" onClick="return add_sms_2fa_auth();"></td>
      </tr>
        </table>
    <br><br><br>
    </td>
      </tr>
    </table>

</fieldset>
    </td>
  </tr>
</table>
<!-- manage_account_show_add_sms_otp_token_form.tpl-->
