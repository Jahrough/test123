<!-- begin inputs_fields/fictious_search.tpl -->
<div>
    <input type="text" class="w190px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name">
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
</div>

<div>
    <input type="text" class="w190px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w60px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>

<div>
    <input type="text" class="w100px" id="PHONE"  value="<TMPL_VAR NAME=PHONE>" name="PHONE" placeholder="Phone Number">
    <input type="text" class="w150px" id="FILING_NUMBER" name="FILING_NUMBER" maxlength="25" value="<TMPL_VAR NAME=FILING_NUMBER>" placeholder="Filing Number">
</div>
<!-- end inputs_fields/fictious_search.tpl -->
