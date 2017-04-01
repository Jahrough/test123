<!-- begin myaccount_order_info_batch.tpl -->
  <table border="1" cellpadding="0" cellspacing="1" width="856" bgcolor="#d0ccd0" class="sortable" id="order_list">
    <TMPL_IF NAME="ONLINEJOBS_DATA">

    <tr height="20">
      <th class="unifont1" width="8%" id="non_sortable_view_download" align="center" valign="middle" width="1%">Download Results</th>
      <th class="unifont1" nowrap align="center" valign="middle">Job ID</th>
      <th class="unifont1" nowrap align="center" valign="middle">Job Name</th>
      <th class="unifont1" nowrap align="center" valign="middle">Product Type</th>
      <th class="unifont1" nowrap align="center" valign="middle">Date Submitted</th>
      <th class="unifont1" nowrap align="center" valign="middle">Status</th>
    </tr>

      <input type="hidden" name="JOB_ID" value="">
      <input type="hidden" name="JOB_TYPE" value="">

      <input type="hidden" name="REPORT_ID" value="">
      <input type="hidden" name="REPORT_RELATIONSHIP_ID" value="">
      <input type="hidden" name="REPORT_DATE" value="">
      <TMPL_LOOP NAME="ONLINEJOBS_DATA">
	<tr height="20" bgcolor="#ffffff">
	  <td class="smallfont1" nowrap align="center" valign="middle">

	<TMPL_IF NAME="RESULT_SHOW_FILES">
	  <a href="javascript:batch_win('<TMPL_VAR NAME=ACTION_BATCH>?EVENT=BATCHMANAGE/SHOW_ONLINE_FILES&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&job_id=<TMPL_VAR NAME=RESULT_JOB_ID>','jobs','600','600','1','0','1','1','1','0');void(0);"><img src="<TMPL_VAR NAME='IMGPATH'>/report_manager_details.gif" border="0" title="Click to view list of downloadable files"></a> 
	<TMPL_ELSE>
	    <TMPL_IF NAME="RESULT_FILE_COUNT_ZERO">
	    &nbsp;
	    <TMPL_ELSE>
	        <a href="javascript:show_post_popup('BATCHMANAGE/GET_ONLINE_FILES','BatchDownload',600,400,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>','','<input type=\'hidden\' name=\'job_id\' value=\'<TMPL_VAR NAME=RESULT_JOB_ID>\'>');"><img src="<TMPL_VAR NAME='IMGPATH'>/report_manager_details.gif" border="0" title="Click to download file"></a>
	    </TMPL_IF>
	 </TMPL_IF>
	 <TMPL_IF NAME="BATCH_ADMIN">
	 <sub><br>[ Files: <TMPL_VAR NAME=RESULT_FILE_COUNT> ]</sub>
	 </TMPL_IF>
	  
	  </td>
	  <td class="smallfont1" nowrap align="left" valign="middle">&nbsp;<TMPL_IF NAME="RESULT_JOB_ID"><TMPL_VAR NAME="RESULT_JOB_ID"><TMPL_ELSE>N/A&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="left" valign="middle">&nbsp;<TMPL_IF NAME="RESULT_JOB_NAME"><TMPL_VAR NAME="RESULT_JOB_NAME"><TMPL_ELSE>N/A&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="left" valign="middle">&nbsp;<TMPL_IF NAME="RESULT_PRODUCT_TYPE"><TMPL_VAR NAME="RESULT_PRODUCT_TYPE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="left" valign="middle">&nbsp;<TMPL_IF NAME="RESULT_DATE_CREATED"><TMPL_VAR NAME="RESULT_DATE_CREATED"><TMPL_ELSE>&nbsp;</TMPL_IF></td>

	  <TMPL_IF NAME="RESULT_JOB_STATUS">
	  <td class="smallfont1" nowrap align="left" valign="middle" style="color:<TMPL_VAR NAME="RESULT_JOB_STATUS_COLOR">"><strong>&nbsp;<TMPL_VAR NAME="RESULT_JOB_STATUS"></strong></td>
	  <TMPL_ELSE>
	  <td class="smallfont1" nowrap align="left" valign="middle">&nbsp;</td>
	  </TMPL_IF>

	  
	</tr>
      </TMPL_LOOP>
    <TMPL_ELSE>
	<tr>
	  <td class="unifont1" id="non_sortable_no_reports" align="center" colspan="8" height="50">
	    <strong>There are no saved reports in the last <TMPL_VAR NAME="RESULT_LIST_DAYS"> days.</strong>
	  </td>
	</tr>
    </TMPL_IF>
</table>
<!-- end myaccount_order_info_batch.tpl -->
