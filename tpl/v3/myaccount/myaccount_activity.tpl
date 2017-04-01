<!-- begin myaccount_activity.tpl -->
<link href="<TMPL_VAR NAME='CSSPATH'>/jquery.dataTables.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.dataTables.js"></script>
<script>
function refresh_page() {
    if (checkdate()) {
	send_event('MYACCOUNT/SHOW_ACTIVITY', '<TMPL_VAR NAME=ACTION_ADMIN>');
    }
}
$j(function() {
    $j('#dataTables').DataTable({
          paging: false,
          searching: false,
          info: false
     });
});
</script>

<style>
table.dataTable.no-footer {
    border-bottom: none;
}
</style>

<div class="myaccount-section-title"><TMPL_VAR TITLE></div>
<div class="myaccount-containers">
    <div class="section">
        <div class="section-row">
            <fieldset>
                <table border="0" cellpadding="2" cellspacing="0" width="100%">
					<tr>
						<td nowrap align="center" valign="middle"> 
							<table width="860" cellpadding="0" cellspacing="0" border="0">
								<tr>
								<td align="center">
								<table border="0" cellpadding="2" cellspacing="0">
								<tr>
								<td height="40" class="unifont1"><a href="javascript:void(0);" onClick="displayDatePicker('ACTIVITY_DATE_FROM','below');"><b>From:</b></a>&nbsp;</td>
								<td height="40"><input onClick="displayDatePicker('ACTIVITY_DATE_FROM','below');" type=text name=ACTIVITY_DATE_FROM value="<TMPL_VAR NAME=ACTIVITY_DATE_FROM>" size="8" maxlength=10></td>
								<td height="40" class="unifont1">&nbsp;&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('ACTIVITY_DATE_TO','below');"><b>To</a>:</b>&nbsp;</td>
								<td height="40"><input onClick="displayDatePicker('ACTIVITY_DATE_TO','below');" type=text name=ACTIVITY_DATE_TO value="<TMPL_VAR NAME=ACTIVITY_DATE_TO>" size="8" maxlength=10></td>
								<td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td height="40" class="unifont1"><b>Total:</b>&nbsp;</td>
								<td height="40" class="unifont1"><TMPL_VAR NAME=PAGE_RECORDS></td>
								<td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
								
								
								
								<td height="40"><a <TMPL_IF NAME=PREV_ON>class="btn darkgrey-btn" href="javascript:send_event('MYACCOUNT/SHOW_ACTIVITY_PREV', '<TMPL_VAR NAME=ACTION_ADMIN>')"<TMPL_ELSE>class="btn grey-btn disabled"</TMPL_IF>>< Back</a></td>
								<td height="40"><a class="btn grey-btn" href="javascript:refresh_page();">Refresh</a></td>
								<td height="40"><a <TMPL_IF NAME=NEXT_ON>class="btn darkgrey-btn" href="javascript:send_event('MYACCOUNT/SHOW_ACTIVITY_NEXT', '<TMPL_VAR NAME=ACTION_ADMIN>')"<TMPL_ELSE>class="btn grey-btn disabled"</TMPL_IF>>Next ></a></td>
								<td height="40"><TMPL_UNLESS IRS><TMPL_UNLESS IRB><TMPL_IF NAME=ACT_EXPORT_ON><a class="btn red-btn" href="javascript:send_event('MYACCOUNT/SHOW_ACTIVITY_EXPORT', '<TMPL_VAR NAME=ACTION_ADMIN>')">Export Results</a><TMPL_ELSE> Export Results</TMPL_IF></TMPL_UNLESS></TMPL_UNLESS></td>
								</tr>
							</table>
						</td>
					</tr>
					<TMPL_IF NAME=SYSTEMADMINISTRATOR>
					<tr>
						<td align="center">
							<table border="0" cellpadding="0" cellspacing="0">
								<TMPL_IF NAME="DATE_ERROR">
									<tr>
										<td colspan="2" align="center"><span class="unifont2"><font color="blue"><b><TMPL_VAR NAME=DATE_ERROR></b>&nbsp;&nbsp;</font></span></td>
									</tr>
								</TMPL_IF>
								<tr>
									<td height="40"><span class="unifont1"><b>User:</b>&nbsp;&nbsp;</span></td>
									<td height="40" class="unifont1">
										<SELECT NAME=ACTIVITY_LOGIN_FILTER>
										<TMPL_LOOP NAME=USER_SELECT_LOOP>
										<OPTION VALUE="<TMPL_VAR NAME=LOGINID>" <TMPL_IF NAME="LOGIN_SELECT">SELECTED</TMPL_IF>><TMPL_VAR NAME=LOGINID> - <TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME></OPTION>
										</TMPL_LOOP>
										</SELECT>
										&nbsp;&nbsp;&nbsp;&nbsp;<b><a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')">Time Zone:</a></b> <TMPL_VAR TZNAME> (<TMPL_VAR OFFSET>)
									</td>
								</tr>
							</table>
						</td>
					</tr>
					</TMPL_IF>
				</table>
			</fieldset>
			<fieldset>
				<TMPL_IF NAME="SEARCH_RESULTS">
					<table id="dataTables" class="display">
						<thead>
							<tr>
								<td>
									<b>Activity</b>
								</td>
								<td>
									<b>Search Criteria</b>
								</td>
								<td>
									<b>Reference Code</b>
								</td>
								<td>
									<b>Date &amp; Time</b>
								</td>
							</tr>
						</thead>
						<tbody>	
							<TMPL_LOOP NAME="SEARCH_RESULTS">
								<tr bgcolor="#ffffff">
									<TMPL_IF NAME="transaction_type">
										<td nowrap valign="top">&nbsp;<TMPL_VAR NAME="transaction_type"></td>
									<TMPL_ELSE>
										<td nowrap valign="top">&nbsp;</td> 
									</TMPL_IF>
									<td nowrap valign="top">&nbsp;
										<TMPL_VAR NAME="fname">
										<TMPL_VAR NAME="mname">
										<TMPL_VAR NAME="lname">
										<TMPL_VAR NAME="full_name">
										<TMPL_VAR NAME="address">
										<TMPL_VAR NAME="city">
										<TMPL_VAR NAME="state">
										<TMPL_VAR NAME="zip">
										<TMPL_VAR NAME="zip4">
										<TMPL_VAR NAME="phone">
										<TMPL_VAR NAME="ssn">
										<TMPL_VAR NAME="unique_id">
										<TMPL_VAR NAME="dob">
										<TMPL_VAR NAME="business_name">
									</td>
									<TMPL_IF NAME="reference_code">
										<td nowrap valign="top">&nbsp;<TMPL_VAR NAME="reference_code"></td>
									<TMPL_ELSE>
										<td nowrap valign="top">&nbsp;</td>
									</TMPL_IF>
									<TMPL_IF NAME="dateadded">
										<td <TMPL_UNLESS IGNORE_NO_WRAP>nowrap </TMPL_UNLESS>valign="top">&nbsp;<TMPL_VAR NAME="dateadded"></td>
									<TMPL_ELSE>
										<td nowrap valign="top">&nbsp;</td>
									</TMPL_IF>
								</tr>
							</TMPL_LOOP>
						</tbody>
					</table>
				<TMPL_ELSE>
						<TMPL_UNLESS IRS>
						<TMPL_UNLESS REPORT_SUBMITTED>
						<br>
						<table class="display" id="dataTables">
							<thead>
								<tr>
									<td>
										<b>Activity</b>
									</td>
								</tr>
							</thead>
							<tbody>
								<tr><td>&nbsp;No activity was found.</td></tr>
							</tbody>
						</table>
						</TMPL_UNLESS>
						</TMPL_UNLESS>
				</TMPL_IF>
			</fieldset>
        </div>
    </div>
</div>
<TMPL_INCLUDE NAME=myaccount_footer.tpl>
<INPUT TYPE="HIDDEN" NAME="NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PAGE_COUNT" VALUE="<TMPL_VAR NAME=PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="PAGE_TOTAL" VALUE="<TMPL_VAR NAME=PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="PAGE_RECORDS" VALUE="<TMPL_VAR NAME=PAGE_RECORDS>">
<INPUT TYPE="HIDDEN" NAME="EXPORT_REPORT" VALUE="">

<!-- end myaccount_activity.tpl -->
