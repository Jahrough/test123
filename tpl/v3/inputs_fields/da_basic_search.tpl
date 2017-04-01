        <div>
            <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name / Company">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
        </div>
        
        <div>
            <input type="text" class="w190px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
            <input type="text" class="w110px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
            <span style="padding-left:7px; padding-top:25px;"></span>
            <div class="checkboxAndText">
                <div id="chk_addFields" class="customCheckbox" style="margin-top:5px;">
                    <input type="checkbox" name="EXCLUDE_CITY" id="EXCLUDE_CITY" style="display:none;" value="1" <TMPL_IF NAME="EXCLUDE_CITY">checked="checked"</TMPL_IF>>
                </div>
                <span style="padding-top:5px;">Exclude This City</span>
            </div>
            <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
        </div>
        
        <div>
            <input type="text" class="w150px" id="COUNTY"  value="<TMPL_VAR NAME=COUNTY>" name="COUNTY" placeholder="County">
            <input type="text" class="w110px" id="RADIUS"  value="<TMPL_VAR NAME=RADIUS>" name="RADIUS" placeholder="Radius (miles)">
        </div>     
        <div id="BasicLookUpRadioRow">
            <div class="checkboxAndText">
                <span><b>Search Options:</b>&nbsp;&nbsp;</span>
                <div class="customRadio">
                    <div class="radioFiller"></div>
                    <input type="radio" name="LOOKUP_TYPE" id="RES" style="display:none;"  value="3"
                    <TMPL_IF NAME=LOOKUP_TYPE_3>checked</TMPL_IF> />
                </div>
                <span>Residence</span>
                <span>&nbsp;&nbsp;</span>
                <div class="customRadio">
                    <div class="radioFiller"></div>
                    <input type="radio" name="LOOKUP_TYPE" id="BUS" style="display:none;"  value="2"
                   <TMPL_IF NAME=LOOKUP_TYPE_2>checked</TMPL_IF> />
                </div>
                <span>Business</span>
                <span>&nbsp;&nbsp;</span>
                <div class="customRadio">
                    <div class="radioFiller"></div>
                    <input type="radio" name="LOOKUP_TYPE" id="ALL" style="display:none;"  value="4"
                    <TMPL_IF NAME=LOOKUP_TYPE_4>checked</TMPL_IF> />
                </div>
                <span>All</span>
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <div class="checkboxAndText">
                    <div id="chk_similarNames" class="customCheckbox">
                        <input type="checkbox" name="PHONETICS" style="display:none;" value="1"<TMPL_IF NAME="PHONETICS">checked="checked"</TMPL_IF>>    
                    </div>
                    <span>Include Similar Sounding Names</span>
                </div>
                <div class="helpQtnIcon">i</div>
            </div>
        </div>
