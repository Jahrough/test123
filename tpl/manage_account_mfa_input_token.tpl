<!-- begin manage_account_mfa_input_token.tpl -->
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
  <script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>
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
  function check_vals() {
    var df = document.forms[0];
    if (df.EMAIL_ADDR_PREFIX) {
      if(!validate_email_prefix('EMAIL_ADDR_PREFIX')) {
        return false;
      }
    }
    else if (df.EMAIL) {
      if(!validate_email('EMAIL')) {
        return false;
      }
    }
    if (df.SMS_PHONE.value != '') {
      var re = df.SMS_PHONE.value.replace(/[^\d*]/g,'');
      if (re.length != 10) {
        alert("Please enter a 10 digit primary phone number");
        return false;
      }
    }
    if (df.VOICE_PHONE.value != '') {
      var re = df.VOICE_PHONE.value.replace(/[^\d*]/g,'');
      if (re.length != 10) {
        alert("Please enter a 10 digit alternate phone number");
        return false;
      }
    }
    return true;
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
</head>

<TMPL_IF ENABLE_MYACC_V3>
<body>
<form name="MFA_UPDATE_TOKEN_SCREEN" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<input type="hidden" name="EVENT" value="OTP/MFA_INPUT_TOKEN_DETAILS">
<input type="hidden" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">
<input type="hidden" NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<input type="hidden" NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<input type="hidden" NAME="UPDATE_USER" VALUE="1">
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
      <tr>
        <td colspan="4">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="4" align="center">&nbsp;Update Your Information</td>
      </tr>
      <tr height="12">
        <td colspan="4">&nbsp;</td>
      </tr>
      <tr height="30">
        <td width="10%">&nbsp;</td>
        <td align="left" width="25%">User:</td>
        <td align="center" width="30%">&nbsp;<TMPL_VAR NAME="LOGINID"></td>
        <td align="left" width="35%">&nbsp;</td>
      </tr>
      <tr>
        <td width="10%">&nbsp;</td>
        <td align="left" width="25%">Email:</td>
        <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
          <td style="text-align:center;" width="30%">
            <input type="text" name="EMAIL_ADDR_PREFIX" size="36" value="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX></TMPL_UNLESS>" MAXLENGTH=60>
          </td>
          <td align="left" width="35%">@&nbsp;<select id="email_domain" name="EMAIL_DOMAIN"><option value="" selected>Select One</option><TMPL_LOOP NAME="EMAIL_DOMAIN_LIST"><option<TMPL_IF NAME='EMAIL_CURR_DOMAIN'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option></TMPL_LOOP></select>
          </td>
        <TMPL_ELSE>
          <td style="text-align:center;" width="30%">
            <input type=text name="EMAIL" size="40" maxlength="60" tabindex="1" value="<TMPL_VAR NAME=USER_EMAIL>" >
          </td>
          <td align="left" width="35%">&nbsp;</td>
        </TMPL_IF>
      </tr>
      <tr>
        <td width="10%">&nbsp;</td>
        <td align="left" width="25%">Primary Phone:</td>
        <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
          <td style="text-align:center;" width="30%">
            <input type=text name="SMS_PHONE" size="36" maxlength="12" tabindex="2" onkeypress="return isNumberKey(event)" value="<TMPL_VAR NAME=SMS_PHONE>">
          </td>
          <td align="left" width="35%">&nbsp;</td>
        <TMPL_ELSE>
          <td style="text-align:center;" width="40%">
            <input type=text name="SMS_PHONE" size="40" maxlength="12" tabindex="2" onkeypress="return isNumberKey(event)" value="<TMPL_VAR NAME=SMS_PHONE>">
          </td>
          <td align="left" width="30%">&nbsp;</td>
        </TMPL_IF>
      </tr>
      <tr>
        <td width="10%">&nbsp;</td>
        <td align="left" width="25%">Alternate Phone:</td>
        <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
          <td style="text-align:center;" width="30%">
            <input type=text name="VOICE_PHONE" size="36" maxlength="12" tabindex="3" onkeypress="return isNumberKey(event)" value="<TMPL_VAR NAME=VOICE_PHONE>">
          </td>
          <td align="left" width="35%">&nbsp;</td>
        <TMPL_ELSE>
          <td style="text-align:center;" width="40%">
            <input type=text name="VOICE_PHONE" size="40" maxlength="12" tabindex="3" onkeypress="return isNumberKey(event)" value="<TMPL_VAR NAME=VOICE_PHONE>">
          </td>
          <td align="left" width="30%">&nbsp;</td>
        </TMPL_IF>
      </tr>
      <tr>
        <td colspan="4">&nbsp;</td>
      </tr>
    </table>
    <div class="section-row child-divs-center" style="padding: 12px 24px;">
      <div>
        <input name="BUTTON" class="btn red-btn" type="button" value="Save" onClick="if (!check_vals()){return false};send_event('OTP/MFA_INPUT_TOKEN_SAVE');"></td>
        <input name="BUTTON" class="btn grey-btn" type="button" value="No Changes" onClick="document.forms[0].UPDATE_USER.value='0';send_event('OTP/MFA_INPUT_TOKEN_SAVE');">&nbsp;
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
<input type="hidden" NAME="UPDATE_USER" VALUE="1">

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
                    <table border="0" cellpadding="10" cellspacing="0" width="675" class="myaccountalert">
                      <TMPL_IF NAME=ERROR_MESSAGE>
                      <tr>
                        <td align="center" colspan="3" class="errormessage">
                          <span class="errormessage"><TMPL_VAR NAME="ERROR_MESSAGE">&nbsp;</span><br/>
                        </td>
                      </tr>
                      </TMPL_IF>
                      <tr>
                        <td class="myaccountlabel" height="20" colspan="3" align="center"><br />Update Your Information</td>
                      </tr>
                      <tr>
                        <td class="myaccountlabel" align="left" width="28%">User:</td>
                        <td class="myaccountlabel" align="center" width="30%">&nbsp;<b><TMPL_VAR NAME="LOGINID"></b></td>
                        <td class="unifont1" align="left" width="40%">&nbsp;</td>
                      </tr>
                      <tr>
                        <td class="myaccountlabel" align="left" width="28%">Email:</td>
                        <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
                          <td style="text-align:center;" width="30%">
                            <input type="text" name="EMAIL_ADDR_PREFIX" size="30" tabindex="1" value="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX></TMPL_UNLESS>" MAXLENGTH=60>
                          </td>
                          <td class="unifont1" align="left" width="40%">&nbsp;@&nbsp;<select id="email_domain" name="EMAIL_DOMAIN"><option value="" selected>Select One</option><TMPL_LOOP NAME="EMAIL_DOMAIN_LIST"><option<TMPL_IF NAME='EMAIL_CURR_DOMAIN'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option></TMPL_LOOP></select>
                          </td>
                        <TMPL_ELSE>
                          <td style="text-align:center;" width="40%">
                            <input type=text name="EMAIL" size="40" maxlength="60" tabindex="1" value="<TMPL_VAR NAME=USER_EMAIL>" >
                          </td>
                          <td class="unifont1" align="left" width="30%">&nbsp;</td>
                        </TMPL_IF>
                      </tr>
                      <tr>
                        <td class="myaccountlabel" align="left" width="28%">Primary Phone:</td>
                        <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
                          <td style="text-align:center;" width="30%">
                            <input type=text name="SMS_PHONE" size="30" maxlength="12" tabindex="2" value="<TMPL_VAR NAME=SMS_PHONE>">
                          </td>
                          <td class="unifont1" align="left" width="40%">&nbsp;</td>
                        <TMPL_ELSE>
                          <td style="text-align:center;" width="40%">
                            <input type=text name="SMS_PHONE" size="40" maxlength="12" tabindex="2" value="<TMPL_VAR NAME=SMS_PHONE>">
                          </td>
                          <td class="unifont1" align="left" width="30%">&nbsp;</td>
                        </TMPL_IF>
                      </tr>
                      <tr>
                        <td class="myaccountlabel" align="left" width="28%">Alternate Phone:</td>
                        <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
                          <td style="text-align:center;" width="30%">
                            <input type=text name="VOICE_PHONE" size="30" maxlength="12" tabindex="3" value="<TMPL_VAR NAME=VOICE_PHONE>">
                          </td>
                          <td class="unifont1" align="left" width="40%">&nbsp;</td>
                        <TMPL_ELSE>
                          <td style="text-align:center;" width="40%">
                            <input type=text name="VOICE_PHONE" size="40" maxlength="12" tabindex="3" value="<TMPL_VAR NAME=VOICE_PHONE>">
                          </td>
                          <td class="unifont1" align="left" width="30%">&nbsp;</td>
                        </TMPL_IF>
                      </tr>
                      <tr>
                        <td align="center" class="myaccountlabel" colspan="3">
                          <table border="0" width="500">
                            <tr>
                              <td class="myaccountlabel" valign="middle" height="50">
                                <table border="0" width="95%">
                                  <tr>
                                    <td align="center"><div style="display: inline-block"><input name="BUTTON" class="myaccount-btn red-btn" name="accept" type="button" value="Save" onClick="if (!check_vals()){return false};send_event('OTP/MFA_INPUT_TOKEN_SAVE');">
                                    <input name="BUTTON" class="myaccount-btn darkgrey-btn" type="button" value="No Changes" onClick="document.forms[0].UPDATE_USER.value='0';send_event('OTP/MFA_INPUT_TOKEN_SAVE');"></div></td>
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

<!-- end manage_account_mfa_input_token.tpl -->
