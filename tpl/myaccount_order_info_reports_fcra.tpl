<!-- begin myaccount_order_info_reports.tpl -->
<table border="1" cellpadding="0" cellspacing="1" width="856" bgcolor="#d0ccd0" class="sortable" id="order_list">
  <TMPL_IF ENABLE_SAVE_REPORT>
    <TMPL_IF REPORT_DATA_FCRA>
    <!--
    <tr height="20"><td colspan="5">FCRA Reports</td></tr>
    -->
    <tr height="20">
      	<th class="unifont1" id="non_sortable_view_detail" align="center" valign="middle" width="1%">View Detail</th>
      <th class="unifont1" id="non_sortable_view_report" align="center" valign="middle" width="1%">View Report</th>
      <th class="unifont1" nowrap style="text-align:center; vertical-align: middle;">Subject</th>
      <th class="unifont1" nowrap style="text-align:center; vertical-align: middle;">Report Type</th>
      <th class="unifont1" nowrap style="text-align:center; vertical-align: middle;">Date Created</th>
    </tr>

      <TMPL_LOOP REPORT_DATA_FCRA>
		  <tr height="20" bgcolor="#ffffff">
			<td class="smallfont1" nowrap align="center" valign="middle">
				<TMPL_IF REPORT_RELATIONSHIP_ID>
					<a href="javascript:show_report_detail('<TMPL_VAR REPORT_RELATIONSHIP_ID>', '<TMPL_VAR REPORT_ORDERS_RELATIONSHIP_ID>', '<TMPL_VAR REPORT_DATE>')">
						<img src="<TMPL_VAR IMGPATH>/report_manager_details.gif" border="0" title="Click to view inputs used to run report">
					</a>
				<TMPL_ELSE>
					&nbsp;
				</TMPL_IF>
			</td>
			<td class="smallfont1" nowrap align="center" valign="middle" id="view_col_<TMPL_VAR REPORT_INDEX>">
					<TMPL_IF REPORT_ORDERS_RELATIONSHIP_ID>
						<a href="javascript:show_saved_report('<TMPL_VAR REPORT_ORDERS_RELATIONSHIP_ID>')">
							<img src="<TMPL_VAR IMGPATH>/view_report.gif" border="0" title="Click to view the report">
						</a>
					<TMPL_ELSE>
						&nbsp;
					</TMPL_IF>
			</td>
			<td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF REPORT_SUBJECT><TMPL_VAR REPORT_SUBJECT><TMPL_ELSE>N/A&nbsp;</TMPL_IF></td>
			<td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF REPORT_TYPE><TMPL_VAR REPORT_TYPE><TMPL_ELSE>&nbsp;</TMPL_IF></td>
			<td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF REPORT_DATE><TMPL_VAR REPORT_DATE><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		  </tr>
      </TMPL_LOOP>
    <TMPL_ELSE>
		  <tr>
			<td class="unifont1" id="non_sortable_no_reports" align="center" colspan="8" height="50">
			  <strong>There are no saved FCRA reports in the last <TMPL_VAR REPORT_LIST_DAYS> days.</strong>
			</td>
		  </tr>
    </TMPL_IF>
  <TMPL_ELSE>
      <tr>
		  <td class="unifont1" id="non_sortable_no_report_mgr" align="center" height="50">
			<strong>Online Reports are not available at the moment. Please try again later.</strong>
		  </td>
      </tr>
  </TMPL_IF>
</table>
<!-- end myaccount_order_info_reports.tpl -->
