<!DOCTYPE html>
<html>
    <head>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <title>SMS based Multi-Factor Registration</title>
        <script src="<TMPL_VAR NAME='JSPATH'>/dppa_info.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
        
        <script>
        function show_sms_2fa_auth() {
            send_event('LOGIN/SMS_2FA_REGISTRATION_USER_SETUP');
        }
        
        </script>
    </head>
  <body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="header_info.tpl">

        <form name="SET_SMS_2FA" action="<TMPL_VAR NAME=ACTION>" method="post">
          <TMPL_INCLUDE NAME="common_hidden_input.tpl">
          <input type="hidden" name="EVENT" value=''>
          <input type="hidden" name="INIT_LOGIN" value='1'>
            <div class="txtWrapper">
                <div id="txtCon">
                    <div class="mfa-header">Multi-Factor Authentication Registration</div>
                    <br/>


              <table border="0" cellpadding="10" cellspacing="0" class="myaccountalert">

                <TMPL_IF NAME=ERROR_MESSAGE>
                <tr>
                  <td align=center colspan=2 class="errormessage">
                <span class="errormessage"><TMPL_VAR NAME="ERROR_MESSAGE">&nbsp;</span>
                <br/>
                  </td>
                </tr>
                </TMPL_IF>
                
                <tr>
                  <td align=left colspan=2 class="myaccountlabel">
                    The Multi-Factor Authentication Credentialing feature is available for your use. It is an alternative second factor authentication 
                    tool (alternative to security token) that provides an additional layer of security to protect data.<br /><br />
                    The feature allows you to receive one time numerical pass code via registered cell phone number and for roaming access to be able to
                    view masked data. You will be required to register yourself individually if you plan to use this feature. Please click on the "Register Now" 
                    button below to register.<br /><br />
                    <span class="unifont1boldred">Text Messaging service on your device is required to receive one time numerical pass code via registered cell phone number. If you do not have 
                    text messaging you will not be able to use Multi-Factor Authentication.<br /><br />
                    You can go to "My Account" to register, edit or unassign your carrier and phone information.<br /><br /></span>
                    Utilizing this feature does not vary the terms and conditions of your contract with us. Specifically, all security requirements remain in full 
                    force and effect and any misuse of your account, in connection with or related to the registration feature or otherwise, is strictly the responsibility 
                    of you and your company.<br /><br />
                  </td>
                </tr>
                <tr>
                  <td align="center" class="myaccountlabel" colspan="2">
                  <table border="0">
                  <tr>
                    <td class="myaccountlabel" valign="middle" height="50">
                        <table border="0" width="100%">
                        <TMPL_IF ENABLE_OTP_ROAMING>
                            <tr>
                                <td align="center">
                                    <a class="myaccount-btn red-btn" name="accept" href="javascript:show_sms_2fa_auth();">Register Now</a>
                                </td>
                                <td align="center" width="10px"></td>
                                <td align="center">
                                    <a class="myaccount-btn darkgrey-btn" name="accept" href="javascript:sms_user_bypass_v3();">Register Later</a>
                                </td>                                
                                <td align="center" width="10px"></td>
                                <td align="center">
                                    <a class="myaccount-btn grey-btn" name="accept" href="javascript:sms_user_nothanks_v3();">No Thanks</a>
                                </td>
                            </tr>
                        <TMPL_ELSE>
                            <tr>
                                <td align="center">
                                    <a class="myaccount-btn red-btn" name="accept" href="javascript:show_sms_2fa_auth();" style="float:left;">Register Now</a>
                                </td>
                            </tr>
                        </TMPL_IF>
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
