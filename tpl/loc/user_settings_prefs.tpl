<!-- Begin user_settings_prefs.tpl-->
<table border="0" cellpadding="0" cellspacing="0" width="620" class="myaccountbody">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountbody">
	  <tr>
	    <td class="smallfont1">
	    <span class="myaccountlabel">Other User Settings:</span>

	<ol style="margin-left:10px;">
	<li><label for="tz">Change Time Zone </label>&nbsp;
            <span class="smalllabel">
              <select name="tz" id="tz">
              <TMPL_LOOP NAME="TZ_VALUES">
              <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
              </TMPL_LOOP>
              </select>
             </span>
		<br>
		Please choose the time zone to be used for your account activity.&nbsp;&nbsp;The time zone chosen will be used as the default time zone for detailed billing, security, and activity and should be the time zone where the searches are conducted from.
		</li>

	      <br><br>
	      <li><label for="clear_reference_code">Clear Reference Code with search form</label>&nbsp;<input id="clear_reference_code" type="checkbox" name="clear_reference_code" value="yes" <TMPL_VAR NAME="clear_reference_code">> </li>
            <TMPL_IF ALLOW_ZIP_CITY_AUTOCOMPLETE>
                 <br><br>
                 <li>
                    <label for="enable_zip_city_autocomplete">Enable Zip and City Autocomplete on search forms</label>&nbsp;<input id="enable_zip_city_autocomplete" type="checkbox" name="enable_zip_city_autocomplete" value="yes" <TMPL_VAR NAME="enable_zip_city_autocomplete">>
                </li>
            </TMPL_IF>
	    </ol>
	    </td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<!-- End user_settings_prefs.tpl-->
