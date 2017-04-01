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


<div class="myaccount-section-title">Edit Multi-Factor Security Token</div>


<div class="section-row" style="padding: 15px 150px;">
    <fieldset class="mgb0">
        <TMPL_INCLUDE NAME=myaccount/myaccount_messages.tpl>

            <table cellpadding="0" cellspacing="0" class="myaccountbody" class="w100pc">
                <tr>
                    <td>
                        <table border=0 cellpadding="2" cellspacing="0" class="w100pc">
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
                        </table>
                        <br/>
                        <table>
                            <tr>
                                <td class="myaccountlabel" style="width:300px;text-align:left;">
                                    <b>&nbsp;&nbsp;1. Please select your US cell phone carrier:</b>
                                </td>
                                <td style="width:300px;text-align:left;">
                                    <select name='SMS_CARRIER_CODE'>
                                        <option value="999">Select Carrier</option>
                                        <TMPL_LOOP NAME='SMS_CARRIER_INFO'>
                                            <option value="<TMPL_VAR name='code'>"><TMPL_VAR name="desc"></option>
                                        </TMPL_LOOP>
                                    </select>
                                </td>
                            </tr>

                            <tr>
                                <td class="myaccountlabel" style="width:300px;text-align:left;">
                                    <b>&nbsp;&nbsp;2. Enter your 10-digit cell phone number:</b>
                                </td>
                                <td>
                                    <table style="width:100%;">
                                        <tr>
                                            <td style="text-align:left;">
                                                <input type=text name="SMS_PHONE" size="10" maxlength="10" tabindex="1" onkeypress="return isNumberKey(event)">
                                            </td>
                                            <td class="smallfont1" style="text-align:left;">
                                                Your standard text message fees will apply.<br />Please see your service provider for details.
                                            </td>
                                        </tr>
                                    </table>
                                </td>         
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
    </fieldset>
</div>
<div class="section-row child-divs-center">
    <div>
        <input name="BUTTON" class="btn grey-btn" type="button" value="Cancel" onClick="window.close();">
        <input name="BUTTON" class="btn red-btn" type="button" value="Update" onClick="return do_edit();  ">
    </div>
</div>

<!-- manage_account_user_show_edit_sms_otp_token_form.tpl-->
