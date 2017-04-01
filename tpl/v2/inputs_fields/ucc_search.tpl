<!-- begin inputs_fields/ucc_search.tpl -->
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
            <td>&nbsp;<b><label for="COMPANY_NAME">Company Name</label></b></td>
            <td>&nbsp;<b><label for="FEIN">FEIN</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" id="COMPANY_NAME" tabindex="1" size="30" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FEIN" id="FEIN" tabindex="2" size="10" maxlength="10" value="<TMPL_VAR NAME=FEIN>"></td>
          </tr>
        </table>
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
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="4" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="10" id="MI" tabindex="5" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="6" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
            <td>&nbsp;<b><label for="CITY">City</label></b></td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="7" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="8" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="9" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="10" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
	    <td>&nbsp;<b><label for="FILING_NUMBER">Original Filing Number</label></b></td>
	    <td colspan="3">&nbsp;<b><label for="START_DATE">Filing Date Range (mm/dd/yyyy)</label></b>&nbsp; </td>
            <td>&nbsp;<b><label for="FILING_JURISDICTION">Filing Jurisdiction</label></b><a href="javascript:void(0);" onClick="state_list('FILING_JURISDICTION');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="FILING_NUMBER" id="FILING_NUMBER" tabindex="11" size="15" maxlength="25" value="<TMPL_VAR NAME=FILING_NUMBER>"></td>
	    <td class="nsinputs"><input onClick="displayDatePicker('START_DATE','below');" type="text" name="START_DATE" id="START_DATE" tabindex="12" size="14" maxlength="10" value="<TMPL_VAR NAME=START_DATE>"></td>
            <td nowrap>&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input onClick="displayDatePicker('END_DATE','below');" type="text" name="END_DATE" tabindex="13" size="14" maxlength="10" value="<TMPL_VAR NAME=END_DATE>"></td>
            <td class="nsinputs"><input type="text" name="FILING_JURISDICTION" id="FILING_JURISDICTION" tabindex="14" size="3" maxlength="2" value="<TMPL_VAR NAME=FILING_JURISDICTION>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <br>
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td>&nbsp;<b><label for="PHONETICS">Include similar sounding names</label></b><a href="javascript:void(0);" onClick="phonetics_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td><input type="checkbox" name="PHONETICS" id="PHONETICS" tabindex="15" value="1" <TMPL_IF NAME="PHONETICS">checked="checked" </TMPL_IF>onClick="either_strict_or_phonetics(this)"/></td>
            <td>&nbsp;<b><label for="STRICT">Strict Search</label></b><a href="javascript:void(0);" onClick="strict_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td><input type="checkbox" name="STRICT" id="STRICT" tabindex="16" value="1" <TMPL_IF NAME="STRICT">checked="checked" </TMPL_IF>onClick="either_strict_or_phonetics(this)"/></td>
          </tr>
        </table>
        </td>
      </tr>


<!-- end inputs_fields/ucc_search.tpl -->
