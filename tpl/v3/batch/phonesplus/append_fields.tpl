<!DOCTYPE html>
<!-- BEGIN v3/batch/phonesplus/append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<input type="hidden" name="EVENT" value="<TMPL_VAR NAME=BATCH_CONTROLLER>/SAVE_APPEND_FIELDS">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">
<input type="hidden" name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_INCLUDE NAME="../shared/append_fields_body.tpl">

<TMPL_IF ERROR_MESG>
    <script>processAlerts('Please select option before proceeding.\n\n');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END v3/batch/phonesplus/append_fields.tpl -->
