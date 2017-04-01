<!DOCTYPE html>
<!-- BEGIN rtphones/append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCH/SAVE_APPEND_FIELDS">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">


<TMPL_INCLUDE NAME="append_fields_body.tpl">
<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:send_event('BATCH/SERVICES')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:send_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/SAVE_APPEND_FIELDS')">
            Next
        </a>
    </div>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('Please select option before proceeding.\n\n');</script>
    <noscript>Your browser does not support JavaScript!</noscript>
</TMPL_IF>

<input type=hidden name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END rtphones/append_fields.tpl -->
