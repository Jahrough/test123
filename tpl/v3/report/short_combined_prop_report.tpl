<!DOCTYPE html>
<html>
    <head>
        <title>Combined Property Report Options</title>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
        <script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
    </head>

<body class="ac_report" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">
<div id="skiptocontent" role="dialog"><a href="#mainbody" title="skip navigation">Skip Navigation</a></div>
<TMPL_INCLUDE NAME="report_header.tpl">

<form name="SHORT_COMBINED_PROP_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 
    <TMPL_INCLUDE NAME="common_hidden_input.tpl">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="EVENT" VALUE="REPORT2/COMBINED_PROP_REPORT">
    <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
    <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
    <INPUT type=hidden NAME="SOURCE_PROP_REC_ID" VALUE="<TMPL_VAR NAME="SOURCE_PROP_REC_ID">">
    <INPUT type=hidden NAME="SHORT_REPORT" VALUE="1">
    <input type=hidden NAME="STREET_ADDRESS" VALUE="<TMPL_VAR NAME=STREET_ADDRESS>">
    <input type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME=CITY>">
    <input type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME=STATE>">
    <input type=hidden NAME="ZIP" VALUE="<TMPL_VAR NAME=ZIP>">


    <div id="mainbody" class="w770px reportCon">
        <!--<div class="row-wrapper">
            <h1><TMPL_VAR NAME="REPORT_NAME"> Report</h1>
        </div>-->
        <div class="row-wrapper">
            <h2>Subject Information</h2>
        </div>
        <div class="row-wrapper" style="margin-bottom:30px;">
            <table class="info-table">
            <tbody>
                <tr>
                    <th id="col_addr">Address</th>
                    <th id="col_prop">Property ID</th>
                </tr>
                <tr>
                    <td headers="col_addr"><TMPL_VAR NAME=STREET_ADDRESS><br><TMPL_VAR NAME=CITY>, <TMPL_VAR NAME=STATE> <TMPL_VAR NAME=ZIP></td>
                    <td headers="col_prop"><TMPL_VAR NAME=SOURCE_PROP_REC_ID></td>
                </tr>
            </tbody>
        </table>
        </div>
        <div class="row-wrapper">
            <div class="ta-center">
                <input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('REPORT2/COMBINED_PROP_REPORT');">
                <input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
            </div>
        </div>


        <tmpl_include name="short_combined_prop_report_body.tpl">
    </div>
</form>
<TMPL_INCLUDE NAME="report_footer.tpl">

    </body>
</html>
