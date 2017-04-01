<!-- begin lxnxtc.tpl -->
<html>
<head>
<title>LexisNexis Terms and Conditions</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script language="JavaScript">
function setchecked()
{
    document.LXNXTC.LXN_ACPT.value = '1';
    document.LXNXTC.EVENT.value = '<TMPL_VAR NAME=CURRENT_EVENT>';
    document.forms[0].submit();
	
}
</script>

<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<!--<TMPL_VAR NAME=SERVER_ID>-->

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>


<form name="LXNXTC" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" name="LXN_ACPT" value="<TMPL_VAR NAME=LXN_ACPT>">
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
 

<div align="center">
<br>

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="glbtitle"><B>Terms and Conditions</B></td>
  </tr>
</table><br><br>

<table border="1" cellpadding="3" cellspacing="0" valign=top bordercolor="black" width="650" height="300" class="termstext" wrap>

<tr><td class="unifont1" bgcolor="white">
<br>
News content is provided by LexisNexis&#174;. <br>
Your use of the LexisNexis services (the "Online Services") is governed by the <a href="http://www.lexisnexis.com/terms/general/" target="_blank">General Terms & Conditions </a> for use of  the LexisNexis Services ("General Terms and Conditions").<br><br>
All access to and use of the Online Services via mechanical, programmatic, robotic, scripted or any other automated means is strictly prohibited.  Your use of the Online Services shall only be made via manually conducted, discrete, individual search and retrieval activities.
<br><br><br>

By selecting the "ACCEPT" button below,<br>
 (i) you agree to the foregoing and represent that you have read the General Terms and Conditions; and<br>
 (ii) you further agree to be bound by the foregoing and the General Terms & Conditions.<br><br>

</td></tr>
</table>


<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td width="680" align="center" valign="top" wrap>
      <br>
      <br>
	<center><input type="button" name="accept" value="I Accept" onclick="setchecked();" >&nbsp;&nbsp;<input type="button" name="decline" value="I Decline" onclick="send_event('SEARCH/SHOW_MENU');"></center>
    </td>
  </tr>
</table>
</div>

   
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</form>
</body>
</html>
<!-- end bps_lxnxtc.tpl -->

