<!-- BEGIN dynamic_desktop/area_code_module.tpl -->
<table width="100%"><tr><td align="left">
<div class="dd_searches area_code_search <TMPL_UNLESS NAME="DDESKTOP_SEARCH">rbnBarPopoverSection</TMPL_UNLESS> now-showing" id="area_code_csz_search">
[-] Search by State, City, Zip
</div>
<div class="dd_search_forms" id="area_code_csz_search_form" style="display:block;">
<table cellspacing="3" border="0" width="100%">
<tr>
    <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
            <tr>
                <td>&nbsp;<b><label for="CITY4"><span <TMPL_UNLESS NAME="DDESKTOP_SEARCH">class="font-customize-2"</TMPL_UNLESS>>City</span></label></b></td>
                <td>&nbsp;<b><label for="STATE4"><span <TMPL_UNLESS NAME="DDESKTOP_SEARCH">class="font-customize-2"</TMPL_UNLESS>>State</span></label></b><a href="javascript:void(0);" onClick="state_list('STATE4');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
                <td>&nbsp;<b><label for="ZIP4"><span <TMPL_UNLESS NAME="DDESKTOP_SEARCH">class="font-customize-2"</TMPL_UNLESS>>Zip</span></label></b></td>
            </tr>
            <tr>
                <td class="nsinputs"><input type="text" name="CITY" id="CITY4" tabindex="301" size="27" value="" maxlength=255 onBlur="setTimeout('hide_search_suggest()',200);this.value=this.value.toUpperCase()" onKeyUp="city_state_suggest(this,event);" autocomplete="off">
                <p>
                <div class="city_state_suggest"></div>
                </td>
                <td class="nsinputs suggestible_state"><input type="text" name="STATE" id="STATE4" tabindex="302" size="3" maxlength="2" value="" onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="ZIP" id="ZIP4" tabindex="303" style="width:42px;" maxlength="5" value=""></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="AREA_CODE_SEARCH_TYPE" id="AREA_CODE_SEARCH_TYPE1" size="5" maxlength="7" value="AreaCodes"></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="DD_EVENT" id="AREA_CODE_SEARCH_EVENT1" size="5" maxlength="20" value="SEARCH/SEARCH_DD_AREACODE">
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td class="no-print" align="center">
    <div id="ddSearchBlock">
	<input name="BUTTON" tabindex="304" class="ddSearchBtn" id="area_code_csz_submit" type="button" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1">
	<input name="BUTTON" tabindex="305" class="ddClearSrch" id="area_code_csz_clear" type="button" value="Clear Form">
     </div>
    </td>
</tr>
</table>
<div class="dd_search_results" id="area_code_csz_results" style="margin-top:10px;">

</div>
</div>
<div class="section-separator" style="height: 5px;"></div>
<div class="dd_searches area_code_search <TMPL_UNLESS NAME="DDESKTOP_SEARCH">rbnBarPopoverSection</TMPL_UNLESS>" id="area_code_location_search">
[+] Find Location by Area Code
</div>
<div class="dd_search_forms" id="area_code_location_search_form" style="display:none;">
<table cellspacing="3" border="0" width="100%">
<tr>
    <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
            <tr>
                <td>&nbsp;<b><label for="AREA_CODE"><span <TMPL_UNLESS NAME="DDESKTOP_SEARCH">class="font-customize-2"</TMPL_UNLESS>>Area Code</span></label></b></td>
                <td class="nsinputs"><input type="text" name="AREA_CODE" id="AREA_CODE" tabindex="311" size="5" maxlength="3" value=""></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="AREA_CODE_SEARCH_TYPE" id="AREA_CODE_SEARCH_TYPE2" size="5" maxlength="7" value="Cities"></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="DD_EVENT" id="AREA_CODE_SEARCH_EVENT2" size="5" maxlength="20" value="SEARCH/SEARCH_DD_AREACODE">
                <td>&nbsp;</td>
                <td class="no-print" align="center">
                <div id="ddSearchBlock">
                    <input name="BUTTON" tabindex="311" class="ddSearchBtn" id="area_code_location_submit" type="button" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1">
                    <input name="BUTTON" tabindex="312" class="ddClearSrch" id="area_code_location_clear" type="button" value="Clear Form">
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
