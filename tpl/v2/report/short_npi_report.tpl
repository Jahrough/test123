<!-- Begin short_npi_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>NPI Report Options</title>
<!--<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">-->
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
</head>

<body id="hdNoLogo">

<div id="pleasewait" style="position:absolute; top:250px;left:300px; visibility:hidden; z-index:1000;">
<img src="<TMPL_VAR NAME=IMGPATH>/bg_searching_report.gif" id="pw" name="pw" width="300" height="65" border="0">
</div>

<form name="SHORT_NPI_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_NPI_PREFS">
      <INPUT type=hidden NAME="STREET_ADDRESS" VALUE="<TMPL_VAR NAME="STREET_ADDRESS">">
      <INPUT type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME="STATE">">
      <INPUT type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME="CITY">">
      <INPUT type=hidden NAME="ZIP" VALUE="<TMPL_VAR NAME="ZIP">">
      <INPUT type=hidden NAME="ZIP4" VALUE="<TMPL_VAR NAME="ZIP4">">
      <INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">

<div align="center" id="mainbody">
	<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
	  <tr height="10">
		<td height="10">&nbsp;</td>
	  </tr>
	</table>

	<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
	  <tr height="10">
		<td height="10" class="unifont2pt">&nbsp;</td>
	  </tr>
	</table>
	<table border="1" align="center" cellpadding="0" cellspacing="0" width="740" bgcolor="#ffffff">
	  <tr>
		<td>
			<div align="center">    
				<table width="100%" border="0" cellpadding="2" cellspacing="0">
				  <tr class="medblack">
					<td valign="top" align="left">Name</td>
					<td valign="top" align="left">Address</td>
					<td valign="top" align="left">Phone</td>
					<td valign="top" align="left">NPI</td>
				  </tr>
				  <tr class="medblack">
					<td><TMPL_VAR NAME=FIRST_NAME><TMPL_VAR NAME=LAST_NAME></td>
					<td><TMPL_VAR NAME=STREET_ADDRESS><br><TMPL_VAR NAME=CITY> <TMPL_VAR STATE> <TMPL_VAR ZIP><TMPL_IF ZIP4>-<TMPL_VAR ZIP4></TMPL_IF></td>
					<td><TMPL_VAR NAME=PHONE></td>
					<td><TMPL_VAR NAME=UNIQUEID></td>
				  </tr>
				</table>
			</div>  
		</td>
	  </tr>
	</table>

	<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
	  <tr height="10">
		<td height="10">&nbsp;</td>
	  </tr>
	</table>

	  <table width="740" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr>
		  <td align="center">
		  	<input name="BUTTON" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('REPORT/SAVE_NPI_PREFS');disable_buttons('BUTTON');" /> 
		  </td>
		</tr>
	  </table>

	<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
	  <tr height="10">
		<td height="10">&nbsp;</td>
	  </tr>
	</table>
	<TMPL_INCLUDE NAME="short_npi_report_body.tpl">

</div>
</form>

<TMPL_INCLUDE NAME="ln_general_footer.tpl">

</body>
</html>

<!-- End short_npi_report.tpl -->
