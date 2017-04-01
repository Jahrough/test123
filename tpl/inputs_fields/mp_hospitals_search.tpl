<!-- begin inputs_fields/mp_hospitals_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Hospital Name</b></td>
            <td class="inputlabel">&nbsp;<b>Telephone</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="NAME" tabindex="1" size="25" value="<TMPL_VAR NAME=NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="TELEPHONE" tabindex="2" size="15" value="<TMPL_VAR NAME=TELEPHONE>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="inputlabel">&nbsp;<b>Zip</b></td>
            <td class="inputlabel">&nbsp;<b>Additional Terms</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="3" size="3" maxlength="2" value="<TMPL_IF COURT_STATE><TMPL_VAR NAME=COURT_STATE><TMPL_ELSE><TMPL_VAR NAME=STATE></TMPL_IF>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="4" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="5" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
            <td class="nsinputs"><input type="text" name="ADDITIONAL_TERMS" tabindex="6" size="38" value="<TMPL_VAR NAME=ADDITIONAL_TERMS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/mp_hospitals_search.tpl -->
