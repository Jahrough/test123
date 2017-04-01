<link rel="stylesheet" href="<TMPL_VAR NAME=CSSPATH>/jquery-ui.css">
<style>
.ui-datepicker .ui-datepicker-title select {
    font-size: 0.7em;
}
.ui-datepicker {
    width: 12em;
}
.ui-datepicker table {
    font-size: 0.7em;
}
</style>
<INPUT type=hidden NAME="ADV_SEARCH_FORM" VALUE="1">    
        <INPUT type=hidden NAME="HIDE_OFFENDER_PHOTOS_ADV_PERSON_SEARCH" VALUE="<TMPL_VAR NAME=HIDE_OFFENDER_PHOTOS_ADV_PERSON_SEARCH>">

        <div>
            <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
        </div>
        <div>
            <div class="checkboxAndText">
                <div id="chk_similarNames" aria-label="Similar-sounding names" class="customCheckbox">
                    <input type="checkbox" aria-label="Include similar-sounding names" name="PHONETICS" style="display:none;" value="1"<TMPL_IF NAME="PHONETICS">checked="checked"</TMPL_IF>>
                </div>
                <span>Include similar-sounding names</span>
            </div>
            <div class="helpQtnIcon">i</div>
            <div class="checkboxAndText">
                <div id="chk_strict" aria-label="Strict Search" class="customCheckbox">
                    <input type="checkbox" aria-label="Include Strict Search" name="STRICT" style="display:none;" value="1"<TMPL_IF NAME="STRICT">checked="checked"</TMPL_IF>>
                </div>
                <span>Strict Search</span>
            </div>
            <div class="helpQtnIcon">i</div>
            <div class="checkboxAndText">
                <div id="chk_nameVariations" aria-label="Name variations" class="customCheckbox">
                    <input type="checkbox" aria-label="Include name variations" style="display:none;" name="NAME_VARIANTS" value="1"<TMPL_IF NAME="NAME_VARIANTS">checked="checked"</TMPL_IF>>
                </div>
                <span>Include name variations</span>
            </div>
            <div class="helpQtnIcon">i</div>
            <TMPL_IF NAME="SHOW_FULL_ADDR_HISTORY">
                <div class="checkboxAndText">
                    <div id="chk_fullAddrHist" aria-label="Full Address History" class="customCheckbox">
                        <input type="checkbox" aria-label="Include Full Address History" style="display:none;" name="FULLADDRHIST" value="1" <TMPL_IF NAME="FULLADDRHIST">checked="checked"</TMPL_IF>>
                    </div>
                    <span>Include Full Address History</span>
                </div>
                <div class="helpQtnIcon">i</div>
            </TMPL_IF>
        </div>
        <div>
            <input type="text" class="w150px" id="DOB" name="DOB" placeholder="DOB" value="<TMPL_VAR NAME=DOB>">
            <div class="helpQtn"><div class="helpIcon"></div></div>
            <input type="text" class="w150px" id="SSN" name="SSN" placeholder="SSN" value="<TMPL_VAR NAME=SSN>" autocomplete="off">
            <TMPL_IF NAME="SHOW_LINKID">
                <input type="text" class="w150px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
                <div class="helpQtn"><div class="helpIcon"></div></div>
            </TMPL_IF>
        </div>
        <div>
            <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
            <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
            <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
        </div>
        <div>
            <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
            <input type="text" class="w120px" id="RADIUS"  value="<TMPL_VAR NAME=RADIUS>" name="RADIUS" placeholder="Radius (miles)">
            <TMPL_IF SHOW_DATE_FIRST_LAST_SEEN_INPUTS>
                <input type="text" class="w120px" id="DATE_FIRST_SEEN" name="DATE_FIRST_SEEN" maxlength="10" value="<TMPL_VAR NAME=DATE_FIRST_SEEN>" placeholder="Date First Seen">
                <span class="hyphen">-</span>
                <input type="text" class="w120px" id="DATE_LAST_SEEN" name="DATE_LAST_SEEN" maxlength="10" value="<TMPL_VAR NAME=DATE_LAST_SEEN>" placeholder="Date Last Seen">
            </TMPL_IF>
        </div>
        <TMPL_UNLESS NAME=DO_NOT_DISPLAY_FDN_CHECKBOX>
        <TMPL_UNLESS HIDE_FDN_SEARCH_INDICATOR>
        <TMPL_IF FDN_DATA_ENABLED>
        <TMPL_UNLESS COMPANY_DISABLE_FDN_SEARCH_INDICATOR>
        <div>
            <div class="checkboxAndText">
                <div id="chk_fraudDefense" aria-label="LexisNexis&reg; Fraud Defense Network" class="customCheckbox">
                    <input type="checkbox" aria-label="Include LexisNexis&reg; Fraud Defense Network" name="FRAUD_DEFENSE_IND" style="display:none;" value="1" <TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_IF NAME="FDN_PREFS_CHECKBOX_ENABLED"> CHECKED</TMPL_IF></TMPL_IF> />
                </div>
                <span>Include Fraud Defense Network<b><font color="#ed1c24">&nbsp;NEW!</font></b><TMPL_UNLESS HIDE_PRICES> ($0.20)&nbsp;</TMPL_UNLESS></span>
            </div>
            <div class="helpQtnIcon">i</div>
        </div>
        <TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">
            <div><span class="blueFont">&nbsp;&nbsp;&nbsp;&nbsp;Fraud Defense Network option currently disabled</span></div>
        </TMPL_IF>
        </TMPL_UNLESS>
        </TMPL_IF>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
        <div class="expandFormRow">
            <div class="expandForm">
                <div id="chk_AdditionalFields" class="btn <TMPL_IF NAME="SHOW_ADDITIONAL_INPUT_FIELDS">show_sprite<TMPL_ELSE>hide_sprite</TMPL_IF>"></div>
                <TMPL_IF NAME="SHOW_ADDITIONAL_INPUT_FIELDS">
                    <span id="show_asif" class="textForExpand_show displayNone">Show Additional Subject Information Fields</span>
                    <span id="hide_asif" class="textForExpand_hide">Hide Additional Subject Information Fields</span>
                <TMPL_ELSE>
                    <span id="show_asif" class="textForExpand_show">Show Additional Subject Information Fields</span>
                    <span id="hide_asif" class="textForExpand_hide displayNone">Hide Additional Subject Information Fields</span>
                </TMPL_IF>
            </div>
            <div class="helpQtnIcon">i</div>
        </div>
        <div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
            <input type="text" class="w120px" id="LICENSE_NUMBER"  value="<TMPL_VAR NAME=LICENSE_NUMBER>" name="LICENSE_NUMBER" placeholder="Driver License #" autocomplete="off">
            <input type="text" class="w140px" id="LICENSE_STATE"  value="<TMPL_VAR NAME=LICENSE_STATE>" name="LICENSE_STATE" placeholder="Driver License State">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
            <input type="text" class="w100px" id="COUNTY" name="COUNTY"  value="<TMPL_VAR NAME=COUNTY>" placeholder="County">
            <input type="text" class="w80px" id="AGE_LOW"  value="<TMPL_VAR NAME=AGE_LOW>" name="AGE_LOW" placeholder="Age Min">
            <span class="hyphen">-</span>
            <input type="text" class="w80px" id="AGE_HIGH" name="AGE_HIGH" value="<TMPL_VAR NAME=AGE_HIGH>" placeholder="Age Max">
        </div>
        <div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
            <input type="text" class="w150px" id="OTHER_LAST_NAME" name="OTHER_LAST_NAME" value="<TMPL_VAR NAME=OTHER_LAST_NAME>" placeholder="Other Last Name">
            <input type="text" class="w150px" id="OTHER_CITY" name="OTHER_CITY"  value="<TMPL_VAR NAME=OTHER_CITY>" placeholder="Other City">
            <input type="text" class="w100px" id="OTHER_STATE" maxlength="2" name="OTHER_STATE"  value="<TMPL_VAR NAME=OTHER_STATE>" placeholder="Other State">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
            <input type="text" class="w100px" id="OTHER_STATE2" maxlength="2" name="OTHER_STATE2"  value="<TMPL_VAR NAME=OTHER_STATE2>" placeholder="Other State">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
        </div>
        <div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
            <input type="text" class="w150px" id="RELATIVE_FIRST_NAME" name="RELATIVE_FIRST_NAME" value="<TMPL_VAR NAME=RELATIVE_FIRST_NAME>" placeholder="Relative First Name">
            <input type="text" class="w192px" id="RELATIVE_FIRST_NAME2" name="RELATIVE_FIRST_NAME2"  value="<TMPL_VAR NAME=RELATIVE_FIRST_NAME2>" placeholder="Other Relative First Name">
        </div>
