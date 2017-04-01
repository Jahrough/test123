<!DOCTYPE html>
<html lang="en">
<head>
<!--begin v4/do_verify_password.tpl-->
<TMPL_INCLUDE NAME="includes.tpl">
<style type="text/css">
.titlecolor {background-color: #E12726;}
.style2 {FONT-SIZE: 11pt; FONT-FAMILY: arial; color: #ffffff; font-weight: bold; }
.style3 {FONT-SIZE: 8pt; FONT-FAMILY: arial; color: #000000; }
.bs{ color: #ffffff; width: 75px; font-weight: bold; font-family: arial,helvetica; font-size: 8pt; background: #336699; cursor: hand; }
.unifont2 {FONT-SIZE: 10pt; FONT-FAMILY: Arial; }
.this-body {min-width: 0px; padding: 0px; margin-top: 0px; line-height: 2;}
</style>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/login_script.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/md5.js"></script>
<script type="text/javascript">
var enable_lh = <TMPL_IF ENABLE_LOGIN_HASHING>1<TMPL_ELSE>0</TMPL_IF>;
</script>
</head>
<TMPL_IF NAME=ERROR_MESSAGE>

<body class="this-body" onLoad="window.focus();document.REAUTH.PASSWORD.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr class="titlecolor" style="height: 60px;">
    <td>&nbsp; &nbsp;</td>
    <td class="style2"><TMPL_VAR NAME=ERROR_MESSAGE></td>
    <td>&nbsp; &nbsp;</td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr bgcolor="#000000" style="height: 1px;">
    <td></td>
  </tr>
</table>
<br><br>

<form name=REAUTH action="<TMPL_VAR NAME=ACTION>" method=post onSubmit="return prepared_pwd();">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<input type=hidden name=EVENT value="LOGIN/DO_VERIFY_PASSWORD">
<input type="hidden" name="BASEP">

      <TMPL_IF ENABLE_LOGIN_HASHING>
	  <INPUT type=hidden NAME="_K" VALUE="<TMPL_VAR NAME=_K>">
	  <INPUT type=hidden NAME="_SK" VALUE="<TMPL_VAR NAME=_SK>">
      </TMPL_IF>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr align=center>
    <td align=right class=unifont2><b>LOGIN ID:</b></td>
    <td align=left class=unifont2>&nbsp;<TMPL_VAR NAME=LOGINID></td>
  </tr>
  <tr colspan="2" style="height: 10px;">
    <td></td>
  </tr>
  <tr align=center>
    <td align=right class=unifont2><b>PASSWORD:</td>
    <td align=left class=unifont2>&nbsp;<input type=PASSWORD name=PASSWORD size=24 autocomplete="off"></td>
  </tr>
  <tr colspan="2" style="height: 10px;">
    <td></td>
  </tr>
  <tr>
    <td colspan="2" align="center">
    <div>
	<input class="btn btn-danger" type=submit value=" Sign In Again ">
    </div>
    </td>
  </tr>
</table>


</form>

<script>
    if (opener) {
	if (self == opener.WaitWin) {
	    //alert ('oops!');
	} else {
	    opener.closewaitwin();
	}
    }
</script>

<TMPL_ELSE>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<center>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr class="titlecolor" style="height: 40px;">
    <td class="style2" align="center">LOGIN SESSION REFRESHED!</td>
  </tr>
  <tr bgcolor="#000000" style="height: 1px;">
    <td></td>
  </tr>
</table>
<br>
<table border="0" cellpadding="10" cellspacing="0" width="95%">
  <tr>
    <td align="center" class="style3">Your current login session has been refreshed.<br><br></td>
  </tr>
  <tr>
    <td align="center"><input class="bs" type="button" value="CLOSE" onClick="window.close();"></td>
  </tr>
</table>

<script>window.close()</script>

</center>

</TMPL_IF>
</body>
</html>
<!--end v4/do_verify_password.tpl-->
