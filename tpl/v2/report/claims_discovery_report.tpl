<!-- Begin claims_discovery_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Claims Discovery Report Options</title>
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

<form name="CLAIMS_DISCOVERY_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 

      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/CLAIMS_DISCOVERY_REPORT">
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
      <INPUT type=hidden NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <INPUT type=hidden NAME="MI" VALUE="<TMPL_VAR NAME="MI">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
      <INPUT type=hidden NAME="STREET_ADDRESS" VALUE="<TMPL_VAR NAME="STREET_ADDRESS">">
      <INPUT type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME="CITY">">
      <INPUT type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME="STATE">">
      <INPUT type=hidden NAME="ZIP" VALUE="<TMPL_VAR NAME="ZIP">">
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
      <INPUT type=hidden NAME="SSN" VALUE="<TMPL_VAR NAME="SSN">">
      <INPUT type=hidden NAME="LICENSE_NUMBER" VALUE="<TMPL_VAR NAME="LICENSE_NUMBER">">
      <INPUT type=hidden NAME="LICENSE_STATE" VALUE="<TMPL_VAR NAME="LICENSE_STATE">">
      <INPUT type=hidden NAME="VIN" VALUE="<TMPL_VAR NAME="VIN">">
      <INPUT type=hidden NAME="STRICT" VALUE="<TMPL_VAR NAME="STRICT">">
      <INPUT type=hidden NAME="RESULTS_TYPE" VALUE="<TMPL_VAR NAME="RESULTS_TYPE">">
      <INPUT type=hidden NAME="CLAIMS_ADDRESS_REPORT" VALUE="1">
      <INPUT type=hidden NAME="PDF" VALUE="<TMPL_VAR NAME="PDF">">
      <INPUT type=hidden NAME="WORD" VALUE="<TMPL_VAR NAME="WORD">">
      <INPUT type=hidden NAME="report-format" VALUE="<TMPL_VAR NAME="REPORT_FORMAT">">

<div align="center" id="mainbody">

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center"><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT2/CLAIMS_DISCOVERY_REPORT');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
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
	<td valign="top" align="left" ><b>Name</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><b>Address</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><b>Phone</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><b>SSN</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><b>DOB</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
      </tr>
      <tr class="medblack">
	<td valign="top" align="left" ><TMPL_VAR NAME=FIRST_NAME>&nbsp;<TMPL_IF NAME=MI><TMPL_VAR MI>&nbsp;</TMPL_IF><TMPL_VAR NAME=LAST_NAME></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_VAR NAME=STREET_ADDRESS><br><TMPL_VAR NAME=CITY> <TMPL_VAR STATE> <TMPL_VAR ZIP><TMPL_IF ZIP4>-<TMPL_VAR ZIP4></TMPL_IF></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_VAR NAME=PHONE></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_VAR NAME=SSN_MASKED></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_VAR NAME=DOB_MASKED></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
      </tr>
      <tr class="medblack">
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" nowrap="nowrap"><b>Driver License Number</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><b>State</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><b>VIN</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
      </tr>
      <tr class="medblack">
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_VAR NAME=DL_MASKED></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_VAR NAME=LICENSE_STATE></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_VAR NAME=VIN></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
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
<TMPL_INCLUDE NAME="claims_discovery_report_body.tpl">
</div>

</form>

<TMPL_INCLUDE NAME="ln_general_footer.tpl">

</body>
</html>
<!-- End claims_discovery_report.tpl -->
