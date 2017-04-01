<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin require_password_change.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Change Password</title>

    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">

    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>

  </head>

  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_IF NAME="ENABLE_V2">
  <link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
  <div id="hd"><span trackid="hdr_top_logo"></span></div>
<TMPL_ELSE>
  <TMPL_INCLUDE NAME="generic_header.tpl">
</TMPL_IF>

    <form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
      <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <input type="hidden" name="EVENT" value="">
      <input type="hidden" name="REQUIRE_PASSWORD_CHANGE" value="1">

      <div align="center">
      <TMPL_INCLUDE NAME=manage_account_chpasswd.tpl>
      </div>

    </form>
    <TMPL_INCLUDE NAME="search_hidden_form.tpl">
  </body>
</html>
<!-- end manage_account.tpl -->
