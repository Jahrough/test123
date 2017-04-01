<!-- Begin short_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Search -- Custom Comprehensive Report Options</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PREFS">
      <INPUT type=hidden NAME="RECID_REPORT" VALUE="<TMPL_VAR NAME="RECID_REPORT">">
      <INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MIDDLE_NAME">">
      <INPUT type=hidden NAME="SUFFIX" VALUE="<TMPL_VAR NAME="SUFFIX">">
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
      <INPUT type=hidden NAME="AGE" VALUE="<TMPL_VAR NAME="AGE">">
      <INPUT type=hidden NAME="ADDRESS" VALUE="<TMPL_VAR NAME="ADDRESS">">
      <INPUT type=hidden NAME="CSZ" VALUE="<TMPL_VAR NAME="CSZ">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">

<div align="center" id="mainbody">

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="620">
  <tr>
    <TMPL_UNLESS DELETE_COMPREHENSIVE_REPORT>
    <TMPL_UNLESS NAME="HIDE_PRICES">
    <td class="smallfont1reporttype" width="250" valign="top">You can get ALL of the information<br>on this subject for only $6.00!</td>
    <td align="left" width="115" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
      <tr>
	<TMPL_IF NAME="COMPREHENSIVE_REPORT_DISABLED">
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="Click for Details" onMouseDown="flip_style(this,'rbd');" onClick="report_ad(<TMPL_IF NAME=IRB>1</TMPL_IF>);" onMouseOut="flip_style(this,'rb');"></td>
	<TMPL_ELSE>
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="ALL for $6.00" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/COMPREHENSIVE');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
	</TMPL_IF>
      </tr>
    </table>
    </td>
    <td class="smallfont1reporttype" width="50" valign="middle" align="center"><b>OR</b></td>
    </TMPL_UNLESS>
    </TMPL_UNLESS>
    <td align="<TMPL_IF HIDE_PRICES>center<TMPL_ELSE>left</TMPL_IF>" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
      <tr>
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/SAVE_PREFS');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
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
<table border="1" cellpadding="0" cellspacing="0" width="640" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
        <td valign="top" align="left" class="myaccountlabel">Name</td>
	<td class="unifont1">&nbsp;&nbsp;</td>
        <td valign="top" align="left" class="myaccountlabel">Address</td>
	<td class="unifont1">&nbsp;&nbsp;</td>
        <td valign="top" align="left" class="myaccountlabel">Phone</td>
	<td class="unifont1">&nbsp;&nbsp;</td>
        <td valign="top" align="left" class="myaccountlabel">SSN</td>
	<td class="unifont1">&nbsp;&nbsp;</td>
        <td valign="top" align="left" class="myaccountlabel">DOB</td>
	<td class="unifont1">&nbsp;&nbsp;</td>
        <td valign="top" align="left" class="myaccountlabel">AGE</td>
      </tr>
      <tr>
        <td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=FULL_NAME></td>
	<td class="unifont1">&nbsp;&nbsp;</td>
        <td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=ADDRESS><br><TMPL_VAR NAME=CSZ></td>
	<td class="unifont1">&nbsp;&nbsp;</td>
        <td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=PHONE></td>
	<td class="unifont1">&nbsp;&nbsp;</td>
        <td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=SSN></td>
	<td class="unifont1">&nbsp;&nbsp;</td>
        <td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=DOB></td>
	<td class="unifont1">&nbsp;&nbsp;</td>
        <td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=AGE></td>
      </tr>
    </table>
    </div>  
    </td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
<TMPL_INCLUDE NAME="short_report_body.tpl">
</div>

</form>
</body>
</html>
<!-- End short_report.tpl -->
