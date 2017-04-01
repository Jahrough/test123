<tmpl_if name=BATCH_TITLE_PAGE><div class="batch-status-title"><tmpl_var name=BATCH_TITLE_PAGE>&nbsp;&nbsp;<TMPL_IF TITLE_PAGE><b class="step-text">&#8212;&nbsp;&nbsp;<TMPL_VAR TITLE_PAGE></b></TMPL_IF></div></tmpl_if>

<TMPL_IF FREE_TRIAL_CREDITS>
    <div class="section-row" style="padding:0 15px 15px 15px;">
        <div class="warningmessage">This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</div>
    </div>
</TMPL_IF>