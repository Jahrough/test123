<!-- BEGIN select_output_format.tpl -->

<TMPL_INCLUDE NAME="batch_head.tpl">
<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCH/SAVE_OUTPUT_TYPE">

<div class="fieldset-title">Choose Output Format</div>
<fieldset class="batchFieldset">
    <table style="width:100%;">
		<TMPL_INCLUDE NAME="select_output_format_body.tpl">
    </table>
</fieldset>

<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('BATCH/DEFINE_FILE')">
            Back
        </a>
		<a class="btn red-btn" href="javascript:send_please_wait_event('BATCH/SAVE_OUTPUT_TYPE')" onClick="if(!validate_selects()){return false;}">
			Next
		</a>
    </div>
</div>


<script language="JavaScript">
guess_fields();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END select_output_format.tpl -->
