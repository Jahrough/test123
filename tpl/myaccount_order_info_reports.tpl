<!-- begin myaccount_order_info_reports.tpl -->
<table border="1" cellpadding="0" cellspacing="1" width="856" bgcolor="#d0ccd0" class="sortable" id="order_list">
  <TMPL_IF ENABLE_SAVE_REPORT>
    <TMPL_IF REPORT_DATA>
    <tr height="20">
      <TMPL_UNLESS MYACCOUNT_ORDER_MGR_TRIMERGE>
      	<th class="unifont1" id="non_sortable_view_detail" align="center" valign="middle" width="1%">View Detail</th>
      </TMPL_UNLESS>
      <th class="unifont1" id="non_sortable_view_report" align="center" valign="middle" width="1%">View Report</th>
      <TMPL_IF MYACCOUNT_ORDER_MGR_TRIMERGE>
      	<th class="unifont1" id="non_sortable_view_report" align="center" valign="middle" width="1%">Order ID</th>
      </TMPL_IF>
      <th class="unifont1" nowrap style="text-align:center; vertical-align: middle;">Subject</th>
      <th class="unifont1" nowrap style="text-align:center; vertical-align: middle;">Report Type</th>
      <th class="unifont1" nowrap style="text-align:center; vertical-align: middle;">Date Created</th>
    </tr>

      <input type="hidden" name="REPORT_ID" value="">
      <input type="hidden" name="REPORT_RELATIONSHIP_ID" value="" id="hid_rel_id">
      <input type="hidden" name="REPORT_DATE" value="">
      <input type="hidden" name="REPORT_EXTERNAL_ID" value="">

      <TMPL_LOOP REPORT_DATA>
		  <tr height="20" bgcolor="#ffffff">
			<TMPL_UNLESS REPORT_TRIMERGE>
			<td class="smallfont1" nowrap align="center" valign="middle">
				<TMPL_IF REPORT_RELATIONSHIP_ID>
					<a href="javascript:show_report_detail('<TMPL_VAR REPORT_RELATIONSHIP_ID>', '<TMPL_VAR REPORT_ORDERS_RELATIONSHIP_ID>', '<TMPL_VAR REPORT_DATE>')">
						<img src="<TMPL_VAR IMGPATH>/report_manager_details.gif" border="0" title="Click to view inputs used to run report">
					</a>
				<TMPL_ELSE>
					&nbsp;
				</TMPL_IF>
			</td>
			</TMPL_UNLESS>
			<td class="smallfont1" nowrap align="center" valign="middle" id="view_col_<TMPL_VAR REPORT_INDEX>">
				<TMPL_IF REPORT_TRIMERGE>
					<TMPL_IF REPORT_TRIMERGE_ESP>
						<TMPL_IF REPORT_STATUS>
							<a href="javascript:show_trimerge_report_detail('<TMPL_VAR REPORT_ORDERS_RELATIONSHIP_ID>', '<TMPL_VAR REPORT_EXTERNAL_ID>', '<TMPL_VAR REPORT_DATE>')">
								<img src="<TMPL_VAR IMGPATH>/view_report.gif" border="0" title="Click to view the report">
							</a>
						<TMPL_ELSE>
							<a href="javascript:build_tip('Open Public Record (OPR)','The requested report contains Open Public Record (OPR) data, usually a Bankruptcy, Lien, or Judgment, for a subject who was once or is a resident of California which must be verified before the report can be released. This is a legal obligation that LexisNexis must comply with.','',0,0,650)">
								&nbsp;<TMPL_VAR REPORT_STATUS_MESSAGE>&nbsp;
							</a>
						</TMPL_IF>
					<TMPL_ELSE>
						&nbsp;
					</TMPL_IF>
				<TMPL_ELSE>
					<TMPL_IF REPORT_ORDERS_RELATIONSHIP_ID>
						<a href="javascript:show_saved_report('<TMPL_VAR REPORT_ORDERS_RELATIONSHIP_ID>')">
							<img src="<TMPL_VAR IMGPATH>/view_report.gif" border="0" title="Click to view the report">
						</a>
					<TMPL_ELSE>
						&nbsp;
					</TMPL_IF>
				</TMPL_IF>
			</td>
			<TMPL_IF MYACCOUNT_ORDER_MGR_TRIMERGE><td class="smallfont1" nowrap align="center" valign="middle"><TMPL_VAR REPORT_ORDERS_RELATIONSHIP_ID></td></TMPL_IF>
			<td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF REPORT_SUBJECT><TMPL_VAR REPORT_SUBJECT><TMPL_ELSE>N/A&nbsp;</TMPL_IF></td>
			<td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF REPORT_TYPE><TMPL_VAR REPORT_TYPE><TMPL_ELSE>&nbsp;</TMPL_IF></td>
			<td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF REPORT_DATE><TMPL_VAR REPORT_DATE><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		  </tr>
      </TMPL_LOOP>
    <TMPL_ELSE>
		  <tr>
			<td class="unifont1" id="non_sortable_no_reports" align="center" colspan="8" height="50">
			  <strong>There are no saved <TMPL_IF HAS_FCRA_NON_FCRA> NON-FCRA </TMPL_IF>reports in the last <TMPL_VAR REPORT_LIST_DAYS> days.</strong>
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
<TMPL_IF HAS_TRIMERGE><TMPL_INCLUDE accurint_js.tpl>
<script type="text/javascript">//<![CDATA[

    Accurint.Trimerge = (function(I){

      // feature flags
      I.managerReports = <TMPL_VAR HAS_TRIMERGE>;

      return I;

    })(window.Accurint.Trimerge || {});

//]]></script>
<script type="text/javascript" src="<TMPL_VAR JSPATH>/Accurint/Trimerge/Manager.js"></script>
</TMPL_IF>
<!-- end myaccount_order_info_reports.tpl -->
