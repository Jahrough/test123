<!-- begin inputs_fields/dbglobal_search.tpl -->
<div>
    <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name">
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
</div>

<div>
    <input type="text" class="w222px" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_IF STATE_ORIGIN><TMPL_VAR NAME=STATE_ORIGIN><TMPL_ELSE><TMPL_VAR NAME=STATE></TMPL_IF>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
</div>

<div>
    <select class="w250px" name="COUNTRY" id="COUNTRY">
        <TMPL_INCLUDE NAME="inputs_fields/dbglobal_countries.tpl">
    </select>
	<TMPL_IF NAME="COUNTRY">
		<script>
			document.forms[0].COUNTRY.value = '<TMPL_VAR NAME="COUNTRY">';
		</script>
	</TMPL_IF>
</div>	
<div>
    <input type="text" class="w110px" id="DUNS_NUMBER" name="DUNS_NUMBER" value="<TMPL_VAR NAME=DUNS_NUMBER>" placeholder="DUNS Number">
    <input type="text" class="w110px" id="SIC_CODE" name="SIC_CODE" value="<TMPL_VAR NAME=SIC_CODE>" placeholder="SIC Code">
    <input type="text" class="w222px" id="ADDITIONAL_TERMS" name="ADDITIONAL_TERMS"  value="<TMPL_VAR NAME=ADDITIONAL_TERMS>" placeholder="Additional Terms">
</div>
<!-- end inputs_fields/dbglobal_search.tpl -->
