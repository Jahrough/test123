<html>
<head>
<title>Default Page</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>

</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<TMPL_IF IS_V4>
<img src="http://www.lexisnexis.com/images/logo-lexisnexis.png" alt="LexisNexis&trade;"/>
<TMPL_ELSE>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>
</TMPL_IF>

<form name="LOGIN" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="EVENT" VALUE="">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
<center>
<br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="500">
<tr>
<td class="unifont1">Invalid request.  Please return to the login screen and try again.</td>
</tr>
</table>
<center>
</form>
</body>
</html>
