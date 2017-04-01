<!-- begin inputs_fields/lien_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Last Name</b></td>
            <td class="inputlabel">&nbsp;<b>First Name</b></td>
            <td class="inputlabel">&nbsp;<b>Middle Name</b></td>
            <td class="inputlabel">&nbsp;<b>Company Name</b></td>
            <td class="inputlabel">&nbsp;<b>SSN</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" tabindex="3" size="10" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" tabindex="4" size="20" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength="255" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="SSN" tabindex="5" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
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
            <td class="inputlabel">&nbsp;<b>FEIN</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="21" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="22" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="23" size="3" maxlength="2" value="<TMPL_IF COURT_STATE><TMPL_VAR NAME=COURT_STATE><TMPL_ELSE><TMPL_VAR NAME=STATE></TMPL_IF>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="24" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
            <td class="nsinputs"><input type="text" name="FEIN" tabindex="25" size="10" maxlength="10" value="<TMPL_VAR NAME=FEIN>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Case/Filing Number</b></td>
            <TMPL_IF NAME=SHOW_IRS_SERIAL_NUMBER>
            <td class="inputlabel">&nbsp;<b>IRS Serial No. (SLID)</b></td>
            </TMPL_IF>
            <TMPL_IF NAME="SHOW_LINKID"><td class="inputlabel">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','LinkIDWindow',309,270,0,0,0,0,0,0,'','searches/linkid');"><b>LexID<span class="sup">SM</span></b></a></td></TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="CASE_NUMBER" tabindex="26" size="20" maxlength="50" value="<TMPL_VAR NAME=CASE_NUMBER>"></td>
            <TMPL_IF NAME=SHOW_IRS_SERIAL_NUMBER>
            <td class="nsinputs"><input type="text" name="IRS_SERIAL_NUMBER" tabindex="27" size="20" maxlength="50" value="<TMPL_VAR NAME=IRS_SERIAL_NUMBER>"></td>
            </TMPL_IF>
            <TMPL_IF NAME="SHOW_LINKID"><td class="nsinputs"><input type="text" name="UNIQUEID" tabindex="28" size="11" maxlength="25" value="<TMPL_VAR NAME=UNIQUEID>"></td></TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <br/>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel" nowrap><a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','StrictWindow',309,270,0,0,0,0,0,0,'','searches/strict');"><b>Strict Search:</b></a>&nbsp;</td>
            <td><input type="checkbox" name="STRICT" tabindex="29" value="1" <TMPL_IF NAME="STRICT">checked="checked"</TMPL_IF>></td>
          </tr>
        </table>
        </td>
      </tr>

<!-- end inputs_fields/lien_search.tpl -->
