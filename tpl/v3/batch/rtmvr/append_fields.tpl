<!DOCTYPE html>
<!-- BEGIN batch/rtmvr/append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<INPUT TYPE=HIDDEN NAME=EVENT VALUE="RTMVRBATCH/SAVE_APPEND_FIELDS">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">
<input type=hidden name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_INCLUDE NAME="append_fields_body.tpl">


<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END batch/rtmvr/append_fields.tpl -->
   
