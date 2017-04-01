<!-- BEGIN new_file_select.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<input type="hidden" name="EVENT" value="<TMPL_VAR NEXT_EVENT>">

<TMPL_INCLUDE NAME="shared/file_select_update.tpl">


<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('INSTANTIDBATCH/CHOOSE_PROCESS')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:send_please_wait_event('<TMPL_VAR NEXT_EVENT>')" onClick="if(!validate()){return false;}">
            Next
        </a>
    </div>
</div>

<script>
document.BATCH.BATCH_FILE.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END new_file_select.tpl -->
