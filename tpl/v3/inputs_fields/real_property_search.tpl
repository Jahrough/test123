<!-- begin inputs_fields/real_property_search.tpl -->
<div>
    <div class="left">
        <div id="real_prop_info" class="font-Arial12"><b>Search Options:&nbsp;</b></div>
    </div>
    <div class="helpQtnIcon right">i</div>
</div>
<TMPL_IF NAME="HYBRID_REAL_PROPERTY">
    <div>
        <select name="LOOKUP_TYPE" id="LOOKUP_TYPE">
            <TMPL_UNLESS NAME="DISABLE_REAL_PROPERTY_SEARCH">
                <option value="" <TMPL_UNLESS NAME="LOOKUP_TYPE_A"><TMPL_UNLESS NAME="LOOKUP_TYPE_D">selected="selected"</TMPL_UNLESS></TMPL_UNLESS>>
                    <TMPL_VAR NAME=PROPERTY_REAL_DESCRIPTION>
                </option>
            </TMPL_UNLESS>
            <TMPL_UNLESS NAME="DISABLE_ASSESSMENT_SEARCH">
                <option value="A" <TMPL_IF NAME="LOOKUP_TYPE_A"><TMPL_UNLESS NAME="LOOKUP_TYPE_D">selected="selected"</TMPL_UNLESS></TMPL_IF>>Property Assessments
                </option>
            </TMPL_UNLESS>
            <TMPL_UNLESS NAME="DISABLE_DEEDS_SEARCH">
                <option value="D" <TMPL_IF NAME="LOOKUP_TYPE_D"><TMPL_UNLESS NAME="LOOKUP_TYPE_A">selected="selected"</TMPL_UNLESS></TMPL_IF>>Mortgages &amp; Property Deeds
                </option>
            </TMPL_UNLESS>
            <TMPL_IF NAME="DISABLE_REAL_PROPERTY_SEARCH">
                <TMPL_IF NAME="DISABLE_ASSESSMENT_SEARCH">
                    <TMPL_IF NAME="DISABLE_DEEDS_SEARCH">
                        <option value="" selected="selected">No Search Available</option>
                    </TMPL_IF>
                </TMPL_IF>
            </TMPL_IF>
        </select>
    </div>
</TMPL_IF>
<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w120px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
    <TMPL_IF NAME="SHOW_LINKID">
        <input type="text" class="w100px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
        <div class="helpQtn"><div class="helpIcon"></div></div>
    </TMPL_IF>
</div>
<div class="onlyAllowOneCheck">
    <div class="checkboxAndText">
        <div id="chk_similarNames" class="customCheckbox">
            <input type="checkbox" name="PHONETICS" value="1" checked="checked">
        </div>
        <span>Include similar-sounding names</span>
    </div>
    <div class="helpQtnIcon">i</div>
    <div class="checkboxAndText">
        <div id="chk_strict" class="customCheckbox">
            <input type="hidden" name="chk_strict" value="0">
        </div>
        <span>Strict Search</span>
    </div>
    <div class="helpQtnIcon">i</div>
</div>
<div>
    <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name">
</div>
<div>
    <input type="text" class="w190px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w100px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <TMPL_UNLESS GOV>
        <TMPL_UNLESS LE>
            <input type="text" class="w100px" id="COUNTY" name="COUNTY"  value="<TMPL_VAR NAME=COUNTY>" placeholder="County">
        </TMPL_UNLESS>
    </TMPL_UNLESS>
    <input type="text" class="w60px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
    <TMPL_IF GOV>
            <input type="text" class="w100px" id="COUNTY" name="COUNTY"  value="<TMPL_VAR NAME=COUNTY>" placeholder="County">
    </TMPL_IF>
    <TMPL_IF LE>
            <input type="text" class="w100px" id="COUNTY" name="COUNTY"  value="<TMPL_VAR NAME=COUNTY>" placeholder="County">
    </TMPL_IF>
</div>
<div>
    <TMPL_IF GOV>
        <div class="checkboxAndText">
            <div id="chk_realOnly" class="customCheckbox">
                <input type="checkbox" name="ADDRESS_MATCH_ONLY" value="1" <TMPL_IF NAME="ADDRESS_MATCH_ONLY">checked="checked"</TMPL_IF>>
            </div>
            <span>Return Physical Property Address Matches Only</span>
        </div>
        <div class="helpQtnIcon">i</div>
    </TMPL_IF>
    <TMPL_IF LE>
        <div class="checkboxAndText">
            <div id="chk_realOnly" class="customCheckbox">
                <input type="checkbox" name="ADDRESS_MATCH_ONLY" value="1" <TMPL_IF NAME="ADDRESS_MATCH_ONLY">checked="checked"</TMPL_IF>>
            </div>
            <span>Return Physical Property Address Matches Only</span>
        </div>
        <div class="helpQtnIcon">i</div>
    </TMPL_IF>
</div>    
<div>
    <input type="text" class="w150px" name="PARCEL_ID" id="PARCEL_ID" value="<TMPL_VAR NAME=PARCEL_ID>" placeholder="Parcel Number">
</div>
<div>
    <TMPL_IF SHOW_CURR_REC_ONLY_CB>
        <div class="checkboxAndText">
            <div id="chk_currOnly" class="customCheckbox">
                <input type="checkbox" name="CURRONLY" value="1">
            </div>
            <span>Include current record only</span>
        </div>
        <div class="helpQtnIcon">i</div>
    </TMPL_IF>
</div>
<!-- end inputs_fields/real_property_search.tpl -->
