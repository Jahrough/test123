<html>
<head>
<title>Alert Message!</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/popups.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
function write_global() {
    document.writeln(opener.document.forms[0].ERROR_ERROR.value);
    opener.document.forms[0].ERROR_ERROR.value = "";
}
function set_opener_focus () {
    if (opener.field && opener.field != "") {
	opener.field.focus();
	opener.field = "";
    } else {
	opener.focus();
    }
}
function focus_on_close()
{
    if (!document.getElementById)
	return;

    var close_btn;
    if (close_btn = document.getElementById("close_btn"))
	close_btn.focus();
}
</script>
</head>

<body onLoad="window.focus(); focus_on_close();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" background="<TMPL_VAR NAME=IMGPATH>/error_back.gif">

<form name="ALERT" action="" method="">

<table border="0" cellpadding="0" cellspacing="0" width="308">
  <tr>
    <td width="60" class="errortitle"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="60" width="60" border="0"></td>
    <td width="248" class="errortitle">We have encountered a problem.&nbsp;&nbsp;Please see the explanation below and correct the problem to continue.</td>
  </tr>
</table>
<table border="0" cellpadding="10" cellspacing="0" width="308">
  <tr>
    <td class="errorbody"><br><br><script>write_global();</script></td>
  </tr>
  <tr>
    <td align="center"><a id="close_btn" href="javascript:void(0);" onClick="set_opener_focus();window.close();"><img src="<TMPL_VAR NAME=IMGPATH>/close.gif" border="0" width="54" height="29"></a></td>
  </tr>
</table>

</form>
</body>
</html>
