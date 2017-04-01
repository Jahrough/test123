<!-- begin inputs_fields/d_and_b_search.tpl -->
<div>
    <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Business Name">
	<input type="text" class="w110px" id="DUNS_NUMBER" name="DUNS_NUMBER" value="<TMPL_VAR NAME=DUNS_NUMBER>" placeholder="DUNS Number">
</div>

<div>
    <input type="text" class="w190px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w100px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>

<div>
    <input type="text" class="w110" id="PHONE"  value="<TMPL_VAR NAME=PHONE>" name="PHONE" placeholder="Phone Number">
</div>

<div>
    <span class="notes">
        <br/>
        <strong>By clicking Search, I understand and agree to the </strong><a title="Open Terms and Conditions" style="color:#009ddb;" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','DNB','420','350',1,0,1,1,1,0,'','searches/dnb_terms');">Terms and Conditions</a><strong> of usage.</strong>
    </span>
</div>
<!-- end inputs_fields/d_and_b_search.tpl -->
