<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
</div>
<div>
    <TMPL_IF NAME="SHOW_LINKID">
        <input type="text" class="w150px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
        <div class="helpQtn"><div class="helpIcon"></div></div>
    </TMPL_IF>
    <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME"  value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name">
</div>
<div>
    <div class="checkboxAndText">
        <div id="chk_strict" class="customCheckbox">
            <input type="checkbox" name="STRICT" style="display:none;" value="1"<TMPL_IF NAME="STRICT">checked="checked"</TMPL_IF>>
        </div>
        <span>Strict Search</span>
    </div>
    <div class="helpQtnIcon">i</div>
</div>
<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>
<div>
    <input type="text" class="w150px" id="ACCIDENT_NUMBER" name="ACCIDENT_NUMBER" value="<TMPL_VAR NAME=ACCIDENT_NUMBER>" placeholder="Accident Number">
    <input type="text" class="w150px" id="ACCIDENT_STATE" name="ACCIDENT_STATE" maxlength="2" value="<TMPL_VAR NAME=ACCIDENT_STATE>" placeholder="Accident State">
    <input type="text" class="w150px" id="LICENSE_NUMBER" name="LICENSE_NUMBER" value="<TMPL_VAR NAME=LICENSE_NUMBER>" placeholder="License Number" autocomplete="off">             
</div>
<div>
    <input type="text" class="w150px" id="VIN" name="VIN" value="<TMPL_VAR NAME=VIN>" placeholder="VIN">
    <input type="text" class="w150px" id="LICENSE_PLATE" name="LICENSE_PLATE" value="<TMPL_VAR NAME=LICENSE_PLATE>" placeholder="Tag Number">
</div>
<div>
    <div class="checkboxAndText">
        <div class="customCheckbox">
            <input type="checkbox" id="noSolicit" name="NO_SOLICIT" value="1" <TMPL_IF NAME="NO_SOLICIT">checked="checked" </TMPL_IF>>
        </div>
        <span style="max-width: 239px;margin-top: -2px;">I hereby certify that I will not use (or allow any other person to use) the requested report(s) for any commercial solicitation purpose.</span>
    </div>
</div>
