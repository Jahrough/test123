        <div>
            <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
        </div>
        <div>
             <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME"  value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name">
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
            <input type="text" class="w100px" id="COUNTY" name="COUNTY"  value="<TMPL_VAR NAME=COUNTY>" placeholder="County">
            <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
        </div>
        <div>
            <input type="text" class="w150px" id="DATE_BEGIN" name="DATE_BEGIN" placeholder="Filing Start Date" value="<TMPL_VAR NAME=DATE_BEGIN>">
            <input type="text" class="w150px" id="DATE_END" name="DATE_END" placeholder="Filing End Date" value="<TMPL_VAR NAME=DATE_END>">
        </div>