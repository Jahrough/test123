<div id="search-form-fields" class="col col-7">
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/portal_otp.css">
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/occcr.css">
    <div id="enter_passport_step">
        <span class="stepOneInstructions1 textRed">&nbsp;&nbsp;* Entry Required. For optimal results, other data fields should be
populated.</span>
        <div class="more-inputs">
            <div id="machine1" class="input col col-6 top-spacing-10">
                <label>
                    <input type="text" id="MACHINE_READONE" class="form-control" name="MACHINE_READONE" value="<TMPL_VAR NAME=MACHINE_READONE>" placeholder="Passport upper line (Format validation only)*" maxlength="44">
                    <span class="tooltip">Passport upper line (Format validation only)*<br /><span class="font-10">(P&lt;UTOERIKSSON&lt;&lt;ANNA&lt;MARIA&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;)</span></span>
                </label>
            </div>
            <div id="machine2" class="input col col-6 top-spacing-10">
                <label>
                    <input type="text" id="MACHINE_READTWO" class="form-control" name="MACHINE_READTWO" value="<TMPL_VAR NAME=MACHINE_READTWO>" placeholder="Passport lower line (Format validation only)*" maxlength="44">
                    <span class="tooltip">Passport lower line (Format validation only)*<br /><span class="font-10">(L898902C&lt;3UTO6908061F9406236ZE184226B&lt;&lt;&lt;&lt;&lt;14)</span> </span>
                </label>
            </div>
            <div class="clear col top-spacing-10">
                <div id="dob" class="col col-4 ">
                    <label>
                        <input type="text" class="form-control" id="DOB" name="DOB" value="<TMPL_VAR NAME=DOB>" placeholder="Date of Birth*" maxlength="10">
                        <span class="tooltip">Date of Birth* (MM/DD/YYYY)</span>
                    </label>
                </div>
                <div id="gender" class="input col col-5 " >
                    <label>
                        <span class="sr-only">Gender</span>
                        <select name="GENDER" id="PASSPORT_GENDER" class="form-control" data-value="<TMPL_VAR NAME=GENDER>">
                            <option selected="" value="" disabled="disabled">Select Gender*</option>
                            <option <TMPL_IF PASSPORT_GENDER_DROPDOWN_F>selected="selected"</TMPL_IF> value="F">Female</option> 
                            <option <TMPL_IF PASSPORT_GENDER_DROPDOWN_M>selected="selected"</TMPL_IF> value="M">Male</option> 
                            <option <TMPL_IF PASSPORT_GENDER_DROPDOWN_X>selected="selected"</TMPL_IF> value="<">Not Specified</option>
                        </select>
                    </label>
                </div>
            </div>
            <div id="vspace16" class="clear vertical-space" style="visibility: hidden; height: 16px;"/>
        </div>
        <div class="row align-right">
            <button class="btn btn-danger continue-btn right-spacing-32" id="searchBtn" onclick="javascript:if(web20_validate('<TMPL_VAR NAME="SEARCH_NAME">')){verify_web20_passport();}" type="button">Continue</button>&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        </div>
    </div>
    <!-- ==================================================== -->
    <div id="results_passport_step" class="hidden" style="padding-left:15px;">

        <div class="row align-right" id="passed_results_buttons">
            <button class="reverify-btn" onclick="javascript:results_web20_passport();" type="button">Edit Search</button> &nbsp;&nbsp;&nbsp;
            <button id="new_verify_button" class="reverify-btn" onclick="javascript:clear_web20_passport();" type="button">New Search</button>
        </div>


        <div class="row">
            <strong><span>Passport Validation: </span></strong><span id="passport_run_time"></span>
        </div><br/>
        <div class="row">
            <strong><span>Passport (upper line): </span></strong><span id="passport_machine_one"></span>
        </div>
        <div class="row">
            <strong><span>Passport (lower line): </span></strong><span id="passport_machine_two"></span>
        </div>
        <div class="row">
            <strong><span>DOB: </span></strong><span id="passport_dob"></span>
        </div>
        <div class="row">
            <strong><span>Gender: </span></strong><span id="passport_gender"></span>
        </div>
        <style>#search-options{float:right!important;}</style>
        <div id="results_passport_valid" class="row align-left">
            <img alt="VALID" class="img svg_otp_results_msg" src="<TMPL_VAR NAME="IMGPATH">/SVGs/greencheckmark-circle.svg">
            <span class="text12green"> Passport Number is VALID.</span>
        </div>
        <div id="results_passport_invalid" class="row align-left">
            <img alt="INVALID" class="img svg_otp_results_msg" src="<TMPL_VAR NAME="IMGPATH">/SVGs/failuremark-circle.svg">
            <span class="text12red"> Passport Number is INVALID.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button onclick="javascript:results_web20_passport();" type="button" class="reverify-btn right-spacing-32">Edit Validation Information</button>&nbsp;&nbsp;
        </div>
        <div id="vspace28" class="vertical-space" style="visibility: hidden; height: 20px;">
        </div>
        <div class="row align-right" id="failed_results_buttons">
            <button id="new_verify_button" class="btn btn-danger right-spacing-32" onclick="javascript:clear_web20_passport();" type="button">Request New Validation</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </div>
</div>

<!-- ==================================================== -->
<div class="col col-3" id="search-options" style="float:right;">
    <div class="row" style="margin:0;">
        <div class="input col col-10" style="padding:0;">
            <label>
                <input type="text" id="REFERENCE_CODE" class="form-control" name="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>" maxlength="32"  placeholder="Reference ID">
                <span class="tooltip">Reference ID </span> 
            </label>
        </div>
        <div id="REFERENCE_CODE_LABEL" class="col col-10 hidden">
            <span id="ref_code_label">Reference ID:</span> <em><span id="ref_code_text">None.</span></em>
        </div>
        <div id="REFERENCE_CODE_CRITERIA" class="col col-10">
            <span id="ref_code_criteria" class="textGray hidden">The Reference ID must contain only valid characters. </span>
        </div>
    </div>
    <hr>
    <div class="row">
        <h3 class="validation-steps-title">Validation</h3>
    </div>
    <div class="row">
        <div class="validation-steps-list">
            <label class="validation-step">
                <button type="button" id="request_btn" class="otp-current otp" onclick="javascript:results_web20_passport();">1</button>
                <span id="request_text" class="otp-current-text">Request Format Validation</span>
            </label>
            <label class="validation-step">
                <button type="button" id="results_btn" class="otp-not-visited otp">2</button>
                <img id="verify_failed" class="hidden svg_otp_circle validation-fail" src="<TMPL_VAR NAME="IMGPATH">/PNGs/failuremark-circle-30x30.png"> 
                <img id="verify_passed" class="hidden svg otp_circle" src="<TMPL_VAR NAME="IMGPATH">/PNGs/greencheckmark-circle-30x30.png">
                <span id="results_text" class="otp-not-visited-text">Valid / Invalid Format</span>
            </label>
        </div>
    </div>
</div>
           
