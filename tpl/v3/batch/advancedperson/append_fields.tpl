<!DOCTYPE html>
<!-- BEGIN batch/advancedperson/append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<INPUT type="hidden" name="EVENT" value="<TMPL_VAR NAME=BATCH_CONTROLLER>/SAVE_APPEND_FIELDS">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">
<input type="hidden" name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_INCLUDE NAME="../shared/append_fields_body.tpl">


<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END batch/advancedperson/append_fields.tpl -->
   
