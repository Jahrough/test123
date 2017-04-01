<!-- begin inputs_fields/mp_specialities_search.tpl -->
      <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws_iframe.js"></script>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Medical Practice Specialty</b></td>
          </tr>
          <tr>
            <td class="nsinputs">
            <span class="smalllabel">
              <select tabindex="1" name="SPECIALITY">
              <TMPL_LOOP NAME="SPECIALITY_VALUES">
              <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
              </TMPL_LOOP>
              </select>
             </span>
            </td>
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
            <td class="nsinputs"><input type="text" name="STATE" tabindex="2" size="3" maxlength="2" value="<TMPL_IF COURT_STATE><TMPL_VAR NAME=COURT_STATE><TMPL_ELSE><TMPL_VAR NAME=STATE></TMPL_IF>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="3" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="4" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
            <td class="nsinputs"><input type="text" name="ADDITIONAL_TERMS" tabindex="5" size="38" value="<TMPL_VAR NAME=ADDITIONAL_TERMS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/mp_specialities_search.tpl -->
