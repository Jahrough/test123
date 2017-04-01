<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin password_change_reminder.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Change Password Reminder</title>

    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">

    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>

    <script type="text/javascript">
      function change_later()
      {
	document.forms[0].SKIP_PASSWORD_CHANGE.value = 1;
	send_event('LOGIN/CONTINUE');
      }
    </script>

  </head>

  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_IF NAME="ENABLE_V2">
  <link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
  <div id="hd"><span trackid="hdr_top_logo"></span></div>
<TMPL_ELSE>
  <TMPL_INCLUDE NAME="generic_header.tpl">
</TMPL_IF>

    <form name="PWCHREMIND" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
      <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <input type="hidden" name="EVENT" value="">
      <input type="hidden" name="SKIP_PASSWORD_CHANGE" value="">

      <div align="center">

        <table border="0" cellpadding="0" cellspacing="0" height="50">
	  <tr><td>&nbsp;</td></tr>
	</table>

        <table border="0" cellpadding="12" cellspacing="0" class="myaccountborder" width="880">
          <tr>
            <td align="center" valign="middle">
              <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
                <tr>
                  <td align="center" valign="middle" class="myaccountbanner" height="60">Change Password Reminder</td>
                </tr>
                <tr>
                  <td align="center" valign="middle"><p class="infonote">Your password will expire in <TMPL_VAR NAME="DAYS_TO_EXPIRY"> days.<br>Would you like to change it?</p></td>
                </tr>
                <tr>
                  <td align="center" valign="middle" height="50"><a class="glb" href="javascript:send_event('LOGIN/REMIND_PASSWORD_CHANGE_SHOW')"><img src="<TMPL_VAR IMGPATH>/change_now.gif" border="0" alt="Change Now" title="Change your password now"></a> &nbsp; <a class="glb" href="javascript:change_later()"><img src="<TMPL_VAR IMGPATH>/change_later.gif" border="0" alt="Change Later" title="Change your password later"></a></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>

      </div>

    </form>
    <TMPL_INCLUDE NAME="search_hidden_form.tpl">

  </body>
</html>
