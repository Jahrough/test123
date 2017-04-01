<!-- begin inputs_fields/workplace_search.tpl -->
<div>
    <input type="text" class="w130px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w130px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w120px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
</div>
<div>
    <input type="text" class="w100px" id="SSN" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="SSN" autocomplete="off">
    <TMPL_IF NAME="SHOW_LINKID">
        <input type="text" class="w130px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
        <div class="helpQtn"><div class="helpIcon"></div></div>
    </TMPL_IF>        
</div>    
<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w100px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_IF COURT_STATE><TMPL_VAR NAME=COURT_STATE><TMPL_ELSE><TMPL_VAR NAME=STATE></TMPL_IF>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>
<div>
    <input type="text" class="w150px" id="PHONE" value="<TMPL_VAR NAME=PHONE>" name="PHONE" placeholder="Phone Number">
</div>
<div>
    <div class="checkboxAndText">
        <div id="chk_includeSpouse" class="customCheckbox">
            <input type="checkbox" style="display:none;" <TMPL_IF NAME=SUPPRESS_SPOUSE_DATA>disabled</TMPL_IF> id="INCLUDE_SPOUSE" name="INCLUDE_SPOUSE" value="1" <TMPL_UNLESS NAME=SUPPRESS_SPOUSE_DATA><TMPL_IF NAME=INCLUDE_SPOUSE>checked="checked"</TMPL_IF></TMPL_UNLESS>>
        </div>
        <span>Include Spouse Data in Results Displayed</span>
    </div>
    <div class="helpQtnIcon">i</div>
    <div class="checkboxAndText">
        <div id="chk_secState" class="customCheckbox">
            <input type="checkbox" style="display:none;" id="INCLUDE_SECSTATE" name="INCLUDE_SECSTATE" value="1" checked="checked">
        </div>
        <span>Include Secretary of State Info</span>
    </div>
</div>
<!-- end inputs_fields/workplace_search.tpl -->
