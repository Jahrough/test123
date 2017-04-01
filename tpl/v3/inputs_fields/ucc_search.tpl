<link rel="stylesheet" href="<TMPL_VAR NAME=CSSPATH>/jquery-ui.css">
<style>
.ui-datepicker .ui-datepicker-title select {
    font-size: 0.7em;
}
.ui-datepicker {
    width: 12em;
}
.ui-datepicker table {
    font-size: 0.7em;
}
</style>

<script>
 $j(function() {
    $j( "#START_DATE,#END_DATE" ).datepicker({
        changeMonth: true,
        changeYear: true
    });

 });
</script>

<!-- begin inputs_fields/ucc_search.tpl -->
<div>
    <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name">
    <input type="text" class="w100px" id="FEIN" name="FEIN" value="<TMPL_VAR NAME=FEIN>" placeholder="FEIN">
</div>

<div>
    <div class="checkboxAndText">
        <div id="chk_strict" class="customCheckbox">
            <input type="hidden" name="chk_strict" value="0">
        </div>
        <span>Strict Search</span>
    </div>
    <div class="helpQtnIcon">i</div>
</div>    
<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w100px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
    <input type="text" class="w100px" id="SSN" name="SSN" placeholder="SSN" value="<TMPL_VAR NAME=SSN>" autocomplete="off">
</div>

<div>
    <div class="checkboxAndText">
        <div id="chk_similarNames" class="customCheckbox">
            <input type="checkbox" name="PHONETICS" style="display:none;" value="1" <TMPL_IF NAME="PHONETICS">checked="checked"</TMPL_IF>>
        </div>
        <span>Include similar-sounding names</span>
    </div>
    <div class="helpQtnIcon">i</div>

</div>

<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>

<div class="expandFormRow">
    <div class="expandForm">
        <div id="chk_AdditionalFields" class="btn <TMPL_IF NAME="SHOW_ADDITIONAL_INPUT_FIELDS">show_sprite<TMPL_ELSE>hide_sprite</TMPL_IF>"></div>
        <TMPL_IF NAME="SHOW_ADDITIONAL_INPUT_FIELDS">
            <span class="textForExpand_show displayNone">Show Additional Fields</span>
            <span class="textForExpand_hide">Hide Additional Fields</span>
        <TMPL_ELSE>
            <span class="textForExpand_show">Show Additional Fields</span>
            <span class="textForExpand_hide displayNone">Hide Additional Fields</span>
        </TMPL_IF>
    </div>
    <div class="helpQtnIcon">i</div>
</div>

<div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
    <input type="text" class="w160px" id="FILING_NUMBER" name="FILING_NUMBER" maxlength="25" value="<TMPL_VAR NAME=FILING_NUMBER>" placeholder="Original Filing Number">
    <input type="text" class="w100px" id="START_DATE" name="START_DATE" maxlength="10" value="<TMPL_VAR NAME=START_DATE>" placeholder="Filing Date">
    <span class="hyphen">-</span>
    <input type="text" class="w100px" id="END_DATE" name="END_DATE" maxlength="10" value="<TMPL_VAR NAME=END_DATE>" placeholder="Filing Date">
    <input type="text" class="w150px" id="FILING_JURISDICTION" name="FILING_JURISDICTION" maxlength="2" value="<TMPL_VAR NAME=FILING_JURISDICTION>" placeholder="Filing Jurisdiction">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
</div>
<div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
    <div class="checkboxAndText">
        <span>Filing Start and End Date should be in (mm/dd/yyyy) format</span>
    </div>
</div>
<!-- end inputs_fields/ucc_search.tpl -->
