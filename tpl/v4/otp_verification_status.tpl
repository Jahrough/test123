<div class="row">
    <h3 class="validation-steps-title">Verification Status</h3>
</div>
<div class="row">
    <div class="validation-steps-list">
        <label class="validation-step">
            <button tabindex="-1" type="button" id="request_btn" class="otp-current otp" onclick="javascript:results_web20_otp();">1</button>
            <span id="request_text" class="otp-current-text">Request Verification</span>
        </label>
        <label class="validation-step">
            <button tabindex="-1" type="button" id="verify_btn" class="otp-not-visited otp">2</button>
            <span id="verify_text" class="otp-not-visited-text">Verify</span>
        </label>
        <label class="validation-step">
            <button tabindex="-1" type="button" id="results_btn" class="otp-not-visited otp">3</button>
            <img id="verify_failed" class="hidden svg_otp_circle validation-fail" src="<TMPL_VAR NAME="IMGPATH">/PNGs/failuremark-circle-30x30.png">
            <img id="verify_passed" class="hidden svg_otp_circle" src="<TMPL_VAR NAME="IMGPATH">/PNGs/greencheckmark-circle-30x30.png">
            <span id="results_text" class="otp-not-visited-text">Pass / Fail</span>
        </label>
    </div>
</div>
<br />
