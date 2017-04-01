<!DOCTYPE html>
<!-- BEGIN v3/batch/people/edit_xml.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>

<div class="fieldset-title">Edit the XML Below</div>
<fieldset class="batchFieldset">
    <table style="width:100%;">
        <tr>
            <td class="unifont2" align="center"><br><textarea name="XML" rows="30" cols="80"><TMPL_VAR XML></textarea><br><br></td>
        </tr>
    </table>
</fieldset>
<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('BATCH/SHOW_SUMMARY')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:send_please_wait_event('BATCH/CONFIRM_ADMIN')">
            Authorize Order
        </a>
    </div>
</div>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END v3/batch/people/edit_xml.tpl -->
