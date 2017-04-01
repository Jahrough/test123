<!-- begin inputs_fields/lien_search.tpl -->
<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w100px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
    <input type="text" class="w100px" id="SSN" name="SSN" placeholder="SSN" value="<TMPL_VAR NAME=SSN>" autocomplete="off">
</div>

<div>
    <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name">
    <input type="text" class="w222px" id="FEIN" name="FEIN" value="<TMPL_VAR NAME=FEIN>" placeholder="TIN">
</div>

<div>
    <input type="text" class="w222px" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
</div>

<div>
    <input type="text" class="w100px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
    <input type="text" class="w100px" id="CASE_NUMBER" name="CASE_NUMBER" value="<TMPL_VAR NAME=CASE_NUMBER>" placeholder="Case Number">
	<TMPL_IF NAME=SHOW_IRS_SERIAL_NUMBER>
	<input type="text" class="w100px" id="IRS_SERIAL_NUMBER" name="IRS_SERIAL_NUMBER" value="<TMPL_VAR NAME=IRS_SERIAL_NUMBER>" placeholder="IRS Serial No. (SLID)">
	</TMPL_IF>
	<TMPL_IF NAME="SHOW_LINKID">
		<input type="text" class="w150px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
		<div class="helpQtn"><div class="helpIcon"></div></div>
	</TMPL_IF>
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
<!-- end inputs_fields/lien_search.tpl -->
