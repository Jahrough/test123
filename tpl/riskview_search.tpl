<!-- begin riskview_search.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>

<title>RiskView for Auto Financing</title>
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

  <form name="RISKVIEW" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
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
      RiskView for Auto Financing
    </td>
  </tr>
  <tr>
    <td align="center" colspan="2" class="unifont1">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" colspan="2" class="unifont1">
      RiskView for Auto Financing is a consumer report product compliant with the federal Fair Credit Reporting Act (15 USC 1681 et seq.) (the "FCRA").
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME="search_body.tpl">
<table border="0" cellpadding="0" cellspacing="0" width="790" style="min-width: 790px">
  <tr>
    <td align="center" colspan="2" class="unifont1">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" colspan="2" class="unifont1">
      RiskView <I>for Auto Finance</I> predicts the likelihood that a consumer will become delinquent in the next 24 months.  RiskView credit scores can augment credit bureau-based scores when credit history is present, and replace a traditional credit bureau-based score when limited or no credit history is found.
    </td>
  </tr>
  <tr>
    <td align="center" colspan="2" class="unifont1">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" colspan="2" class="unifont1">
      RiskView <I>for Auto Finance</I> is specially formulated for auto lenders, other versions are available in batch or integrated machine-to-machine delivery formats.
    </td>
  </tr>
</table>
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/RISKVIEW_REPORT">

</div>

<SCRIPT>
    document.forms[0].LAST_NAME.focus();
</SCRIPT>
</form>
</body>
</html>
<!-- end riskview_search.tpl -->

