<!-- begin inputs_fields/provider_search.tpl -->
<div>
    <input type="text" class="w125px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w120px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w100px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
    <input type="text" class="w100px" id="SSN" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="SSN" autocomplete="off">
    <input type="text" class="w100px" id="DOB" name="DOB" placeholder="DOB" value="<TMPL_VAR NAME=DOB>">
</div>
<div >
    <input type="text" class="w329px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company or Organization Name">
</div>

 <div>
    <input type="text" class="w250px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
 </div>    
 <div>
    <input type="text" class="w150px" id="TAXID" name="TAXID" value="<TMPL_VAR NAME=TAXID>" placeholder="Tax ID (FEIN)">
    <input type="text" class="w150px" id="LICENSE_NUMBER" name="LICENSE_NUMBER" value="<TMPL_VAR NAME=LICENSE_NUMBER>" placeholder="License #" autocomplete="off">
    <input type="text" class="w100px" id="LICENSE_STATE" name="LICENSE_STATE"  value="<TMPL_VAR NAME=LICENSE_STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
</div>
<div id="npi_div">
    <input type="text" id="NPI_NUMBER" name="NPI_NUMBER" value="<TMPL_VAR NAME=NPI_NUMBER>" placeholder="NPI">
</div>
<!-- end inputs_fields/provider_search.tpl -->
