<!-- Begin short_addr_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Comprehensive Address Report Options</title>
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

<form name="SHORT_ADDR_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/ADDR_REPORT">
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
      <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
      <INPUT type=hidden NAME="COMPANY" VALUE="<TMPL_VAR NAME="COMPANY">">
      <INPUT type=hidden NAME="STREET_NUM" VALUE="<TMPL_VAR NAME="STREET_NUM">">
      <INPUT type=hidden NAME="PRE_DIR" VALUE="<TMPL_VAR NAME="PRE_DIR">">
      <INPUT type=hidden NAME="STREET_NAME" VALUE="<TMPL_VAR NAME="STREET_NAME">">
      <INPUT type=hidden NAME="POST_DIR" VALUE="<TMPL_VAR NAME="POST_DIR">">
      <INPUT type=hidden NAME="SUFFIX" VALUE="<TMPL_VAR NAME="SUFFIX">">
      <INPUT type=hidden NAME="UNIT_NUM" VALUE="<TMPL_VAR NAME="UNIT_NUM">">
      <INPUT type=hidden NAME="UNIT_DESIG" VALUE="<TMPL_VAR NAME="UNIT_DESIG">">
      <INPUT type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME="STATE">">
      <INPUT type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME="CITY">">
      <INPUT type=hidden NAME="ZIP" VALUE="<TMPL_VAR NAME="ZIP">">
      <INPUT type=hidden NAME="ZIP4" VALUE="<TMPL_VAR NAME="ZIP4">">
      <INPUT type=hidden NAME="SHORT_REPORT" VALUE="1">

<div align="center" id="mainbody">

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
    	<TMPL_IF ENHANCED>
        	<td align="center"><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/ADDR_REPORT_ENHANCED');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
        <TMPL_ELSE>
        	<td align="center"><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/ADDR_REPORT');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
        </TMPL_IF>
    </tr>
  </table>

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>


<table border="1" align="center" cellpadding="0" cellspacing="0" width="600" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table width="100%" border="0" cellpadding="2" cellspacing="0">
      <tr class="medblack">
	<td valign="top" align="left" ><b>Address</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><b>Phone</b></td>
      </tr>
      <tr class="medblack">
	<td valign="top" align="left" ><TMPL_VAR NAME=ADDRESS><br><TMPL_VAR NAME=CITY> <TMPL_VAR STATE> <TMPL_VAR ZIP><TMPL_IF ZIP4>-<TMPL_VAR ZIP4></TMPL_IF></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_VAR NAME=PHONE></td>
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
<TMPL_IF NAME=LNP>
<TMPL_INCLUDE NAME="../lnp/report/short_addr_report_body.tpl">
<TMPL_ELSE>
<TMPL_IF NAME=TCOL>
<TMPL_INCLUDE NAME="../tcol/report/short_addr_report_body.tpl">
<TMPL_ELSE>
<TMPL_IF NAME=FCOL>
<TMPL_INCLUDE NAME="../fcol/report/short_addr_report_body.tpl">
<TMPL_ELSE>
<TMPL_IF NAME=GCOL>
<TMPL_INCLUDE NAME="../gcol/report/short_addr_report_body.tpl">
<TMPL_ELSE>
<TMPL_INCLUDE NAME="short_addr_report_body.tpl">
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</div>

</form>

<TMPL_INCLUDE NAME="ln_general_footer.tpl">

</body>
</html>
<!-- End short_addr_report.tpl -->
