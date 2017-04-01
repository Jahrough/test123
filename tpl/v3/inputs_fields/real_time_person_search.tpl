<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w100px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
    <input type="text" class="w100px" id="SSN" name="SSN" placeholder="SSN" value="<TMPL_VAR NAME=SSN>" autocomplete="off">
</div>
<div>
    <div class="checkboxAndText">
        <div id="chk_similarNames" class="customCheckbox">
            <input type="checkbox" name="PHONETICS" style="display:none;" value="1"<TMPL_IF NAME="PHONETICS">checked="checked"</TMPL_IF>>
        </div>
        <span>Include similar-sounding names</span>
    </div>
    <div class="helpQtnIcon">i</div>
</div>
<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <div class="helpQtn"><div class="helpIcon"></div></div>
    <input type="text" class="w100px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>
<div>
    <input type="text" class="w120px" id="DOB" name="DOB" placeholder="DOB">
    <div class="helpQtn"><div class="helpIcon"></div></div>
    <input type="text" class="w60px" id="AGE_LOW"  value="<TMPL_VAR NAME=AGE_LOW>" name="AGE_LOW" placeholder="Age Min">
    <span class="hyphen">-</span>
    <input type="text" class="w60px" id="AGE_HIGH" name="AGE_HIGH" value="<TMPL_VAR NAME=AGE_HIGH>" placeholder="Age Max">
</div>
<div class="expandFormRow">
    <div class="expandForm">
        <div id="chk_AdditionalFields" class="btn <TMPL_IF NAME="SHOW_ADDITIONAL_INPUT_FIELDS">show_sprite<TMPL_ELSE>hide_sprite</TMPL_IF>"></div>
        <span class="textForExpand_show">Show Additional Subject Information Fields</span>
        <span class="textForExpand_hide">Hide Additional Subject Information Fields</span>
    </div>
    <div class="helpQtnIcon">i</div>
</div>
<div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
    <input type="text" class="w150px" id="OTHER_LAST_NAME" name="OTHER_LAST_NAME" value="<TMPL_VAR NAME=OTHER_LAST_NAME>" placeholder="Other Last Name">
    <input type="text" class="w150px" id="OTHER_CITY" name="OTHER_CITY"  value="<TMPL_VAR NAME=OTHER_CITY>" placeholder="Other City">
    <input type="text" class="w80px" id="OTHER_STATE" maxlength="2" name="OTHER_STATE"  value="<TMPL_VAR NAME=OTHER_STATE>" placeholder="Other State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="OTHER_STATE2" maxlength="2" name="OTHER_STATE2"  value="<TMPL_VAR NAME=OTHER_STATE2>" placeholder="Other State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
</div>
<div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
    <input type="text" class="w150px" id="RELATIVE_FIRST_NAME" name="RELATIVE_FIRST_NAME" value="<TMPL_VAR NAME=RELATIVE_FIRST_NAME>" placeholder="Relative First Name">
    <input type="text" class="w192px" id="RELATIVE_FIRST_NAME2" name="RELATIVE_FIRST_NAME2"  value="<TMPL_VAR NAME=RELATIVE_FIRST_NAME2>" placeholder="Other Relative First Name">
</div>
