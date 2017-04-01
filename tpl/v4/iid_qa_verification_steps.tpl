<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/portal_otp.css">
<div class="row">
    <h3 class="validation-steps-title">Verification Status</h3>
</div>
<div class="row">
    <div class="validation-steps-list">
        <label class="validation-step">
            <button title="Request Q&amp;A" tabindex="-1" type="button" id="request_btn" class="otp-current otp" onclick="javascript:web20_clear_all();pm_tab_v3('SEARCH2/SHOW_ID_VERIFY');">1</button>
            <span id="request_text" class="otp-current-text">Request Q&amp;A</span>
        </label>
        <label class="validation-step">
            <button title="Question(s)" tabindex="-1" type="button" id="verify_btn" class="otp-not-visited otp">2</button>
            <span id="verify_text" class="otp-not-visited-text">Question(s)</span>
        </label>
        <label class="validation-step">
            <button title="Pass / Fail" tabindex="-1" type="button" id="results_btn" class="otp-not-visited otp">3</button>
            <img id="verify_failed" class="hidden svg_otp_circle validation-fail" src="<TMPL_VAR NAME="IMGPATH">/PNGs/failuremark-circle-30x30.png">
            <img id="verify_passed" class="hidden svg_otp_circle" src="<TMPL_VAR NAME="IMGPATH">/PNGs/greencheckmark-circle-30x30.png">
            <span id="results_text" class="otp-not-visited-text">Pass / Fail</span>
        </label>
    </div>
</div>
<br />
