<!DOCTYPE html>
<!-- BEGIN v3/batch/advancedperson/file_select.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<TMPL_INCLUDE NAME="../shared/file_select_update.tpl">

    
<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('<tmpl_var name=BATCH_CONTROLLER>/START_BATCH')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:send_please_wait_event('<tmpl_var name=BATCH_CONTROLLER>/SAVE_FILE')" onClick="if(!validate()){return false;}">
            Next
        </a>
    </div>
</div>

<script>
document.BATCH.BATCH_FILE.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END v3/batch/advancedperson/file_select.tpl -->
