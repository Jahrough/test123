<!-- begin inputs_fields/sanction_search.tpl -->
<div>
    <b>&nbsp;*&nbsp;Required Fields</b>&nbsp;--&nbsp;State field is required along with Last Name or Company Name.
</div>
<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="* Last Name">
    <input type="text" class="w110px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w110px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
    <input type="text" class="w100px" id="SSN" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="SSN">
    <input type="text" class="w100px" id="DOB" name="DOB" value="<TMPL_VAR NAME=DOB>" placeholder="DOB">
</div>
<div>
    <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="* Company or Organization Name">
    <input type="text" class="w150px" id="FEIN" name="FEIN" value="<TMPL_VAR NAME=FEIN>" placeholder="Tax ID (FEIN)">
    <input type="text" class="w120px" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="NPI">
</div>
<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w160px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="* State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>
<div>
    <input type="text" class="w150px" id="LICENSE_NUMBER" name="LICENSE_NUMBER" value="<TMPL_VAR NAME=LICENSE_NUMBER>" placeholder="License Number">
    <input type="text" class="w150px" id="LICENSE_STATE" name="LICENSE_STATE" value="<TMPL_VAR NAME=LICENSE_STATE>" placeholder="License State">
</div>
<!-- end inputs_fields/sanction_search.tpl -->
