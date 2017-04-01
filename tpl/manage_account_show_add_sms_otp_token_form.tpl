<!-- begin manage_account_show_test_otp_token_form.tpl -->

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
    if (999 == df.SMS_CARRIER_CODE.value) {
        alert('Please select a US cell phone carrier');
        df.SMS_CARRIER_CODE.focus();
        return false;
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
     



<input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">

<INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">

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
        <td colspan="2" align="center" class="myaccounttitle"><br>Add Multi-Factor Security Token</td>
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
        <td>

        <table border="0" cellpadding="2" cellspacing="0" width="700">
         <br/>
         <br/>
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
    </table>

    <table cellpadding="0" cellspacing="0" width="730" class="myaccountbody">
      <tr>
        <td width="390">&nbsp;</td>
        <td colspan="2" align="left" class="myaccounttitle"><br>Your standard text message fees will apply.  Please see your service provider for details.</td>
      </tr>
    </table>

    <table border=0 cellpadding="2" cellspacing="0" width="750">
    <tr><td height="10"></td>
    <tr>
      <tr>
       <TMPL_IF NAME=MANAGE_USER_OTP>
          <td align="right"><input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/MANAGE_OTP_USER');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
       <TMPL_ELSE>
          <td align="right"><input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/MANAGE_SMS_OTP');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
       </TMPL_IF>
       <td align="left"><input name="BUTTON" class="rb_otp_small" type="button" value="Save" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="return add_sms_2fa_auth();" onMouseOut="flip_style(this,'rb_otp_small');"></td>
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
