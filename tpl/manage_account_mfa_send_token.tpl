<!-- begin manage_account_mfa_send_token.tpl -->
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>Multi-Factor Authentication</title>

<TMPL_IF ENABLE_MYACC_V3>
  <link href="<TMPL_VAR NAME='CSSPATH'>/v3/base.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/v3/myaccount.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/v3/demo.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/v3/demo2.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/v3/main_menu.css" rel="stylesheet" type="text/css">
<TMPL_ELSE>
  <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
  <link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>
  <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/sourcedocs.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>  
  <script type="text/javascript">
  var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
  var $j = jQuery.noConflict();
  function open_help() {
    if (vertical == 'gov' || vertical == 'le') {
        window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov");
    } else {
        window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx");
    }
  }
  function open_help_html(help_url,help_win) {
    general_win('<TMPL_VAR NAME=HLPPATH>/' + help_url,help_win,780,490,1,1,1,1,1,0);
  }
  function bypass_otp() {
    alert("Please note that your privileges will be downgraded for the current login session.");
    send_event('LOGIN/BYPASS_OTP');
  }
  </script>
  <TMPL_IF ENABLE_MYACC_V3>
  <script src="<TMPL_VAR NAME='JSPATH'>/v3/make_table_508.js"></script>    
  </TMPL_IF>
</head>

<TMPL_IF ENABLE_MYACC_V3>
<body>
<form name="MFA_UPDATE_TOKEN_SCREEN" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME="common_hidden_input.tpl">
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<input type="hidden" name="EVENT" value="OTP/MFA_INPUT_TOKEN_DETAILS">
<input type="hidden" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">
<input type="hidden" NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<input type="hidden" NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<INPUT type="hidden" NAME="EMAIL" VALUE="<TMPL_VAR NAME=USER_EMAIL>">
<INPUT type="hidden" NAME="MASK_EMAIL" VALUE="<TMPL_VAR NAME=MASK_EMAIL>">
<INPUT type="hidden" NAME="SMS_PHONE" VALUE="<TMPL_VAR NAME=SMS_PHONE>">
<INPUT type="hidden" NAME="VOICE_PHONE" VALUE="<TMPL_VAR NAME=VOICE_PHONE>">
<INPUT type="hidden" NAME="SMS_PHONE_MASK" VALUE="<TMPL_VAR NAME=SMS_PHONE_MASK>">
<INPUT type="hidden" NAME="VOICE_PHONE_MASK" VALUE="<TMPL_VAR NAME=VOICE_PHONE_MASK>">
<input type="hidden" NAME="AUTH_SEQUENCE" VALUE="1">
<div class="topBarCon">
  <div class="topBarConMiddle" style="margin-left:5px;">
    <div class="left">
      <ul>
      <TMPL_IF GOV>
      <li class="ln-logo ln-logo-gov"><div>&nbsp;</div></li>
      </TMPL_IF>
      <TMPL_IF LE>
      <li class="ln-logo ln-logo-le"><div>&nbsp;</div></li>
      </TMPL_IF>
      <TMPL_IF HEA>
      <li class="ln-logo ln-logo-hea"><div>&nbsp;</div></li>
      </TMPL_IF>
      </ul>
    </div>
    <div class="right">
          <ul id="support-links">
            <li><a target="_blank" href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php">Live Chat</a></li>
            <li><a href="javascript:void(0);" onclick="javascript:open_help();">Help?</a></li>
            <li>1-866-277-8407</li>
          </ul>
    </div>
  </div>
</div>

<div align="center">
<div class="txtWrapper w98pc">
  <div id="txtCon">
    <fieldset class="mgb0">
      <div class="myaccount-section-title" style="padding: 12px 24px;" >Multi-Factor Authentication</div>
      <table cellpadding="0" cellspacing="0" class="myaccountbody">
        <tr>
          <td colspan="6" align="center"><TMPL_UNLESS MFA_APPROVED_IP>You are attempting to access <TMPL_IF APP_NAME><TMPL_VAR NAME=APP_NAME><TMPL_ELSE>LexisNexis Accurint</TMPL_IF> from a location or device that we do not recognize. You must enter a secure one-time passcode (OTP) to continue.<br /><br /></TMPL_UNLESS>
