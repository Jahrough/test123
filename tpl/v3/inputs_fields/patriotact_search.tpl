<!-- begin inputs_fields/patriotact_search.tpl -->
<div>
    <input type="text" class="w329px" name="COMPANY_NAME" id="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 placeholder="Full Name/Business Name/Vessel Name">
</div>
<div>
    <div class="w250px form-label-font left mgr6">Search Type:</div>
    <div class="w250px form-label-font left" style="margin-left:3px;">Country:</div>
</div>
<div>
    <select class="w250px mgr6" name="SEARCH_TYPE" id="SEARCH_TYPE" placeholder="Search Type">
        <option value="I">Individual</option>
        <option value="N">Non-Individual</option>
        <option value="B">Both</option>
    </select>
    <select class="w250px" name="COUNTRY" id="COUNTRY">
        <TMPL_INCLUDE NAME="inputs_fields/ofac_countries.tpl">
    </select>
</div>
<div>
    <div class="checkboxAndText w250px" style="margin:8px 9px 0 0;">
        <div id="chk_ofac" class="customCheckbox">
            <input type="checkbox" name="OFAC_ONLY" id="OFAC_ONLY" value="1" <TMPL_IF NAME=OFAC_ONLY>checked="checked"</TMPL_IF>>
        </div>
        <span>OFAC Search Only</span>
    </div>
    <div>
        <div class="form-label-font mgb6">Threshold:</div>
        <div>
            <select name="THRESHOLD" id="THRESHOLD">
      	        <option value="1">100%</option>
                <option value="0.98">98%</option>
                <option value="0.96">96%</option>
                <option value="0.94">94%</option>
                <option value="0.92">92%</option>
                <option value="0.90">90%</option>
                <option value="0.88">88%</option>
                <option value="0.86">86%</option>
                <option value="0.84" selected>84%</option>
                <option value="0.82">82%</option>
                <option value="0.80">80%</option>
      	      </select>
        </div>
    </div>
</div>
<!-- end inputs_fields/patriotact_search.tpl -->
