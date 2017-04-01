<!DOCTYPE html>
<html>
    <head>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <title>SMS based Multi-Factor Registration</title>

        <script src="<TMPL_VAR NAME='JSPATH'>/dppa_info.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>

        <script>
        function do_sms_2fa_auth() 
        {
            df = document.forms[0];
            if (df.SMS_OTP_CODE.value.length < 6) {
            alert('Please enter your 6 digit verification code');
            df.SMS_OTP_CODE.focus();
            return false;
            } else {
            df.SMS_OTP_CODE.value = df.SMS_OTP_CODE.value.toUpperCase();
            //df.submit;
            send_event('LOGIN/DO_SMS_2FA_AUTH');
            //return true;
            }
        }
        function bypass_otp() 
        {
            alert("Please note that your privileges will be downgraded for the current login session.");
            send_event('LOGIN/BYPASS_OTP');
        }

        function resend_sms_2fa_auth()
        {
            send_event('LOGIN/RESEND_SMS_2FA_OTP');
        }
        </script>

    </head>
  <body onload="document.forms[0].SMS_OTP_CODE.focus();"topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="header_info.tpl">

        <form name="SET_SMS_2FA" action="<TMPL_VAR NAME=ACTION>" method="post">
          <TMPL_INCLUDE NAME="common_hidden_input.tpl">
          <input type="hidden" name="EVENT" value='LOGIN/DO_SMS_2FA_AUTH'>
          <input type=hidden NAME="_K" VALUE="<TMPL_VAR NAME=_K>">
          <input type=hidden NAME="_SK" VALUE="<TMPL_VAR NAME=_SK>">
          <input type="hidden" name="INIT_LOGIN" value="<TMPL_VAR NAME=INIT_LOGIN>">

            <div class="txtWrapper w100pc">
            <div id="txtCon">
                <div class="mfa-header">Multi-Factor Authentication Registration</div>
                <br/>


       <table border="0" cellpadding="1" cellspacing="0" class="myaccountborder" style="margin: 0 auto">
        <tr>
          <td align="center">
          <table border="0" cellpadding="10" cellspacing="0" width="600" class="myaccountalert">
          <TMPL_IF NAME=ERROR_MESSAGE>
            <tr>
          <td class="bold" align=center colspan=2><font color="red"><TMPL_VAR NAME="ERROR_MESSAGE"></font>&nbsp;
          <br>
          </td>
        </tr>
          </TMPL_IF>
          <TMPL_IF NAME=MESSAGE>
            <tr>
          <td class="bold" align=center colspan=2>
          <font color="green"><TMPL_VAR NAME="MESSAGE">&nbsp;</font>
          <br>
          </td>
        </tr>
          </TMPL_IF>
            <tr>
          <td align=center colspan=2 class="myaccountlabel">
          Please verify your <TMPL_VAR NAME="SMS_CARRIER_DESC"> cell phone by entering the 6-digit code that we sent to your cell phone over SMS.
          <br>
          </td>
        </tr>
        <tr>
          <td align=center class="myaccountlabel"><b>Enter the 6-digit verification code<br />(Verification Code expires in 30 minutes)</b></td>
          <td><input type=text name="SMS_OTP_CODE" size="6" maxlength="6"></td>
        </tr>
        <tr>
          <td align="center" class="myaccountlabel" colspan="2">
          <table border="0">
            <tr>
              <td class="myaccountlabel" valign="middle" height="50">
              <table border="0">
                  <tr>
                  <TMPL_IF NAME="ENABLE_OTP_ROAMING">
                      <TMPL_IF NAME="INIT_LOGIN">
                          <td>
                              <a class="myaccount-btn red-btn" name="accept" href="javascript:do_sms_2fa_auth();" style="float:left;">Continue</a>                      
                          </td>
                          <td style="width:10px;"></td>
                          <td>
                              <a class="myaccount-btn darkgrey-btn" name="accept" href="javascript:resend_sms_2fa_auth();" style="float:left;">Resend</a>                      
                          </td>
                          <td style="width:10px;"></td>
                          <td>
                              <a class="myaccount-btn grey-btn" name="accept" href="javascript:bypass_otp();" style="float:left;">Skip</a>                      
                          </td>
                          <TMPL_ELSE>
                              <td>
                                  <a class="myaccount-btn red-btn" name="accept" href="javascript:do_sms_2fa_auth();" style="float:left;">Continue</a>                      
                              </td>
                              <td style="width:10px;"></td>
                              <td>
                                  <a class="myaccount-btn darkgrey-btn" name="accept" href="javascript:resend_sms_2fa_auth();" style="float:left;">Resend</a>                      
                              </td>
                      </TMPL_IF>
                  <TMPL_ELSE>
                      <td>
                          <a class="myaccount-btn red-btn" name="accept" href="javascript:do_sms_2fa_auth();" style="float:left;">Continue</a>                      
                      </td>
                      <td style="width:10px;"></td>
                      <td>
                          <a class="myaccount-btn darkgrey-btn" name="accept" href="javascript:resend_sms_2fa_auth();" style="float:left;">Resend</a>                      
                      </td>
                  </TMPL_IF>
              </tr>

              </table>
              </td>
            </tr>
          </table>
          </td>
        </tr>
          </table>
          </td>
        </tr>
      </table>



                    </div>
                </div>
            </div>
       
        </form>
    </body>
</html>
