<!DOCTYPE html>
<!-- Begin short_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Custom Comprehensive Report Options</title>
<TMPL_INCLUDE NAME="includes_info.tpl">
<link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
</head>

<body class="ac_report" onLoad="window.focus();">
<div id="skiptocontent" role="dialog"><a href="#mainbody" title="skip navigation">Skip Navigation</a></div>
<TMPL_INCLUDE NAME="report_header.tpl">

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PREFS">
      <INPUT type=hidden NAME="RECID_REPORT" VALUE="<TMPL_VAR NAME="RECID_REPORT">">
      <INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MIDDLE_NAME">">
      <INPUT type=hidden NAME="SUFFIX" VALUE="<TMPL_VAR NAME="SUFFIX">">
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
      <INPUT type=hidden NAME="AGE" VALUE="<TMPL_VAR NAME="AGE">">
      <INPUT type=hidden NAME="ADDRESS" VALUE="<TMPL_VAR NAME="ADDRESS">">
      <INPUT type=hidden NAME="CSZ" VALUE="<TMPL_VAR NAME="CSZ">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
      <INPUT type=hidden NAME="CC_XID" VALUE="<TMPL_VAR NAME="CC_XID">">
      <input type="hidden" name="CC_OPT_IN" value="<TMPL_VAR CC_OPT_IN>"/>
      <input type="hidden" name="PERM" value="<TMPL_VAR PERM>"/>
      <TMPL_IF NAME="NAT_COMP_PLUS_REPORT">
      <INPUT type=hidden NAME="SHORT_REPORT" VALUE="1">
      </TMPL_IF>

<div id="mainbody" class="w770px reportCon">
    <div class="row-wrapper">
        <h1>Custom Comprehensive Report</h1>
    </div>
    <div class="row-wrapper">
        <h2>Subject Information</h2>
    </div>
    <div class="row-wrapper" style="margin-bottom:30px;">
        <table class="info-table">
        <tbody>
            <tr>
                <th id="col_name">Name</th>
                <th id="col_address">Address</th>
                <th id="col_phone">Phone</th>
                <th id="col_ssn">SSN</th>
                <th id="col_dob">DOB</th>
                <th id="col_age">Age</th>
                <th id="col_lxid">LexID</th>
            </tr>
            <tr>
                <td headers="col_name"><TMPL_VAR NAME=FULL_NAME></td>
                <td headers="col_address"><TMPL_VAR NAME=ADDRESS><br><TMPL_VAR NAME=CSZ></td>
                <td headers="col_phone"><TMPL_VAR NAME=PHONE></td>
                <td headers="col_ssn"><TMPL_VAR NAME=SSN></td>
                <td headers="col_dob"><TMPL_VAR NAME=DOB></td>
                <td headers="col_age"><TMPL_VAR NAME=AGE></td>
                <td headers="col_lxid"><TMPL_VAR NAME=UNIQUEID></td>
                
            </tr>
        </tbody>
    </table>
    </div>
    <div class="row-wrapper ta-center">
        <TMPL_UNLESS DELETE_COMPREHENSIVE_REPORT>
            <TMPL_UNLESS NAME="HIDE_PRICES">
                <div class="purchase-text">
                    <span><b>Get ALL of the information on this subject for only </b></span>
                    <span class="red-text">$<TMPL_VAR NAME=ALL_FOR_TOTAL>!</span>
                </div>
            </TMPL_UNLESS>
        </TMPL_UNLESS>
        <div class="purchase-buttons">
            <TMPL_UNLESS DELETE_COMPREHENSIVE_REPORT>
                <TMPL_UNLESS NAME="HIDE_PRICES">
                    <TMPL_IF NAME="COMPREHENSIVE_REPORT_DISABLED">
                        <input name="BUTTON" class="report-btn red-btn" type="button" value="Click for Details" onClick="report_ad(<TMPL_IF NAME=IRB>1</TMPL_IF>);">
                    <TMPL_ELSE>
                        <input name="BUTTON" class="report-btn red-btn" type="button" value="ALL for $<TMPL_VAR NAME=ALL_FOR_TOTAL>" onClick="send_report_selector('REPORT/COMPREHENSIVE');">
                    </TMPL_IF>
                    <div style="float: left;margin: 4px 0 0 9px;font-weight: bold;">OR</div> 
                </TMPL_UNLESS>
            </TMPL_UNLESS>

            <input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('REPORT/SAVE_PREFS');">
            <input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
        </div>
    </div>

<TMPL_IF NAME=NAT_COMP_REPORT>
  <TMPL_INCLUDE NAME="short_nat_comprehensive_report_body.tpl">
<TMPL_ELSE>
  <TMPL_INCLUDE NAME="short_report_body.tpl">
</TMPL_IF>


</div>

</form>

    <TMPL_INCLUDE NAME="report_footer.tpl">


</body>
</html>
<!-- End short_report.tpl -->
