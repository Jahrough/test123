<!-- begin sms2fa_registration_user.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>SMS based Multi-Factor Registration</title>

    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <TMPL_IF ENABLE_V2>
    <link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
    <link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
    </TMPL_IF>
    
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    
    <script>
    function show_sms_2fa_auth() {
        send_event('LOGIN/SMS_2FA_REGISTRATION_USER_SETUP');
    }
    
    </script>
  </head>

  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
    <TMPL_IF ENABLE_V2>
    <div id="hd">
    <h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
    </div>
    </TMPL_IF>
    <form name="SET_SMS_2FA" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="EVENT" value=''>
      <input type="hidden" name="INIT_LOGIN" value='1'>
      <br /><br />
      <div align="center">
              <table border="0" cellpadding="0" cellspacing="0" width="856">
                <tr>
          <td align="center" class="myaccounttitle" height="20" valign="middle"><br>
            Multi-Factor Authentication Registration
            <br /><br />
          </td>
                </tr>
                <tr>
                  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
            <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
              <tr>
            <td align="center">
              <table border="0" cellpadding="10" cellspacing="0" width="600" class="myaccountalert">

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
                  <table border="0" width="500">
                  <tr>
                    <td class="myaccountlabel" valign="middle" height="50">
                        <table border="0" width="95%">
                        <TMPL_IF ENABLE_OTP_ROAMING>
                            <tr>
                                <td align="left" width="30%"><input name="BUTTON" tabindex="2" type="button" value="Register Now" onClick="return show_sms_2fa_auth();"></td>
                                <td align="center" width="2%"></td>
                                <td align="left" width="30%"><input name="BUTTON" tabindex="3" type="button" value="Register Later" onClick="javascript:sms_user_bypass();"></td>
                                <td align="center" width="2%"></td>
                                <td align="left" width="30%"><input name="BUTTON" tabindex="4" type="button" value="No Thanks" onClick="javascript:sms_user_nothanks();"></td>
                            </tr>
                        <TMPL_ELSE>
                            <tr>
                                <td align="center"><input name="BUTTON" tabindex="2" type="button" value="Register Now" onClick="return show_sms_2fa_auth();"></td>
                            </tr>
                        </TMPL_IF>
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
    </form>
  </body>
</html>
<!-- end sms2fa_registration_user.tpl -->
