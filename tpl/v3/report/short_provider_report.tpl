<!DOCTYPE html>
<!-- Begin short_provider_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Provider License Report Options</title>
<TMPL_INCLUDE NAME="includes_info.tpl">
<link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
</head>

<body class="ac_report" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">
<div id="skiptocontent" role="dialog"><a href="#mainbody" title="skip navigation">Skip Navigation</a></div>
<TMPL_INCLUDE NAME="report_header.tpl">

<form name="SHORT_PROVIDER_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 

      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PROVIDER_PREFS">
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
      <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
      <INPUT type=hidden NAME="PROVIDER_ID" VALUE="<TMPL_VAR NAME="PROVIDER_ID">">
      <INPUT type=hidden NAME="PROVIDER_SRC" VALUE="<TMPL_VAR NAME="PROVIDER_SRC">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME=FIRST_NAME>">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME=LAST_NAME>">
      <INPUT type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME="CITY">">
      <INPUT type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME="STATE">">
      <INPUT type=hidden NAME="COMPANY_NAME" VALUE="<TMPL_VAR NAME=COMPANY_NAME>">
      <INPUT type=hidden NAME="PARENT_RECORD" VALUE="<TMPL_VAR NAME=PARENT_RECORD>">
      
<div id="mainbody" class="w770px reportCon">
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
					<td headers="col_name" align="center"><TMPL_IF COMPANY_NAME><TMPL_VAR NAME=COMPANY_NAME><TMPL_ELSE><TMPL_VAR NAME="FIRST_NAME"> <TMPL_VAR NAME="LAST_NAME"></TMPL_IF></td>
				</tr>
			</tbody>
		</table>
    </div>
    <div class="row-wrapper ta-center">
		<div class="purchase-buttons">
			<input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('REPORT/SAVE_PROVIDER_PREFS');">
			<input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
		</div>
    </div>
    <TMPL_INCLUDE NAME="short_provider_report_body.tpl">
</div>

</form>
    <TMPL_INCLUDE NAME="report_footer.tpl">

</body>
</html>
<!-- End short_provider_report.tpl -->
