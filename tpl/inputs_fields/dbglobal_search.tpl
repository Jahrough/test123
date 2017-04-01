<!-- begin inputs_fields/dbglobal_search.tpl -->
      <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws_iframe.js"></script>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Company Name</b></td>
            <td class="inputlabel">&nbsp;<b>Last Name</b></td>
            <td class="inputlabel">&nbsp;<b>First Name</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" tabindex="1" size="30" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Street Address</b></td>
            <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Country</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="4" size="22" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="5" size="10" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="6" size="3" maxlength="2" value="<TMPL_IF STATE_ORIGIN><TMPL_VAR NAME=STATE_ORIGIN><TMPL_ELSE><TMPL_VAR NAME=STATE></TMPL_IF>" onBlur="this.value=this.value.toUpperCase()"></td>
	    
            <td class="nsinputs">
            <span class="smalllabel">
              <select tabindex="7" name="COUNTRY">
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
            <td class="inputlabel">&nbsp;<b>Duns Number</b></td>
            <td class="inputlabel">&nbsp;<b>SIC Code</b></td>
            <td class="inputlabel">&nbsp;<b>Additional Terms</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="DUNS_NUMBER" tabindex="8" size="10" maxlength="10" value="<TMPL_VAR NAME=DUNS_NUMBER>"></td>
            <td class="nsinputs"><input type="text" name="SIC_CODE" tabindex="9" size="15" maxlength="255" value="<TMPL_VAR NAME=SIC_CODE>"></td>
            <td class="nsinputs"><input type="text" name="ADDITIONAL_TERMS" tabindex="10" size="38" maxlength="255" value="<TMPL_VAR NAME=ADDITIONAL_TERMS>"></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/dbglobal_search.tpl -->
