<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/<TMPL_IF SHOULD_BATCH_DMF>DMF<TMPL_ELSE>DPPA</TMPL_IF>')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:send_please_wait_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/CONFIRM')">
            Authorize Order
        </a>
    </div>
</div>