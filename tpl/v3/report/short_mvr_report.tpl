<!-- Begin short_mvr_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title><TMPL_IF IRB>Driving Records Options<TMPL_ELSE>MVR Reports Options</TMPL_IF></title>
    <TMPL_INCLUDE NAME="includes_info.tpl">
    <script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/v3/initReport.js"></script>
    <link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
</head>

<body class="ac_report" onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<div id="skiptocontent"><a href="#mainbody" title="skip navigation">Skip Navigation</a></div>
<TMPL_INCLUDE NAME="report_header.tpl">

<form name="SHORT_MVR_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 

      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_MVR_PREFS">
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
      <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
      <INPUT type=hidden NAME="MVR_STATE_ID" VALUE="<TMPL_VAR NAME="MVR_STATE_ID">">
      <INPUT type=hidden NAME="MVR_STATE" VALUE="<TMPL_VAR NAME="MVR_STATE">">
      <INPUT type=hidden NAME="MVR_STATE_YEARS" VALUE="<TMPL_VAR NAME="MVR_STATE_YEARS">">
      <INPUT type=hidden NAME="MVR_STATE_PRICE" VALUE="<TMPL_VAR NAME="MVR_STATE_PRICE">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MI">">
      <INPUT type=hidden NAME="LICENSE_NUMBER" VALUE="<TMPL_VAR NAME="LICENSE_NUMBER">">
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
      <INPUT type=hidden NAME="GENDER" VALUE="<TMPL_VAR NAME="GENDER">">
      <INPUT type=hidden NAME="SHORT_REPORT" VALUE="1">
      
        <div id="mainbody" class="w770px reportCon">
            <div class="row-wrapper">
                <h1>MVR Report</h1>
            </div>
            <div class="row-wrapper">
                <h2>Subject Information</h2>
            </div>
            <div class="row-wrapper" style="margin-bottom:30px;">
                <table class="info-table">
                      <tr>
                        <th id="col_state">State</th>
                        <th id="col_lic_num">License Number</th>
                        <th id="col_name">Name</th>
                        <th id="col_dob">DOB</th>
                      <TMPL_IF NAME="GENDER">
                        <th id="col_gender" valign="top" align="left">Gender</th>
                      </TMPL_IF>
                      </tr>
                      <tr>
                        <td headers="col_state"><TMPL_VAR NAME="MVR_STATE_DESC"></td>
                        <td headers="col_lic_num"><TMPL_VAR NAME="LICENSE_NUMBER"></td>
                        <td headers="col_name"><TMPL_VAR NAME=FIRST_NAME> <TMPL_IF MI><TMPL_VAR NAME="MI"> </TMPL_IF><TMPL_VAR NAME="LAST_NAME"></td>
                        <td headers="col_dob"><TMPL_VAR NAME="DOB"></td>
                          <TMPL_IF NAME="GENDER">
                            <td headers="col_gender"><TMPL_VAR NAME="GENDER"></td>
                          </TMPL_IF>
                      </tr>
                </table>
            </div>

            <div class="row-wrapper">
                <div class="ta-center">

                    <TMPL_IF DEMO>
                        <input name="BUTTON" tabindex="1" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="parent.location='<TMPL_VAR NAME=HTMLPATH>/sample_mvr.html'">
                    <TMPL_ELSE>
                        <input name="BUTTON" tabindex="1" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('REPORT/SAVE_MVR_PREFS');">
                    </TMPL_IF>
                    <input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
                   
                </div>
            </div>

            <div class="row-wrapper">
              <TMPL_INCLUDE NAME="short_mvr_report_body.tpl">
            </div>            
        </div>

</form>

<TMPL_INCLUDE NAME="report_footer.tpl">

</body>
</html>
