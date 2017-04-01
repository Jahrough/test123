<!-- begin myaccount_activity.tpl -->

<script>
function refresh_page() {
    with (document.forms[0]) {
	DIRECTION.value = "refresh";	   
    }
    send_event('<TMPL_VAR NAME=EVENT>', '<TMPL_VAR NAME=ACTION_BATCH>');
}

function search_page() {
    send_event('BATCHMANAGE/SEARCH_FTPJOBS', '<TMPL_VAR NAME=ACTION_BATCH>');
}

function prev_page() {
    with (document.forms[0]) {
	DIRECTION.value = "prev";	   
    }
    send_event('<TMPL_VAR NAME=EVENT>', '<TMPL_VAR NAME=ACTION_BATCH>');
}

function next_page(event, action) {
    with (document.forms[0]) {
	DIRECTION.value = "next";	   
    }
    send_event(event, action);
}
                                                                                                                            
function resetsearch() {
    with (document.forms[0]) {
	BATCHMANAGE_SEARCHFOR_JOBNAME.value = "";	   
	BATCHMANAGE_SEARCHFOR_COMPANYID.value = "";
	BATCHMANAGE_SEARCHFOR_FTPUSERID.value = "";
	BATCHMANAGE_SEARCHFOR_COMPANYNAME.value = "";
    } 
}

function confirm_submit(ftpuserid, jobname, is_running) {
    
 //   var suspended = "0";
    var todo = '';
    
    if (is_running == 1) { todo = "suspend"; }
    else { todo = "resume";}

    if (confirm('You\'re about to '+ todo +' the Job Name (' + jobname + ') with FTP User ID (' + ftpuserid + '). \nAre you sure you wish to continue?')) {
	with (document.forms[0]) {
	    BATCHMANAGE_FTPJOB_FTPUSERID.value = ftpuserid;	   
	    BATCHMANAGE_FTPJOB_ACTION.value = todo;	   
	    DIRECTION.value = 'refresh';
	}
	send_event('BATCHMANAGE/CHANGE_FTPJOB_SUSPEND', '<TMPL_VAR NAME=ACTION_BATCH>');
    }
    else {
	return false;
    }
}

</script>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
  <td nowrap align="center" valign="middle" class="myaccountborder"> 
  <table width="98%" cellpadding="0" cellspacing="0" border="0">
    <tr height="12">
      <td height="12" width="98%" class="unifont1">&nbsp;</td>
    </tr>
  </table>
  <table width="98%" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
    <tr>
      <td width="100%" align="center">
      <table border="0" cellpadding="2" cellspacing="0">
        <tr>
          <td height="40" width="25%" nowrap class="unifont1">
<TMPL_IF NAME="BATCHMANAGE_SEARCH_FTPJOBS">
	<input type="checkbox" name="ENABLE_WILDCARD" value="1" <TMPL_VAR NAME="ENABLE_WILDCARD_CHECKED">>Enable wildcard?</input>
</TMPL_IF>
	  </td>
          <td height="40" width="40%" class="unifont1" align="right"><b>Records:</b> <TMPL_VAR NAME=RECORD_START> <b>to</b> <TMPL_VAR NAME=RECORD_END>, <b>Total:</b>&nbsp;<TMPL_VAR NAME=PAGE_RECORDS>&nbsp;&nbsp;</td>
          <td height="40" width="35%" align="center" nowrap><TMPL_IF NAME=PREV_ON><a href="javascript:prev_page('<TMPL_VAR NAME=EVENT>', '<TMPL_VAR NAME=ACTION_BATCH>')"><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page_off.gif"></TMPL_IF>
          <a href="javascript:refresh_page();"><img width="65" height="24" border="0" name="refreshadmin" src="<TMPL_VAR NAME=IMGPATH>/refresh.gif"></a>
          <TMPL_IF NAME=NEXT_ON><a href="javascript:next_page('<TMPL_VAR NAME=EVENT>', '<TMPL_VAR NAME=ACTION_BATCH>')"><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page_off.gif"></TMPL_IF></td>
	  
        </tr>
