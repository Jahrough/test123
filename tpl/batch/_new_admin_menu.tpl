<script type="text/javascript">
<!--
var theForm = document.forms['BATCH'];
if (!theForm) {
    theForm = document.BATCH;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.EVENT.value = eventTarget;
        theForm.EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
// -->
</script>
 
<table border="0" cellpadding="5" cellspacing="0" width="300">
<tr>
    <td align="center" valign="top">

<fieldset>
	<span class="unifont1bold"><legend>Admin options</legend></span>
                                                                                                                                        
    <table border="0" cellpadding="0" cellspacing="0" width="300">
		<tr><td class="unifont2">
		<div id="logoBatchSelect">
		<select name="BatchNavigation" onchange="if (this.form.BatchNavigation.options[this.form.BatchNavigation.selectedIndex].value == '') return false;__doPostBack(this.form.BatchNavigation.options[this.form.BatchNavigation.selectedIndex].value,'')" id="BatchNavigation">
		<option value="">-- Choose One --</option>
		<option value="BATCH/BUS_START_BATCH">ONLINE: Business</option>
		<option value="BATCH/BUS_DUEX_START_BATCH">ONLINE: Business Collections</option>
		<option value="CUSTOMBATCH/START">ONLINE: Custom</option>
		<option value="FTPBATCH/START">ONLINE: FTP</option>
		<option value="INSTANTID2BATCH/START">ONLINE: InstantID</option>
		<option value="AHABATCH/START">ONLINE: Accurint Hosted Analytic Solutions</option>
		<option value="OFACBATCH/START_BATCH">ONLINE: USA PATRIOT Act</option>
		<option value="BATCH/START_BATCH">ONLINE: People</option>
		<option value="PHONEBATCH/START_BATCH">ONLINE: Phones</option>
		<option value="PHONESPLUSBATCH/START_BATCH">ONLINE: Phones Plus</option>
		<option value="SURECONTACTBATCH/START_BATCH">ONLINE: SureContact</option>
		<option value="SUREPLACEMENTBATCH/START_BATCH">ONLINE: SurePlacement</option>
		<option value="RECOVERSCOREBATCH/START_BATCH">ONLINE: Recover Score</option>
		<option value="">----------------------------</option>
		<option value="IRAWBATCH/SERVICES">MANAGE: Services</option>
		<option value="MYACCOUNT/SHOW_ORDER_MGR_BATCH">MANAGE: Batch Output</option>
		<option value="BATCHMANAGE/SHOW_ACTIVE_FTPJOBS">MANAGE: Job Status/Job Suspend</option>
		<option value="">----------------------------</option>
		<option value="WATCHDOG/START">WATCH: Watch Dog</option>
		</select></div></td></tr>

        <tr><td class="unifont2">&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="BATCH_TYPE" value="<TMPL_VAR BATCH_TYPE>"<TMPL_UNLESS FTP_CHECKED> CHECKED</TMPL_UNLESS>><b>Online Batch Job</b></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td class="unifont2">&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="BATCH_TYPE" value="FTP"<TMPL_IF FTP_CHECKED> CHECKED</TMPL_IF>><b>FTP Batch Job</b></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td class="unifont2">&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="BATCH_TYPE" value="EDIT_FTP"<TMPL_IF EDIT_FTP_CHECKED>
CHECKED</TMPL_IF>><b>Edit Existing FTP Batch Job</b></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td class="unifont2">&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="BATCH_TYPE" value="EDIT_XML"<TMPL_IF EDIT_XML_CHECKED>
CHECKED</TMPL_IF>><b>Edit XML</b></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td class="unifont2">&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="BATCH_TYPE" value="FTP_TEST"<TMPL_IF FTP_TEST_CHECKED>
CHECKED</TMPL_IF>><b>Create FTP Job for User Testing</b></td></tr>
        <tr><td class="unifont2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:show_post_popup('BATCHMANAGE/SHOW_ACTIVE_FTPJOBS','Jobs',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');"><b>Check Job Status / Suspend Jobs</b></a></td></tr>
        <tr><td class="unifont2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:show_post_popup('BATCH/BUS_DUEX_START_BATCH','BatchBusCollector',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');"><b>Business Collectors Batching</b></a></td></tr>
        <tr><td class="unifont2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:show_post_popup('RECOVERSCOREBATCH/START_BATCH','BatchRecoverScore',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');"><b>RecoverScore Batch</b></a></td></tr>
                                                                                                                                        
    </table>
</fieldset>
                                                                                                                                        
    </td>
</tr>
</table>
