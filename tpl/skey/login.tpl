<!--<TMPL_VAR NAME=SERVER_ID>-->
<!-- skey/login.tpl -->
<html>
<head>
<title>Login</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/login_script.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/md5.js"></script>

<SCRIPT LANGUAGE="JavaScript">
login_over = new Image();
login_over.src = "<TMPL_VAR NAME=IMGPATH>/login_key_over.gif";
var enable_lh = <TMPL_IF ENABLE_LOGIN_HASHING>1<TMPL_ELSE>0</TMPL_IF>;
var enable_lt = <TMPL_IF ENABLE_LOGIN_TOKEN>1<TMPL_ELSE>0</TMPL_IF>;
var app_type = '<TMPL_VAR NAME=APPLICATION_TYPE>';

function write_url() {
    var url;
    if (app_type == 'ins') {
	url = 'https://insurance.lexisnexis.com';
    } else if (app_type == 'hea') {
	url = 'https://healthcare.accurint.com';
    } else if (app_type == 'aig') {
	url = 'https://aig.accurint.com';
    } else {
	url = 'http://www.accurint.com';
    }
    document.write(url);
}
</SCRIPT>

</head>

<body onLoad="<TMPL_IF NAME="ERROR_MESSAGE">alert('<TMPL_VAR NAME=ERROR_MESSAGE>');</TMPL_IF>setup_page();" leftmargin="0" marginheight="0" marginwidth="0" topmargin="0" bgcolor="#ffffff">
<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="LOGIN" action="<TMPL_VAR NAME=ACTION_LOGIN>" method="post" onSubmit="return prepared();">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="LOGINID" VALUE="<TMPL_VAR NAME=LOGINID>">
      <INPUT type=hidden NAME="EVENT" VALUE="LOGIN/LOGIN">
      <INPUT type=hidden NAME="ACTION_SOUND" VALUE="<TMPL_VAR NAME=ACTION_SOUND>">
      <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
      <INPUT type=hidden NAME="TDZ" VALUE="<TMPL_VAR NAME=TDZ>">
      <TMPL_IF ENABLE_LOGIN_HASHING>
	  <INPUT type=hidden NAME="_K" VALUE="<TMPL_VAR NAME=_K>">
	  <INPUT type=hidden NAME="_SK" VALUE="<TMPL_VAR NAME=_SK>">
      </TMPL_IF>
<TMPL_INCLUDE NAME=login_header.tpl>


<br>

<TMPL_IF NAME="PLAIN_LOGIN">
        <TMPL_INCLUDE NAME=login_body.tpl>
<TMPL_ELSE>
    <TMPL_IF NAME="SHOW_SITEKEY">
	<TMPL_INCLUDE NAME=skey_body.tpl>
<TMPL_ELSE>
    <TMPL_IF NAME="SHOW_SEC_QUES">
	<TMPL_INCLUDE NAME=secq_body.tpl>
    </TMPL_IF>
    </TMPL_IF>
</TMPL_IF>

</form>
</body>
</html>
