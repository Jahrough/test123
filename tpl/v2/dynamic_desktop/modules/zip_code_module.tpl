<!-- BEGIN dynamic_desktop/zip_code_module.tpl -->
<table width="100%"><tr><td align="left">
<div class="dd_searches zip_code_search <TMPL_UNLESS NAME="DDESKTOP_SEARCH">rbnBarPopoverSection</TMPL_UNLESS> now-showing" id="zip_address_search">
[-] Search by Address
</div>
<div class="dd_search_forms" id="zip_address_search_form" style="display:block;">
<table cellspacing="3" border="0" width="100%">
<tr>
    <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
            <tr>
                <td>&nbsp;<b><label for="STREET_ADDRESS1"><span <TMPL_UNLESS NAME="DDESKTOP_SEARCH">class="font-customize-2"</TMPL_UNLESS>>Street Address</span></label></b></td>
            </tr>
            <tr>
                <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS1" tabindex="201" size="27" value="" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
            <tr>
                <td>&nbsp;<b><label for="CITY1"><span <TMPL_UNLESS NAME="DDESKTOP_SEARCH">class="font-customize-2"</TMPL_UNLESS>>City</span></label></b></td>
                <td>&nbsp;<b><label for="STATE1"><span <TMPL_UNLESS NAME="DDESKTOP_SEARCH">class="font-customize-2"</TMPL_UNLESS>>State</span></label></b><a href="javascript:void(0);" onClick="state_list('STATE1');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
                <td>&nbsp;<b><label for="ZIP1"><span <TMPL_UNLESS NAME="DDESKTOP_SEARCH">class="font-customize-2"</TMPL_UNLESS>>Zip</span></label></b></td>
            </tr>
            <tr>
                <!--
                <td class="nsinputs"><input type="text" name="CITY" id="CITY1" tabindex="202" size="15" value="" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                -->
                <td class="nsinputs"><input type="text" name="CITY" id="CITY1" tabindex="202" size="27" value="" maxlength="255" onBlur="setTimeout('hide_search_suggest()',200);this.value=this.value.toUpperCase()" onKeyUp="city_state_suggest(this,event);" autocomplete="off">
                <p>
                <div class="city_state_suggest"></div>
                </td>
                <td class="nsinputs suggestible_state"><input type="text" name="STATE" id="STATE1" tabindex="203" size="3" maxlength="2" value="" onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="ZIP" id="ZIP1" tabindex="204" style="width:42px;" maxlength="5" value=""></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="ZIP_SEARCH_TYPE" id="ZIP_SEARCH_TYPE1" size="5" maxlength="7" value="Zips"></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="DD_EVENT" id="ZIP_SEARCH_EVENT1" size="5" maxlength="20" value="SEARCH/SEARCH_DD_ZIPCODE">
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td class="no-print" align="center">
    <div id="ddSearchBlock">
	<input name="BUTTON" tabindex="205" class="ddSearchBtn" id="zip_address_submit" type="button" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1">
	<input name="BUTTON" tabindex="206" class="ddClearSrch" id="zip_address_clear" type="button" value="Clear Form">
     </div>
    </td>
</tr>
</table>
<div class="dd_search_results" id="zip_address_results" style="margin-top:10px;">

</div>
</div>
<div class="section-separator" style="height: 5px;"></div>
<div class="dd_searches zip_code_search <TMPL_UNLESS NAME="DDESKTOP_SEARCH">rbnBarPopoverSection</TMPL_UNLESS>" id="zip_city_search">
[+] Search by City
</div>
<div class="dd_search_forms" id="zip_city_search_form" style="display:none;">
<table cellspacing="3" border="0" width="100%">
<tr>
    <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
            <tr>
                <td>&nbsp;<b><label for="CITY2"><span <TMPL_UNLESS NAME="DDESKTOP_SEARCH">class="font-customize-2"</TMPL_UNLESS>>City</span></label></b></td>
                <td>&nbsp;<b><label for="STATE2"><span <TMPL_UNLESS NAME="DDESKTOP_SEARCH">class="font-customize-2"</TMPL_UNLESS>>State</span></label></b><a href="javascript:void(0);" onClick="state_list('STATE2');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            </tr>
            <tr>
                <td class="nsinputs"><input type="text" name="CITY" id="CITY2" tabindex="211" size="30" value="" maxlength=255 onBlur="setTimeout('hide_search_suggest()',200);this.value=this.value.toUpperCase()" onKeyUp="city_state_suggest(this,event);" autocomplete="off">
                <p>
                <div class="city_state_suggest"></div>
                </td>
                <td class="nsinputs suggestible_state"><input type="text" name="STATE" id="STATE2" tabindex="212" size="3" maxlength="2" value="" onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="ZIP_SEARCH_TYPE" id="ZIP_SEARCH_TYPE2" size="5" maxlength="7" value="Zips"></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="DD_EVENT" id="ZIP_SEARCH_EVENT2" size="5" maxlength="20" value="SEARCH/SEARCH_DD_ZIPCODE">
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td class="no-print" align="center">
    <div id="ddSearchBlock">
	<input name="BUTTON" tabindex="213" class="ddSearchBtn" id="zip_city_submit" type="button" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1">
	<input name="BUTTON" tabindex="214" class="ddClearSrch" id="zip_city_clear" type="button" value="Clear Form">
     </div>
    </td>
</tr>
</table>
<div class="dd_search_results" id="zip_city_results" style="margin-top:10px;">

</div>
</div>
<div class="section-separator" style="height: 5px;"></div>
<div class="dd_searches zip_code_search <TMPL_UNLESS NAME="DDESKTOP_SEARCH">rbnBarPopoverSection</TMPL_UNLESS>" id="cities_zip_search">
[+] Find all cities in a Zip Code
</div>
<div class="dd_search_forms" id="cities_zip_search_form" style="display:none;">
<table cellspacing="3" border="0" width="100%">
<tr>
    <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
            <tr>
                <td>&nbsp;<b><label for="ZIP3"><span <TMPL_UNLESS NAME="DDESKTOP_SEARCH">class="font-customize-2"</TMPL_UNLESS>>Zip</span></label></b></td>
                <td class="nsinputs"><input type="text" name="ZIP" id="ZIP3" tabindex="221" size="5" maxlength="5" value=""></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="ZIP_SEARCH_TYPE" id="ZIP_SEARCH_TYPE3" size="5" maxlength="7" value="Cities"></td>
                <td class="nsinputs" style="display:none;"><input type="hidden" name="DD_EVENT" id="ZIP_SEARCH_EVENT3" size="5" maxlength="20" value="SEARCH/SEARCH_DD_ZIPCODE">
                <td>&nbsp;</td>
                <td class="no-print" align="center">
                <div id="ddSearchBlock">
                    <input name="BUTTON" tabindex="222" class="ddSearchBtn" id="cities_zip_submit" type="button" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1">
                    <input name="BUTTON" tabindex="223" class="ddClearSrch" id="cities_zip_clear" type="button" value="Clear Form">
                 </div>
                </td>
            </tr>
        </table>
    </td>
</tr>
</table>
<div class="dd_search_results" id="cities_zip_results" style="margin-top:10px;">

</div>
</div>
</td></tr></table>
<!-- END dynamic_desktop/zip_code_module.tpl -->