Choose how you want to receive your one-time passcode:<br /><br />
</td>
        </tr>
        <tr><td colspan="6">&nbsp;</td></tr>
        <tr>
          <td width="10">&nbsp;</td>
          <td align="left" width="16%">User:</td>
          <td align="center" width="40%">&nbsp;<b><TMPL_VAR NAME="LOGINID"></b></td>
          <td align="center" width="16%"><span id="send_token"><strong>Send Token:</strong></span></td>
          <td align="center" width="16%"><span id="send_voice"><strong>Send Voice:</strong></span></td>
          <td align="left" width="24%">&nbsp;</td>
        </tr>
        <tr>
          <td width="10">&nbsp;</td>
          <td align="left" width="16%"><span id="email"><strong>Email:</strong></span></td>
          <td style="text-align:center;" name="MASK_EMAIL" width="40%"><TMPL_VAR NAME=MASK_EMAIL></td>
          <td style="text-align:center;" width="16%">
            <TMPL_IF NAME=MASK_EMAIL>
            <label for="send_token_email" style="display:none">token</label>
            <input id="send_token_email" aria-labelledby="send_token email" type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_EMAIL" CHECKED>
            </TMPL_IF>
          </td>
          <td style="text-align:center;" width="16%">&nbsp;</td>
          <td align="left" width="24%">&nbsp;</td>
        </tr>
        <tr>
          <td width="10">&nbsp;</td>
          <td align="left" width="16%"><span id="primary_ph"><strong>Primary Phone:</strong></span></td>
          <td style="text-align:center;" name="SMS_PHONE_MASK" width="40%"><TMPL_IF NAME=SMS_PHONE_MASK><TMPL_VAR NAME=SMS_PHONE_MASK></TMPL_IF></td>
          <td style="text-align:center;" width="16%">
            <TMPL_IF NAME=SMS_PHONE_MASK>
            <label for="send_token_primary_ph" style="display:none">token</label>
            <input id="send_token_primary_ph" aria-labelledby="send_token primary_ph" type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_PHONE" <TMPL_UNLESS NAME=MASK_EMAIL> CHECKED</TMPL_UNLESS> >
            </TMPL_IF>
          </td>
          <td style="text-align:center;" width="16%">
            <TMPL_IF NAME=SMS_PHONE_MASK>
            <label for="send_voice_primary_ph" style="display:none">token</label>            
            <input id="send_voice_primary_ph" aria-labelledby="send_voice primary_ph" type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_PHONE_VOICE">
            </TMPL_IF>
          </td>
          <td align="left" width="24%">&nbsp;</td>
        </tr>
        <tr>
          <td width="10">&nbsp;</td>
          <td align="left" width="16%"><span id="alt_ph"><strong>Alternate Phone:</strong></span></td>
          <td style="text-align:center;" name="VOICE_PHONE_MASK" width="40%"><TMPL_IF NAME=VOICE_PHONE_MASK><TMPL_VAR NAME=VOICE_PHONE_MASK></TMPL_IF></td>
          <td style="text-align:center;" width="16%">
            <TMPL_IF NAME=VOICE_PHONE_MASK>
            <label for="send_token_alt_ph" style="display:none">token</label>            
            <input id="send_token_alt_ph" aria-labelledby="send_token alt_ph" type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_ALT_PHONE" <TMPL_UNLESS NAME=MASK_EMAIL> <TMPL_UNLESS NAME=SMS_PHONE_MASK> CHECKED</TMPL_UNLESS> </TMPL_UNLESS> >
            </TMPL_IF>
          </td>
          <td style="text-align:center;" width="16%">
            <TMPL_IF NAME=VOICE_PHONE_MASK>
            <label for="send_voice_alt_ph" style="display:none">token</label>            
            <input id="send_voice_alt_ph" aria-labelledby="send_voice alt_ph" type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_ALT_PHONE_VOICE">
            </TMPL_IF>
          </td>
          <td align="left" width="24%">&nbsp;</td>
        </tr>
        <tr><td colspan="6">&nbsp;</td></tr>
      </table>
      <div class="section-row child-divs-center" style="padding: 12px 24px;">
        <div>
          <input name="BUTTON" class="btn red-btn" type="button" value="Send" onClick="send_event('OTP/MFA_INPUT_TOKEN_VERIFY');this.disabled = 'true';">&nbsp;
          <TMPL_IF MFA_APPROVED_IP>
            <input name="BUTTON" class="btn grey-btn" type="button" value="Skip" onClick="send_event('LOGIN/CONTINUE');">
          <TMPL_ELSE>
            <TMPL_IF MFA_ALLOW_ROAMING>
              <input name="BUTTON" class="btn grey-btn" type="button" value="Skip" onClick="return bypass_otp();">
            <TMPL_ELSE>
              <input name="BUTTON" class="btn grey-btn" type="button" value="Exit" onClick="send_event('LOGIN/LOGIN');">
            </TMPL_IF>
          </TMPL_IF>
        </div>
      </div>
    </fieldset>
  </div>
