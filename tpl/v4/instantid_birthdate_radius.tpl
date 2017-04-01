<div class="col col-1 hidden">
    <span>Birth year range:</span>
</div>
<div class="col col-1_5 hidden">
    <label for="LBY_RADIUS_REF">
        <select id="LBY_RADIUS_REF" name="LBY_RADIUS_REF" class="form-control">
            <option value="" <TMPL_IF NAME="SHOW_INTL_INSTANTID">selected="selected"</TMPL_IF>>Exact Year</option>
            <option value="1">+/- 1 year</option>
            <option value="2" <TMPL_UNLESS NAME="SHOW_INTL_INSTANTID"> selected="selected"</TMPL_UNLESS>>+/- 2 years</option>
            <option value="3">+/- 3 years</option>
            <option value="4">+/- 4 years</option>
            <option value="5">+/- 5 years</option>
        </select>
    </label>
</div>
<div class="additional-info hidden">
    <a class="info-icon svg-icon-tiny" href="#" onClick="javascript:window.open('https://risk.nexis.com/AMLSolutions/help/Portal_Help.htm#Year_Of_Birth_Radius.htm', 'help', 'width=800,height=600,left=25,top=25,scrollbars=yes,menubar=no,resizable=yes'); return false;"></a>
    <span class="tooltip hover tooltip-25">Help</span>
</div>