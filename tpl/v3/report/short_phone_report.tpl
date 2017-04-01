<!DOCTYPE html>
<!-- Begin short_flat_rate_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Finder Report Options</title>
<TMPL_INCLUDE NAME="includes_info.tpl">
<link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
</head>

<body class="ac_report" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">
<TMPL_INCLUDE NAME="report_header.tpl">

<form name="SHORT_BUS_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
      <TMPL_INCLUDE NAME="common_hidden_input.tpl"> 
      <INPUT type=hidden NAME="SHORT_PHONE_REPORT" VALUE="1">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/PEOPLE_FINDER">
      <INPUT type=hidden NAME="RECID_REPORT" VALUE="<TMPL_VAR NAME="RECID_REPORT">">
      <INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MIDDLE_NAME">">
      <INPUT type=hidden NAME="SUFFIX" VALUE="<TMPL_VAR NAME="SUFFIX">">
      <INPUT type=hidden NAME="SHORT_REPORT" VALUE="1">

<div id="mainbody" class="w770px reportCon">
    <div class="row-wrapper">
        <h1>Finder Report</h1>
    </div>
    <div class="row-wrapper">
        <h2>Subject Information</h2>
    </div>
    <div class="row-wrapper" style="margin-bottom:30px;">
        <table class="info-table">
        <tbody>
            <tr>
                <th id="col_name">Name</th>
                <th id="col_addr">Address</th>
                <th id="col_phone">Phone</th>
                <th id="col_ssn">SSN</th>
                <th id="col_dob">DOB</th>
                <th id="col_age">Age</th>
                <th id="col_lexid">LexID</th>
            </tr>
            <tr>
                <td headers="col_name"><TMPL_VAR NAME=FULL_NAME></td>
                <td headers="col_addr"><TMPL_VAR NAME=ADDRESS><br><TMPL_VAR NAME=CSZ></td>
                <td headers="col_phone"><TMPL_VAR NAME=PHONE></td>
                <td headers="col_ssn"><TMPL_VAR NAME=SSN></td>
                <td headers="col_dob"><TMPL_VAR NAME=DOB></td>
                <td headers="col_age"><TMPL_VAR NAME=AGE></td>
                <td headers="col_lexid"><TMPL_VAR NAME=UNIQUEID></td>
            </tr>
        </tbody>
    </table>
    </div>
    <div class="row-wrapper">
        <div class="ta-center">
            <input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('REPORT/PEOPLE_FINDER');">
            <input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
        </div>
    </div>
    <TMPL_INCLUDE NAME="short_skiptrace_report_body.tpl">
</div>

</form>
<TMPL_INCLUDE NAME="report_footer.tpl">
</body>
</html>
<!-- End short_flat_rate_report.tpl -->
