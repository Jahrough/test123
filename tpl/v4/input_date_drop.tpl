<div class="input col col-3">
    <label for="DATE_DROP">
        <select name="DATE_DROP" id="DATE_DROP" class="form-control" onchange="document.getElementById(&#39;FROM_DATE&#39;).value = ''; document.getElementById(&#39;TO_DATE&#39;).value = ''; javascript:toggle_custom_dates_radios();">
            <TMPL_LOOP DATE_DROP_LOOP>
                <option <TMPL_IF DATE_DROP_SELECTED>selected="selected"</TMPL_IF> value="<TMPL_VAR NAME="DATE_DROP_VAL">"><TMPL_VAR NAME="DATE_DROP_TXT"></option>
            </TMPL_LOOP>
        </select>
        <span class="hidden-label">All Available Dates</span>
    </label>
</div>
<div class="input col col-3">
    <label>
        <input type="text" id="FROM_DATE" name="FROM_DATE" class="form-control hidden" value="<TMPL_VAR NAME=FROM_DATE>" placeholder="From" maxlength="10">
        <span class="tooltip">From<br>ex. 01/01/99, 01/01/1999,  1/ 1/1999</span>
    </label>
</div>
<div class="col col-3">
    <label>
        <input type="text" id="TO_DATE" name="TO_DATE" class="form-control hidden" value="<TMPL_VAR NAME=TO_DATE>" placeholder="To" maxlength="10">
        <span class="tooltip">To<br>ex. 01/01/99, 01/01/1999,  1/ 1/1999</span>
    </label>
</div>
<span id="DATE_HELP" class="hidden col col-1">
    <div class="additional-info">
        <a id="custom-date-help" class="svg-icon-tiny help-icon" href="javascript:void(0);"></a>
        <span class="tooltip tooltip-25">Help</span>
    </div>
</span>
