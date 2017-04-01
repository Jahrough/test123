
        <div>
            <b>Required Fields</strong>&nbsp; - &nbsp;Note: Case Number, First Name, SSN, DOB, Address, City, State, Zip fields are all required.</b>
        </div>
 
 
        <div>
            <div class="checkboxAndText">
                <div id="chk_similarNames" class="customCheckbox">
                    <input id="CHECKALL" type="checkbox" checked="checked" style="display:none;" tabindex="1" value="Y" onclick="javascript:checkall_bureaus()"/>
                </div>
                <span>All</span>
            </div>
            <div class="checkboxAndText">
                <div id="chk_similarNames" class="customCheckbox">
                    <input name="EQUIFAX"  style="display:none;" id="EQUIFAX" type="checkbox" checked="checked" tabindex="2" value="Y"/>
                </div>
                <span>Equifax</span>
            </div>
            <div class="checkboxAndText">
                <div id="chk_similarNames" class="customCheckbox">
                    <input name="EXPERIAN" style="display:none;" id="EXPERIAN" type="checkbox" checked="checked" tabindex="2" value="Y"/>
                </div>
                <span>Experian</span>
            </div>
            <div class="checkboxAndText">
                <div id="chk_similarNames" class="customCheckbox">
                    <input name="TRANSUNION" style="display:none;" id="TRANSUNION" type="checkbox" checked="checked" tabindex="2" value="Y"/>
                </div>
                <span>Trans Union</span>
            </div>

        </div>

        <div>
            <input type="text" class="w150px" id="CASE_NUMBER" name="CASE_NUMBER" value="<TMPL_VAR NAME=CASE_NUMBER>" placeholder="Case Number">
            <input type="text" class="w150px" id="CASE_TYPE" name="CASE_TYPE" value="<TMPL_VAR NAME=CASE_TYPE>" placeholder="Case Type">
            <input type="text" class="w150px" id="ITEM_NUMBER" name="ITEM_NUMBER" value="<TMPL_VAR NAME=ITEM_NUMBER>" placeholder="Item Number">
        </div>

        <div>
        <b>Applicant</b>
        </div>
        <div>
            <input type="text" class="w222px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME"  value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w100px" id="MI" name="MI"  value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
            <input type="text" class="w150px" id="SUFFIX" name="SUFFIX" value="<TMPL_VAR NAME=SUFFIX>" placeholder="Suffix">
        </div>
 
       <div>
        <b>Spouse</b>
        </div>
 
        <div>
            <input type="text" class="w222px" id="SPOUSE_LAST_NAME" name="SPOUSE_LAST_NAME" value="<TMPL_VAR NAME=SPOUSE_LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="SPOUSE_FIRST_NAME" name="SPOUSE_FIRST_NAME"  value="<TMPL_VAR NAME=SPOUSE_FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w100px" id="SPOUSE_MI" name="SPOUSE_MI"  value="<TMPL_VAR NAME=SPOUSE_MI>" placeholder="Middle Name">
            <input type="text" class="w150px" id="SPOUSE_SUFFIX" name="SPOUSE_SUFFIX" value="<TMPL_VAR NAME=SPOUSE_SUFFIX>" placeholder="Suffix">
        </div>
 

        <div>
            <input type="text" class="w150px" id="SSN" name="SSN" placeholder="SSN" value="<TMPL_VAR NAME=SSN>">
            <input type="text" class="w150px" id="DOB" name="DOB" placeholder="DOB" value="<TMPL_VAR NAME=DOB>">
        </div>



        <div class="expandFormRow">
            <div class="expandForm">
                <span class="textForExpand_show">Residences</span>
                <div class="helpQtn"><div class="pickerIcon"></div></div>
            </div>
        </div>
        <div>
            <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
            <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
            <input type="text" class="w100px" id="STATE" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
            <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
        </div>
 
        <div>
            <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS_2" name="STREET_ADDRESS_2" value="<TMPL_VAR NAME=STREET_ADDRESS_2>" placeholder="Street Address">
            <input type="text" class="w150px" id="CITY_2" name="CITY_2"  value="<TMPL_VAR NAME=CITY_2>" placeholder="City">
            <input type="text" class="w100px" id="STATE_2" name="STATE_2"  value="<TMPL_VAR NAME=STATE_2>" placeholder="State">
            <div class="helpQtn"><div class="pickerIcon"></div></div>
            <input type="text" class="w80px" id="ZIP_2" name="ZIP_2"  value="<TMPL_VAR NAME=ZIP_2>" placeholder="ZIP Code">
        </div>
 

        <div>
              <select name="ADDR_TYPE_2" id="ADDR_TYPE_2" tabindex="29">
                <option value="">Select an Option</option>
                <option value="Prior">Residence</option>
                <option value="Prior">Employment</option>
                <option value="Prior">Education</option>
              </select>
        </div>
