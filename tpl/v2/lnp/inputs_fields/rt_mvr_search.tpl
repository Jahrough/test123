<!-- begin inputs_fields/rt_mvr_search.tpl -->
<INPUT type=hidden NAME="RT_MVR_SEARCH_BOTH" VALUE=<TMPL_VAR NAME=RT_MVR_SEARCH_BOTH>>
<INPUT type=hidden NAME="DPPA_VALUE" VALUE=<TMPL_VAR NAME=DPPA_VALUE>>
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>

      <INPUT type=hidden NAME="INIT_MAKE_MODEL" VALUE="1">
      <INPUT type=hidden NAME="SELECTED_MAKE" VALUE=<TMPL_VAR NAME=SELECTED_MAKE>>
      <INPUT type=hidden NAME="SELECTED_MODEL" VALUE=<TMPL_VAR NAME=SELECTED_MODEL>>
      <INPUT type=hidden NAME="DEMO" VALUE=<TMPL_VAR NAME=DEMO>>
      <INPUT type=hidden NAME="RT_MVR_RECID" VALUE="<TMPL_VAR NAME=RT_MVR_RECID>">
      <INPUT type=hidden NAME="RECID_OVERRIDE" VALUE="">
      <INPUT type=hidden NAME="LOCAL_ONLY" VALUE="0">
      <INPUT type=hidden NAME="PREVIOUS_SEARCH_WAS_LOCAL_ONLY" VALUE="<TMPL_VAR NAME=PREVIOUS_SEARCH_WAS_LOCAL_ONLY>">
      <INPUT type=hidden NAME="PRESENT_LOCAL_ONLY_OPTION" VALUE="<TMPL_VAR NAME=PRESENT_LOCAL_ONLY_OPTION>">
      <INPUT type=hidden NAME="PRESENT_LOCAL_ONLY_OPTION_SSN" VALUE="<TMPL_VAR NAME=PRESENT_LOCAL_ONLY_OPTION_SSN>">
      <INPUT type=hidden NAME="POLK_GATEWAY" VALUE="<TMPL_VAR NAME=POLK_GATEWAY>">
      <TMPL_IF DEMO><INPUT type=hidden NAME="HTMLPATH" VALUE=<TMPL_VAR NAME=HTMLPATH>></TMPL_IF>
      <tr>
        <td>
        <table border="0" cellpadding="2" cellspacing="0">
	  <tr>
	    <td valign="top"><b>NOTE:</b></td>
	    <td>The Motor Vehicle Locator includes data from various data providers.  Some data providers may require a Name and Address to be included in your search.  If you conduct a search without Name and Address and do not receive a match (or the match you were expecting), you may want to run another search including Name, Street Address, Zip Code or Name, Street Address and City/State.</td>
	  </tr>
        </table>
	</td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <TMPL_IF RT_MVR_SHOW_ALL_INPUTS><td>&nbsp;<b><label for="SSN">SSN</label></b></td></TMPL_IF>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
          </tr>
          <tr>
            <TMPL_IF RT_MVR_SHOW_ALL_INPUTS><td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="1" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td></TMPL_IF>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" size="10" tabindex="4" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <TMPL_IF RT_MVR_SHOW_ALL_INPUTS>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COMPANY_NAME">Company Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" id="COMPANY_NAME" tabindex="5" size="30" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      </TMPL_IF>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><b><label for="STREET_ADDRESS">Street Address</label></b><a href="javascript:void(0);" onClick="address_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="CITY">City</label></b></td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="6" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="7" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="8" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()<TMPL_UNLESS RT_MVR_SEARCH_BOTH>;check_rt_mvr_state(this)</TMPL_UNLESS>"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="9" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table cellpadding="2" cellspacing="0" border="0">
          <tr>
            <td>&nbsp;<b><label for="YEAR_MAKE">Year</label></b (yyyy)></td>
            <td>&nbsp;<b><label for="MAKE">Make</label></b></td>
            <td>&nbsp;<b><label for="MODEL">Model</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="YEAR_MAKE" id="YEAR_MAKE" size="8" tabindex="12" maxlength="4" onkeyup='enable_rt_mvr_fields()' value="<TMPL_VAR NAME=YEAR_MAKE>"></td>
            <td class="nsinputs" align="left">
      	      <select name="MAKE" id="MAKE" tabindex="13" onChange='init_rt_mvr_model()' STYLE="width: 130px;">
		<option value="" selected>          </option>
      	      </select>
            </td>
            <td class="nsinputs" align="left">
      	      <select name="MODEL" id="MODEL" tabindex="14" onChange='set_rt_mvr_model()' STYLE="width: 150px;">
      	      </select>
            </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table cellpadding="2" cellspacing="0" border="0">
          <tr>
            <td>&nbsp;<b><label for="VIN">VIN</label></b></td>
            <td>&nbsp;<b><label for="LICENSE_PLATE">Tag Number</label></b></td>
            <td>&nbsp;<b><label for="LICENSE_NUMBER">License Number</label></b></td>
            <td></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="VIN" id="VIN" tabindex="15" size="18" maxlength="30" value="<TMPL_VAR NAME=VIN>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_PLATE" id="LICENSE_PLATE" size="10" tabindex="16" maxlength="20" value="<TMPL_VAR NAME=LICENSE_PLATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs" colspan="2"><input type="text" name="LICENSE_NUMBER" size="25" id="LICENSE_NUMBER" tabindex="17" maxlength="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <br>
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="PHONETICS">Include similar sounding names</label></b><a class="inputlinklabel" href="javascript:void(0);" onClick="phonetics_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td><input type="checkbox" name="PHONETICS" id="PHONETICS" tabindex="13" value="1"<TMPL_IF NAME="PHONETICS">CHECKED</TMPL_IF>></td>
		  	<TMPL_IF NAME="SHOW_NON_GOV_SOURCE_OPT">
				<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="CHK_NONGOVSOURCES" id="CHK_NONGOVSOURCES" tabindex="14" value="1" CHECKED></td>
				<td><b><label for="CHK_NONGOVSOURCES">Include Non-Governmental Sources</label></b><a href="javascript:void(0);" onClick="nonGovSource_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>  
          	</TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>


<!-- end inputs_fields/rt_mvr_search.tpl -->
<script>
  <TMPL_IF NAME="DEMO">
  //disable input fields
  for(i=0; i<document.forms[0].elements.length; i++){
     if(document.forms[0].elements[i].type == 'text') {
         document.forms[0].elements[i].disabled = 'true';
     }
  }
  </TMPL_IF>
  init_rt_mvr_form("<TMPL_VAR NAME='JSPATH'>/data/mv_make_model.xml", "<TMPL_VAR NAME='GOV'>");
</script>
