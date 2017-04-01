<!-- begin inputs_fields/rt_phone_search.tpl -->

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
          </tr>
          <tr>
            <td class="nsinputs"><input id="LAST_NAME" type="text" name="LAST_NAME" tabindex="1" size="45" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input id="FIRST_NAME" type="text" name="FIRST_NAME" tabindex="2" size="25" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input id="MI" type="text" name="MI" size="1" tabindex="3" maxlength="1" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<input type="checkbox" name="PHONETICS" id="PHONETICS" tabindex="4" value="1" <TMPL_IF NAME="PHONETICS">checked="checked" </TMPL_IF>onClick="either_strict_or_phonetics(this)"/></td>
            <td>&nbsp;<b><label for="PHONETICS">Include similar sounding names</label></b><a href="javascript:void(0);" onClick="phonetics_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
        </table>
        </td>
      </tr>
      <TMPL_IF GCOL>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COMPANY_NAME">Company Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" id="COMPANY_NAME" tabindex="5" size="30" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      </TMPL_IF>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
	    <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
            <td>&nbsp;<b><label for="CITY">City</label></b></td>
            <td class="smalllabel">&nbsp;</td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input id="STREET_ADDRESS" type="text" name="STREET_ADDRESS" tabindex="6" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs" colspan="2"><input id="CITY" type="text" name="CITY" tabindex="7" size="21" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input id="STATE" type="text" name="STATE" tabindex="8" size="4" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input id="ZIP" type="text" name="ZIP" tabindex="9" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="PHONE">Phone Number</label></b><a href="javascript:void(0);" onClick="phone_tip_7_or_10();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
            <TMPL_IF NAME="SHOW_LINKID">
              <td nowrap>&nbsp;<b><label for="UNIQUEID">LexID<span class="sup">SM</span></label></b></td>
              <td><a href="javascript:void(0);" onClick="lexid_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            </TMPL_IF>
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td class="nsinputs"><input id="PHONE" type="text" name="PHONE" tabindex="10" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"  maxlength=255 ></td>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="11" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <TMPL_IF NAME="SHOW_LINKID"><td colspan="2" class="nsinputs"><input id="UNIQUEID" type="text" name="UNIQUEID" tabindex="12" size="11" maxlength="25" value="<TMPL_VAR NAME=UNIQUEID>"></td></TMPL_IF>
          </tr>
        </table>
      </tr>
      <TMPL_IF GCOL>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
	    	<td>&nbsp;<b><label for="LISTING_TYPE">Listing Type</label></b></td>
            <td colspan="4">&nbsp;</td>
          </tr>
          <tr>
            <td class="nsinputs">
              <select name="LISTING_TYPE" id="LISTING_TYPE" tabindex="13" value="<TMPL_VAR NAME=LISTING_TYPE>">
                <option value="All" <TMPL_IF NAME="LISTING_TYPE_A">selected="selected"</TMPL_IF>>All</option>
                <option value="Residence" <TMPL_IF NAME="LISTING_TYPE_R">selected="selected"</TMPL_IF>>Residence</option>
                <option value="Business" <TMPL_IF NAME="LISTING_TYPE_B">selected="selected"</TMPL_IF>>Business</option>
              </select>
            </td>
            <td colspan="4">&nbsp;</td>
          </tr>
        </table>
        </td>
      </tr>
     </TMPL_IF>
<!-- end inputs_fields/rt_phone_search.tpl -->
