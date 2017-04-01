<!-- begin inputs_fields/whois_search.tpl -->
<div>
    <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name">
</div>

<div>
    <input type="text" class="w130px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w130px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w130px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
</div>

<div>
    <input type="text" class="w400px" id="DOMAIN_NAME" name="DOMAIN_NAME" value="<TMPL_VAR NAME=DOMAIN_NAME>" placeholder="Domain Name">
</div>

<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w60px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>

<div>
    <div class="checkboxAndText">
        <div id="chk_strict" class="customCheckbox">
            <input type="hidden" name="STRICT" value="1" <TMPL_IF NAME="STRICT">checked="checked"</TMPL_IF>>
        </div>
        <span>Strict Search</span>
    </div>
    <div class="helpQtnIcon">i</div>
</div>
<!-- end inputs_fields/whois_search.tpl -->
