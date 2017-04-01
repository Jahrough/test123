<!-- begin manage_account_mfa_show_register.tpl -->
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>Multi-Factor Authentication Registration</title>

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
  <script type="text/javascript">
  var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
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
</head>

<TMPL_IF ENABLE_MYACC_V3>
<body>
<form name="MFA_REGISTER_SCREEN" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<input type="hidden" name="EVENT" value="OTP/MFA_INPUT_TOKEN_DETAILS">
<input type="hidden" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
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
  <div id="txtCon" >
    <fieldset class="mgb0">
      <div class="myaccount-section-title" style="padding: 12px 24px;" >Multi-Factor Authentication Registration</div>
      <table cellpadding="0" cellspacing="0" class="myaccountbody">
        <tr><td>&nbsp;</td></tr>
      </table>
      <table cellpadding="0" cellspacing="0" class="myaccountbody">
        <tr>
          <td>
            <table border=0 cellpadding="2" cellspacing="0" class="w100pc">
              <tr>
                <td colspan="4" align="left">Our customers place their trust in us.&nbsp;&nbsp;It is a responsibility we at <TMPL_IF APP_NAME><TMPL_VAR NAME=APP_NAME><TMPL_ELSE>LexisNexis&#174;</TMPL_IF> take very seriously.&nbsp;&nbsp;When you attempt to access certain information from a browser or location our systems do not recognize, you must request and enter a temporary one-time passcode (OTP), which helps us identify you.&nbsp;&nbsp;This added layer of security helps prevent unauthorized access to certain information and products.<br /><br />
You may choose to provide at least one telephone number to receive your OTP and other security notifications from <TMPL_IF APP_NAME><TMPL_VAR NAME=APP_NAME><TMPL_ELSE>LexisNexis&#174;</TMPL_IF> via SMS (text message) or automated voice call.&nbsp;&nbsp;The phone number that you provide will only be used in connection with account security.&nbsp;&nbsp;If you do not provide a telephone number, you can choose to have the OTP sent to your email address.<br /><br />
Click <b>Register</b> to begin the process of requesting an OTP.<br /><br />
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <div class="section-row child-divs-center" style="padding: 12px 24px;">
        <div>
          <input name="BUTTON" class="btn red-btn" type="button" value="Register" onClick="send_event('OTP/MFA_INPUT_TOKEN_DETAILS');">&nbsp;
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
<form name="MFA_REGISTER_SCREEN" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE name=common_hidden_input.tpl>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<input type="hidden" name="EVENT" value="OTP/MFA_INPUT_TOKEN_DETAILS">
<input type="hidden" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

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
              <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
                <tr>
                  <td align="center">
                    <table border="0" cellpadding="10" cellspacing="0" width="600" class="myaccountalert">
                      <TMPL_IF NAME=ERROR_MESSAGE>
                      <tr>
                        <td align="center" colspan="2" class="errormessage">
                          <span class="errormessage"><TMPL_VAR NAME="ERROR_MESSAGE">&nbsp;</span><br/>
                        </td>
                      </tr>
                      </TMPL_IF>
                      <tr>
                        <td align="left" colspan="2" class="myaccountlabel">
Our customers place their trust in us.&nbsp;&nbsp;It is a responsibility we at <TMPL_IF APP_NAME><TMPL_VAR NAME=APP_NAME><TMPL_ELSE>LexisNexis&#174;</TMPL_IF> take very seriously.&nbsp;&nbsp;When you attempt to access certain information from a browser or location our systems do not recognize, you must request and enter a temporary one-time passcode (OTP), which helps us identify you.&nbsp;&nbsp;This added layer of security helps prevent unauthorized access to certain information and products.<br /><br />
You may choose to provide at least one telephone number to receive your OTP and other security notifications from <TMPL_IF APP_NAME><TMPL_VAR NAME=APP_NAME><TMPL_ELSE>LexisNexis&#174;</TMPL_IF> via SMS (text message) or automated voice call.&nbsp;&nbsp;The phone number that you provide will only be used in connection with account security.&nbsp;&nbsp;If you do not provide a telephone number, you can choose to have the OTP sent to your email address.<br /><br />
Click <b>Register</b> to begin the process of requesting an OTP.
                        </td>
                      </tr>
                      <tr>
                        <td align="center" class="myaccountlabel" colspan="2">
                          <table border="0" width="500">
                            <tr>
                              <td class="myaccountlabel" valign="middle" height="50">
                                <table border="0" width="95%">
                                  <tr>
                                    <td align="right"><input name="BUTTON" class="myaccount-btn red-btn" type="button" value="Register" onClick="send_event('OTP/MFA_INPUT_TOKEN_DETAILS');"></td>
                                    <TMPL_IF MFA_APPROVED_IP>
                                      <td align="left"><input name="BUTTON" class="myaccount-btn darkgrey-btn" type="button" value="Skip" onClick="send_event('LOGIN/CONTINUE');"></td>
                                    <TMPL_ELSE>
                                      <TMPL_IF MFA_ALLOW_ROAMING>
                                        <td align="left"><input name="BUTTON" class="myaccount-btn darkgrey-btn" type="button" value="Skip"  onClick="return bypass_otp();"></td>
                                      <TMPL_ELSE>
                                        <td align="left"><input name="BUTTON" class="myaccount-btn darkgrey-btn" type="button" value="Exit" onClick="send_event('LOGIN/LOGIN');"></td>
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

<!-- end manage_account_mfa_show_register.tpl -->
