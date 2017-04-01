<!-- begin equifaxrecoverysearch/start.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>

<title>Equifax Recovery Report</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/print.css" rel="stylesheet" type="text/css" media="print">

<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

<script>
var disable_search_buttons = <TMPL_IF RESTRICT_MULTIPLE_SUBMITS>true<TMPL_ELSE>false</TMPL_IF>;
var search_report_event = <TMPL_IF REPORT_EVENT>true<TMPL_ELSE>false</TMPL_IF>;
</script>

</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" class="alternatebody">

  <form name="EQUIFAX_RECOVERY" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">

      <TMPL_INCLUDE NAME=equifaxrecoverysearch/common_hidden_input.tpl>
      <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
      <INPUT type=hidden NAME="RECID" VALUE="">
      <INPUT type=hidden NAME="FULL_NAME" VALUE="">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE>">


<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="790" style="min-width: 790px">
  <tr>
    <td align="center" width="250">
      <img border="0" width="202" height="45" src="<TMPL_VAR NAME=IMGPATH>/main/main_logo.gif">
    </td>
    <td align="center" width="540">
    </td>
  </tr>
  <tr>
    <td align="center" colspan="2" class="largefont1bold">
      Equifax Recovery Report
    </td>
  </tr>
  <tr>
    <td align="center" colspan="2" class="unifont1">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" colspan="2" class="unifont1">
      Equifax Recovery Report is a consumer report product provided by LexisNexis Risk Solutions Group Inc., a consumer reporting agency, and is designed to be compliant with the federal Fair Credit Reporting Act (15 USC 1681 et seq.) (the "FCRA") and may only be accessed for limited FCRA permissible purposes.
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME="equifaxrecoverysearch/search_body.tpl">
<table border="0" cellpadding="0" cellspacing="0" width="790" style="min-width: 790px">
  <tr>
    <td align="center" colspan="2" class="unifont1">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" colspan="2" class="unifont1">
      &#169; <TMPL_VAR NAME=CURRENT_YEAR> LexisNexis Risk & Information Analytics Group Inc. All Rights Reserved.
    </td>
  </tr>
  <tr>
    <td align="center" colspan="2" class="unifont1">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" colspan="2" class="unifont1">
      Equifax is a registered trademark of Equifax Inc.
    </td>
  </tr>
</table>
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/EQUIFAX_RECOVERY_REPORT">

</div>

<SCRIPT>
    document.forms[0].LAST_NAME.focus();
</SCRIPT>
</form>
</body>
</html>
<!-- end equifaxrecoverysearch/start.tpl -->

