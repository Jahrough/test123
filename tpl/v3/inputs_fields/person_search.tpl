<!-- begin inputs_fields/person_search.tpl -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
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

        <div>
            <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
        </div>
        <div>
            <div class="checkboxAndText">
                <div id="chk_nameVariations" aria-label="Name variations" class="customCheckbox">
                    <input type="checkbox" aria-label="Include name variations" style="display:none;" name="chk_nameVariations" value="0">
                </div>
                <span>Include name variations</span>
            </div>
            <div class="helpQtnIcon">i</div>
        </div>
        <div>
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
            <input type="text" class="w100px" id="COUNTY" name="COUNTY"  value="<TMPL_VAR NAME=COUNTY>" placeholder="County">
            <input type="text" class="w120px" id="RADIUS"  value="<TMPL_VAR NAME=RADIUS>" name="RADIUS" placeholder="Radius (miles)">
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
                <span>Include LexisNexis&reg; Fraud Defense Network (FDN)<b><font color="#ed1c24">&nbsp;NEW!</font></b><TMPL_UNLESS HIDE_PRICES> ($0.20)&nbsp;</TMPL_UNLESS></span>
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
                    <span class="textForExpand_show displayNone">Show Additional Subject Information Fields</span>
                    <span class="textForExpand_hide">Hide Additional Subject Information Fields</span>
                <TMPL_ELSE>
                    <span class="textForExpand_show">Show Additional Subject Information Fields</span>
                    <span class="textForExpand_hide displayNone">Hide Additional Subject Information Fields</span>
                </TMPL_IF>
            </div>
            <div class="helpQtnIcon">i</div>
        </div>
        <div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
            <input type="text" class="w150px" id="PHONE" value="<TMPL_VAR NAME=PHONE>" name="PHONE" placeholder="Phone Number">
            <div class="helpQtn"><div class="helpIcon"></div></div>
            <input type="text" class="w150px" id="DOB" name="DOB" placeholder="DOB" value="<TMPL_VAR NAME=DOB>">
            <div class="helpQtn"><div class="helpIcon"></div></div>
            <input type="text" class="w80px" id="AGE_LOW"  value="<TMPL_VAR NAME=AGE_LOW>" name="AGE_LOW" placeholder="Age Min">
            <span class="hyphen">-</span>
            <input type="text" class="w80px" id="AGE_HIGH" name="AGE_HIGH" value="<TMPL_VAR NAME=AGE_HIGH>" placeholder="Age Max">
        </div>
        <div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
            <div class="checkboxAndText">
                <div id="chk_bankruptcy" aria-label="Include Bankruptcies" class="customCheckbox">
                    <input type="checkbox" aria-label="Include Bankruptcies" style="display:none;" name="chk_bankruptcy" value="0">
                </div>
                <span>Include Bankruptcies</span>
            </div>
            <div class="helpQtnIcon">i</div>
        </div>
<!-- end inputs_fields/person_search.tpl -->

