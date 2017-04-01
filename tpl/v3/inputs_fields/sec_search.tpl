<!-- begin inputs_fields/sec_search.tpl -->
        <div>
        	<input type="text" class="w150px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name" maxlength=255>
        	<input type="text" class="w150px" id="TICKER" name="TICKER" value="<TMPL_VAR NAME=TICKER>" placeholder="Ticker" maxlength=255>
            <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
        </div>
        <div>
            <input type="text" class="w222px" id="ADDITIONAL_TERMS" name="ADDITIONAL_TERMS" value="<TMPL_VAR NAME=ADDITIONAL_TERMS>" maxlength=255 placeholder="Additional Terms"/>
        </div>
        <div>
            <span class="font-Arial12" style="margin-right:15px;"><strong>Source:</strong></span><br/>
        </div>
        <div>
            <select id="SOURCE" name="SOURCE" style="margin-left:0;">
                <TMPL_LOOP NAME="SOURCE_VALUES">
                <option value="<TMPL_VAR NAME=VAL>" <TMPL_VAR NAME=SELECTED> >&nbsp;<TMPL_VAR NAME=NAME> </option>
                </TMPL_LOOP>
            </select>
        </div>
        <div>
            <span class="font-Arial12" style="margin-right:15px;"><strong>Date:</strong></span><br/>
        </div>
        <div class="verticalRadioGroupRow">
            <div class="checkboxAndText">
                <div class="customRadio" style="margin:6px 12px 0 0;">
                    <div class="radioFiller"></div>
                    <input type="radio" name="DATE_BUTTON" style="display:none;" id="DATE" value="AFT" <TMPL_VAR NAME=ACHECK> />
                </div>
                <span class="font-Arial12">
                    <select name="AFTER_DATE">
                        <TMPL_LOOP NAME="DATE_VALUES">
                         <option value="<TMPL_VAR NAME=VAL>" <TMPL_VAR NAME=SELECTED>>&nbsp;<TMPL_VAR NAME=NAME> </option>
                        </TMPL_LOOP>
                    </select>
                </span>
            </div>
        </div>
        <div class="verticalRadioGroupRow">
            <div class="checkboxAndText">
                <div class="customRadio" style="margin:6px 12px 0 0;">
                    <div class="radioFiller"></div>
                    <input type="radio" style="display:none;" name="DATE_BUTTON" value="RNG" <TMPL_VAR NAME="RCHECK"> />
                </div>
                <span class="font-Arial12">
                    <input type=text name="NDATE_BEGIN" id="NDATE_BEGIN" size="10" value="<TMPL_VAR NAME=NDATE_BEGIN>" maxlength=30 placeholder="From">
                    <input type=text name="NDATE_END" id="NDATE_END" size="10" value="<TMPL_VAR NAME=NDATE_END>" maxlength=30 placeholder="To">
                </span>
            </div>
        </div>
        <div>
            <span class="font-Arial12">
                <strong style="margin-left:35px;float:left;">(mm/dd/yyyy) OR (mm/yyyy) OR (yyyy)</strong>
            </span>
        </div>
<!-- end inputs_fields/sec_search.tpl -->
