<!-- begin inputs_fields/fed_civil_court_search.tpl -->
      <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws_iframe.js"></script>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Last Name</b></td>
            <td class="inputlabel">&nbsp;<b>First Name</b></td>
            <td class="inputlabel">&nbsp;<b>Company Name</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" tabindex="3" size="20" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Case Number</b></td>
            <td class="inputlabel">&nbsp;<b>Case Name</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Additional Terms</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="CASE_NUMBER" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=CASE_NUMBER>"></td>
            <td class="nsinputs"><input type="text" name="CASE_NAME" tabindex="5" size="27" value="<TMPL_VAR NAME=CASE_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="6" size="3" maxlength="2" value="<TMPL_IF COURT_STATE><TMPL_VAR NAME=COURT_STATE><TMPL_ELSE><TMPL_VAR NAME=STATE></TMPL_IF>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ADDITIONAL_TERMS" tabindex="7" size="38" value="<TMPL_VAR NAME=ADDITIONAL_TERMS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
	  
          <tr>
	   <td><table><tr>
            <td class="inputlabel">&nbsp;<b>Date</b></td>
            <td class="inputlabel">&nbsp;&nbsp;&nbsp;</td>
            <td class="nsinputs" valign="top">
            <span class="smalllabel">
              <input tabindex="8" type="radio" <TMPL_VAR NAME=ACHECK> name="DATE_BUTTON" value="AFT"> &nbsp;
              <select tabindex="9" name="AFTER_DATE">
              <TMPL_LOOP NAME="DATE_VALUES">
               <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
              </TMPL_LOOP>
              </select>
            </span>
            </td>
	    </tr></table></td>
          </tr>

	  <tr>
	   <td><table><tr>
            <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="nsinputs" valign="top">
            <span class="smalllabel">
              <input tabindex="10" type="radio" <TMPL_VAR NAME=RCHECK> name="DATE_BUTTON" value="RNG"> &nbsp;
               <a href="javascript:void(0);" onClick="displayDatePicker('NDATE_BEGIN','below');"><b>From:</b></a> &nbsp;&nbsp;<input type=text name="NDATE_BEGIN" tabindex="11" size="10" value="<TMPL_VAR NAME=NDATE_BEGIN>" maxlength=30> &nbsp; &nbsp; &nbsp;
               <a href="javascript:void(0);" onClick="displayDatePicker('NDATE_END','below');"><b>To</a>:</b> &nbsp;&nbsp;<input type=text name="NDATE_END" tabindex="12" size="10" value="<TMPL_VAR NAME=NDATE_END>" maxlength=30><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>(mm/dd/yyyy) OR (mm/yyyy) OR (yyyy)</b> 
            </span>
            </td>
	  </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/fed_civil_court_search.tpl -->
