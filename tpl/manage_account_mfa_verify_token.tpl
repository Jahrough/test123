<!-- begin manage_account_mfa_verify_token.tpl -->
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
  function do_edit()
  {
    df = document.forms[0];
    if (df.OTP1.value.length != 8) {
      alert('Please enter a valid token');
    } else {
      send_event('OTP/MFA_INPUT_TOKEN_FINAL');
    }
    return false;
  }
  </script>
  <TMPL_IF ENABLE_MYACC_V3>
  <script src="<TMPL_VAR NAME='JSPATH'>/v3/make_table_508.js"></script>    
  </TMPL_IF>  
</head>

<TMPL_IF ENABLE_MYACC_V3>
<body>
<form name="MFA_UPDATE_TOKEN_SCREEN" action="<TMPL_VAR NAME=ACTION>" onSubmit="return do_edit();" method="post">
<TMPL_INCLUDE NAME="common_hidden_input.tpl">
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<input type="hidden" name="EVENT" value="OTP/MFA_INPUT_TOKEN_FINAL">
<input type="hidden" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">
<input type="hidden" NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<input type="hidden" NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<input type="hidden" NAME="NEW_MFA" VALUE="<TMPL_VAR NAME=MFA_MACHINE_ACTIVATE_ENABLED>">
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
      <table cellpadding="0" cellspacing="0" class="myaccountbody" class="w100pc">
      <TMPL_IF ERROR_MESSAGE>
        <tr><td align="center"><br/><TMPL_VAR NAME=ERROR_MESSAGE><br/><br/></td></tr>
      <TMPL_ELSE>
        <tr>
          <td align="left">&nbsp;<b>Enter one-time passcode (OTP)</b></td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
          <td align="left">Your secure OTP has been sent.</td>
        </tr>
        <tr><td align="left">&nbsp;</td></tr>
        <div style="padding: 2px 12px;">
          <tr>
            <td align="left">Enter the OTP you received via email, voice or text.&nbsp;&nbsp;Please allow sufficient time for delivery.&nbsp;&nbsp;Your OTP is valid for 60 minutes.</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td nowrap colspan="2"><b><label for="otp_input">OTP:</label></b>&nbsp; <INPUT id="otp_input" TYPE="text" NAME="OTP1" SIZE="12" VALUE="" MAXLENGTH=8></td>
          </tr>
        </div>
      </TMPL_IF>
      </table>
      <div class="section-row child-divs-center" style="padding: 12px 24px;">
        <div>
          <TMPL_IF ERROR_MESSAGE>
          <td><input name="BUTTON" class="btn red-btn" type="button" value="Exit" onClick="send_event('LOGIN/LOGIN');"></td>
          <TMPL_ELSE>
          <td><input name="BUTTON" class="btn red-btn" type="button" value="Continue" onclick="return do_edit();"></td>
          </TMPL_IF>
          <td><input name="BUTTON" class="btn grey-btn" type="button" value="Reselect Token" onClick="send_event('OTP/MFA_INPUT_TOKEN_SAVE');"></td>
        </div>
      </div>
    </fieldset>
  </div>
<TMPL_INCLUDE NAME=footer_v3.tpl>
<TMPL_ELSE>

<body>
<form name="MFA_UPDATE_TOKEN_SCREEN" action="<TMPL_VAR NAME=ACTION>" onSubmit="return do_edit();" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<input type="hidden" name="EVENT" value="OTP/MFA_INPUT_TOKEN_VERIFY">
<input type="hidden" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">
<input type="hidden" NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<input type="hidden" NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<input type="hidden" NAME="NEW_MFA" VALUE="<TMPL_VAR NAME=MFA_MACHINE_ACTIVATE_ENABLED>">

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
                      <TMPL_IF ERROR_MESSAGE>
                        <tr><td class="myaccountlabel" align="center"><br/><TMPL_VAR NAME=ERROR_MESSAGE><br/><br/></td></tr>
                      <TMPL_ELSE>
                      <tr>
                        <td class="myaccountlabel" align="left">&nbsp;<b>Enter OTP</b></td>
                      </tr>
                      <tr>
                        <td class="myaccountlabel" align="left">Your secure one-time passcode(OTP) has been sent.</td>
                      </tr>
                      <tr>
                        <td class="myaccountlabel" align="left">Enter the OTP you received via email, voice or text.&nbsp;&nbsp;Please allow sufficient time for delivery.&nbsp;&nbsp;Your OTP is valid for 60 minutes.</td>
                      </tr>
                      <tr>
                        <td nowrap class="myaccountlabel"><b>OTP:</b>&nbsp; <INPUT TYPE="text" NAME="OTP1" SIZE="12" VALUE="" MAXLENGTH=8></td>
                      </tr>
                      </TMPL_IF>
                      <tr>
                        <td align="center" class="myaccountlabel" colspan="2">
                          <table border="0" width="500">
                            <tr>
                              <td class="myaccountlabel" valign="middle" height="50">
                                <table border="0" width="95%">
                                  <tr>
                                  <TMPL_IF ERROR_MESSAGE>
                                    <td width="50%" align="right"><input name="BUTTON" class="myaccount-btn red-btn" type="button" value="Exit" onClick="send_event('LOGIN/LOGIN');">
                                  <TMPL_ELSE>
                                    <td width="50%" align="right"><input name="BUTTON" class="myaccount-btn red-btn" type="button" value="Continue" onclick="return do_edit();">
                                  </TMPL_IF>
                                  <td width="50%" align="left"><input name="BUTTON" class="myaccount-btn darkgrey-btn" type="button" value="Reselect Token" onClick="send_event('OTP/MFA_INPUT_TOKEN_SAVE');">
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

<!-- end manage_account_mfa_verify_token.tpl -->