<TMPL_INCLUDE NAME=footer_v3.tpl>
<TMPL_ELSE>

<body>
<form name="MFA_UPDATE_TOKEN_SCREEN" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<input type="hidden" name="EVENT" value="OTP/MFA_INPUT_TOKEN_DETAILS">
<input type="hidden" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">
<input type="hidden" NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<input type="hidden" NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<INPUT type="hidden" NAME="EMAIL" VALUE="<TMPL_VAR NAME=USER_EMAIL>">
<INPUT type="hidden" NAME="MASK_EMAIL" VALUE="<TMPL_VAR NAME=MASK_EMAIL>">
<INPUT type="hidden" NAME="SMS_PHONE" VALUE="<TMPL_VAR NAME=SMS_PHONE>">
<INPUT type="hidden" NAME="VOICE_PHONE" VALUE="<TMPL_VAR NAME=VOICE_PHONE>">
<INPUT type="hidden" NAME="SMS_PHONE_MASK" VALUE="<TMPL_VAR NAME=SMS_PHONE_MASK>">
<INPUT type="hidden" NAME="VOICE_PHONE_MASK" VALUE="<TMPL_VAR NAME=VOICE_PHONE_MASK>">
<input type="hidden" NAME="AUTH_SEQUENCE" VALUE="1">

<div id="hd">
<h2><a trackid="hdr_top_logo"><TMPL_IF APP_NAME><TMPL_VAR NAME=APP_NAME><TMPL_ELSE>LexisNexis Accurint</TMPL_IF></a></h2>
</div>