<TMPL_IF NAME="BATCHMANAGE_SEARCH_FTPJOBS">
	<tr valign="center">
          <td height="40" width="65%" colspan="2" class="unifont1">
	  <table><tr><td>
	    <td height="40" class="smallfont1"><b>Job Name:</b>&nbsp;&nbsp;<br><input type=text name=BATCHMANAGE_SEARCHFOR_JOBNAME value="<TMPL_VAR NAME=BATCHMANAGE_SEARCHFOR_JOBNAME>" size="20" maxlength=20></td>
	    <td height="40" class="smallfont1"><b>Company ID:</b>&nbsp;&nbsp;<br><input type=text name=BATCHMANAGE_SEARCHFOR_COMPANYID value="<TMPL_VAR NAME=BATCHMANAGE_SEARCHFOR_COMPANYID>" size="10" maxlength=20></td>
	    <td height="40" class="smallfont1"><b>FTP User ID:</b>&nbsp;&nbsp;<br><input type=text name=BATCHMANAGE_SEARCHFOR_FTPUSERID value="<TMPL_VAR NAME=BATCHMANAGE_SEARCHFOR_FTPUSERID>" size="10" maxlength=20></td>
	    <td height="40" class="smallfont1"><b>Company Name:</b>&nbsp;&nbsp;<br><input type=text name=BATCHMANAGE_SEARCHFOR_COMPANYNAME value="<TMPL_VAR NAME=BATCHMANAGE_SEARCHFOR_COMPANYNAME>" size="20" maxlength=20></td>
	  </td></tr></table>
	  </td>
	  <td height="40" width="35%" align="center"><a href="javascript:search_page();"><img width="65" height="24" border="0" name="refreshadmin" src="<TMPL_VAR NAME=IMGPATH>/search_button.gif"></a>
	  <a href="javascript:resetsearch();"><img width="65" height="24" border="0" name="refreshadmin" src="<TMPL_VAR NAME=IMGPATH>/clear_button.gif"></a></td>
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
  <td align="center" class="myaccountborder">
	<table border="1" cellpadding="0" cellspacing="1" width="98%" bgcolor="#d0ccd0">
	  <tr height="20">
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Company Name</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>FTP User ID</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Job Name</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Customer ID</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Job Type</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Vendor Code</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Suspended</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Job Status</b></td>
	  </tr>
	  <TMPL_LOOP NAME="SEARCH_RESULTS">
  	  <tr bgcolor="#ffffff">
	    <TMPL_IF NAME="company_name">
	      <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="company_name"></td>
	    <TMPL_ELSE>
	      <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	    </TMPL_IF>
	    <TMPL_IF NAME="ftp_user_id">
	      <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="ftp_user_id"></td>
	    <TMPL_ELSE>
	      <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	    </TMPL_IF>
	    <TMPL_IF NAME="job_name">
	      <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="job_name"></td>
	    <TMPL_ELSE>
	      <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	    </TMPL_IF>
	    <TMPL_IF NAME="customer_id">
	      <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="customer_id"></td>
	    <TMPL_ELSE>
	      <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	    </TMPL_IF>
	    <TMPL_IF NAME="job_type">
	      <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="job_type"></td>
	    <TMPL_ELSE>
	      <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	    </TMPL_IF>
	    <TMPL_IF NAME="vendor_code">
	      <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="vendor_code"></td>
	    <TMPL_ELSE>
	      <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	    </TMPL_IF>
	    <TMPL_IF NAME="suspended">
		<TMPL_IF NAME="is_running">
		    <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="suspended"> [<a href="javascript:send_event('BATCHMANAGE/CHANGE_FTPJOB_SUSPEND')" onclick="return confirm_submit('<TMPL_VAR NAME="ftp_user_id">','<TMPL_VAR NAME="job_name">','<TMPL_VAR NAME="is_running">')">suspend</a>]</font></td>
		<TMPL_ELSE>
		<td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="suspended"></td>
		</TMPL_IF>
	    <TMPL_ELSE>
	      <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	    </TMPL_IF>
	    <TMPL_IF NAME="job_status">
	      <td class="smallfont1" nowrap valign="top" style="color:<TMPL_VAR NAME="job_status_color">">&nbsp;<b><TMPL_VAR NAME="job_status"></b></td>
	    <TMPL_ELSE>
	      <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	    </TMPL_IF>
	</tr>
	</TMPL_LOOP>
    </table>
   </td>
  </tr>	
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="12" align="left" valign="top"><img height="12" width="12" src="<TMPL_VAR NAME=IMGPATH>/rndcorner3.gif"></td>
    <td width="98%" class="myaccountborder"><img height="1" width="98%" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
    <td width="12" align="left" valign="top"><img height="12" width="12" src="<TMPL_VAR NAME=IMGPATH>/rndcorner4.gif"></td>
  </tr>
</table>
<INPUT TYPE="HIDDEN" NAME="DIRECTION" VALUE="">
<INPUT TYPE="HIDDEN" NAME="PAGE_COUNT" VALUE="<TMPL_VAR NAME=PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="PAGE_TOTAL" VALUE="<TMPL_VAR NAME=PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="PAGE_RECORDS" VALUE="<TMPL_VAR NAME=PAGE_RECORDS>">
<INPUT TYPE="HIDDEN" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<INPUT TYPE="HIDDEN" NAME="BATCHMANAGE_FTPJOB_FTPUSERID" VALUE="">
<INPUT TYPE="HIDDEN" NAME="BATCHMANAGE_FTPJOB_ACTION" VALUE="">
<span class="smallfont1">&nbsp;<br></span>
<!-- end myaccount_activity.tpl -->
