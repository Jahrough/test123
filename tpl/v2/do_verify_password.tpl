<!--begin do_verify_password.tpl-->
<html>
<head>
<title>Session Sign In</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/login_script.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/md5.js"></script>
<SCRIPT LANGUAGE="JavaScript">
var enable_lh = <TMPL_IF ENABLE_LOGIN_HASHING>1<TMPL_ELSE>0</TMPL_IF>;
self.resizeTo(585,270);
</SCRIPT>
</head>
<TMPL_IF NAME=ERROR_MESSAGE>

<body onLoad="window.focus();document.REAUTH.PASSWORD.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="errbody">
<div align="center" id="searchPopBkg" style="width:575px; height:200px;">
  <p>&nbsp;</p><p>&nbsp;</p>
  <h4 class="red"><strong><TMPL_VAR NAME=ERROR_MESSAGE></strong>
  <br /><br />
  </h4>

<form name=REAUTH action="<TMPL_VAR NAME=ACTION>" method=post onSubmit="return prepared_pwd();">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<input type=hidden name=EVENT value="LOGIN/DO_VERIFY_PASSWORD">
<input type="hidden" name="BASEP">
      <TMPL_IF ENABLE_LOGIN_HASHING>
	  <INPUT type=hidden NAME="_K" VALUE="<TMPL_VAR NAME=_K>">
	  <INPUT type=hidden NAME="_SK" VALUE="<TMPL_VAR NAME=_SK>">
      </TMPL_IF>

<table width="100%" border="0" cellpadding="5" cellspacing="0" class="medblack">
  <tr align=center>
    <td align=right><b>USER NAME:</b></td>
    <td align=left>&nbsp;<TMPL_VAR NAME=LOGINID></td>
  </tr>
  <tr align=center>
    <td align=right><b>PASSWORD:</td>
    <td align=left>&nbsp;<input type=PASSWORD name=PASSWORD size=24 autocomplete="off"></td>
  </tr>
  <tr align=center>
    <td colspan=2>
      <input type=submit value="Sign In Again ">
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
  <tr class="errtitle" style="height: 40px;">
    <td class="style2" align="center">LOGIN SESSION REFRESHED!</td>
  </tr>
  <tr bgcolor="#000000" style="height: 5px;">
    <td></td>
  </tr>
</table>
<br>
<table border="0" cellpadding="10" cellspacing="0" width="95%">
  <tr>
    <td align="center" class="style3">Your current session has been refreshed.<br><br></td>
  </tr>
  <tr>
    <td align="center"><input class="bs" type="button" value="CLOSE" onClick="window.close();"></td>
  </tr>
</table>
<script>window.close()</script>
</center>
</TMPL_IF>

</div>

</body>
</html>
<!--end do_verify_password.tpl-->
