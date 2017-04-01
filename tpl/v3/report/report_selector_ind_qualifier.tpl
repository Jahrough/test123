<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Begin v3/report/report_selector_ind_qualifier.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Comprehensive Health Care Provider Report -- Select your report</title>
<TMPL_INCLUDE NAME="includes_info.tpl">
<link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
</head>

<body class="ac_report" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">
<div id="skiptocontent"><a href="#mainbody" title="skip navigation">Skip Navigation</a></div>
<TMPL_INCLUDE NAME="report_header.tpl">


<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
    <TMPL_INCLUDE NAME="common_hidden_input.tpl">
	<INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR NAME=REFERENCE_CODE>">
	<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
	<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
	<INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PREFS">
	<INPUT type=hidden NAME="RECID_REPORT" VALUE="<TMPL_VAR NAME="RECID_REPORT">">
	<INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
	<INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
	<input type="hidden" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>"/>
	<input type="hidden" name="CITY" value="<TMPL_VAR NAME=CITY>"/>
	<input type="hidden" name="STATE" value="<TMPL_VAR NAME=STATE>"/>
	<input type="hidden" name="ZIP" value="<TMPL_VAR NAME=ZIP>"/>
	<input type="hidden" name="ZIP4" value="<TMPL_VAR NAME=ZIP4>"/>
	<INPUT type=hidden NAME="SSN" VALUE="<TMPL_VAR NAME="SSN">">
	<INPUT type=hidden NAME="COMPANY_NAME" VALUE="<TMPL_VAR NAME="COMPANY_NAME">">
	<INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
	<INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
	<INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MIDDLE_NAME">">
	<input type="hidden" name="MI" value="<TMPL_VAR NAME=MI>"/>
	<INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
	<INPUT type=hidden NAME="NPI_NUMBER" VALUE="<TMPL_VAR NAME="NPI_NUMBER">">
	<input type="hidden" name="CC_OPT_IN" value="<TMPL_VAR CC_OPT_IN>"/>
	<input type="hidden" name="PERM" value="<TMPL_VAR PERM>"/>
        <input type="hidden" name="PROVIDER_ID" value="<TMPL_VAR PROVIDER_ID>"/>
        <input type="hidden" name="PROVIDER_SRC" value="<TMPL_VAR PROVIDER_SRC>"/>

    
    <div id="mainbody" class="w770px reportCon">


    <table align="center">
        <thead style="display: none">
          <tr>
            <th aria-label="left column">&nbsp;</th>
            <th aria-label="Middle column">&nbsp;</th>            
            <th aria-label="Right column">&nbsp;</th>            
          </tr>
        </thead>
    	<tr>
    		<td>&nbsp;&nbsp;&nbsp;&nbsp</td>
    		<td>&nbsp;&nbsp;&nbsp;&nbsp</td>
    	</tr>
    	<tr>
    		<td valign="top">
				<div class="w420px reportCon">
					<div class="row-wrapper grey-border" style="margin-bottom:30px;">
						<table class="options-table">
						<tbody>
							<tr class="info-table">
								<th id="col_report">Comprehensive Report</th>
							</tr>
							<tr>
								<td headers="col_report" style="padding-left:10px;">
									&#149; Verification<br>
									&#149; Others Using Same SSN <br>
									&#149; Date and Location where SSN Issued <br>
									&#149; Business Address Summary <br>
									&#149; Business Phone Matches <br>
									&#149; Professional Licenses <br>
									&#149; DEA Licenses <br>
									&#149; Corporate Affiliations <br>
									&#149; Group Affiliations <br>
									&#149; Hospital Affiliations  <br>
									&#149; Education  <br>
									&#149; Sanctions  <br>
									&#149; Sexual Offenses<br>
									&#149; Possible Criminal Records<br>
									&#149; Bankruptcy<br>
									&#149; Liens &amp; Judgments<br>
								   <br>
								</td>
							</tr>
							<tr align="center">
								<TMPL_IF DISABLE_IND_FR_QUALIFIER_REPORT>
									<td><input tabindex="5" class="report-btn grey-btn" type="button" value="Report Disabled" onClick="void(0);" disabled></td>
								<TMPL_ELSE>
									<td><input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('REPORT/IND_FR_QUALIFIER_REPORT');"></td>
								</TMPL_IF>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
    		</td>
    		<td>
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		</td>
    		<td valign="top">
				<div class="w420px reportCon">
					<div class="row-wrapper grey-border" style="margin-bottom:30px;">
						<table class="options-table">
						<tbody>
							<tr class="info-table">
								<th id="col_comp_report">Custom Comp Report</th>
							</tr>
							<tr>
								<td headers="col_comp_report" style="padding-left:10px;">Pick and choose your report selections<br><br></td>
							</tr>
							<tr align="center">
								<TMPL_IF DISABLE_IND_QUALIFIER_REPORT>
									<td><input class="report-btn grey-btn" type="button" value="Report Disabled" onClick="void(0);" disabled></td>
								<TMPL_ELSE>
									<td><input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('REPORT/IND_QUALIFIER_REPORT');"></td>
								</TMPL_IF>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
    		</td>
    	</tr>
        </table>

        </div>
</form>

</body>
</html>
<!-- end v3/report/report_selector_ind_qualifier.tpl -->
