<!-- begin inputs_fields/da_basic_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name / Company</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">MI</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="40" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" size="1" tabindex="3" maxlength="1" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
	    <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/da_help.html#streetaddress','HelpWindow',680,490,1,1,1,1,1,0);void(0);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
	    <td>&nbsp;<b><label for="CITY">City</label></b></td>
            <td class="smalllabel">&nbsp;<input type="checkbox" name="EXCLUDE_CITY" id="EXCLUDE_CITY" value="yes" <TMPL_IF NAME=EXCLUDE_CITY>checked</TMPL_IF>><label for="EXCLUDE_CITY">&nbsp;Exclude This City</label></td>
	    <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="4" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs" colspan="2"><input type="text" name="CITY" id="CITY" tabindex="5" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="6" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COUNTY">County</label></b></td>
            <td>&nbsp;<b><label for="RADIUS">Radius</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COUNTY" id="COUNTY" tabindex="7" size="14" value="<TMPL_VAR NAME=COUNTY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="RADIUS" id="RADIUS" tabindex="8" size="3" maxlength="3" value="<TMPL_VAR NAME=RADIUS>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="0" cellspacing="0">
	  <tr>
                <td valign="middle"><b><label for="LOOKUP_TYPE">Search Options:</label></b></a>&nbsp; </td>
                <td valign="middle"><input class="inputbody" tabindex="9" type="radio" id="RES" name="LOOKUP_TYPE" value="3" <TMPL_IF NAME=LOOKUP_TYPE_3>checked</TMPL_IF>></td>
                <td valign="middle"><label for="RES">Residence</label></td>
                <td valign="middle"><input class="inputbody" tabindex="10" type="radio" id="BUS" name="LOOKUP_TYPE" value="2" <TMPL_IF NAME=LOOKUP_TYPE_2>checked</TMPL_IF>></td>
                <td valign="middle"><label for="BUS">Business</label></td>
                <td valign="middle"><input class="inputbody" tabindex="11" type="radio" id="ALL" name="LOOKUP_TYPE" id="LOOKUP_TYPE" value="4" <TMPL_IF NAME=LOOKUP_TYPE_4>checked</TMPL_IF>></td>
                <td valign="middle"><label for="ALL">All&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                <td valign="middle"><input type="checkbox" name="PHONETICS" id="PHONETICS" value="1"<TMPL_IF NAME=PHONETICS> CHECKED</TMPL_IF>></td>
                <td valign="middle"><label for="PHONETICS">&nbsp;Find Similar Sounding Names</label></td>
    	  </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/da_basic_search.tpl -->
