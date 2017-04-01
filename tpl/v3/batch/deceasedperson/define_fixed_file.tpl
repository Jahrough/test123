<!DOCTYPE html>
<!-- BEGIN define_fixed_file.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="DECEASEDPERSONBATCH/SAVE_DEFINE_FILE">

<TMPL_IF ROWS>
  <TMPL_LOOP ROWS>
    <INPUT TYPE=HIDDEN NAME="ROW_<TMPL_VAR ROW>" VALUE="<TMPL_VAR NAME=LINE ESCAPE=HTML>">
  </TMPL_LOOP>
</TMPL_IF>

<div class="fieldset-title">TITLE</div>
<fieldset class="batchFieldset">
    <table style="width:100%;">
        <TMPL_UNLESS SHOW_BATCH_UPDATE>
            <TMPL_INCLUDE NAME="define_fixed_file_body.tpl">
        <TMPL_ELSE>
            <TMPL_INCLUDE NAME="define_fixed_file_body_update.tpl">
        </TMPL_UNLESS>
    </table>
</fieldset>
<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:send_event('<TMPL_UNLESS SHOW_BATCH_UPDATE>BATCH<TMPL_ELSE>DECEASEDPERSONBATCH</TMPL_UNLESS>/FILE_SELECT')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:send_event('DECEASEDPERSONBATCH/SAVE_DEFINE_FILE')" onClick="<TMPL_IF SHOW_BATCH_UPDATE>set_fixed_width_field_length();</TMPL_IF>if(!validate_selects() || !check_length()){return false;}">
            Next
        </a>
    </div>
</div>
  
  
<TMPL_UNLESS SHOW_BATCH_UPDATE>
<script language="JavaScript">
build_example();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>
</TMPL_UNLESS>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END define_fixed_file.tpl -->
