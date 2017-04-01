<!DOCTYPE html>
<!-- BEGIN define_file.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="PHONESPLUSBATCH/SAVE_DEFINE_FILE">

<div class="fieldset-title">Define Field Labels</div>
<fieldset class="batchFieldset">
<table border="0" width="600">
    <TMPL_UNLESS SHOW_BATCH_UPDATE>
        <TMPL_INCLUDE NAME="define_file_body.tpl">	
    <TMPL_ELSE>
        <TMPL_INCLUDE NAME="define_file_body_update.tpl">	
    </TMPL_UNLESS>
</table>
</fieldset>
<div class="section-row child-divs-right">
    <div>
        <TMPL_IF EXCEED_FREE_TRIAL>
            <a class="btn darkgrey-btn" href="javascript:show_batch_event('PHONESPLUSBATCH/FILE_SELECT')">
                Back
            </a>
        <TMPL_ELSE>
            <a class="btn darkgrey-btn" href="javascript:show_batch_event('PHONESPLUSBATCH/FILE_SELECT')">
                Back
            </a>
            <a class="btn red-btn" href="javascript:show_batch_event('PHONESPLUSBATCH/SAVE_DEFINE_FILE')" onClick="if(!validate_selects()){return false;}">
                Next
            </a>
        </TMPL_IF>
    </div>
</div>

<script language="JavaScript">
guess_fields();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END define_file.tpl -->
