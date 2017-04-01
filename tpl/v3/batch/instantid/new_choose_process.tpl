<!DOCTYPE html>
<!-- BEGIN new_choose_process.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<input type="hidden" name="EVENT" value="<TMPL_VAR NEXT_EVENT>">

<div class="fieldset-title">Choose InstantID Process</div>
<fieldset class="batchFieldset" style="padding-top: 0;">
    
    <TMPL_INCLUDE NAME="new_choose_process_body.tpl">
        
</fieldset>
<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:send_event('BATCH/SERVICES')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:send_event('<TMPL_VAR NEXT_EVENT>')" onClick="if(!validate()){return false;}">
            Next
        </a>
    </div>
</div>


<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END new_choose_process.tpl -->
