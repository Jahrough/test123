<!-- begin inputs_fields/dl_reg_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
            <TMPL_IF NAME="SHOW_LINKID">
                <td nowrap>&nbsp;<b><label for="UNIQUEID">LexID<span class="sup">SM</span></label></b></td>
                <td><a href="javascript:void(0);" onClick="lexid_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            </TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="10" id="MI" tabindex="3" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="SSN" size="12" id="SSN" tabindex="4" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off" onBlur="this.value=this.value.toUpperCase()"></td>
			<TMPL_IF NAME="SHOW_LINKID"><td colspan="2" class="nsinputs"><input id="UNIQUEID" type="text" name="UNIQUEID" tabindex="5" size="11" maxlength="25" value="<TMPL_VAR NAME=UNIQUEID>"></td></TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COMPANY_NAME">Company Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" size="25" id="COMPANY_NAME" tabindex="6" maxlength="255" value="<TMPL_VAR NAME=COMPANY_NAME>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
            <td>&nbsp;<b><label for="CITY">City</label></b></td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="7" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="8" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="9" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="10" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="VIN">VIN</label></b></td>
            <td>&nbsp;<b><label for="LICENSE_PLATE">*&nbsp;Tag Number</label></b></td>
            <td>&nbsp;<b><label for="LICENSE_NUMBER">License Number</label></b></td>
            <td></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="VIN" size="23" id="VIN" tabindex="110" maxlength="20" value="<TMPL_VAR NAME=VIN>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_PLATE" size="10" id="LICENSE_PLATE" tabindex="12" maxlength="20" value="<TMPL_VAR NAME=LICENSE_PLATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs" colspan="2"><input type="text" name="LICENSE_NUMBER" size="25" id="LICENSE_NUMBER" tabindex="13" maxlength="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">*&nbsp;Tag Number search does not yield results in Nevada</td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <br>
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td>&nbsp;<input type="checkbox" name="PHONETICS" id="PHONETICS" tabindex="14" value="1"<TMPL_IF NAME="PHONETICS">CHECKED</TMPL_IF>></td>
            <td><b><label for="PHONETICS">Include similar sounding names</label></b><a href="javascript:void(0);" onClick="phonetics_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
		  	<TMPL_IF NAME="SHOW_NON_GOV_SOURCE_OPT">
				<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="CHK_NONGOVSOURCES" id="CHK_NONGOVSOURCES" tabindex="14" value="1" CHECKED></td>
				<td><b><label for="CHK_NONGOVSOURCES">Include Non-Governmental Sources</label></b><a href="javascript:void(0);" onClick="nonGovSource_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>  
          	</TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/dl_reg_search.tpl -->
