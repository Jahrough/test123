<!-- begin inputs_fields/canadian_phones_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">MI</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="40" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="1" id="MI" tabindex="3" maxlength="1" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
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
	    <td>&nbsp;<b><label for="STATE">Province</label></b><a href="javascript:void(0);" onClick="state_list('STATE','CAONLY');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
	    <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="4" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="5" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
	    <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="6" size="5" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="ZIP">Postal Code</label></b></td>
            <td>&nbsp;<b><label for="PHONE">Phone Number</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="7" size="8" maxlength="6" value="<TMPL_VAR NAME=ZIP>"  onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="PHONE" id="PHONE" tabindex="8" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"  maxlength=255 ></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <br>
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
	    <td>&nbsp;<b><label for="PHONETICS">Include similar sounding names</label></b><a href="javascript:void(0);" onClick="phonetics_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td valign="middle"><input type="checkbox" name="PHONETICS" id="PHONETICS" tabindex="13" value="1"<TMPL_IF NAME="PHONETICS">CHECKED</TMPL_IF>></td>
          </tr>
        </table>
        </td>
      </tr>

<!-- end inputs_fields/canadian_phones_search.tpl -->
