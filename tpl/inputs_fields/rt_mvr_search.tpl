<!-- begin inputs_fields/rt_mvr_search.tpl -->
      <INPUT type=hidden NAME="INIT_MAKE_MODEL" VALUE="1">
      <INPUT type=hidden NAME="SELECTED_MAKE" VALUE=<TMPL_VAR NAME=SELECTED_MAKE>>
      <INPUT type=hidden NAME="SELECTED_MODEL" VALUE=<TMPL_VAR NAME=SELECTED_MODEL>>
      <INPUT type=hidden NAME="DEMO" VALUE=<TMPL_VAR NAME=DEMO>>
      <INPUT type=hidden NAME="LOCAL_ONLY" VALUE="0">
      <INPUT type=hidden NAME="PREVIOUS_SEARCH_WAS_LOCAL_ONLY" VALUE="<TMPL_VAR NAME=PREVIOUS_SEARCH_WAS_LOCAL_ONLY>">
      <INPUT type=hidden NAME="PRESENT_LOCAL_ONLY_OPTION" VALUE="<TMPL_VAR NAME=PRESENT_LOCAL_ONLY_OPTION>">
      <INPUT type=hidden NAME="PRESENT_LOCAL_ONLY_OPTION_SSN" VALUE="<TMPL_VAR NAME=PRESENT_LOCAL_ONLY_OPTION_SSN>">
      <INPUT type=hidden NAME="POLK_GATEWAY" VALUE="<TMPL_VAR NAME=POLK_GATEWAY>">
      <TMPL_IF DEMO><INPUT type=hidden NAME="HTMLPATH" VALUE=<TMPL_VAR NAME=HTMLPATH>></TMPL_IF>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Last Name</b></td>
            <td class="inputlabel">&nbsp;<b>First Name</b></td>
            <td class="inputlabel">&nbsp;<b>Middle Name</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" tabindex="3" size="15" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
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
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist');">State</a></td>
            <td class="inputlabel">&nbsp;<b>Zip</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()<TMPL_UNLESS RT_MVR_SEARCH_BOTH>;check_rt_mvr_state(this)</TMPL_UNLESS>"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td>
        <table cellpadding="2" cellspacing="0" border="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Year</b> (yyyy)</td>
            <td class="inputlabel">&nbsp;<b>Make</b></td>
            <td class="inputlabel">&nbsp;<b>Model</b></td>
            <td class="inputlabel">&nbsp;<b>VIN</b></td>
            <td class="inputlabel">&nbsp;<b>Tag Number</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="YEAR_MAKE" size="8" tabindex="9" maxlength="4" onkeyup='enable_rt_mvr_fields()' value="<TMPL_VAR NAME=YEAR_MAKE>"></td>
            <td class="nsinputs" align="left">
      	      <select name="MAKE" tabindex="10" onChange='init_rt_mvr_model()' STYLE="width: 130px;">
      	        <option value="1" selected>          </option>
      	      </select>
            </td>
            <td class="nsinputs" align="left">
      	      <select name="MODEL" tabindex="11" onChange='set_rt_mvr_model()' STYLE="width: 150px;">
      	      </select>
            </td>
            <td class="nsinputs"><input type="text" name="VIN" tabindex="12" size="18" maxlength="30" value="<TMPL_VAR NAME=VIN>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_PLATE" size="10" tabindex="13" maxlength="20" value="<TMPL_VAR NAME=LICENSE_PLATE>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>

<!-- end inputs_fields/rt_mvr_search.tpl -->
<script>
  <TMPL_IF NAME="DEMO">
  //disable input fields
  for(i=0; i<document.forms[0].elements.length; i++){
     if(document.forms[0].elements[i].type == 'text') {
         document.forms[0].elements[i].disabled = 'true';
     }
  }
  </TMPL_IF>
  init_rt_mvr_form("<TMPL_VAR NAME='JSPATH'>/data/mv_make_model.xml", "<TMPL_VAR NAME='GOV'>");
</script>
