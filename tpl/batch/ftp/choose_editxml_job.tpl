<!-- BEGIN choose_editxml_job.tpl -->
<TMPL_INCLUDE NAME="/batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCHFTP/SAVE_FTP_JOB_ID">
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
    <td class="batchbanner" align="center"><br><b>Edit XML</b></td>
  </tr>
  
  <TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
  </TMPL_IF>
  
  <tr>
    <td align="center" class="unifont2"><br><b>Company:</b>&nbsp;&nbsp;<TMPL_VAR COMPANY_NAME></td>
  </tr>
  
  <tr>
    <td align="center" class="unifont2"><br><b>Enter Job ID:</b>&nbsp;&nbsp;<input type=text name="FTP_JOBID" value="<TMPL_VAR FTP_JOBID>">&nbsp;&nbsp;<TMPL_INCLUDE NAME="ftp_job_url.tpl"></td>
  </tr>
  
  <tr>
    <td align="center" class="smallfont1">
	<br><hr>
	</td>
  </tr>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="20" border="0"></td>
  </tr>

  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('BATCH/START_BATCH')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCHFTP/SAVE_XML_JOB_ID')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>

<script>
document.BATCH.FTP_JOBID.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="../batch_footer.tpl">

<!-- END choose_editxml_job.tpl -->
