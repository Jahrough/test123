        <div>
            <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
            <input type="text" class="w100px" id="SSN" name="SSN" placeholder="SSN" value="<TMPL_VAR NAME=SSN>" autocomplete="off">
        </div>
        <div>
            <div class="checkboxAndText">
                <div id="chk_strict" class="customCheckbox">
                    <input type="checkbox" name="STRICT" style="display:none;" value="1"<TMPL_IF NAME="STRICT">checked="checked"</TMPL_IF>>
                </div>
                <span>Strict Search</span>
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
        <div>
            <input type="text" class="w222px" id="TRADE_NAME" name="TRADE_NAME" value="<TMPL_VAR NAME=TRADE_NAME>" placeholder="Trade Name">
            <input type="text" class="w150px" id="LICENSE_NUMBER" name="LICENSE_NUMBER"  value="<TMPL_VAR NAME=LICENSE_NUMBER>" placeholder="License Number" autocomplete="off">
        </div>
