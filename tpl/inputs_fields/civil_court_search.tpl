<!-- begin inputs_fields/civil_court_search.tpl -->
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
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" tabindex="4" size="20" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="unifont1">&nbsp;&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','JurisdictionWindow',309,270,0,0,0,0,0,0,'','searches/jurisdiction');"><b>Jurisdiction</b></a>&nbsp;</td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="5" size="15" maxlength="255" value="<TMPL_VAR NAME=CITY>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="6" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="JURISDICTION" tabindex="7" size="15" maxlength="255" value="<TMPL_VAR NAME=JURISDICTION>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <br/>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel" nowrap="nowrap"><a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','StrictWindow',309,270,0,0,0,0,0,0,'','searches/strict');"><b>Strict Search:</b></a>&nbsp;</td>
            <td><input type="checkbox" name="STRICT" tabindex="8" value="1" <TMPL_IF NAME="STRICT">checked="checked"</TMPL_IF>></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/civil_court_search.tpl -->
