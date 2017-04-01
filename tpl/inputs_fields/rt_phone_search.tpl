<!-- begin inputs_fields/rt_phone_search.tpl -->
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Last Name</b></td>
            <td class="inputlabel">&nbsp;<b>First Name</b></td>
            <td class="inputlabel">&nbsp;<b>MI</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="1" size="45" value="<TMPL_VAR NAME=LAST_NAME>" maxlength="255" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="2" size="25" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength="255" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="1" tabindex="3" maxlength="1" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
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
            <td class="smalllabel">&nbsp;</td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Zip</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="4" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength="255" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs" colspan="2"><input type="text" name="CITY" tabindex="5" size="21" value="<TMPL_VAR NAME=CITY>" maxlength="255" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="6" size="4" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="7" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Phone Number</b></td>
            <td class="inputlabel">&nbsp;<b>SSN</b></td>
            <td class="inputlabel">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','LinkIDWindow',309,270,0,0,0,0,0,0,'','searches/linkid');"><b>LexID<span class="sup">SM</span></b></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="PHONE" tabindex="11" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"/></td>
            <td class="nsinputs"><input type="text" name="SSN" autocomplete="off" tabindex="12" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>"/></td>
            <td class="nsinputs"><input type="text" name="UNIQUEID" tabindex="13" size="12" maxlength="14" value="<TMPL_VAR NAME=UNIQUEID>"/></td>
          </tr>
        </table>
      </tr>
<!-- end inputs_fields/rt_phone_search.tpl -->
