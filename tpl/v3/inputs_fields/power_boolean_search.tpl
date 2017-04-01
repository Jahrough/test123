<!-- begin inputs_fields/power_boolean_search.tpl -->
<input type="hidden" name="USE_TC" id="USE_TC" value="1">
<div class="radioRow powerSearch">
    <div>
        <span class="font-Arial11" style="margin-top:4px;display:block;">Conduct Power Search by</span>
    </div>

    <div class="checkboxAndText">
        <div class="customRadio">
            <div class="radioFiller"></div>
            <input type="radio" style="display:none;" id="USE_TC_RADIO" value="0" <TMPL_IF USE_TC> checked="checked"</TMPL_IF>/>
        </div>
        <span class="font-Arial12" style="margin-top:2px;">Terms &amp; Connectors</span>
    </div>
    
    <div>
        <span class="font-Arial12" style="margin:4px 0 0 5px;display:block;">OR</span>
    </div>
    
    <div class="checkboxAndText">
        <div class="customRadio">
            <div class="radioFiller"></div>
            <input type="radio" style="display:none;" id="USE_QS" value="1" <TMPL_UNLESS USE_TC> checked="checked"</TMPL_UNLESS>/>
        </div>
        <span class="font-Arial12" style="margin-top:2px;">Quick Search</span>
    </div>
    
</div>
<div class="termsAndConnectors" style="display:<TMPL_IF USE_TC>block<TMPL_ELSE>none</TMPL_IF>">
    <b>Terms &amp; Connectors</b> - Modify your search using connectors: "car <b>and</b> boat", "car <b>or</b> auto" - <a class="blueFont" style="cursor: help;" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/power_search_help.html#TermsConnector', 'HelpWindow', 800, 490, 1, 1, 1, 1, 1, 0);void(0);">More Examples</a>
</div>
<div class="termsAndConnectors" style="display:<TMPL_IF USE_TC>block<TMPL_ELSE>none</TMPL_IF>">
    <input type="text" class="w222px" name="NAME" id="NAME" value="<TMPL_VAR NAME=NAME>" placeholder="Name" maxlength="255">
    <input type="text" class="w100px" name="SSN_B" id="SSN_B" value="<TMPL_VAR NAME=SSN_B>" placeholder="SSN" maxlength="255" autocomplete="off">
</div>
<div class="termsAndConnectors" style="display:<TMPL_IF USE_TC>block<TMPL_ELSE>none</TMPL_IF>">
    <input type="text" class="w222px" name="COMPANY" id="COMPANY" value="<TMPL_VAR NAME=COMPANY>" placeholder="Company" maxlength="255">
</div>
<div class="termsAndConnectors" style="display:<TMPL_IF USE_TC>block<TMPL_ELSE>none</TMPL_IF>">
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street">
</div>
<div class="termsAndConnectors" style="display:<TMPL_IF USE_TC>block<TMPL_ELSE>none</TMPL_IF>">
    <input type="text" class="w150px" id="CITY" name="CITY" value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE" value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP_B" name="ZIP_B" value="<TMPL_VAR NAME=ZIP_B>" placeholder="ZIP Code">
</div>
<div class="termsAndConnectors" style="display:<TMPL_IF USE_TC>block<TMPL_ELSE>none</TMPL_IF>">
    <input type="text" class="w160px" name="PHONE_B" id="PHONE_B" value="<TMPL_VAR NAME=PHONE_B>" placeholder="Phone" maxlength="255"/>
    <input type="text" class="w130px" name="DOB_B" id="DOB_B" value="<TMPL_VAR NAME=DOB_B>" placeholder="DOB" maxlength="255"/>
</div>
<div class="termsAndConnectors" style="display:<TMPL_IF USE_TC>block<TMPL_ELSE>none</TMPL_IF>">
    <textarea class="w400px" name="AD_TERMS" cols="45" rows="3" id="AD_TERMS" placeholder="Additional Terms" maxlength="255"><TMPL_VAR NAME=AD_TERMS></textarea>
</div>
<div class="quickSearch" style="display:<TMPL_IF USE_TC>none<TMPL_ELSE>block</TMPL_IF>">
    <b>Quick Search</b> - The LexisNexis  search engine will return the most relevant information on People, Property and Corporate Entities.
</div>
<div class="quickSearch" style="display:<TMPL_IF USE_TC>none<TMPL_ELSE>block</TMPL_IF>">
    <input name="QK_TERMS" id="textarea" value="<TMPL_VAR NAME=QK_TERMS>" size="60" type="text" placeholder="Enter Terms">
</div>
<!-- end inputs_fields/power_boolean_search.tpl -->
