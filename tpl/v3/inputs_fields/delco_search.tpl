<!-- begin inputs_fields/delco_search.tpl -->
<TMPL_INCLUDE NAME="search_notes.tpl">
<div>
    <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name">
</div>
<div>
    <span class="font-Arial12" style="margin-right:15px;"><b>Company Type:</b></span><br/>
</div>
<TMPL_LOOP NAME="COMPANY_TYPES">
    <div class="verticalRadioGroupRow">
        <div class="checkboxAndText">
            <div class="customRadio" style="margin:0 6px 0 0;">
                <div class="radioFiller"></div>
                <input <TMPL_VAR NAME=SELECTED> type="radio" name="COMPANY_TYPE" id="<TMPL_VAR NAME=VAL>" value="<TMPL_VAR NAME=VAL>">
            </div>
            <span class="font-Arial12" style="margin-top:1px;">
                <label for="<TMPL_VAR NAME=VAL>"><TMPL_VAR NAME=NAME></label>
            </span>
        </div>
    </div>
</TMPL_LOOP>
<!-- end inputs_fields/delco_search.tpl -->
