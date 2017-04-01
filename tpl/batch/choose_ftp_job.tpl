<!-- BEGIN choose_ftp_job.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCH/SAVE_FTP_JOB_ID">
<div align="center">

<table border="0" width="600">

  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="100%" align="left">Batch Wizard <b><TMPL_VAR TITLE_PAGE></b></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="batchbanner" align="center"><br><b>Choose JobID to use for FTP Job</b></td>
  </tr>
  
  <TMPL_IF ERROR_MESG>
  <tr>
    <td class="batchalert" align="center"><br><b><TMPL_VAR ERROR_MESG></b></td>
  </tr>
  </TMPL_IF>

  <TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
  </TMPL_IF>
  
  <tr>
    <td align="center" class="unifont2"><br><b>Enter the Job ID for your batch job:</b>&nbsp;&nbsp;<input type=text name="FTP_JOBID" value="<TMPL_VAR FTP_JOBID>"></td>
  </tr>
  <tr>
    <td align="center" class="smallfont1"><br>Note: This Jobid will be used to define a new FTP job for this company.</td>

  </tr>
  
  <tr>
    <td align="center" class="smallfont1">
	<br><hr>
	<TMPL_IF JOBS_LOOP>
		<table cellpadding="5" cellspacing="5">
		<tr>
			<td>&nbsp;</td>
			<td class="unifont1"><b>Job ID</b></td>
			<td class="unifont1"><b>Job Name</b></td>
			<td class="unifont1"><b>Date Created</b></td>
		</tr>
	<TMPL_LOOP JOBS_LOOP>
		<tr>
			<td><input type="radio" value="<TMPL_VAR JOBID>" name="RAD_JOBID" onClick="document.forms[0].FTP_JOBID.value=this.value">&nbsp;</td>
			<td class="unifont1"><TMPL_VAR JOBID></td>
			<td class="unifont1"><TMPL_VAR JOB_NAME></td>
			<td class="unifont1"><TMPL_VAR DATECREATED></td>
		</tr>
	</TMPL_LOOP>
		</table>
	</TMPL_IF>	
	</td>
  </tr>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="20" border="0"></td>
  </tr>

  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('BATCH/START_BATCH')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCH/SAVE_FTP_JOB_ID')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>
<script>
document.BATCH.FTP_JOBID.focus();
</script>
<TMPL_INCLUDE NAME="batch_footer.tpl">

<!-- END choose_ftp_job.tpl -->
