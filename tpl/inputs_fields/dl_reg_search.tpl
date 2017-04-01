<!-- begin inputs_fields/dl_reg_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Last Name</b></td>
            <td class="inputlabel">&nbsp;<b>First Name</b></td>
            <td class="inputlabel">&nbsp;<b>Middle Name</b></td>
            <td class="inputlabel">&nbsp;<b>Company Name</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="15" tabindex="3" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" size="25" tabindex="4" maxlength="255" value="<TMPL_VAR NAME=COMPANY_NAME>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Street Address</b></td>
            <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Zip</b></td>
            <td class="inputlabel">&nbsp;<b>SSN</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="5" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
            <td class="nsinputs"><input type="text" name="SSN" size="12" tabindex="9" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>VIN</b></td>
            <td class="inputlabel">&nbsp;<b>Tag Number</b></td>
            <td class="inputlabel">&nbsp;<b>License Number</b></td>
            <td class="smallcontrastlabel"></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="VIN" size="23" tabindex="10" maxlength="20" value="<TMPL_VAR NAME=VIN>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_PLATE" size="10" tabindex="11" maxlength="20" value="<TMPL_VAR NAME=LICENSE_PLATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs" colspan="2"><input type="text" name="LICENSE_NUMBER" size="25" tabindex="12" maxlength="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" autocomplete="off" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <br>
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td class="unifont1"><a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','PhoneticWindow',309,270,0,0,0,0,0,0,'','searches/phonetic');"><b>Phonetic Search:</b></a>&nbsp;</td>
            <td><input type="checkbox" name="PHONETICS" tabindex="13" value="1"<TMPL_IF NAME="PHONETICS">CHECKED</TMPL_IF>></td>
          </tr>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/dl_reg_search.tpl -->
