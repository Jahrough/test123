<TMPL_INCLUDE NAME="search_notes.tpl">
<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
</div>
<div>
    <div class="checkboxAndText">
        <div id="chk_similarNames" class="customCheckbox">
            <input type="hidden" name="chk_similarNames" value="1">
        </div>
        <span>Include similar-sounding names</span>
    </div>
    <div class="helpQtnIcon">i</div>
	<TMPL_IF NAME="SHOW_NON_GOV_SOURCE_OPT">
		<div class="checkboxAndText">
			<div id="CHK_NONGOVSOURCES" class="customCheckbox">
				<input type="checkbox" name="CHK_NONGOVSOURCES" value="1" CHECKED>
			</div>
			<span>Include Non-Governmental Sources</span>
		</div>
		<div class="helpQtnIcon">i</div>
	</TMPL_IF>
</div>
<div>
    <input type="text" class="w150px" id="SSN" name="SSN" placeholder="SSN" value="<TMPL_VAR NAME=SSN>" autocomplete="off">
    <TMPL_IF NAME="SHOW_LINKID">
        <input type="text" class="w150px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
        <div class="helpQtn"><div class="helpIcon"></div></div>
    </TMPL_IF>
</div>
<div>
    <input type="text" class="w150px" id="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" name="COMPANY_NAME" placeholder="Company Name">
</div>
<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w100px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP" value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>
<div>
    <input type="text" class="w222px" id="VIN" name="VIN" value="<TMPL_VAR NAME=VIN>" placeholder="VIN">
    <input type="text" class="w100px" id="LICENSE_PLATE" name="LICENSE_PLATE"  value="<TMPL_VAR NAME=LICENSE_PLATE>" placeholder="*&nbsp;Tag Number">
    <input type="text" class="w150px" id="LICENSE_NUMBER" name="LICENSE_NUMBER"  value="<TMPL_VAR NAME=LICENSE_NUMBER>" placeholder="License Number" autocomplete="off">
</div>
<div>
    <span>*&nbsp;Tag Number search does not yield results in Nevada</span>
</div>
