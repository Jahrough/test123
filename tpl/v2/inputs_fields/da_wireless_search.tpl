
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
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">MI</label></b></td>
            <TMPL_IF NAME="SHOW_LINKID">
                <td nowrap>&nbsp;<b><label for="UNIQUEID">LexID<span class="sup">SM</span></label></b></td>
                <td><a href="javascript:void(0);" onClick="lexid_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
	    </TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="2" id="MI" tabindex="3" maxlength="1" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <TMPL_IF NAME="SHOW_LINKID"><td colspan="2" class="nsinputs"><input id="UNIQUEID" type="text" name="UNIQUEID" tabindex="4" size="11" maxlength="25" value="<TMPL_VAR NAME=UNIQUEID>"></td></TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
	    <td>&nbsp;<b><label for="CITY">City</label></b></td>
            <td class="smalllabel">&nbsp;</td>
	    <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
            <!--<td>&nbsp;<b>County</b></td>-->
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="5" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs" colspan="2"><input type="text" name="CITY" id="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
            <!--<td class="nsinputs"><input type="text" name="COUNTY" tabindex="9" size="14" value="<TMPL_VAR NAME=COUNTY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>-->
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
	    <td>&nbsp;<b><label for="COUNTY">County</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COUNTY" id="COUNTY" tabindex="10" size="14" value="<TMPL_VAR NAME=COUNTY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
      </tr>
   
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
	    <td>&nbsp;<b><label for="PHONE">Phone Number</label></b><a href="javascript:void(0);" onClick="phone_tip_7_or_10();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="PHONE" id="PHONE" tabindex="11" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"  maxlength=255 ></td>
          </tr>
        </table>
      </tr>
      
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="0" cellspacing="0">
	  <tr>
                <td valign="middle"><input type="checkbox" name="INCLUDE_VERIFIED" id="INCLUDE_VERIFIED" value="1"<TMPL_IF NAME=INCLUDE_VERIFIED> CHECKED</TMPL_IF>></td>
                <td valign="middle"><label for="INCLUDE_VERIFIED">&nbsp;Include Directory Assistance Listings</label></td>
    	  </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/da_basic_search.tpl -->
