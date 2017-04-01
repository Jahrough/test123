        <div>
            <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w30px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="MI">
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
            <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
            <input type="text" class="w100px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
            <input type="text" class="w80px" id="STATE" name="STATE" maxlength="2" value="<TMPL_VAR NAME=STATE>" placeholder="Province">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
            <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="Postal Code">
        </div>
        <div>
            <input type="text" class="w190px" id="PHONE" value="<TMPL_VAR NAME=PHONE>" name="PHONE" placeholder="Phone Number">
        </div>
