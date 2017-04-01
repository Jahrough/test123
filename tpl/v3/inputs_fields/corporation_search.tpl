<!-- begin inputs_fields/corporation_search.tpl -->
<div>
    <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name">
    <input type="text" class="w120px" id="FEIN" name="FEIN" value="<TMPL_VAR NAME=FEIN>" placeholder="FEIN">
</div>
<div>
    <div class="checkboxAndText">
        <div id="chk_strict" class="customCheckbox">
            <input type="checkbox" style="display:none;" name="STRICT" id="STRICT" value="1" <TMPL_IF NAME="STRICT">checked="checked"</TMPL_IF>/>
        </div>
        <span>Strict Search</span>
    </div>
    <div class="helpQtnIcon">i</div>
</div>

<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w100px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
</div>

<div>
    <input type="text" class="w190px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w60px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_IF STATE_ORIGIN><TMPL_VAR NAME=STATE_ORIGIN><TMPL_ELSE><TMPL_VAR NAME=STATE></TMPL_IF>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>

<div>
    <input type="text" class="w150px" name="CHARTER_NUMBER" id="CHARTER_NUMBER" size="15" value="<TMPL_VAR NAME=CHARTER_NUMBER>" placeholder="Charter Number">
</div>

<!-- end inputs_fields/corporation_search.tpl -->
