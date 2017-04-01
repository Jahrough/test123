<!DOCTYPE html>
<!-- Begin short_provider_card_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Provider Report Card Options</title>
<TMPL_INCLUDE NAME="includes_info.tpl">
<link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
</head>

<body class="ac_report" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">
<TMPL_INCLUDE NAME="report_header.tpl">

<form name="SHORT_BUS_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PROV_CARD_PREFS">
      <INPUT type=hidden NAME="COMPANY_NAME" VALUE="<TMPL_VAR NAME="COMPANY_NAME">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <INPUT type=hidden NAME="MI" VALUE="<TMPL_VAR NAME="MI">">
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
      <INPUT type=hidden NAME="STREET_ADDRESS" VALUE="<TMPL_VAR NAME="STREET_ADDRESS">">
      <INPUT type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME="STATE">">
      <INPUT type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME="CITY">">
      <INPUT type=hidden NAME="ZIP" VALUE="<TMPL_VAR NAME="ZIP">">
      <INPUT type=hidden NAME="RESULTS_TYPE" VALUE="<TMPL_VAR NAME="RESULTS_TYPE">">
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR NAME="REFERENCE_CODE">">
      <INPUT type=hidden NAME="NPI_NUMBER" VALUE="<TMPL_VAR NAME="NPI_NUMBER">">
      <INPUT type=hidden NAME="TAXID" VALUE="<TMPL_VAR NAME="TAXID">">
      <INPUT type=hidden NAME="DEA_NUMBER" VALUE="<TMPL_VAR NAME="DEA_NUMBER">">
      <INPUT type=hidden NAME="CLIA_NUMBER" VALUE="<TMPL_VAR NAME="CLIA_NUMBER">">
      <INPUT type=hidden NAME="TAXONOMY" VALUE="<TMPL_VAR NAME="TAXONOMY">">
      <INPUT type=hidden NAME="LICENSE_NUMBER_1" VALUE="<TMPL_VAR NAME="LICENSE_NUMBER_1">">
      <INPUT type=hidden NAME="LICENSE_NUMBER_2" VALUE="<TMPL_VAR NAME="LICENSE_NUMBER_2">">
      <INPUT type=hidden NAME="LICENSE_NUMBER_3" VALUE="<TMPL_VAR NAME="LICENSE_NUMBER_3">">
      <INPUT type=hidden NAME="LICENSE_NUMBER_4" VALUE="<TMPL_VAR NAME="LICENSE_NUMBER_4">">
      <INPUT type=hidden NAME="LICENSE_NUMBER_5" VALUE="<TMPL_VAR NAME="LICENSE_NUMBER_5">">
      <INPUT type=hidden NAME="LICENSE_STATE_1" VALUE="<TMPL_VAR NAME="LICENSE_STATE_1">">
      <INPUT type=hidden NAME="LICENSE_STATE_2" VALUE="<TMPL_VAR NAME="LICENSE_STATE_2">">
      <INPUT type=hidden NAME="LICENSE_STATE_3" VALUE="<TMPL_VAR NAME="LICENSE_STATE_3">">
      <INPUT type=hidden NAME="LICENSE_STATE_4" VALUE="<TMPL_VAR NAME="LICENSE_STATE_4">">
      <INPUT type=hidden NAME="LICENSE_STATE_5" VALUE="<TMPL_VAR NAME="LICENSE_STATE_5">">
      
	
<div role="dialog" id="mainbody" class="w770px reportCon">
    <div class="row-wrapper">
        <h2>Subject Information</h2>
    </div>
    <div class="row-wrapper" style="margin-bottom:30px;">
        <table class="info-table">
        <tbody>
            <tr>
                <th id="col_name">Name</th>
            </tr>
            <tr>
                <td headers="col_name" align="center"><TMPL_IF COMPANY_NAME><TMPL_VAR NAME=COMPANY_NAME><TMPL_ELSE><TMPL_VAR NAME=FIRST_NAME>&nbsp;<TMPL_VAR NAME=LAST_NAME></TMPL_IF></td>
            </tr>
        </tbody>
    </table>
    </div>
    <div class="row-wrapper">
        <div class="ta-center">
            <input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('REPORT/SAVE_PROV_CARD_PREFS');">
            <input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
        </div>
    </div>
    <TMPL_INCLUDE NAME="short_provider_card_report_body.tpl">
</div>

</form>
    <TMPL_INCLUDE NAME="report_footer.tpl">

</body>
</html>
<!-- End short_provider_card_report.tpl -->
