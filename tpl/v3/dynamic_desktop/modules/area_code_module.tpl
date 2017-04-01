<!-- BEGIN dynamic_desktop/area_code_module.tpl -->
<table width="100%">
<thead class="nodisplay">
  <tr>
    <th aria-label="Area Code">&nbsp;</th>
  </tr>
</thead>
<tr><td align="left">
<div class="dd_searches area_code_search <TMPL_UNLESS NAME="DDESKTOP_SEARCH">rbnBarPopoverSection</TMPL_UNLESS> now-showing" id="area_code_csz_search">
<i class="collapseExpand-collapse"></i> Search by State, City, Zip
</div>
<div class="dd_search_forms" id="area_code_csz_search_form" style="display:block;">
<table cellspacing="3" border="0" width="100%">
<thead class="nodisplay">
  <tr>
    <th aria-label="Area Code">&nbsp;</th>
  </tr>
</thead>
<tr>
    <td valign="top" align="left" style="padding-left: 0;padding-top: 7px;">
        <table border="0" cellpadding="2" cellspacing="0">
         <thead class="nodisplay">
           <tr>
             <th aria-label="City">&nbsp;</th>
             <th aria-label="State">&nbsp;</th>
             <th aria-label="Zip">&nbsp;</th>
             <th aria-label="Area Codes">&nbsp;</th>
             <th aria-label="Area Code">&nbsp;</th>
           </tr>
         </thead>
            <tr>
                <td class="nsinputs" style="padding-left:0;">
                    <input aria-label="City" type="text" name="CITY" id="CITY4" value="" maxlength=255 onBlur="setTimeout('hide_search_suggest()',200);this.value=this.value.toUpperCase()" onKeyUp="city_state_suggest(this,event);" autocomplete="off" placeholder="City">
                <p>
                <div class="city_state_suggest"></div>
                </td>
                <td class="nsinputs suggestible_state">
                    <input aria-label="State" type="text" class="w60px" name="STATE" id="STATE4" maxlength="2" value="" placeholder="State">
                    <div class="helpQtn"><div class="pickerIcon"></div></div>
                </td>
                <td class="nsinputs">
                    <input aria-label="Zip" type="text" name="ZIP" id="ZIP4" class="w60px" maxlength="5" value="" placeholder="Zip">
                </td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="AREA_CODE_SEARCH_TYPE" id="AREA_CODE_SEARCH_TYPE1" size="5" maxlength="7" value="AreaCodes"></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="DD_EVENT" id="AREA_CODE_SEARCH_EVENT1" size="5" maxlength="20" value="SEARCH/SEARCH_DD_AREACODE">
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td class="no-print" align="center" style="padding-left: 0;">
    <div id="ddSearchBlock">
	<input name="BUTTON" class="ddSearchBtn" id="area_code_csz_submit" type="button" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1">
	<input name="BUTTON" class="ddClearSrch" id="area_code_csz_clear" type="button" value="Clear Form">
     </div>
    </td>
</tr>
</table>
<div class="dd_search_results" id="area_code_csz_results" style="margin-top:10px;">

</div>
</div>
<div class="section-separator" style="height: 5px;"></div>
<div class="dd_searches area_code_search <TMPL_UNLESS NAME="DDESKTOP_SEARCH">rbnBarPopoverSection</TMPL_UNLESS>" id="area_code_location_search">
<i class="collapseExpand-expand"></i> Find Location by Area Code
</div>
<div class="dd_search_forms" id="area_code_location_search_form" style="display:none;">
<table cellspacing="3" border="0" width="100%">
<thead class="nodisplay">
  <tr>
    <th aria-label="Area Code">&nbsp;</th>
  </tr>
</thead>
<tr>
    <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <thead class="nodisplay">
            <tr>
              <th aria-label="Area Code">&nbsp;</th>
              <th aria-label="Cities">&nbsp;</th>
              <th aria-label="Events">&nbsp;</th>
              <td aria-label="">&nbsp;</td>
              <th aria-label="Buttons">&nbsp;</th>                                                        
            </tr>
          </thead>
        
            <tr>
                <td class="nsinputs" style="padding-top: 8px;"><input type="text" class="w150px" name="AREA_CODE" id="AREA_CODE" maxlength="3" value="" placeholder="Area Code"></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="AREA_CODE_SEARCH_TYPE" id="AREA_CODE_SEARCH_TYPE2" size="5" maxlength="7" value="Cities"></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="DD_EVENT" id="AREA_CODE_SEARCH_EVENT2" size="5" maxlength="20" value="SEARCH/SEARCH_DD_AREACODE">
                <td>&nbsp;</td>
                <td class="no-print" align="center">
                <div id="ddSearchBlock">
                    <input name="BUTTON" class="ddSearchBtn" id="area_code_location_submit" type="button" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1">
                    <input name="BUTTON" class="ddClearSrch" id="area_code_location_clear" type="button" value="Clear Form">
                 </div>
                </td>
            </tr>
        </table>
    </td>
</tr>
</table>
<div class="dd_search_results" id="area_code_location_results" style="margin-top:10px;">

</div>
</div>
</td></tr></table>
<!-- END dynamic_desktop/area_code_module.tpl -->
