<!-- Begin short_combined_prop_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Combined Property Report Options</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body style="background-image:url(<TMPL_VAR NAME=IMGPATH>/hdr_bar.gif); background-repeat:no-repeat;" onLoad="window.focus();">

<div id="pleasewait" style="position:absolute; top:250px;left:300px; visibility:hidden; z-index:1000;">
<img src="<TMPL_VAR NAME=IMGPATH>/bg_searching_report.gif" id="pw" name="pw" width="300" height="65" border="0">
</div>

<form name="SHORT_COMBINED_PROP_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 

      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT2/COMBINED_PROP_REPORT">
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
      <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
      <INPUT type=hidden NAME="SOURCE_PROP_REC_ID" VALUE="<TMPL_VAR NAME="SOURCE_PROP_REC_ID">">
      <INPUT type=hidden NAME="SHORT_REPORT" VALUE="1">
  <input type=hidden NAME="STREET_ADDRESS" VALUE="<TMPL_VAR NAME=STREET_ADDRESS>">
  <input type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME=CITY>">
  <input type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME=STATE>">
  <input type=hidden NAME="ZIP" VALUE="<TMPL_VAR NAME=ZIP>">

<div align="center" id="mainbody">

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center"><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT2/COMBINED_PROP_REPORT');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
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
	<td valign="top" align="left" ><b>Property ID</b></td>
      </tr>
      <tr class="medblack">
	<td valign="top" align="left" ><TMPL_VAR NAME=STREET_ADDRESS><br><TMPL_VAR NAME=CITY>, <TMPL_VAR NAME=STATE> <TMPL_VAR NAME=ZIP></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_VAR NAME=SOURCE_PROP_REC_ID></td>
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
<TMPL_INCLUDE NAME="short_combined_prop_report_body.tpl">
</div>

</form>

<TMPL_INCLUDE NAME="ln_general_footer.tpl">

</body>
</html>
<!-- End short_combined_prop_report.tpl -->
