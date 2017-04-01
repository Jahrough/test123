<!--Begin short_docket_report.tpl -->
<html>
<head>
<title><TMPL_IF NAME='REPORT_NAME'><TMPL_VAR NAME='REPORT_NAME'><TMPL_ELSE>Docket Report</TMPL_IF></title>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/v2/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
</head>

<body id="hdNoLogo">

<div id="pleasewait" style="position:absolute; top:250px;left:300px; visibility:hidden; z-index:1000;">
<img src="<TMPL_VAR NAME=IMGPATH>/v2/bg_searching_report.gif" id="pw" name="pw" width="300" height="65" border="0">
</div>

<form name="SHORT_DOCKET_REPORT" action="<TMPL_VAR NAME=ACTION_DOCKET>" method="post"> 
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
      <TMPL_IF IS_DOCKET>
         <INPUT type=hidden NAME="EVENT" VALUE="DOCKET/PULL_DOCKET_REPORT">
      <TMPL_ELSE>
         <INPUT type=hidden NAME="EVENT" VALUE="DOCKET/DOCKET_IMAGE_REPORT">
      </TMPL_IF>
      <INPUT type=hidden NAME="CASE_DATA" VALUE="<TMPL_VAR NAME="CASE_DATA">">
      <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
      <INPUT type=hidden NAME="COST_CONFIRMATION" VALUE="1">
      <INPUT type=hidden NAME="CASE_NUMBER" VALUE="<TMPL_VAR NAME="CASE_NUMBER">">
      <INPUT type=hidden NAME="COURT_CODE" VALUE="<TMPL_VAR NAME="COURT_CODE">">
      <INPUT type=hidden NAME="COURT" VALUE="<TMPL_VAR NAME="COURT">">
      <INPUT type=hidden NAME="UNIQUE_ID" VALUE="<TMPL_VAR NAME="UNIQUE_ID">">
      <INPUT type=hidden NAME="COURT_LOC" VALUE="<TMPL_VAR NAME="COURT_LOC">">
      <INPUT type=hidden NAME="DOCKET_NUM" VALUE="<TMPL_VAR NAME="DOCKET_NUM">">
      <INPUT type=hidden NAME="CASE_INTERNAL_ID" VALUE="<TMPL_VAR NAME="CASE_INTERNAL_ID">">
    <input type="hidden" NAME="QRY_STRING" VALUE="<TMPL_VAR NAME="QRY_STRING">">
      <INPUT type=hidden NAME="TMSID" VALUE="<TMPL_VAR NAME="TMSID">">
      <INPUT type=hidden NAME="ORIG_DOCKET_NUM" VALUE="<TMPL_VAR NAME="ORIG_DOCKET_NUM">">
      <INPUT type=hidden NAME="FORM_DOCKET_NUM" VALUE="<TMPL_VAR NAME="FORM_DOCKET_NUM">">
      <INPUT type=hidden NAME="FULL_CASE_NUMBER" VALUE="<TMPL_VAR NAME="FULL_CASE_NUMBER">">
      <INPUT type=hidden NAME="DISPLAY_FULL_CASE" VALUE="<TMPL_VAR NAME="DISPLAY_FULL_CASE">">


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
        <td valign="top" align="left"><b>Debtor Name</b></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><b><TMPL_IF DISPLAY_FULL_CASE>Abbreviated </TMPL_IF>Case Number</b></td>
        <td valign="top" align="left">&nbsp;</td>
<TMPL_IF DISPLAY_FULL_CASE>
        <td valign="top" align="left"><b>Full Case Number</b></td>
        <td valign="top" align="left">&nbsp;</td>
</TMPL_IF>
        <td valign="top" align="left"><b>Court Code</b></td>
      </tr>
      <tr class="medblack">
        <td valign="top" align="left"><TMPL_IF DEBTOR_NAME_1><TMPL_VAR NAME=DEBTOR_NAME_1><TMPL_ELSE><TMPL_VAR NAME=CASE_DATA></TMPL_IF></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><TMPL_VAR NAME=CASE_NUMBER></td>
        <td valign="top" align="left">&nbsp;</td>
<TMPL_IF DISPLAY_FULL_CASE>
        <td valign="top" align="left"><TMPL_VAR NAME=FULL_CASE_NUMBER></td>
        <td valign="top" align="left">&nbsp;</td>
</TMPL_IF>
        <td valign="top" align="left"><TMPL_VAR NAME=COURT_CODE></td>
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
      <TMPL_IF IS_DOCKET>
         <input name="BUTTON" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('DOCKET/PULL_DOCKET_REPORT');disable_buttons('BUTTON');" /> 
      <TMPL_ELSE>
         <input name="BUTTON" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('DOCKET/DOCKET_IMAGE_REPORT');disable_buttons('BUTTON');" />
      </TMPL_IF>
      </td>
      <td>
      <input name="BUTTON" tabindex="2" type="button" value="Cancel" onClick="window.close();">
      </td>
    </tr>
  </table>

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10">&nbsp;</td>
  </tr>
</table>




</div>
</form>

<TMPL_INCLUDE NAME="../ln_general_footer.tpl">
</body>
</html>
<!-- End short_docket_report.tpl -->
