<!DOCTYPE html>
<!-- Begin short_others_report.tpl -->
<html>
    <head>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
        <script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
    </head>

<body class="ac_report" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">
<div id="skiptocontent" role="dialog"><a href="#mainbody" title="skip navigation">Skip Navigation</a></div>
<TMPL_INCLUDE NAME="report_header.tpl">

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
<TMPL_INCLUDE NAME="short_report_hidden_inputs.tpl">	
    <div id="mainbody" class="w770px reportCon">
        <div class="row-wrapper">
            <h1><TMPL_VAR NAME="REPORT_NAME"></h1>
        </div>
        <div class="row-wrapper">
            <h2>Subject Information</h2>
        </div>
        <div class="row-wrapper" style="margin-bottom:30px;">
            <table class="info-table">
            <tbody>
                <tr>
                    <TMPL_LOOP NAME="REPORT_PARAMS">
                        <th id="col_<TMPL_VAR PARAM_INDEX>"><TMPL_VAR PARAM_NAME></th>                        
                    </TMPL_LOOP>
                </tr>
                <tr>
                    <TMPL_LOOP NAME="REPORT_PARAMS">
                        <td align="center" headers="col_<TMPL_VAR PARAM_INDEX>"><TMPL_VAR PARAM_VALUE></td>
                    </TMPL_LOOP>
                </tr>
            </tbody>
        </table>
        </div>
        <div class="row-wrapper">
            <div class="ta-center">
                <input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="showpw_v3();self.document.SHORT_REPORT.submit();">
                <input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
            </div>
        </div>


        <tmpl_include name="short_others_report_body.tpl">
    </div>
</form>
<TMPL_INCLUDE NAME="report_footer.tpl">

    </body>
</html>
