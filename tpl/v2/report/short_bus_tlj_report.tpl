<!-- Begin short_bus_tlj_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title><TMPL_VAR NAME='REPORT_NAME'> Report</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body id="hdNoLogo">

<div id="pleasewait" style="position:absolute; top:250px;left:300px; visibility:hidden; z-index:1000;">
<img src="<TMPL_VAR NAME=IMGPATH>/bg_searching_report.gif" id="pw" name="pw" width="300" height="65" border="0">
</div>

<form name="SHORT_BUS_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_SHORT_BUS_TLJ_PREFS">
      <INPUT type=hidden NAME="COMPANY" VALUE="<TMPL_VAR NAME="COMPANY">">
      <INPUT type=hidden NAME="STREET_NUM" VALUE="<TMPL_VAR NAME="STREET_NUM">">
      <INPUT type=hidden NAME="PRE_DIR" VALUE="<TMPL_VAR NAME="PRE_DIR">">
      <INPUT type=hidden NAME="STREET_NAME" VALUE="<TMPL_VAR NAME="STREET_NAME">">
      <INPUT type=hidden NAME="POST_DIR" VALUE="<TMPL_VAR NAME="POST_DIR">">
      <INPUT type=hidden NAME="SUFFIX" VALUE="<TMPL_VAR NAME="SUFFIX">">
      <INPUT type=hidden NAME="UNIT_NUM" VALUE="<TMPL_VAR NAME="UNIT_NUM">">
      <INPUT type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME="STATE">">
      <INPUT type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME="CITY">">
      <INPUT type=hidden NAME="ZIP" VALUE="<TMPL_VAR NAME="ZIP">">
      <INPUT type=hidden NAME="ZIP4" VALUE="<TMPL_VAR NAME="ZIP4">">
      <INPUT type=hidden NAME="UNIQUE_ID" VALUE="<TMPL_VAR NAME="UNIQUE_ID">">
      <INPUT type=hidden NAME="FIRST_UNIQUE_ID" VALUE="<TMPL_VAR NAME="FIRST_UNIQUE_ID">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
      <INPUT type=hidden NAME="SHORT_REPORT" VALUE="1">
      
<div align="center" id="mainbody">

<table border="0" cellpadding="0" cellspacing="0" width="95%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>


  <table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center"><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/SAVE_SHORT_BUS_TLJ_PREFS');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
    </tr>
  </table>

<table border="0" cellpadding="0" cellspacing="0" width="95%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<table border="1" align="center" cellpadding="0" cellspacing="0" width="700" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table width="100%" border="0" cellpadding="2" cellspacing="0">
      <tr class="medblack">
        <td valign="top" align="left" ><b>Company Name</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><b>Address</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><b>Phone</b></td>
      </tr>
      <tr class="medblack">
	<td valign="top" align="left" ><TMPL_VAR NAME=COMPANY></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_IF ADDRESS><TMPL_VAR NAME=ADDRESS><br><TMPL_VAR NAME=CITY> <TMPL_VAR STATE> <TMPL_VAR ZIP><TMPL_IF ZIP4>-<TMPL_VAR ZIP4></TMPL_IF></TMPL_IF></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_VAR NAME=PHONE></td>
      </tr>
    </table>
    </div>  
    </td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="95" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<TMPL_INCLUDE NAME="short_bus_tlj_report_body.tpl">


</div>
</form>

<TMPL_INCLUDE NAME="ln_general_footer.tpl">
</body>
</html>
<!-- End short_bus_tlj_report.tpl -->
