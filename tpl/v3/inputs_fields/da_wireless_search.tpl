        <div>
            <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w100px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
            <TMPL_IF NAME="SHOW_LINKID">
                <input type="text" class="w100px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
                <div class="helpQtn"><div class="helpIcon"></div></div>
            </TMPL_IF>
        </div>
        <div>
            <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
            <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
            <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
            <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
        </div>
        <div>
            <input type="text" class="w150px" id="COUNTY"  value="<TMPL_VAR NAME=COUNTY>" name="COUNTY" placeholder="County">
        </div>
        <div>
            <input type="text" class="w120px" id="PHONE" value="<TMPL_VAR NAME=PHONE>" name="PHONE" placeholder="Phone Number">
            <div class="helpQtn"><div class="helpIcon"></div></div>
        </div>
        <div>
            <div class="checkboxAndText">
                <div id="chk_addFields" class="customCheckbox">
                    <input type="checkbox" name="INCLUDE_VERIFIED" style="display:none;" value="1"<TMPL_IF NAME="INCLUDE_VERIFIED">checked="checked"</TMPL_IF>>
                </div>
                <span>Include Directory Assistance Listings</span>
            </div>
        </div>
        <div>
            <span class="notes">
                <b>Disclaimer:</b> Information available through the Phones Plus feature may not be used for marketing,<br>
                solicitation, or similar purposes. The Telephone Consumer Protection Act (47 U.S.C. sec. 227) <br>
                prohibits use of automatic telephone dialing systems to make any call to any cellular telephone <br>
                service or any other service for which the called party is charged for the call. 
            </span>
        </div>
