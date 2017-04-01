<TMPL_IF ENABLE_MYACC_V3>

    <TMPL_INCLUDE NAME=header_v3.tpl>

        <script>
        function send_continue() 
        {
            send_event('LOGIN/CONTINUE');
        }
        </script>

        <form name="SET_SMS_2FA" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="EVENT" value=''>
      <input type="hidden" name="INIT_LOGIN" value="<TMPL_VAR NAME=INIT_LOGIN>">

      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" width="856">
        <tr>
            <td align="center" class="myaccounttitle" height="20" valign="middle">
                <div class="mfa-header">Multi-Factor Authentication Registration</div>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
                <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
                    <tr>
                      <td align="center">
                          <table border="0" cellpadding="10" cellspacing="0" width="600" class="myaccountalert">
                              <tr>
                                  <td align=center colspan=2 class="myaccountlabel">
                                      <TMPL_IF ERROR_MESSAGE>
                                          Unable to complete Multi-Factor setup due to an internal system error. Please try again later.
                                          <TMPL_ELSE>
                                              <TMPL_IF NAME=NEW_SMS_2FA_REGISTRATION>
                                                  You have successfully setup your cell phone for use with Accurint Multi-Factor authentication!
                                                  <br/><br/>
                                                  Effectively immediately, everytime you log into Accurint, you will need to have your cell phone with you to receive a 6-digit one-time-password.
                                                  <TMPL_ELSE>
                                                      Authentication Successful.
                                              </TMPL_IF>
                                      </TMPL_IF>
                                  </td>
                              </tr>
                              <tr>
                              <TMPL_IF INIT_LOGIN>
                                  <td align="center" colspan=2>
                                      <div class="myaccount-btn red-btn" name="accept" onClick="return send_continue();">Continue</div>                      
                                  </td>
                                  <TMPL_ELSE>
                                      <td align="center" colspan=2>
                                          <div class="myaccount-btn red-btn" name="accept" onClick="window.close();disable_buttons('BUTTON');">Close</div>                      
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
      </div>

    </form>





        <TMPL_INCLUDE NAME=footer_v3.tpl>

<TMPL_ELSE>
    <!-- begin sms_2fa_auth_result.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Multi-Factor Authentication</title>

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
    function send_continue() 
    {
        send_event('LOGIN/CONTINUE');
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
      <input type="hidden" name="INIT_LOGIN" value="<TMPL_VAR NAME=INIT_LOGIN>">

      <div align="center">

      <br><br>
      
      <table border="0" cellpadding="0" cellspacing="0" width="856">
        <tr>
      <td align="center" class="myaccounttitle" height="20" valign="middle">
      <br>Multi-Factor Authentication<br><br>
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
      <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
        <tr>
          <td align="center">
          <table border="0" cellpadding="10" cellspacing="0" width="600" class="myaccountalert">
            <tr>
          <td align=center colspan=2 class="myaccountlabel">
          <TMPL_IF ERROR_MESSAGE>
            Unable to complete Multi-Factor setup due to an internal system error. Please try again later.
          <TMPL_ELSE>
          <TMPL_IF NAME=NEW_SMS_2FA_REGISTRATION>
            You have successfully setup your cell phone for use with Accurint Multi-Factor authentication!
            <br/><br/>
            Effectively immediately, everytime you log into Accurint, you will need to have your cell phone with you to receive a 6-digit one-time-password.
          <TMPL_ELSE>
            Authentication Successful.
          </TMPL_IF>
          </TMPL_IF>
          </td>
        </tr>
        <tr>
        <TMPL_IF INIT_LOGIN>
          <td align="center" colspan=2><input name="BUTTON" tabindex="1" class="rb" type="button" value="Continue" onClick="return send_continue();" onMouseDown="flip_style(this,'rbd');" onMouseOut="flip_style(this,'rb');">
        <TMPL_ELSE>
          <td align="center" colspan=2><input name="BUTTON" tabindex="1" class="rb" type="button" value="Close" onClick="window.close();disable_buttons('BUTTON');" onMouseDown="flip_style(this,'rbd');" onMouseOut="flip_style(this,'rb');">
        </TMPL_IF>
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
<!-- end sms_2fa_auth_result.tpl -->
</TMPL_IF>
