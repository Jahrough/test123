<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/portal_otp.css">

<div id="request_otp_step">
    <div class="row more-inputs">
      <div class="col col-6">
        <select id="PREFERRED_DELIVERY" name="PREFERRED_DELIVERY" class="form-control">
<!--
            <span class="tooltip">Contact Format</span>
-->
                <option value="9" selected="selected">Select Verification by:</option>
                <option value="T">SMS / Text Message</option>
                <option value="H">Voice / Phone Call</option>
                <option value="E">Email</option>
        </select>
      </div>
    </div>

    <div id="vspace10" class="vertical-space" style="visibility: hidden; height: 72px;">
    <!-- Extra space here keeps the input field visible during PREFERRED_DELIVERY dropdown display. -->
    </div>

    <div class="row more-inputs" style="height: 40px;">
        <div id="home_phone_input" class="col col-6 hidden">
            <label>
                <input id="HOME_PHONE" name="HOME_PHONE" class="form-control" placeholder="Enter Phone Number" type="text">
                <span class="tooltip">Phone</span>
            </label>
        </div>

        <div id="mobile_phone_input" class="col col-6 hidden">
            <label>
                <input id="MOBILE_PHONE" name="MOBILE_PHONE" class="form-control" placeholder="Enter SMS Phone Number" type="text">
                <span class="tooltip">SMS Phone Number</span>
            </label>
        </div>

        <div id="otp_email_input" class="col col-6 hidden">
            <label>
                <input id="OTP_EMAIL" name="OTP_EMAIL" class="form-control" placeholder="Enter Email Address" type="text">
                <span class="tooltip">Email</span>
            </label>
        </div>

        <div class="col col-3">
        <button class="btn btn-danger" id="contact_continue" onclick="if(!web20_validate('<TMPL_VAR NAME="SEARCH_NAME">')){return false;}else{javascript:request_web20_otp();}" type="button">Continue</button>
        </div>
    </div>
</div>
<!-- ==================================================== -->
<div id="data_channel_search_terms" class="hidden">
    <div class="row">
        <span id="channel_label">SMS Phone Number</span>: <strong><span id="otp_contact_info_10"> </span></strong>
    </div>
</div>
<!-- _________________________________ -->
<div id="verify_otp_step" class="hidden">
    <div class="row text12red hidden" id="otp_failed_msg" >
        <img  class="img svg_otp_results_msg" src="<TMPL_VAR NAME=IMGPATH>/PNGs/fail.png"><span> Verification Failed! Invalid Password. Please try again.</span>
    </div>

    <div id="vspace20" class="vertical-space" style="visibility: hidden; height: 42px;">
    <!-- When we unhide fail msg, we'll make room by reducing this vertical space via css. -->
    </div>

    <div class="row more-inputs">
        <div class="col col-5">
            <label>
                <input id="OTP_FROM_LN" name="OTP_FROM_LN" class="form-control" placeholder=" " type="text">
                <span class="tooltip">One Time Password</span>
            </label>
        </div>
        <button class="btn btn-danger" id="verify_otp_btn" onclick="if(!web20_validate('<TMPL_VAR NAME="SEARCH_NAME">')){return false;}else{javascript:verify_web20_otp();}" type="button">Verify</button>
        <button class="btn" id="resend_passwd" onmousedown="validator.resetForm();" onclick="javascript:request_web20_otp();" type="button">Resend Password</button>
    </div>
</div>
<!-- ==================================================== -->
<div id="results_otp_step" class="hidden">
    <div class="row text12green">
        <img class="img svg_otp_results_msg" src="<TMPL_VAR NAME=IMGPATH>/PNGs/green_circle_3.png"><span> Verification Successful. Transaction has passed.</span>
    </div>

    <div id="vspace30" class="vertical-space" style="visibility: hidden; height: 28px;">
    </div>

    <div class="row">
        <span>Transaction ID:</span> <span class="tran_id" id="tran_id"> </span>

        <button class="btn btn-danger" onclick="javascript:results_web20_otp();" type="button">Request New Verification</button>
    </div>
</div>
<hr>
<div id="vspace40" class="vertical-space" style="visibility: hidden; height: 52px;">
<!--
    This vspace creates space beneath left panel so that vertical divider at right extends down further.
    The initial presentation of 'verify' panel has minimal content, so we'll expand vspace via css.
    Restore vertical space usage to original values in later panels via css.
-->
</div>
