<TMPL_IF NAME="HYBRID_BLJ">
    <div>
        <div class="left">
            <div id="BLJ_OPTION" class="font-Arial12"><b>Search Options:&nbsp;</b></div>
        </div>
        <div class="helpQtnIcon right">i</div>
    </div>

    <div>
        <input type="hidden" name="INCLUDE_BANKRUPTCIES" value="<TMPL_IF INCLUDE_BANKRUPTCIES>1<TMPL_ELSE><TMPL_UNLESS INCLUDE_LIENSJUDGMENTS>1<TMPL_ELSE>0</TMPL_UNLESS></TMPL_IF>" />
        <input type="hidden" name="INCLUDE_LIENSJUDGMENTS" value="<TMPL_IF INCLUDE_LIENSJUDGMENTS>1<TMPL_ELSE><TMPL_UNLESS INCLUDE_BANKRUPTCIES>1<TMPL_ELSE>0</TMPL_UNLESS></TMPL_IF>" />
        <select id="BLJ_INC_OPTION" name="BLJ_INC_OPTION" class="left" onChange="set_include_options(this)">
            <TMPL_UNLESS NAME="DISABLE_BLJ">
                <option value="1|1" <TMPL_IF NAME="INCLUDE_BANKRUPTCIES"><TMPL_IF NAME="INCLUDE_LIENSJUDGMENTS">selected="selected"</TMPL_IF></TMPL_IF>>
                    Bankruptcies, Liens &amp; Judgments Search
                </option>
            </TMPL_UNLESS>
            <TMPL_UNLESS NAME="DISABLE_BANKRUPTCY">
                <option value="1|0" <TMPL_IF NAME="INCLUDE_BANKRUPTCIES"><TMPL_UNLESS NAME="INCLUDE_LIENSJUDGMENTS">selected="selected"</TMPL_UNLESS></TMPL_IF>>
                    Bankruptcy Search
                </option>
            </TMPL_UNLESS>
            <TMPL_UNLESS NAME="DISABLE_LIEN">
                <option value="0|1" <TMPL_UNLESS NAME="INCLUDE_BANKRUPTCIES"><TMPL_IF NAME="INCLUDE_LIENSJUDGMENTS">selected="selected"</TMPL_IF></TMPL_UNLESS>>
                    Liens &amp; Judgments Search
                </option>
            </TMPL_UNLESS>
            <TMPL_IF NAME="DISABLE_BANKRUPTCY">
                <TMPL_IF NAME="DISABLE_LIEN">
                    <TMPL_IF NAME="DISABLE_BLJ">
                        <option selected="selected">No Search Available</option>
                    </TMPL_IF>
                </TMPL_IF>
            </TMPL_IF>
        </select>
    </div>
</TMPL_IF>
        
        <div>
            <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w100px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
        </div>

        <div>
            <div class="checkboxAndText">
                <div id="chk_similarNames" class="customCheckbox">
                    <input type="checkbox" name="PHONETICS" style="display:none;" value="1" checked="checked">
                </div>
                <span>Include similar-sounding names</span>
            </div>
            <div class="helpQtnIcon">i</div>

            <div class="checkboxAndText">
                <div id="chk_strict" class="customCheckbox">
                    <input type="checkbox" name="STRICT" style="display:none;" value="1"<TMPL_IF NAME="STRICT">checked="checked"</TMPL_IF>>
                </div>
                <span>Strict Search</span>
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
             <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME"  value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name">
             <input type="text" class="w150px" id="FEIN" name="FEIN" value="<TMPL_VAR NAME=FEIN>" placeholder="FEIN">
             <input type="text" class="w150px" id="CASE_NUMBER" name="CASE_NUMBER" value="<TMPL_VAR NAME=CASE_NUMBER>" placeholder="Case/Filing Number">
        </div>

        <div>
             <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
             <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
             <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
             <div class="helpQtn"><div class="pickerIcon"></div></div>
             <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
        </div>

        <div>
             <input type="text" class="w100px" id="COUNTY" name="COUNTY"  value="<TMPL_VAR NAME=COUNTY>" placeholder="County">
        </div>

