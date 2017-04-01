<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin password_changed.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Password Changed</title>

    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">

    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>

  </head>

  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" onload="if (document.getElementById) document.getElementById('continue').focus();">

<TMPL_IF NAME="ENABLE_V2">
  <link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
  <div id="hd"><span trackid="hdr_top_logo"></span></div>
<TMPL_ELSE>
  <TMPL_INCLUDE NAME="generic_header.tpl">
</TMPL_IF>

    <form name="CHG_PASSWD" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="EVENT" value="MESSAGE/MESSAGES">
      <input type="hidden" name="CLIENT_TYPE" value="WEB">
      <input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='LOGINID'>">
      <input type="hidden" name="PASSWORD_CHANGED" value="1">

      <div align="center">
        <table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
          <tr>
            <td align="center" valign="top">
              <table border="0" cellpadding="0" cellspacing="0" width="856">
                <tr height="12">
                  <td height="12" width="856" class="unifont1">&nbsp;</td>
                </tr>
              </table>
              <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
                <tr>
                  <td colspan="2" align="center" class="myaccounttitle" height="100" valign="middle"><br>Your password has been changed</td>
                </tr>
    
                <tr>
                  <td colspan="2" align="center" class="myaccounttitle" height="100" valign="middle">
                    <a id="continue" href="javascript:send_event('LOGIN/CONTINUE')"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/continue.gif" border="0"></a>
                  </td>
                </tr>
              </table>

	      <TMPL_INCLUDE NAME=myaccount_footer.tpl>

            </td>
          </tr>
        </table>
      </div>
    </form>
  </body>
</html>
