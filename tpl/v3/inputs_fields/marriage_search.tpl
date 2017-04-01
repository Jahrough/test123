<!-- begin inputs_fields/marriage_search.tpl -->
<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w120px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
</div>
<div>
    <TMPL_IF NAME="SHOW_LINKID">
        <input type="text" class="w150px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
        <div class="helpQtn"><div class="helpIcon"></div></div>
    </TMPL_IF>
</div>
<div>
    <input type="text" class="w100px" id="COUNTY" name="COUNTY"  value="<TMPL_VAR NAME=COUNTY>" placeholder="County">
    <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w150px" id="FILING_NUMBER" name="FILING_NUMBER" maxlength="25" value="<TMPL_VAR NAME=FILING_NUMBER>" placeholder="Filing Number">
</div>

<div class="expandFormRow">
    <div class="expandForm">
        <div id="chk_AdditionalFields" class="btn <TMPL_IF NAME="SHOW_ADDITIONAL_INPUT_FIELDS">show_sprite<TMPL_ELSE>hide_sprite</TMPL_IF>"></div>
        <TMPL_IF NAME="SHOW_ADDITIONAL_INPUT_FIELDS">
            <span class="textForExpand_show displayNone">Show Other Party Information Fields</span>
            <span class="textForExpand_hide">Hide Other Party Information Fields</span>
        <TMPL_ELSE>
            <span class="textForExpand_show">Show Other Party Information Fields</span>
            <span class="textForExpand_hide displayNone">Hide Other Party Information Fields</span>
        </TMPL_IF>
    </div>
</div>
<div class="addInputs<TMPL_UNLESS NAME="SHOW_ADDITIONAL_INPUT_FIELDS"> displayNone</TMPL_UNLESS>">
    <input type="text" class="w190px" id="OTHER_LAST_NAME" name="OTHER_LAST_NAME" value="<TMPL_VAR NAME=OTHER_LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="OTHER_FIRST_NAME" name="OTHER_FIRST_NAME" value="<TMPL_VAR NAME=OTHER_FIRST_NAME>" placeholder="First Name">
</div>
<!-- end inputs_fields/marriage_search.tpl -->
