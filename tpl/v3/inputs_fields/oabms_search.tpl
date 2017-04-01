<!-- begin inputs_fields/oabms_search.tpl -->
<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
</div>
<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>

<div>
    <div>
        <div class="form-label-font mgb6">Medical Specialty:</div>
        <div>
            <select name="SPECIALTY" id="SPECIALTY" placeholder="Medical Specialty">
                <option value="">ALL</option>
                <TMPL_LOOP NAME="SPECIALTY_LOOP">
                   <option value="<tmpl_var NAME=SPEC>"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME=SPEC></option>
                </TMPL_LOOP>
            </select>
        </div>
    </div>
</div>

<div>
    <input type="text" class="w150px" id="NPI_NUMBER" name="NPI_NUMBER" maxlength="15" value="<TMPL_VAR NAME=NPI_NUMBER>" placeholder="NPI">
</div>
<!-- end inputs_fields/oabms_search.tpl -->
