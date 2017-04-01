<!DOCTYPE html>
<!-- BEGIN batch/advancedperson/glb.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<TMPL_INCLUDE NAME="../shared/glb_body.tpl">

<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/<TMPL_UNLESS SHOW_BATCH_UPDATE>APPEND_FIELDS<TMPL_ELSE>DEFINE_FILE</TMPL_UNLESS>')">
            Back
        </a>
    </div>
</div>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">

<!-- BEGIN batch/advancedperson/glb.tpl -->
