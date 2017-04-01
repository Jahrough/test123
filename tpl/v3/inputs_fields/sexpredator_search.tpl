        <TMPL_INCLUDE NAME="search_notes.tpl">
        <div>
            <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
        </div>
        <div>
            <div class="checkboxAndText">
                <div id="chk_strict" class="customCheckbox">
                    <input type="checkbox" name="STRICT" style="display:none;" value="1"<TMPL_IF NAME="STRICT">checked="checked"</TMPL_IF>>
                </div>
                <span>Strict Search</span>
            </div>
            <div class="helpQtnIcon">i</div>
            <div class="checkboxAndText">
                <div id="chk_sexpred_img" class="customCheckbox">
                    <input type="checkbox" name="SHOW_SEXPRED_IMAGE" style="display:none;" value="yes"<TMPL_IF NAME="SHOW_SEXPRED_IMAGE">checked="checked"</TMPL_IF>>
                </div>
                <span>Display Offender's Photo</span>
            </div>
            <div class="helpQtnIcon">i</div>
         </div>
        <div>
            <input type="text" class="w100px" id="DOB" name="DOB" placeholder="DOB" value="<TMPL_VAR NAME=DOB>">
            <input type="text" class="w150px" id="SSN" name="SSN" placeholder="SSN" value="<TMPL_VAR NAME=SSN>" autocomplete="off">
            <TMPL_IF NAME="SHOW_LINKID">
                <input type="text" class="w150px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
                <div class="helpQtn"><div class="helpIcon"></div></div>
            </TMPL_IF>
        </div>
        <div>
            <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
            <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
            <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
        </div>
        <div>
             <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
             <input type="text" class="w120px" id="RADIUS"  value="<TMPL_VAR NAME=RADIUS>" name="RADIUS" placeholder="Radius (miles)">
        </div>
        <div>
             <input type="text" class="w180px" id="SCARS"  value="<TMPL_VAR NAME=SCARS>" name="SCARS" placeholder="Scars/Marks/Tattoos">
        </div>
        <div>
            <div>
                <div class="form-label-font mgb6">Offense Category:</div>
                <div>
                    <TMPL_INCLUDE NAME="inputs_fields/shared/offense_dropdown_list.tpl">
                </div>
            </div>
        </div>
        <input type="hidden" name="SP_SEARCHPAGE" value="1">
