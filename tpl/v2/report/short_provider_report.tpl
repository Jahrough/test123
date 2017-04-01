<!-- Begin short_provider_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Provider Report Options</title>
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

<form name="SHORT_PROVIDER_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PROVIDER_PREFS">
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
      <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
      <INPUT type=hidden NAME="PROVIDER_ID" VALUE="<TMPL_VAR NAME="PROVIDER_ID">">
      <INPUT type=hidden NAME="PROVIDER_SRC" VALUE="<TMPL_VAR NAME="PROVIDER_SRC">">
      <INPUT type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME="STATE">">
      <INPUT type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME="CITY">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME=FIRST_NAME>">
      <INPUT type=hidden NAME="COMPANY_NAME" VALUE="<TMPL_VAR NAME="COMPANY_NAME">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME=LAST_NAME>">
      <INPUT type=hidden NAME="PARENT_RECORD" VALUE="<TMPL_VAR NAME=PARENT_RECORD>">

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
				  </tr>
				  <tr class="medblack">
					<td valign="top" align="left"><TMPL_IF COMPANY_NAME><TMPL_VAR NAME=COMPANY_NAME><TMPL_ELSE><TMPL_VAR NAME=FIRST_NAME>&nbsp;<TMPL_VAR NAME=LAST_NAME></TMPL_IF></td>
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
		  	<input name="BUTTON" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('REPORT/SAVE_PROVIDER_PREFS');disable_buttons('BUTTON');" /> 
		  </td>
		</tr>
	  </table>

	<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
	  <tr height="10">
		<td height="10">&nbsp;</td>
	  </tr>
	</table>
	<TMPL_INCLUDE NAME="short_provider_report_body.tpl">

</div>
</form>

<TMPL_INCLUDE NAME="ln_general_footer.tpl">

</body>
</html>

<!-- End short_provider_report.tpl -->
