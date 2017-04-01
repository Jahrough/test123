<!DOCTYPE html>
<!-- Begin short_bus_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Comprehensive Business Report Options</title>
<TMPL_INCLUDE NAME="includes_info.tpl">
<link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
</head>

<body class="ac_report" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">
<div id="skiptocontent" role="dialog"><a href="#mainbody" title="skip navigation">Skip Navigation</a></div>
<TMPL_INCLUDE NAME="report_header.tpl">

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_BUS_PREFS">
      <INPUT type=hidden NAME="COMPANY" VALUE="<TMPL_VAR NAME="COMPANY">">
      <INPUT type=hidden NAME="STREET_NUM" VALUE="<TMPL_VAR NAME="STREET_NUM">">
      <INPUT type=hidden NAME="PRE_DIR" VALUE="<TMPL_VAR NAME="PRE_DIR">">
      <INPUT type=hidden NAME="STREET_NAME" VALUE="<TMPL_VAR NAME="STREET_NAME">">
      <INPUT type=hidden NAME="POST_DIR" VALUE="<TMPL_VAR NAME="POST_DIR">">
      <INPUT type=hidden NAME="SUFFIX" VALUE="<TMPL_VAR NAME="SUFFIX">">
      <INPUT type=hidden NAME="UNIT_NUM" VALUE="<TMPL_VAR NAME="UNIT_NUM">">
      <INPUT type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME="STATE">">
      <INPUT type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME="CITY">">
      <INPUT type=hidden NAME="ZIP" VALUE="<TMPL_VAR NAME="ZIP">">
      <INPUT type=hidden NAME="ZIP4" VALUE="<TMPL_VAR NAME="ZIP4">">
      <INPUT type=hidden NAME="UNIQUE_ID" VALUE="<TMPL_VAR NAME="UNIQUE_ID">">
      <INPUT type=hidden NAME="FIRST_UNIQUE_ID" VALUE="<TMPL_VAR NAME="FIRST_UNIQUE_ID">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
      <INPUT type=hidden NAME="FEIN" VALUE="<TMPL_VAR NAME="FEIN">">
      <INPUT type=hidden NAME="I2_TYPE" VALUE="<TMPL_VAR NAME="I2_TYPE">">
	  <INPUT type=hidden NAME="uccs" VALUE="<TMPL_VAR NAME="INCLUDE_UCCS">">
	  <INPUT type=hidden NAME="properties" VALUE="<TMPL_VAR NAME="INCLUDE_PROPERTIES">">
	  <INPUT type=hidden NAME="corporate-filings" VALUE="<TMPL_VAR NAME="INCLUDE_CORPORATE-FILINGS">">
	  <INPUT type=hidden NAME="motor-vehicles" VALUE="<TMPL_VAR NAME="INCLUDE_MOTOR-VEHICLES">">
	  <INPUT type=hidden NAME="contacts" VALUE="<TMPL_VAR NAME="INCLUDE_CONTACTS">">

<div id="mainbody" class="w770px reportCon">
    <div class="row-wrapper">
        <h2>Subject Information</h2>
    </div>
    <div class="row-wrapper" style="margin-bottom:30px;">
        <table class="info-table">
        <tbody>
            <tr>
                <th id="col_comp">Company Name</th>
                <th id="col_addr">Address</th>
                <th id="col_ph">Phone</th>
            </tr>
            <tr>
                <td headers="col_comp"><TMPL_VAR NAME=COMPANY></td>
                <td headers="col_addr"><TMPL_VAR NAME=ADDRESS><br><TMPL_VAR NAME=CITY> <TMPL_VAR STATE> <TMPL_VAR ZIP><TMPL_IF ZIP4>-<TMPL_VAR ZIP4></TMPL_IF></td>
                <td headers="col_ph"><TMPL_VAR NAME=PHONE></td>
            </tr>
        </tbody>
    </table>
    </div>
    <div class="row-wrapper">
        <div class="ta-center">
            <input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('REPORT/SAVE_ALSO_FOUND_BUS_PREFS');">
            <input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
        </div>
    </div>
    
    
	<div class="row-wrapper grey-border margin-for-footer">
		<table class="options-table">
			<thead style="display: none">
			  <tr>
				 <th aria-label="Included Options">&nbsp;</th>
			  </tr>
			</thead>
			  <TMPL_IF NAME=INCLUDE_CONTACTS>
			  <tr>
				<td class="smallfont1" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="disabled_small"><input type="checkbox" name="contacts" value="1" id="contacts" checked="true" disabled="true"><label for="contacts">Business Contacts</label></span>
				</td>
			  </tr>
			  </TMPL_IF>

			  <TMPL_IF NAME=INCLUDE_MOTOR-VEHICLES>
			  <tr>
				<td class="smallfont1" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="disabled_small"><input type="checkbox" name="motor-vehicles" value="1" id="motor-vehicles" checked="true" disabled="true"><label for="motor-vehicles">Motor Vehicles</label></span>
					<!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Motor Vehicles </span>-->
				</td>
			  </tr>
			  </TMPL_IF>

			  <TMPL_IF NAME=INCLUDE_UCCS>
			  <tr>
				<td class="smallfont1" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="disabled_small"><input type="checkbox" name="uccs" value="1" id="uccs" checked="true" disabled="true"><label for="uccs">UCC Filings</label></span>
					<!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small"></span>-->
				</td>
			  </tr>
			  </TMPL_IF>

			  <TMPL_IF NAME=INCLUDE_PROPERTIES>
			  <tr>
				<td class="smallfont1" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="disabled_small"><input type="checkbox" name="properties" value="1" id="properties" checked="true" disabled="true"><label for="properties">Properties</label></span>
					<!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small"></span>-->
				</td>
			  </tr>
			  </TMPL_IF>

			  <TMPL_IF NAME=INCLUDE_CORPORATE-FILINGS>
			  <tr>
				<td class="smallfont1" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="disabled_small"><input type="checkbox" name="corporate-filings" value="1" id="corporate-filings" checked="true" disabled="true"><label for="corporate-filings">Corporation Filings</label></span>
					<!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Secretary of State Filings </span>-->
				</td>
			  </tr>
			  </TMPL_IF>
		</table>
	</div>
	<tmpl_include name="short_others_report_body.tpl">
</div>

</form>
    <TMPL_INCLUDE NAME="report_footer.tpl">

</body>
</html>
<!-- End short_bus_report.tpl -->
