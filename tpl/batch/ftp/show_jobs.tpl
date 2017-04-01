<!-- BEGIN show_jobs.tpl -->
<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/myaccount.js"></script>

<script>
function refresh_page() {
	    send_event('BATCHFTP/SHOW_JOBS', '<TMPL_VAR NAME=ACTION_BATCH>');
}
</script>

<TMPL_INCLUDE NAME="batch_head.tpl">
<center>
<INPUT type=hidden NAME="EVENT">
<INPUT TYPE="HIDDEN" NAME="NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PAGE_COUNT" VALUE="<TMPL_VAR NAME=PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="PAGE_TOTAL" VALUE="<TMPL_VAR NAME=PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="PAGE_RECORDS" VALUE="<TMPL_VAR NAME=PAGE_RECORDS>">

<table border="0" cellpadding="0" cellspacing="0" width="580">
	<tr>
  		<td nowrap align="center" valign="middle" class="myaccountborder">
  			<table width="556" cellpadding="0" cellspacing="0" border="0">
    			<tr height="12">
					<td height="12" width="556" class="unifont1">&nbsp;</td>
    			</tr>
			</table>
			<table width="560" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
    			<tr>
					<td align="center">
						<table border="0" cellpadding="2" cellspacing="0">
        					<tr>
          						<td height="40" class="unifont1"><a href="javascript:void(0);" onClick="displayDatePicker('ACTIVITY_DATE_FROM','below');"><b>From:</b></a>&nbsp;</td>
          						<td height="40"><input  onClick="displayDatePicker('ACTIVITY_DATE_FROM','below');" type=text name=ACTIVITY_DATE_FROM value="<TMPL_VAR NAME=ACTIVITY_DATE_FROM>" size="8"
maxlength=10></td>
          						<td height="40" class="unifont1">&nbsp;&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('ACTIVITY_DATE_TO','below');"><b>To</a>:</b>&nbsp;</td>
          						<td height="40"><input onClick="displayDatePicker('ACTIVITY_DATE_TO','below');" type=text name=ACTIVITY_DATE_TO value="<TMPL_VAR NAME=ACTIVITY_DATE_TO>" size="8" maxlength=10></td>
          						<td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <TMPL_IF NAME="PAGE_RECORDS">
          						<td height="40" class="unifont1"><b>Records</b>: <TMPL_VAR NAME=PAGE_RECORDS_FROM> <b>to</b> <TMPL_VAR NAME=PAGE_RECORDS_TO> <b>of</b>&nbsp;<TMPL_VAR NAME=PAGE_RECORDS></td>
      <TMPL_ELSE>
          						<td height="40" class="unifont1"><b>Records</b>: <TMPL_VAR NAME=PAGE_RECORDS></td>
      </TMPL_IF>
          						<td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
          						<td height="40"><TMPL_IF NAME=PREV_ON><a href="javascript:send_event('BATCHFTP/SHOW_JOBS_PREV', '<TMPL_VAR NAME=ACTION_BATCH>')"><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page_off.gif"></TMPL_IF></td>
          						<td height="40"><a href="javascript:refresh_page();" onClick=" if(!checkdate()) {return false;}"><img width="65" height="24" border="0" name="refreshadmin" src="<TMPL_VAR NAME=IMGPATH>/refresh.gif"></a></td>
          						<td height="40"><TMPL_IF NAME=NEXT_ON><a href="javascript:send_event('BATCHFTP/SHOW_JOBS_NEXT', '<TMPL_VAR NAME=ACTION_BATCH>')"><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page_off.gif"></TMPL_IF></td>
                                                                                                                       
        					</tr>
      					</table>
      				</td>
    			</tr>

				<tr>
      				<td align="center">
      					<table border="0" cellpadding="0" cellspacing="0" width="100%">
      <TMPL_IF NAME="DATE_ERROR">
        					<tr>
        						<td colspan="2" align="center"><span class="unifont2"><font color="blue"><b><TMPL_VAR NAME=DATE_ERROR></b>&nbsp;&nbsp;</font></span></td>
        					</tr>
      </TMPL_IF>
      					</table>
      				</td>
    			</tr>
			</table>
		</td>
	</tr>
		

	<tr height="12" class="myaccountborder">
		<td height="12" class="unifont1">&nbsp;</td>
	</tr>
	<tr>
		<td align="center" >
	<TMPL_IF JOBS_LOOP>
			<table border="1" cellpadding="0" cellspacing="1" width="100%" bgcolor="#d0ccd0">
				<tr height="20">
					<td class="unifont1"><b>Job ID</b></td>
					<td class="unifont1"><b>Job Name</b></td>
					<td class="unifont1"><b>Job Type</b></td>
					<td class="unifont1"><b>Date Created</b></td>
				</tr>
		<TMPL_LOOP JOBS_LOOP>
				<tr bgcolor="#ffffff">
					<td class="unifont1"><a href="javascript:set_ftp_jobid('<TMPL_IF EDIT_FTP><TMPL_VAR FTP_USERID><TMPL_ELSE><TMPL_IF EDIT_XML><TMPL_VAR FTP_USERID><TMPL_ELSE><TMPL_VAR JOBID></TMPL_IF></TMPL_IF>');window.close();"><TMPL_IF EDIT_FTP><TMPL_VAR FTP_USERID><TMPL_ELSE><TMPL_IF EDIT_XML><TMPL_VAR FTP_USERID><TMPL_ELSE><TMPL_VAR JOBID></TMPL_IF></TMPL_IF></a></td>
					<td class="unifont1"><TMPL_VAR JOB_NAME></td>
					<td class="unifont1"><TMPL_VAR JOB_TYPE></td>
					<td class="unifont1"><TMPL_VAR DATECREATED></td>
				</tr>
		</TMPL_LOOP>
			</table>
			<table border="0" cellpadding="0" cellspacing="0" width="580">
  				<tr>
   					<td width="12" align="left" valign="top"><img height="12" width="12" src="<TMPL_VAR NAME=IMGPATH>/rndcorner3.gif"></td>
   					<td width="556" class="myaccountborder"><img height="1" width="556" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
   					<td width="12" align="left" valign="top"><img height="12" width="12" src="<TMPL_VAR NAME=IMGPATH>/rndcorner4.gif"></td>
  				</tr>
			</table>
	</TMPL_IF>	
		</td>
	</tr>
</table>
	</center>
<TMPL_INCLUDE NAME="../batch_footer.tpl">
<!-- END show_jobs.tpl -->
