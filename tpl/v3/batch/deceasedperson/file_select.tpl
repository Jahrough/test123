<!DOCTYPE html>
<!-- BEGIN file_select.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<INPUT TYPE=HIDDEN NAME=EVENT VALUE="<tmpl_var name=BATCH_CONTROLLER>/SAVE_FILE">

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
<!-- END file_select.tpl -->
