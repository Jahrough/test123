<!-- begin inputs_fields/instant_id_report.tpl -->
<div>
    <span>
        <b>Required Fields</b> -- Note: The Company Name, Address, and Zip fields are required. For optimal results, populate as many of the business and/or authorized representative fields as possible.
    </span>
</div>
<div>
    <input type="text" class="w150px" name="COMPANY_NAME" id="COMPANY_NAME" size="30" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 placeholder="Company Name">
</div>
<div>
    <input type="text" class="w150px" name="DBA" id="DBA" size="20" value="<TMPL_VAR NAME=DBA>" maxlength=255 placeholder="DBA">
    <input type="text" class="w150px" name="TAX_ID" id="TAX_ID" size="20" value="<TMPL_VAR NAME=TAX_ID>" maxlength=255 placeholder="Tax ID">
</div>
<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>
<div>
    <input type="text" class="w150px" placeholder="Work Phone" name="WORK_PHONE" id="WORK_PHONE" size="12" maxlength="14" value="<TMPL_VAR NAME=WORK_PHONE>">
</div>

<div>
    <div class="checkboxAndText">
        <div id="chk_otherWatchLists" class="customCheckbox">
            <input type="checkbox" name="OTHER_WATCH_LISTS" id="OTHER_WATCH_LISTS" style="display:none;" value="1">
        </div>
        <span><label for="OTHER_WATCH_LISTS">Include Other Watch Lists</label></span>
    </div>
    <TMPL_UNLESS NAME=HIDE_FRAUD_DEFENDER_INPUT>
        <div class="checkboxAndText">
            <div id="chk_nameVariations" class="customCheckbox">
                <input type="checkbox" name="FRAUD_DEFENDER" id="FRAUD_DEFENDER" style="display:none;" value="1" <TMPL_IF DISABLE_FRAUD_DEFENDER_INPUT> DISABLED<TMPL_ELSE><TMPL_IF FRAUD_DEFENDER_INPUT_CHECKED> checked<TMPL_ELSE> </TMPL_IF></TMPL_IF>>
            </div>
            <span><label for="FRAUD_DEFENDER">Fraud Defender</label></span>
        </div>
    </TMPL_UNLESS>
</div>
<div class="expandFormRow">
    <div class="expandForm">
        <div id="chk_AdditionalFields" class="btn <TMPL_IF NAME=SHOW_ADDITIONAL_INPUT_FIELDS>show_sprite<TMPL_ELSE>hide_sprite</TMPL_IF>"></div>
        <TMPL_IF NAME="SHOW_ADDITIONAL_INPUT_FIELDS">
            <span class="textForExpand_show displayNone">Show Authorized Representative Fields</span>
            <span class="textForExpand_hide">Hide Authorized Representative Fields</span>
        <TMPL_ELSE>
            <span class="textForExpand_show">Show Authorized Representative Fields</span>
            <span class="textForExpand_hide displayNone">Hide Authorized Representative Fields</span>
        </TMPL_IF>
    </div>
    <div class="helpQtnIcon">i</div>
</div>
<!--<div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
    <input type="text" class="w120px" id="LICENSE_NUMBER"  value="<TMPL_VAR NAME=LICENSE_NUMBER>" name="LICENSE_NUMBER" placeholder="Driver License #" autocomplete="off">
    <input type="text" class="w100px" id="LICENSE_STATE"  value="<TMPL_VAR NAME=LICENSE_STATE>" name="LICENSE_STATE" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
</div>-->

<div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w100px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
    <input type="text" class="w100px" id="SSN" name="SSN" placeholder="SSN" value="<TMPL_VAR NAME=SSN>" autocomplete="off">
</div>

<div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS2" name="STREET_ADDRESS2" value="<TMPL_VAR NAME=STREET_ADDRESS2>" placeholder="Home Address">
    <input type="text" class="w150px" id="CITY2" name="CITY2"  value="<TMPL_VAR NAME=CITY2>" placeholder="City">
    <input type="text" class="w100px" id="STATE2" maxlength="2" name="STATE2"  value="<TMPL_VAR NAME=STATE2>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP2" name="ZIP2"  value="<TMPL_VAR NAME=ZIP2>" placeholder="ZIP Code">
</div>

<div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
    <input type="text" class="w150px" id="PHONE" name="PHONE" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>" placeholder="Home Phone">
    <input type="text" class="w150px" id="DOB" name="DOB" placeholder="DOB">
</div>

<div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
    <input type="text" class="w150px" placeholder="Driver License #" name="LICENSE_NUMBER" id="LICENSE_NUMBER" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" maxlength="30" autocomplete="off">
    <input type="text" class="w100px" id="LICENSE_STATE" name="LICENSE_STATE"  value="<TMPL_VAR NAME=LICENSE_STATE>" placeholder="License State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
</div>

<!-- end inputs_fields/instant_id_report.tpl -->
