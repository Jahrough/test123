<!--<TMPL_VAR NAME=SERVER_ID>-->
<!--Begin prudential_login.tpl -->
<html>
<head>
<title>Login</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/login_script.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/md5.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>


<SCRIPT LANGUAGE="JavaScript">
login_over = new Image();
login_over.src = "<TMPL_VAR NAME=IMGPATH>/login_key_over.gif";
var enable_lh = 0;
var enable_lt = 0
</SCRIPT>

</head>

<body onLoad="<TMPL_IF NAME="ERROR_MESSAGE">alert('<TMPL_VAR NAME=ERROR_MESSAGE>');</TMPL_IF>setup_page();" leftmargin="0" marginheight="0" marginwidth="0" topmargin="0" bgcolor="#ffffff">
<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<XML ID="XMLID">
    <XMLDATA>
	<status>1</status>
	<reportreference></reportreference>
	<prureference></prureference>
	<reportdate></reportdate>
    </XMLDATA>
</XML>

<form name="LOGIN" action="<TMPL_VAR NAME=ACTION>" method="post" onSubmit="showpw();return prepared_prud();">
      <INPUT type=hidden NAME="id3" VALUE="PRUDENTIAL/LOGIN">

<table width="803" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><a href="javascript:go_home('<TMPL_VAR HOMEPAGE>');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/a_logo.gif" height="80" width="803" border="0"></a></td>
  </tr>
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/b_logo.gif" height="19" width="803" border="0"></td>
  </tr>
</table>

<br>

<!-- begin login body part -->
<table border="0" cellpadding="5" cellspacing="0" width="803">
  <tr>
    <td valign="top" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/login_group.jpg" border="0" width="247" height="221"></td>
    <td>
    <table border="0" cellpadding="7" cellspacing="0">
      <tr>
        <td nowrap class="unifont2"><b>User Name:</b></td>
	<td><input tabindex="1" type="text" name="id1" size="24" maxlength="20" autocomplete="off"></td>
      </tr>
      <tr>
        <td nowrap class="unifont2"><b>Password:</b></td>
	<td><input tabindex="2" type="password" name="id2" size="24" autocomplete="off"></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><input tabindex="5" type="image" name="LOGIN" src="<TMPL_VAR NAME=IMGPATH>/login_key.gif" border="0" width="100" height="20" onMouseOver="this.src='<TMPL_VAR NAME=IMGPATH>/login_key_over.gif';" onMouseOut="this.src='<TMPL_VAR NAME=IMGPATH>/login_key.gif';"></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<!-- end login body part-->


<input type=hidden name=name value="<TMPL_VAR name>">
<input type=hidden name=addr value="<TMPL_VAR addr>">
<input type=hidden name=city value="<TMPL_VAR city>">
<input type=hidden name=state value="<TMPL_VAR state>">
<input type=hidden name=zip value="<TMPL_VAR zip>">
<input type=hidden name=tel value="<TMPL_VAR tel>">
<input type=hidden name=dob value="<TMPL_VAR dob>">
<input type=hidden name=ssn value="<TMPL_VAR ssn>">
<input type=hidden name=company value="<TMPL_VAR company>">
<input type=hidden name=busaddr value="<TMPL_VAR busaddr>">
<input type=hidden name=buscity value="<TMPL_VAR buscity>">
<input type=hidden name=busstate value="<TMPL_VAR busstate>">
<input type=hidden name=buszip value="<TMPL_VAR buszip>">
<input type=hidden name=bustel value="<TMPL_VAR bustel>">
<input type=hidden name=reference value="<TMPL_VAR reference>">
<input type=hidden name=archived value="<TMPL_VAR archived>">

</form>
</body>
</html>
<!--End prudential_login.tpl -->
