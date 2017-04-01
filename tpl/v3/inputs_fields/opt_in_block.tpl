<div class="caseDeconflictionWrapper" style="width:97%;">
    <div id="caseDeconflictionRadioRow">
        <div class="caseDeconflictionLabel">
            <span id="opt_in_label">Case Deconfliction Opt-In</span>
        </div>

        <div class="checkboxAndText">
            <div class="customRadio">
                <div class="radioFiller"></div>
                <input aria-labelledby="opt_in_label enable_for" type="radio" name="CC_OPT_IN" style="display:none;" id="ENABLE_OPT_IN" value="1"<TMPL_IF
                    DISABLED_OPT_IN> disabled="true"</TMPL_IF><TMPL_IF
                    CC_OPT_IN> checked="checked"</TMPL_IF>/>
            </div>
            <span id="enable_for">Enable for this Search</span>
        </div>

        <div class="checkboxAndText">
            <div class="customRadio">
                <div class="radioFiller"></div>
                <input aria-labelledby="opt_in_label disable_for" type="radio" style="display:none;" name="CC_OPT_IN" id="DISABLE_OPT_IN" value="0" <TMPL_IF
                    DISABLED_OPT_IN> disabled="true"</TMPL_IF>
                <TMPL_UNLESS CC_OPT_IN> checked="checked"</TMPL_UNLESS>/>
            </div>
            <span id="disable_for">Disable for this Search</span>
            <div id="case_dec_optin" class="ahelpQtnIcon">i</div>
        </div>
    </div>
    <div id="CC_CB_GROUP" style="display: <TMPL_IF CC_OPT_IN>block<TMPL_ELSE>none</TMPL_IF>;">
        <div class="caseDeconflictionRow">
            <div class="checkboxAndText">
                <div id="chk_intmyacc" class="customCheckbox">
                    <input aria-label="Internal to my Account" id="CC_CHECK1" type="checkbox" style="display:none;" name="PERM" value="1000"
                           <TMPL_IF NAME=CC_DISABLED1> disabled="true"<TMPL_ELSE>
                            <TMPL_IF NAME=CC_CHECK1> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                </div>
                <span>Internal to my Account</span>
                <div id="case_dec_help" class="ahelpQtnIcon">i</div>
            </div>


            <div class="checkboxAndText">
                <div id="chk_extle" class="customCheckbox">
                    <input aria-label="External (Other Law Enforcement)" id="CC_CHECK3" type="checkbox" style="display:none;" name="PERM" value="10"
                           <TMPL_IF NAME=CC_DISABLED3> disabled="true"<TMPL_ELSE>
                            <TMPL_IF NAME=CC_CHECK3> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                </div>
                <span>External (Other Law Enforcement)</span>
            </div>
        </div>

        <div class="caseDeconflictionRow">
            <div class="checkboxAndText">
                <div id="chk_intparent" class="customCheckbox">
                    <input aria-label="Internal to my Parent Company" id="CC_CHECK2" type="checkbox" style="display:none;" name="PERM" value="100"
                           <TMPL_IF NAME=CC_DISABLED2> disabled="true"<TMPL_ELSE>
                            <TMPL_IF NAME=CC_CHECK2> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                </div>
                <span>Internal to my Parent Company</span>
            </div>

            <div class="checkboxAndText">
                <div id="chk_othergov" class="customCheckbox">
                    <input aria-label="External (Other Government)" id="CC_CHECK4" type="checkbox" style="display:none;" name="PERM" value="1"
                           <TMPL_IF NAME=CC_DISABLED4> disabled="true"<TMPL_ELSE>
                            <TMPL_IF NAME=CC_CHECK4> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                </div>
                <span>External (Other Government)</span>
            </div>
        </div>
    </div>
</div>
