<!-- begin inputs_fields/da_basic_search.tpl -->
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Last Name / Company</b></td>
            <td class="inputlabel">&nbsp;<b>First Name</b></td>
            <td class="inputlabel">&nbsp;<b>MI</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="1" size="45" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="2" size="25" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="1" tabindex="3" maxlength="1" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel"><a class="inputlinklabel" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/da_help.html#streetaddress','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Street Address</a></td>
	    <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="smalllabel">&nbsp;<input type="checkbox" name="EXCLUDE_CITY" value="yes" <TMPL_IF NAME=EXCLUDE_CITY>checked</TMPL_IF>>&nbsp;Exclude This City</td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="inputlabel">&nbsp;<b>County</b></td>
            <td class="inputlabel">&nbsp;<b>Radius</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="4" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs" colspan="2"><input type="text" name="CITY" tabindex="5" size="21" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="6" size="4" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="COUNTY" tabindex="7" size="14" value="<TMPL_VAR NAME=COUNTY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="RADIUS" tabindex="8" size="3" maxlength="3" value="<TMPL_VAR NAME=RADIUS>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="0" cellspacing="0">
	  <tr>
                <td class="inputlabel" valign="middle"><b>Search Options:</b></a>&nbsp; </td>
                <td valign="middle"><input class="inputbody" tabindex="9" type="radio" name="LOOKUP_TYPE" value="3" <TMPL_IF NAME=LOOKUP_TYPE_3>checked</TMPL_IF>></td>
                <td class="inputlabel" valign="middle">Residence</td>
                <td valign="middle"><input class="inputbody" tabindex="10" type="radio" name="LOOKUP_TYPE" value="2" <TMPL_IF NAME=LOOKUP_TYPE_2>checked</TMPL_IF>></td>
                <td class="inputlabel" valign="middle">Business</td>
                <td valign="middle"><input class="inputbody" tabindex="11" type="radio" name="LOOKUP_TYPE" value="4" <TMPL_IF NAME=LOOKUP_TYPE_4>checked</TMPL_IF>></td>
                <td class="inputlabel" valign="middle">All&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td valign="middle"><input type="checkbox" name="PHONETICS" value="1"<TMPL_IF NAME=PHONETICS> CHECKED</TMPL_IF>></td>
                <td class="inputlabel" valign="middle">&nbsp;Find Similar Sounding Names</td>
    	  </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/da_basic_search.tpl -->
