<!-- begin manage_account_user_show_edit_sms_otp_token_form.tpl -->

<script>

function do_edit() 
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
    send_event('OTP/DO_EDIT_SMS_OTP_TOKEN_USER');
    //return true;
    }
}

function doKey(e)
{
    var typedkey = (IE4) ? event.keyCode : e.which;


    if (typedkey == 13 && !ENTER_FOCUS) {
       do_edit();
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
        <td colspan="2" align="center" class="myaccounttitle"><br>Edit Multi-Factor Security Token</td>
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
        <table border=0 cellpadding="2" cellspacing="0" width="750">
          <tr>
	        <td width="10">&nbsp;</td>
            <td class="unifont1" align="left" width="20%">User:</td>
            <td class="unifont1" align="left" width="80%"><b><TMPL_VAR NAME="LOGINID"></b></td>
          </tr>
          <tr>
	        <td width="10">&nbsp;</td>
            <td class="unifont1" align="left" width="20%">Current Phone #:</td>
            <td class="unifont1" align="left" width="80%"><b><TMPL_VAR NAME="PHONE"></b></td>
          </tr>
          <tr>
        <td width="10">&nbsp;</td>
            <td class="unifont1" align="left" width="20%">Current Carrier:</td>
            <td class="unifont1" align="left" width="80%"><b><TMPL_VAR NAME="CARRIER"></b></td>
          </tr>
          <tr>
        <td width="10">&nbsp;</td>
            <td class="unifont1" align="left" width="20%">Current Email:</td>
            <td class="unifont1" align="left" width="80%"><b><TMPL_VAR NAME="EMAIL"></b></td>
          </tr>
          <tr>
        <td width="10">&nbsp;</td>
            <td class="unifont1" align="left" width="20%">Current Voice Phone #:</td>
            <td class="unifont1" align="left" width="80%"><b><TMPL_VAR NAME="VOICE_PHONE"></b></td>
          </tr>
	</table>

	<br/>

        <table border="0" cellpadding="2" cellspacing="0" width="650">
	    <tr>
	      <td align=left class="myaccountlabel" width="300"><b>&nbsp;&nbsp;1. Please select your US cell phone carrier:</b></td>
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
          <td align=left class="myaccountlabel"><b>&nbsp;&nbsp;2. Enter your 10-digit cell phone number</b></td>
          <td>
            <table border="0" width=100%>
              <tr>
                <td>
                  <input type=text name="SMS_PHONE" size="10" maxlength="10" tabindex="1" onkeypress="return isNumberKey(event)"></td>
                </td>
                <td class="smallfont1" align=top>
                    Your standard text message fees will apply.<br />Please see your service provider for details.
                </td>
              <tr>
            </table>
          </td>
       </tr>
	</table>

	<table border=0 cellpadding="2" cellspacing="0" width="750">
	<tr><td height="10"></td>
	<tr>
	  <tr>
        <td align="right"><input name="BUTTON" class="rb_otp_small" type="button" value="Save" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="return do_edit(); " onMouseOut="flip_style(this,'rb_otp_small');"></td>
        <td align="left"><input name="BUTTON" class="rb_otp_small" type="button" value="Cancel" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="window.close();disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
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

<!-- manage_account_user_show_edit_sms_otp_token_form.tpl-->