<div align="center">
  <table border="0" cellpadding="0" cellspacing="0" width="880">
    <tr>
      <td align="center" valign="top">
        <table border="0" cellpadding="0" cellspacing="0" width="856">
          <tr>
            <td align="center" class="myaccounttitle" height="20" valign="middle">
              <br/>Multi-Factor Authentication Registration<br/><br/>
            </td>
          </tr>
          <tr>
            <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
              <table border="0" cellpadding="1" cellspacing="0" class="myaccountborder" style="margin: 0 auto">
                <tr>
                  <td align="center">
                    <table border="0" cellpadding="10" cellspacing="0" width="680" class="myaccountalert">
                      <TMPL_IF NAME=ERROR_MESSAGE>
                      <tr>
                        <td align="center" colspan="2" class="errormessage">
                          <span class="errormessage"><TMPL_VAR NAME="ERROR_MESSAGE">&nbsp;</span><br/>
                        </td>
                      </tr>
                      </TMPL_IF>

                      <tr>
                        <td class="myaccountlabel" colspan="4" align="center"><TMPL_UNLESS MFA_APPROVED_IP>You are attempting to access <TMPL_IF APP_NAME><TMPL_VAR NAME=APP_NAME><TMPL_ELSE>LexisNexis Accurint</TMPL_IF> from a location or device that we do not recognize. You must enter a secure one-time passcode (OTP) to continue.<br /><br /></TMPL_UNLESS>
              Choose how you want to receive your one-time passcode:<br /><br />
                        </td>
                      </tr>
                      <tr>
                        <td class="myaccountlabel" align="left" width="16%">User:</td>
                        <td class="myaccountlabel" align="center" width="40%">&nbsp;<b><TMPL_VAR NAME="LOGINID"></b></td>
                        <td class="myaccountlabel" align="center" width="16%">Send Token:</td>
                        <td class="myaccountlabel" align="center" width="16%">Send Voice:</td>
                      </tr>
                      <tr>
                        <td class="myaccountlabel" align="left" width="16%">Email:</td>
                        <td class="myaccountlabel" style="text-align:center;" name="MASK_EMAIL" width="40%"><TMPL_VAR NAME=MASK_EMAIL></td>
                        <td class="myaccountlabel" style="text-align:center;" width="16%">
                          <TMPL_IF NAME=MASK_EMAIL>
                          <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_EMAIL" CHECKED>
                          </TMPL_IF>
                        </td>
                        <td style="text-align:center;" width="16%">&nbsp;</td>
                      </tr>
                      <tr>
                        <td class="myaccountlabel" align="left" width="16%">Primary Phone:</td>
                        <td class="myaccountlabel" style="text-align:center;" name="SMS_PHONE_MASK" width="40%"><TMPL_IF NAME=SMS_PHONE_MASK><TMPL_VAR NAME=SMS_PHONE_MASK></TMPL_IF></td>
                        <td style="text-align:center;" width="16%">
                          <TMPL_IF NAME=SMS_PHONE_MASK>
                          <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_PHONE" <TMPL_UNLESS NAME=MASK_EMAIL> CHECKED </TMPL_UNLESS> >
                          </TMPL_IF>
                        </td>
                        <td style="text-align:center;" width="16%">
                          <TMPL_IF NAME=SMS_PHONE_MASK>
                          <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_PHONE_VOICE">
                          </TMPL_IF>
                        </td>
                      </tr>
                      <tr>
                        <td class="myaccountlabel" align="left" width="16%">Alternate Phone:</td>
                        <td class="myaccountlabel" style="text-align:center;" name="VOICE_PHONE_MASK" width="40%"><TMPL_IF NAME=VOICE_PHONE_MASK><TMPL_VAR NAME=VOICE_PHONE_MASK></TMPL_IF></td>
                        <td style="text-align:center;" width="16%">
                          <TMPL_IF NAME=VOICE_PHONE_MASK>
                          <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_ALT_PHONE" <TMPL_UNLESS NAME=MASK_EMAIL> <TMPL_UNLESS NAME=SMS_PHONE_MASK> CHECKED</TMPL_UNLESS> </TMPL_UNLESS> >
                          </TMPL_IF>
                        </td>
                        <td style="text-align:center;" width="16%">
                          <TMPL_IF NAME=VOICE_PHONE_MASK>
                          <input type=radio name="TOKEN_TYPE" value="TOKEN_TYPE_ALT_PHONE_VOICE">
                          </TMPL_IF>
                        </td>
                      </tr>
                      <tr>
                        <td align="center" class="myaccountlabel" colspan="4">
                          <table border="0" width="500">
                            <tr>
                              <td class="myaccountlabel" align="center" valign="middle" height="50">
                                <table border="0">
                                  <tr>
                                    <td><input name="BUTTON" class="myaccount-btn red-btn" type="button" value="Send" onClick="send_event('OTP/MFA_INPUT_TOKEN_VERIFY');this.disabled = 'true';"></td>
                                    <TMPL_IF MFA_APPROVED_IP>
                                      <td><input name="BUTTON" class="myaccount-btn darkgrey-btn" type="button" value="Skip" onClick="send_event('LOGIN/CONTINUE');"></td>
                                    <TMPL_ELSE>
                                      <TMPL_IF MFA_ALLOW_ROAMING>
                                        <td><input name="BUTTON" class="myaccount-btn darkgrey-btn" type="button" value="Skip" onClick="return bypass_otp();"></td>
                                      <TMPL_ELSE>
                                        <td><input name="BUTTON" class="myaccount-btn darkgrey-btn" type="button" value="Exit" onClick="send_event('LOGIN/LOGIN');"></td>
                                      </TMPL_IF>
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
</TMPL_IF>

<!-- end manage_account_mfa_send_token.tpl -->
