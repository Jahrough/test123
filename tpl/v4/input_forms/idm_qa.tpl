<div id="search-form-fields" class="col col-7">
    <script>
        $(this).keypress(function (e) {
            var code = (e.keyCode ? e.keyCode : e.which);
            if (code == 13) { // Enter keycode
                if (!($('#request_otp_step').hasClass('hidden'))) {
                    if (!web20_validate('<TMPL_VAR NAME="SEARCH_NAME">')) {
                        return false;
                    } else {
                        show_loading(); 
                        request_iid_qa_quiz();
                    }
                } else if (!($('#verify_otp_step').hasClass('hidden'))) {
                    if (!id_validate()) {
                        return false;
                    } else {
                        show_loading(); 
                        verify_iid_qa_quiz();
                    }
                } else if (!($('#results_otp_step').hasClass('hidden'))) {
                    web20_clear_all();
                    pm_tab_v3('SEARCH2/SHOW_ID_VERIFY');
                }
            }
        });
    </script>
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/portal_otp.css">

    <div id="request_otp_step" class="col col-10">

        <span class="search-note">
            Entry Required Option 1: LexID&#174;<br/>
            Entry Required Option 2: SSN, Last Name, First Name<br/>
            Entry Required Option 3: Last Name, First Name, Street, City, State, Zip
        </span>
        <TMPL_IF NAME="SEARCH_ERROR_MESSAGE">
            <TMPL_INCLUDE NAME="search_error_container.tpl">
        </TMPL_IF>

        <TMPL_UNLESS HIDE_QUIZ_CONFIG>
        <div class="row">
            <div class="input col col-3">
                <INPUT TYPE=HIDDEN NAME="NET_VIEW_USER" VALUE="<TMPL_VAR NETVIEW_NAME>">
                <label>
                    <select id="QUIZ_CONFIG" name="QUIZ_CONFIG" class="form-control">
			    <option value="">Select Quiz Configuration</option>
                        <TMPL_LOOP QUIZ_PARAMS>
                            <option <TMPL_IF SELECTED>selected="selected"</TMPL_IF> value="<TMPL_VAR VALUE>"><TMPL_VAR DESCRIPT></option>
                        </TMPL_LOOP>
                    </select>
                </label>
            </div>
        </div>
        </TMPL_UNLESS>
        <div class="row">
            <div class="input col col-3">
                <label>
                    <input autocomplete="off" type="text" id="SSN" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="SSN" class="form-control" maxlength="30">
                    <span class="tooltip">
                        SSN
                        <span class="font-10"> (e.g. 123456789, 123-45-6789, 123 45 6789)</span>
                    </span>
                </label>
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="UNIQUEID" class="form-control" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID&reg;" maxlength="14">
                    <span class="tooltip">LexID<sup class="sup-reg-symbol">&reg;</sup></span>
                </label>
            </div>
            <div class="additional-info input btn-container">
                <button type="button" id="UNIQUEID_HELP_ICO" data-clickaway="on" data-toggle="popover" data-title='LexID<sup class="sup-reg-symbol">&reg;</sup> Information' class="btn btn-link btn-tight info-icon svg-icon-tiny">
                    <span class="sr-only">Learn more information about LexID</span>
                </button>
              <div class="popper-content hide">
                <div class="popover-lexid">
                    <p>LexisNexis<sup class="sup-reg-symbol">&reg;</sup> LexID<sup class="sup-reg-symbol">&reg;</sup> is powerful data linking and analysis technology that works behind the scenes to make connections between seemingly unrelated data.</p>
                    <p>After an individual&#39;s unique LexID<sup class="sup-reg-symbol">&reg;</sup> number is returned in your initial search, you can then initiate a new search on the LexID<sup class="sup-reg-symbol">&reg;</sup> number for the most comprehensive, relevant results possible.</p>
                </div>
              </div>
            </div>
        </div>
        <div class="row">
            <div class="input col col-3">
                <label>
                    <input type="text" id="LAST_NAME" class="form-control" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name" maxlength="90">
                    <span class="tooltip">Last Name</span>
                </label>
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="FIRST_NAME" class="form-control" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name" maxlength="40">
                    <span class="tooltip">First Name</span>
                </label>
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="MI" name="MI" class="form-control" value="<TMPL_VAR NAME=MI>" placeholder="Middle or Initial" maxlength="40">
                    <span class="tooltip">Middle or Initial</span>
                </label>
            </div>        
        </div>
        <div class="row">
            <div class="input col col-6">
                <label>
                    <input type="text" id="STREET_ADDRESS" class="form-control" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address" maxlength="35">
                    <span class="tooltip">Street Address</span>
                </label>
            </div>    
        </div>
        <div class="row">
            <div class="input col col-3">
                <label>
                    <input type="text" id="CITY" name="CITY" class="form-control" value="<TMPL_VAR NAME=CITY>" placeholder="City" maxlength="45">
                    <span class="tooltip">City</span>
                </label>
            </div>
            <div class="input col col-2">
                <label>
                    <span class="sr-only">State</span>
                    <select id="STATE" name="STATE" data-value="<TMPL_VAR NAME=STATE>" class="form-control">
                        <option value="">Select State</option>
                        <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                    </select>
                </label>
            </div>
            <div class="input col col-2">
                <label>
                    <input type="text" id="ZIP" name="ZIP" class="form-control" value="<TMPL_VAR NAME=ZIP>" placeholder="Zip Code" maxlength="10">
                    <span class="tooltip">Zip Code</span>
                </label>
            </div>
        </div>
        <div class="row">
            <div class="input col col-3">
                <label>
                    <input type="text" id="DOB" class="form-control" name="DOB" value="<TMPL_VAR NAME=DOB>" placeholder="Date of Birth" maxlength="10">
                    <span class="tooltip">
                        Date of Birth
                        <br />
                        <span class="font-10">(mm/dd/yyyy)</span>
                    </span>
                </label>
                <TMPL_IF NAME=EMAIL_SEARCH>
                    <strong class="col col-3">OR</strong>
                </TMPL_IF>
            </div>
        </div>
    </div>
    <!-- _________________________________ -->
    <div id="verify_otp_step" class="hidden">

        <div class="row text12red hidden" id="otp_failed_msg" >
            <img  class="img svg_otp_results_msg" src="<TMPL_VAR NAME="IMGPATH">/PNGs/failuremark-circle-20x20.png"><span> Verification Failed! Invalid Password. Please try again.</span>
        </div>
        <TMPL_IF NAME="SEARCH_ERROR_MESSAGE">
            <TMPL_INCLUDE NAME="search_error_container.tpl">
        </TMPL_IF>
        <div class="row">
            <div id ="iid_quiz" class="col col-10">
            </div>
        </div>
    </div>
    <!-- ==================================================== -->
    <div id="results_otp_step" class="hidden">        
        <TMPL_IF NAME="SEARCH_ERROR_MESSAGE">
            <TMPL_INCLUDE NAME="search_error_container.tpl">
        </TMPL_IF>
        <div class="row">
            <div id ="iid_quiz_results" class="col col-10">
            </div>
        </div>
    </div>
</div>
<div class="col col-3" id="search-options">
    <div class="row" style="margin:0;">
        <div class="input col col-10" style="padding:0;">
            <div id="iid_qa_ref">
                <input type="text" id="REFERENCE_CODE" class="form-control" name="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>" maxlength="32"  placeholder="Reference ID">
                <span class="tooltip">Reference ID </span> 
            </div>
            <div id="iid_qa_echo_ref" class="hidden">
            </div>
        </div>
        <div id="REFERENCE_CODE_CRITERIA" class="col col-8">
            <span id="ref_code_criteria" class="textGray hidden">The Reference ID must contain only valid characters. </span>
        </div>
    </div>
    <hr>
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

</div>
