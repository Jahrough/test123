<!DOCTYPE html>
<!-- BEGIN glb.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<TMPL_INCLUDE NAME="../shared/glb_body.tpl">
<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:send_event('<tmpl_var name=BATCH_CONTROLLER>/DEFINE_FILE')">
            Back
        </a>
    </div>
</div>

<TMPL_IF NAME="ERROR_MESG">
  <script>alert('<TMPL_VAR NAME="ERROR_MESG">');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END glb.tpl -->
