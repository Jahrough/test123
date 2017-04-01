<!-- begin inputs_fields/sanction_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td nowrap valign="top">&nbsp;<span class=unifont1boldred><b>*</b></span></td>
            <td><b>Required Fields</b>&nbsp;--&nbsp;State field is required along with Last Name or Company Name.</td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label>&nbsp;*</b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
            <td><a href="javascript:void(0);" onClick="displayDatePicker('DOB','below');"><b>DOB<br>(mm/dd/yyyy)</b></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="LAST_NAME" name="LAST_NAME" tabindex="1" size="20" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="FIRST_NAME" name="FIRST_NAME" tabindex="2" size="16" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="MI" name="MI" size="12" tabindex="3" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="SSN" name="SSN" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>"></td>
            <td class="nsinputs"><input onClick="displayDatePicker('DOB','below');" type="text" id="DOB" name="DOB" size="10" tabindex="5" maxlength="10" value="<TMPL_VAR NAME=DOB>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COMPANY_NAME">Company or Organization Name</label>&nbsp;*</b></td>
            <td>&nbsp;<b><label for="FEIN">Tax ID (FEIN)</label></b></td>
            <td>&nbsp;<b><label for="UNIQUEID">NPI</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="COMPANY_NAME" name="COMPANY_NAME" tabindex="6" size="44" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="FEIN" name="FEIN" tabindex="7" size="20" value="<TMPL_VAR NAME=FEIN>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="UNIQUEID" size="14" tabindex="8" maxlength="15" value="<TMPL_VAR NAME=UNIQUEID>"></td>
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
            <td>&nbsp;<b><label for="STATE">State</label></b></b>&nbsp;*<a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="STREET_ADDRESS" name="STREET_ADDRESS" tabindex="9" size="30" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="CITY" name="CITY" tabindex="12" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="STATE" name="STATE" tabindex="11" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="ZIP" name="ZIP" tabindex="12" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LICENSE_NUMBER">License Number</label></b></td>
            <td>&nbsp;<b><label for="LICENSE_STATE">License State</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="LICENSE_NUMBER" name="LICENSE_NUMBER" tabindex="13" size="16" maxlength="11" value="<TMPL_VAR NAME=LICENSE_NUMBER>"></td>
            <td class="nsinputs"><input type="text" id="LICENSE_STATE" name="LICENSE_STATE" tabindex="14" size="11" maxlength="11" value="<TMPL_VAR NAME=LICENSE_STATE>"></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/sanction_search.tpl -->
