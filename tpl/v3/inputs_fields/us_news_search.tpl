<!-- begin inputs_fields/us_news_search.tpl -->

        <div>
            <input type="text" class="w400px" id="SUBJECT" name="SUBJECT" value="<TMPL_VAR NAME=SUBJECT>" placeholder="Subject">
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
<!-- end inputs_fields/us_news_search.tpl -->
