<!-- begin  loc/input_fields/bus_search.tpl,v $ -->
      <INPUT type=hidden NAME="ACTION" VALUE="<TMPL_VAR NAME=ACTION>">
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COMPANY_NAME">Company Name</label></b></td>
            <td>&nbsp;<b><label for="FEIN">TIN</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" id="COMPANY_NAME" tabindex="1" size="25" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FEIN" id="FEIN" tabindex="2" size="20" maxlength="10" value="<TMPL_VAR NAME=FEIN>"></td>
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
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="4" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="5" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" tabindex="5" size="10" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
	    <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="6" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>"></td>
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
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="show_state_popup('statelist')"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
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
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="PHONE">Phone Number</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="PHONE" id="PHONE" tabindex="20" size="12" maxlength="255" value="<TMPL_VAR NAME=PHONE>"></td>
          </tr>
        </table>
        </td>
      </tr> 


<!-- end loc/input_fields/bus_search.tpl,v $ -->
