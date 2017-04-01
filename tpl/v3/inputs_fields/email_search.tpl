<!-- begin inputs_fields/email_search.tpl -->
<div>
    <span class="textWithHover">
        <span class="baseText blueFont"><b>Note</b></span>
        <span class="hoverText">
            <b>
                For optimal results Name, Address, City, State, Zip, SSN 
                <br>or Date of Birth should be populated.
            </b>
        </span>
    </span>
</div>
<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
</div>
<div>
    <input type="text" class="w100px" id="SSN" name="SSN" placeholder="SSN" value="<TMPL_VAR NAME=SSN>" autocomplete="off">
    <input type="text" class="w150px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
    <div class="helpQtn"><div class="helpIcon"></div></div>
</div>
<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w100px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>
<div>
    <input type="text" class="w150px" id="DOB" name="DOB" placeholder="DOB" value="<TMPL_VAR NAME=DOB>">
    <div class="helpQtn"><div class="helpIcon"></div></div>
</div>
<div>
    <span class="or-divide">OR</span>
</div>
<div>
    <input type="text" class="w222px" id="EMAIL" name="EMAIL" value="<TMPL_VAR NAME=EMAIL>" placeholder="Email">
</div>
<!-- end inputs_fields/email_search.tpl -->
