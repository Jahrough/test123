<!-- begin ind_qualifier_search.tpl -->
<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w120px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
</div>
<div>
    <input type="text" class="w120px" id="SSN" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="SSN" autocomplete="off">
    <input type="text" class="w100px" id="DOB" name="DOB" value="<TMPL_VAR NAME=DOB>" placeholder="DOB">
</div>
<div>
    <input type="text" class="w120px" id="PHONE" value="<TMPL_VAR NAME=PHONE>" name="PHONE" placeholder="Phone Number">
    <input type="text" class="w120px" id="NPI_NUMBER" name="NPI_NUMBER" maxlength="15" value="<TMPL_VAR NAME=NPI_NUMBER>" placeholder="NPI">
</div>
<div>
    <input type="text" class="w250px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w100px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>
<!-- end ind_qualifier_search.tpl -->
