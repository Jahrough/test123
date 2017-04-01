<!DOCTYPE html>
<!-- Begin short_ind_qualifier_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title><TMPL_VAR NAME="REPORT_NAME"> Options</title>
<TMPL_INCLUDE NAME="includes_info.tpl">
<link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
</head>

<body class="ac_report" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">
<TMPL_INCLUDE NAME="report_header.tpl">

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
    <TMPL_INCLUDE NAME="common_hidden_input.tpl">
	<input type="hidden" name="REFERENCE_CODE" value="<TMPL_VAR REFERENCE_CODE>"/>
	<input type="hidden" name="DOL_DATE" value="<TMPL_VAR NAME=DOL_DATE>"/>
	<input type="hidden" name="EVENT" value="<TMPL_VAR NAME="REPORT_EVENT">"/>
	<input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>"/>
	<input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>"/>
	<input type="hidden" name="XID" value="<TMPL_VAR NAME=XID>"/>
	<input type="hidden" name="PHONE" value="<TMPL_VAR NAME=PHONE>"/>
	<input type="hidden" name="IDX" value="<TMPL_VAR NAME=IDX>"/>
	<input type="hidden" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>"/>
	<input type="hidden" name="CITY" value="<TMPL_VAR NAME=CITY>"/>
	<input type="hidden" name="STATE" value="<TMPL_VAR NAME=STATE>"/>
	<input type="hidden" name="ZIP" value="<TMPL_VAR NAME=ZIP>"/>
	<input type="hidden" name="ZIP4" value="<TMPL_VAR NAME=ZIP4>"/>
	<input type="hidden" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>"/>
	<input type="hidden" name="SSN" value="<TMPL_VAR NAME=SSN>"/>
	<input type="hidden" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>"/>
	<input type="hidden" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>"/>
	<INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
	<input type=hidden NAME="NPI_NUMBER" VALUE="<TMPL_VAR NAME="NPI_NUMBER">">
	<input type="hidden" name="MI" value="<TMPL_VAR NAME=MI>"/>
	<input type="hidden" name="TYPE" value="<TMPL_VAR NAME=TYPE>"/>
	<input type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
	<input type="hidden" name="SHORT_REPORT" value="1"/>
        <input type="hidden" name="PROVIDER_ID" value="<TMPL_VAR PROVIDER_ID>"/>
        <input type="hidden" name="PROVIDER_SRC" value="<TMPL_VAR PROVIDER_SRC>"/>

      
	<div id="mainbody" class="w870px reportCon">
		<div class="row-wrapper">
			<h2>Subject Information</h2>
		</div>
		<div class="row-wrapper" style="margin-bottom:30px;">
			<table class="info-table">
			<tbody>
				<tr>
					<TMPL_LOOP NAME="REPORT_PARAMS">
					<th id="col_<TMPL_VAR NAME=PARAM_INDEX>" valign="top" align="left" class="myaccountlabel" nowrap="nowrap"><TMPL_VAR PARAM_NAME>&nbsp;</th>
					</TMPL_LOOP>
				</tr>
				<tr>
                    <TMPL_LOOP NAME="REPORT_PARAMS">
                    <td headers="col_<TMPL_VAR NAME=PARAM_INDEX>" valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=PARAM_VALUE>&nbsp;</td>
                    </TMPL_LOOP>
				</tr>
			</tbody>
		</table>
		</div>
		<div class="row-wrapper ta-center">
			<div class="purchase-buttons">
				<input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('REPORT/IND_FR_QUALIFIER_REPORT');"/>
				<input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
			</div>
		</div>
	    <TMPL_IF NAME="IND_FR">
		<TMPL_INCLUDE NAME=short_ind_fr_qualifier_report_body.tpl>
	    <TMPL_ELSE>
		<TMPL_INCLUDE NAME=short_ind_qualifier_report_body.tpl>
	    </TMPL_IF>
	</div>
</form>
<TMPL_INCLUDE NAME="report_footer.tpl">

</body>
</html>
<!-- End short_ind_qualifier_report.tpl -->
