<!-- begin min/inputs_fields/adv_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
            <td>&nbsp;<b><label for="UNIQUEID">Unique ID</label></b><a href="javascript:void(0);" onClick="show_state_popup('statelist')"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="3" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>"></td>
            <td class="nsinputs"><input type="text" name="UNIQUEID" id="UNIQUEID" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=UNIQUEID>"></td>
          </tr>
        </table>
        </td>
      </tr>
      

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
            <td>&nbsp;<b><label for="CITY">City</label></b></td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="show_state_popup('statelist')"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
       
      <tr>
        <td align="left" valign="top">
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
		<td><br/><input type="checkbox" name="ADD_HIST" id="ADD_HIST" tabindex="80" value="1" <TMPL_IF NAME="ADD_HIST">checked="checked" </TMPL_IF>></td>
		<td nowrap><br/><label for="ADD_HIST">&nbsp;Include Address History&nbsp; $$</label></td>
		<td colspan="3" align="left"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','PhoneticWindow',309,270,0,0,0,0,0,0,'','searches/phonetic');"><br/><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
	  </tr>
        </table>
        </td>
      </tr>


      <tr>
        <td align="left" valign="top">
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
		<td><br/><input type="checkbox" name="ADD_PHONE" id="ADD_PHONE" tabindex="80" value="1" <TMPL_IF NAME="ADD_PHONE">checked="checked" </TMPL_IF>></td>
		<td nowrap><br/><label for="ADD_PHONE">&nbsp;Include Phone Info $$&nbsp;</label></td>
		<td align="left"><br/><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','StrictWindow',309,270,0,0,0,0,0,0,'','searches/strict');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
	  
	  </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td align="left" valign="top"><br/>
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
	  
	    <td nowrap><label for="POPULATION">Population to Search:</label>&nbsp; </td>
	    <td align='left'><input class="inputbody" tabindex="9" type="radio" name="POPULATION" value="1" <TMPL_IF NAME=POPULATION_1>checked</TMPL_IF>></td>
	    <td  align='left'>Core &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
	    <td align='left' ><input class="inputbody" tabindex="10" type="radio" name="POPULATION" value="2" <TMPL_IF NAME=POPULATION_2>checked</TMPL_IF>></td>
	    <td align='left' >All</td>

	  </tr>
        </table>
        </td>
      </tr>




<!-- end min/inputs_fields/adv_search.tpl -->
