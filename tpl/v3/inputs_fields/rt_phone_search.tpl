        <div>
            <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
        </div>
        <div>
            <div class="checkboxAndText">
                <div id="chk_similarNames" class="customCheckbox">
                    <input type="checkbox" name="PHONETICS" style="display:none;" value="1"<TMPL_IF NAME="PHONETICS">checked="checked"</TMPL_IF>>    
                </div>
                <span>Include similar sounding names</span>
            </div>
            <div class="helpQtnIcon">i</div>
        </div>
        <div>
            <input type="text" class="w150px" id="SSN" name="SSN" placeholder="SSN" value="<TMPL_VAR NAME=SSN>" autocomplete="off">
            <TMPL_IF NAME="SHOW_LINKID">
                <input type="text" class="w150px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
                <div class="helpQtn"><div class="helpIcon"></div></div>
            </TMPL_IF>
        </div>
        <div>
            <input type="text" class="w150px" id="COMPANY_NAME" name="COMPANY_NAME" placeholder="Company Name" value="<TMPL_VAR NAME=COMPANY_NAME>" autocomplete="off">
        </div>
        <div>
            <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
            <input type="text" class="w100px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
            <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
            <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
        </div>
        <div>
            <input type="text" class="w150px" id="PHONE" value="<TMPL_VAR NAME=PHONE>" name="PHONE" placeholder="Phone Number">
            <div class="helpQtn"><div class="helpIcon"></div></div>
            <!--<input type="text" class="w100px" id="COUNTY" name="COUNTY"  value="<TMPL_VAR NAME=COUNTY>" placeholder="County">-->
        </div>
        <div>
            <input type="text" class="w150px" id="LISTING_TYPE" maxlength="2" name="LISTING_TYPE"  value="<TMPL_VAR NAME=LISTING_TYPE>" placeholder="Listing Type Selection">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
        </div>
