<!-- BEGIN show_jobs.tpl -->
<TMPL_INCLUDE NAME="header.tpl">
<script>
function set_jobid(jobid,job_name) {
    if(opener && opener.document.forms[0].WATCHDOG_JOBID) {
        opener.document.forms[0].WATCHDOG_JOBID.value=jobid;
    }
    if(opener && opener.document.forms[0].ORDER_NAME) {
        opener.document.forms[0].ORDER_NAME.value=job_name;
    }
}
</script>
	<center>
		<table cellpadding="5" cellspacing="5">
		<TMPL_IF SEND_IDS>
		    <tr>
			<td colspan="3" class="unifont1"><b>Select the Order to Send.</b></td>
		    </tr>

		</TMPL_IF>
		<tr>
			<td class="unifont1"><b>Order Name</b></td>
			<td class="unifont1"><b>Watchdog ID</b></td>
			<td class="unifont1"><b>Date Created</b></td>
		</tr>
	<TMPL_IF JOBS_LOOP>
	<TMPL_LOOP JOBS_LOOP>
		<tr>
			<td class="unifont1"><a href="javascript:set_jobid('<TMPL_VAR watchlist_id>',document.forms[0].ITEM_<TMPL_VAR watchlist_id>.value);window.close();"><TMPL_VAR watchlist_name></a></td>
			<INPUT TYPE="HIDDEN" NAME="ITEM_<TMPL_VAR watchlist_id>" VALUE="<TMPL_VAR watchlist_name>">
			<td class="unifont1"><TMPL_VAR watchlist_id></td>
			<td class="unifont1"><TMPL_VAR dateadded></td>
		</tr>
	</TMPL_LOOP>
	<TMPL_ELSE>
		<tr>
			<td class="unifont1" colspan="3" align="center"><b><a href="javascript:window.close()">No Watch Items Found</a></b></td>
		</tr>
	</TMPL_IF>	
		</table>
	</center>
<TMPL_INCLUDE NAME="footer.tpl">
<!-- END show_jobs.tpl -->
