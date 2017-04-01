<!DOCTYPE html>
<!-- BEGIN rtphones/define_fixed_file.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

    <INPUT TYPE=HIDDEN NAME=EVENT VALUE="<TMPL_VAR NAME=BATCH_CONTROLLER>/SAVE_DEFINE_FILE">

    <TMPL_IF ROWS>
        <TMPL_LOOP ROWS>
            <INPUT TYPE=HIDDEN NAME="ROW_<TMPL_VAR ROW>" VALUE="<TMPL_VAR NAME=LINE ESCAPE=HTML>">
        </TMPL_LOOP>
    </TMPL_IF>

    <div class="fieldset-title">Define Field Labels</div>
    <fieldset class="batchFieldset">
        <table style="width:100%;">
            <TMPL_INCLUDE NAME="define_fixed_file_body.tpl">
        </table>
    </fieldset>
    <div class="section-row child-divs-right">
        <div>
            <a class="btn darkgrey-btn" href="javascript:send_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/FILE_SELECT')">
                Back
            </a>
            <a class="btn red-btn" href="javascript:send_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/SAVE_DEFINE_FILE')" onClick="set_fixed_width_field_length();if(!validate_selects() || !check_length()){return false;}">
                Next
            </a>
        </div>
    </div>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END rtphones/define_fixed_file.tpl -->
