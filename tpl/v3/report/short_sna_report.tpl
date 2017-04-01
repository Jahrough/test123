<!-- begin: v3/report/short_sna_report.tpl -->
<html>
<head>
<title>Business Link Report Options</title>
<TMPL_INCLUDE NAME="includes_info.tpl">
<link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
</head>

<body class="ac_report" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">
<TMPL_INCLUDE NAME="report_header.tpl">

<form name="SEARCH_RESULTS" action="<TMPL_VAR NAME=ACTION>" method="post">
      <!-- hidden fields -->
        <TMPL_INCLUDE NAME=common_hidden_input.tpl>      
        <input type="hidden" name="RECID_REPORT" value="<TMPL_VAR NAME=RECID_REPORT>"/>
        <input type="hidden" name="MIDDLE_NAME" VALUE="<TMPL_VAR NAME=MIDDLE_NAME>"/>
        <input type="hidden" name="LAST_NAME" VALUE="<TMPL_VAR NAME=LAST_NAME>"/>
        <input type="hidden" name="REFERENCE_CODE" value="<TMPL_VAR REFERENCE_CODE>"/>
        <input type="hidden" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>"/>
        <input type="hidden" name="FIRST_NAME" VALUE="<TMPL_VAR NAME=FIRST_NAME>"/>
        <input type="hidden" name="RECID" value="<TMPL_VAR NAME=RECID>"/>
        <input type="hidden" name="DOL_DATE" value="<TMPL_VAR NAME=DOL_DATE>"/>
        
        <input type="hidden" name="EVENT" value="<TMPL_VAR NAME="CURRENT_EVENT">"/>

        <input type="hidden" name="SUFFIX" VALUE="<TMPL_VAR NAME=SUFFIX>"/>
        
        <input type="hidden" name="FULL_NAME" VALUE="<TMPL_VAR NAME=FULL_NAME>"/>
        <input type="hidden" name="DOB" VALUE="<TMPL_VAR NAME=DOB>"/>
        <input type="hidden" name="SSN" VALUE="<TMPL_VAR NAME=SSN>"/>

        <input type="hidden" name="SHORT_REPORT" value="1"/>
      <!-- hidden fields -->
      
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
                    <th><TMPL_VAR PARAM_NAME></th>
                    </TMPL_LOOP>
                  </tr>
                  <tr align="center">
                    <TMPL_LOOP NAME="REPORT_PARAMS">
                    <td><TMPL_VAR NAME=PARAM_VALUE>&nbsp;</td>
                    </TMPL_LOOP>
                  </tr>
                </tbody>
			</table>
		 </div>
		<div class="row-wrapper">
			<div class="ta-center">
			    <input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('SEARCH2/SEARCH_SNA');" />
				<input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
			</div>
		</div>
        <TMPL_INCLUDE NAME=short_sna_report_body.tpl>
      </div>
    </form>
    <TMPL_INCLUDE NAME="report_footer.tpl">
  </body>
</html>
<!-- end: v3/report/short_sna_report.tpl -->
