<!-- begin inputs_fields/dbglobal_search.tpl -->
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
            <td>&nbsp;<label for="COMPANY_NAME"><b>Company Name</b></label></td>
            <td>&nbsp;<label for="LAST_NAME"><b>Last Name</b></label></td>
            <td>&nbsp;<label for="FIRST_NAME"><b>First Name</b></label></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="COMPANY_NAME" name="COMPANY_NAME" tabindex="1" size="30" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="LAST_NAME" name="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="FIRST_NAME" name="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="STREET_ADDRESS"><b>Street Address</b></label></td>
            <td>&nbsp;<label for="CITY"><b>City</b></label></td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<label for="COUNTRY"><b>Country</b></label></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="STREET_ADDRESS" name="STREET_ADDRESS" tabindex="4" size="22" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="CITY" name="CITY" tabindex="5" size="10" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="STATE" name="STATE" tabindex="6" size="3" maxlength="2" value="<TMPL_IF STATE_ORIGIN><TMPL_VAR NAME=STATE_ORIGIN><TMPL_ELSE><TMPL_VAR NAME=STATE></TMPL_IF>" onBlur="this.value=this.value.toUpperCase()"></td>
	    
            <td class="nsinputs">
            <span class="smalllabel">
              <select tabindex="7" name="COUNTRY" id="COUNTRY">
	        <TMPL_INCLUDE NAME="inputs_fields/dbglobal_countries.tpl">
              </select>
	      <TMPL_IF NAME="COUNTRY">
		<script>
		    document.forms[0].COUNTRY.value = '<TMPL_VAR NAME="COUNTRY">';
		</script>
	      </TMPL_IF>
             </span>
            </td>

          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="DUNS_NUMBER"><b>Duns Number</b></label></td>
            <td>&nbsp;<label for="SIC_CODE"><b>SIC Code</b></label></td>
            <td>&nbsp;<label for="ADDITIONAL_TERMS"><b>Additional Terms</b></label></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="DUNS_NUMBER" name="DUNS_NUMBER" tabindex="8" size="10" maxlength="10" value="<TMPL_VAR NAME=DUNS_NUMBER>"></td>
            <td class="nsinputs"><input type="text" id="SIC_CODE" name="SIC_CODE" tabindex="9" size="15" maxlength="255" value="<TMPL_VAR NAME=SIC_CODE>"></td>
            <td class="nsinputs"><input type="text" id="ADDITIONAL_TERMS" name="ADDITIONAL_TERMS" tabindex="10" size="38" maxlength="255" value="<TMPL_VAR NAME=ADDITIONAL_TERMS>"></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/dbglobal_search.tpl -->
