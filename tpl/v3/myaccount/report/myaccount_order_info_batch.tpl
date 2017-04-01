<!--begin myaccount/report/myaccount_order_info_batch.tpl -->
<div id="dataTables_wrapper" class="dataTables_wrapper no-footer">
  <table id="dataTables" class="display" cellspacing="0" width="100%">
    <TMPL_IF NAME="ONLINEJOBS_DATA">
	<thead>
		<tr class="myaccountbody" role="row">
		  <th id="non_sortable_view_download">Download Results</th>
		  <th id="col_job_id">Job ID</th>
		  <th id="col_job_nam">Job Name</th>
		  <th id="col_prd_typ">Product Type</th>
		  <th id="col_dt_sbt">Date Submitted</th>
		  <th id="col_sts">Status</th>
		</tr>
	</thead>
      <input type="hidden" name="JOB_ID" value="">
      <input type="hidden" name="JOB_TYPE" value="">

      <input type="hidden" name="REPORT_ID" value="">
      <input type="hidden" name="REPORT_RELATIONSHIP_ID" value="">
      <input type="hidden" name="REPORT_DATE" value="">
      <TMPL_LOOP NAME="ONLINEJOBS_DATA">
	<tr>
	  <td headers="non_sortable_view_download">

	<TMPL_IF NAME="RESULT_SHOW_FILES">
	  <a href="javascript:batch_win('<TMPL_VAR NAME=ACTION_BATCH>?EVENT=BATCHMANAGE/SHOW_ONLINE_FILES&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&job_id=<TMPL_VAR NAME=RESULT_JOB_ID>','jobs','600','600','1','0','1','1','1','0');void(0);"><img src="<TMPL_VAR NAME='IMGPATH'>/report_manager_details.gif" border="0" title="Click to view list of downloadable files" alt="Click to view list of downloadable files"></a> 
	<TMPL_ELSE>
	    <TMPL_IF NAME="RESULT_FILE_COUNT_ZERO">
	    &nbsp;
	    <TMPL_ELSE>
	        <a href="javascript:show_post_popup('BATCHMANAGE/GET_ONLINE_FILES','BatchDownload',600,400,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>','','<input type=\'hidden\' name=\'job_id\' value=\'<TMPL_VAR NAME=RESULT_JOB_ID>\'>');"><img src="<TMPL_VAR NAME='IMGPATH'>/report_manager_details.gif" border="0" title="Click to download file" alt="Click to download file"></a>
	    </TMPL_IF>
	 </TMPL_IF>
	 <TMPL_IF NAME="BATCH_ADMIN">
	 <sub><br>[ Files: <TMPL_VAR NAME=RESULT_FILE_COUNT> ]</sub>
	 </TMPL_IF>
	  
	  </td>
	  <td headers="col_job_id">&nbsp;<TMPL_IF NAME="RESULT_JOB_ID"><TMPL_VAR NAME="RESULT_JOB_ID"><TMPL_ELSE>N/A&nbsp;</TMPL_IF></td>
	  <td headers="col_job_nam">&nbsp;<TMPL_IF NAME="RESULT_JOB_NAME"><TMPL_VAR NAME="RESULT_JOB_NAME"><TMPL_ELSE>N/A&nbsp;</TMPL_IF></td>
	  <td headers="col_prd_typ">&nbsp;<TMPL_IF NAME="RESULT_PRODUCT_TYPE"><TMPL_VAR NAME="RESULT_PRODUCT_TYPE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	  <td headers="col_dt_sbt">&nbsp;<TMPL_IF NAME="RESULT_DATE_CREATED"><TMPL_VAR NAME="RESULT_DATE_CREATED"><TMPL_ELSE>&nbsp;</TMPL_IF></td>

	  <TMPL_IF NAME="RESULT_JOB_STATUS">
	  <td headers="col_sts" style="color:<TMPL_VAR NAME="RESULT_JOB_STATUS_COLOR">"><strong>&nbsp;<TMPL_VAR NAME="RESULT_JOB_STATUS"></strong></td>
	  <TMPL_ELSE>
	  <td>&nbsp;</td>
	  </TMPL_IF>

	  
	</tr>
      </TMPL_LOOP>
    <TMPL_ELSE>
	<tr>
	  <td id="non_sortable_no_reports" style="padding-top:0" align="center" colspan="8" height="50">
          <div class="warningmessage">
            <strong>There are no saved reports in the last <TMPL_VAR NAME="RESULT_LIST_DAYS"> days.</strong>
          </div>
	  </td>
	</tr>
    </TMPL_IF>
</table>
</div>
<!-- end myaccount/report/myaccount_order_info_batch.tpl -->
