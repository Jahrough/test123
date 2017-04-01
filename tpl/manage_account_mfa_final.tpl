<!-- begin manage_account_mfa_final.tpl -->

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
  </script>
  <TMPL_IF ENABLE_MYACC_V3>
  <script src="<TMPL_VAR NAME='JSPATH'>/v3/make_table_508.js"></script>    
  </TMPL_IF>  
</head>

<TMPL_IF ENABLE_MYACC_V3>
<body>
<form name="MFA_REGISTER_FINAL_ERROR" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<input type="hidden" name="EVENT" value="OTP/MFA_INPUT_TOKEN_FINAL">
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
  <div id="txtCon">
    <fieldset class="mgb0">
      <div class="myaccount-section-title" style="padding: 12px 24px;" >Multi-Factor Authentication</div>
      <table cellpadding="0" cellspacing="0" class="myaccountbody">
        <tr><td>&nbsp;</td></tr>
      </table>
      <table cellpadding="0" cellspacing="0" class="myaccountbody">
        <tr>
          <td align="center">
            <table border=0 cellpadding="2" cellspacing="0" class="w75pc">
              <tr>
                <td align="center"><TMPL_VAR NAME=MESSAGE></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <div class="section-row child-divs-center" style="padding: 12px 24px;">
        <div>
          <input name="BUTTON" class="btn red-btn" type="button" value="<TMPL_VAR NAME=BUTTON_NAME>" onClick="send_event('<TMPL_VAR NAME=BUTTON_EVENT>');">
        </div>
      </div>
    </fieldset>
  </div>
<TMPL_INCLUDE NAME=footer_v3.tpl>
<TMPL_ELSE>
<body>
<form name="MFA_REGISTER_FINAL_ERROR" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<input type="hidden" name="EVENT" value="OTP/MFA_INPUT_TOKEN_FINAL">
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
              <br/>Multi-Factor Authentication<br/><br/>
            </td>
          </tr>
          <tr>
            <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
              <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
                <tr>
                  <td align="center">
                    <table border="0" cellpadding="10" cellspacing="0" width="600" class="myaccountalert">
                      <tr>
                        <td class="myaccountlabel" align="center"><TMPL_VAR NAME=MESSAGE></td>
                      </tr>
                      <tr>
                        <td align="center" class="myaccountlabel" colspan="2">
                          <table border="0">
                            <tr>
                              <td class="myaccountlabel" valign="middle" height="50">
                                <table border="0">
                                  <tr>
                                    <td><input name="BUTTON" class="myaccount-btn red-btn" type="button" value="<TMPL_VAR NAME=BUTTON_NAME>" onClick="send_event('<TMPL_VAR NAME=BUTTON_EVENT>');"></td>
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

<!-- end manage_account_mfa_final.tpl -->
