<!DOCTYPE html>
<!-- Begin short_entitlem_report.tpl -->
<html>
    <head>
        <title>Entitlement Report Options</title>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
        <script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
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
        <input type="hidden" name="LAST_NAME" VALUE="<TMPL_VAR NAME=LAST_NAME>"/>
        <input type="hidden" name="FIRST_NAME" VALUE="<TMPL_VAR NAME=FIRST_NAME>"/>
        <input type="hidden" name="MIDDLE_NAME" VALUE="<TMPL_VAR NAME=MIDDLE_NAME>"/>
        <input type="hidden" name="SUFFIX_NAME" VALUE="<TMPL_VAR NAME=SUFFIX_NAME>"/>
        <input type="hidden" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>"/>
        <input type="hidden" name="TYPE" value="<TMPL_VAR NAME=TYPE>"/>
        <input type="hidden" name="SHORT_REPORT" value="1"/>


    <div id="mainbody" role="dialog" class="w770px reportCon">
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
                    <TMPL_LOOP NAME="REPORT_PARAMS">
                        <th id="col_<TMPL_VAR NAME=PARAM_INDEX>"><TMPL_VAR PARAM_NAME></th>
                    </TMPL_LOOP>
                </tr>
                <tr>
                    <TMPL_LOOP NAME="REPORT_PARAMS">
                        <td headers="col_<TMPL_VAR NAME=PARAM_INDEX>"><TMPL_VAR PARAM_VALUE></td>
                    </TMPL_LOOP>
                </tr>
            </tbody>
            </table>
        </div>
        <div class="row-wrapper">
            <div class="ta-center">
                <input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('<TMPL_VAR NAME="REPORT_EVENT">');">
                <input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
            </div>
        </div>


        <tmpl_include name="short_entitlem_report_body.tpl">
    </div>
</form>
<TMPL_INCLUDE NAME="report_footer.tpl">

    </body>
</html>
