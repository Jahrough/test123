<!-- BEGIN append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<INPUT TYPE=HIDDEN NAME=EVENT VALUE="ADVANCEDPERSONBATCH/SAVE_APPEND_FIELDS">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">
<input type=hidden name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_IF ERROR_MESG>
    <script>alert('Please select option before proceeding.\n\n');</script>
</TMPL_IF>





<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END append_fields.tpl -->
   
