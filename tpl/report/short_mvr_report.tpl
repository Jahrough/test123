<!-- Begin short_mvr_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title><TMPL_IF IRB>Driving Records Options<TMPL_ELSE>MVR Reports Options</TMPL_IF></title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="SHORT_MVR_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 

      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_MVR_PREFS">
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
      <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
      <INPUT type=hidden NAME="MVR_STATE_ID" VALUE="<TMPL_VAR NAME="MVR_STATE_ID">">
      <INPUT type=hidden NAME="MVR_STATE" VALUE="<TMPL_VAR NAME="MVR_STATE">">
      <INPUT type=hidden NAME="MVR_STATE_YEARS" VALUE="<TMPL_VAR NAME="MVR_STATE_YEARS">">
      <INPUT type=hidden NAME="MVR_STATE_PRICE" VALUE="<TMPL_VAR NAME="MVR_STATE_PRICE">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MI">">
      <INPUT type=hidden NAME="LICENSE_NUMBER" VALUE="<TMPL_VAR NAME="LICENSE_NUMBER">">
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
      <INPUT type=hidden NAME="GENDER" VALUE="<TMPL_VAR NAME="GENDER">">
      <INPUT type=hidden NAME="SHORT_REPORT" VALUE="1">
      
<div align="center" id="mainbody">

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<TMPL_UNLESS NAME="INVALID_DL_NUMBER">
<table border="0" cellpadding="0" cellspacing="0" width="620">
  <tr>
    <td align="center" colspan="2">
    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
      <tr>
<TMPL_IF DEMO>
	<td><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="parent.location='<TMPL_VAR NAME=HTMLPATH>/sample_mvr.html'" onMouseOut="flip_style(this,'rb');"></td>
<TMPL_ELSE>
	<td><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/SAVE_MVR_PREFS');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
</TMPL_IF>
      </tr>
    </table>
    </td>
  </tr>
</table>
</TMPL_UNLESS>

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
<table border="1" cellpadding="0" cellspacing="0" width="640" bgcolor="#ffffff">
  <tr>
    <td align="center" valign="top">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
	<td valign="top" align="left" class="myaccountlabel">State</td>
	<td valign="top" align="left" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="myaccountlabel">License Number</td>
	<td valign="top" align="left" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="myaccountlabel">Name</td>
	<td valign="top" align="left" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="myaccountlabel">DOB</td>
  <TMPL_IF NAME="GENDER">
	<td valign="top" align="left" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="myaccountlabel">Gender</td>
  </TMPL_IF>
      </tr>
      <tr>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME="MVR_STATE_DESC"></td>
	<td valign="top" align="left" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME="LICENSE_NUMBER"></td>
	<td valign="top" align="left" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=FIRST_NAME> <TMPL_IF MI><TMPL_VAR NAME="MI"> </TMPL_IF><TMPL_VAR NAME="LAST_NAME"></td>
	<td valign="top" align="left" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME="DOB"></td>
  <TMPL_IF NAME="GENDER">
	<td valign="top" align="left" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME="GENDER"></td>
  </TMPL_IF>
      </tr>
    </table>
    </td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
<TMPL_INCLUDE NAME="short_mvr_report_body.tpl">
</div>

</form>
</body>
</html>
<!-- End short_mvr_report.tpl -->
