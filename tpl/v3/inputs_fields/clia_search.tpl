<!-- begin inputs_fields/clia_search.tpl -->
<div>
    <input type="text" class="w250px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 placeholder="Company or Organization Name">
    <input type="text" class="w120px" id="UNIQUEID" name="UNIQUEID" maxlength="15" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="CLIA">
</div>
<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>
<!-- end inputs_fields/clia_search.tpl -->
