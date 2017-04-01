<!-- begin inputs_fields/prudential_report.tpl -->
      <INPUT type=hidden NAME="ACTION_REPORT" VALUE="<TMPL_VAR NAME=ACTION>">
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0" width="85%">
          <tr>
            <td width="5%"><hr align="left" width="100%" /></td>
            <td width="40%" align="center"><b>Person Input Data</b></td>
            <td width="55%"><hr align="right" width="100%" /></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="NAME"><b>Name</b></label></td>
            <td>&nbsp;<label for="SSN"><b>SSN</b></label></td>
            <td>&nbsp;<label for="DOB"><b><label for="DOB">DOB</label></b><a href="javascript:void(0);" onClick="dob_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="NAME" name="NAME" tabindex="1" size="20" value="<TMPL_VAR NAME=NAME>" maxlength=128 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="SSN" name="SSN" tabindex="2" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" id="DOB" name="DOB" size="14" tabindex="3" maxlength="10" value="<TMPL_VAR NAME=DOB>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="STREET_ADDRESS"><b>Address</b></label></td>
            <td>&nbsp;<label for="CITY"><b>City</b></label></td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<label for="ZIP"><b>Zip</b></label></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="STREET_ADDRESS" name="STREET_ADDRESS" tabindex="4" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="CITY" name="CITY" tabindex="5" size="20" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="STATE" name="STATE" tabindex="6" size="6" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="ZIP" name="ZIP" tabindex="7" size="7" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="PHONE"><b>Telephone</b></label></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="PHONE" name="PHONE" tabindex="8" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"></td>
          </tr>
        </table>
        </td>
      </tr>



      <tr>
        <td>&nbsp;</td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0" width="85%">
          <tr>
            <td width="5%"><hr align="left" width="100%" /></td>
            <td width="40%" align="center"><b>Business Input Data</b></td>
            <td width="55%"><hr align="right" width="100%" /></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td>&nbsp;<label for="BUS_NAME"><b>Company Name</b></label></td>
            </tr>
            <tr>
              <td class="nsinputs"><input type="text" id="BUS_NAME" name="BUS_NAME" tabindex="9" size="30" value="<TMPL_VAR NAME=BUS_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="BUS_STREET_ADDRESS"><b>Street Address</b></label></td>
            <td>&nbsp;<label for="BUS_CITY"><b>City</b></label></td>
            <td>&nbsp;<b><label for="BUS_STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('BUS_STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<label for="BUS_ZIP"><b>Zip</b></label></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="BUS_STREET_ADDRESS" name="BUS_STREET_ADDRESS" tabindex="10" size="27" value="<TMPL_VAR NAME=BUS_STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="BUS_CITY" name="BUS_CITY" tabindex="11" size="15" value="<TMPL_VAR NAME=BUS_CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="BUS_STATE" name="BUS_STATE" tabindex="12" size="3" maxlength="2" value="<TMPL_VAR NAME=BUS_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="BUS_ZIP" name="BUS_ZIP" tabindex="13" size="5" maxlength="5" value="<TMPL_VAR NAME=BUS_ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="BUS_PHONE"><b>Phone</b></label></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="BUS_PHONE" name="BUS_PHONE" tabindex="14" size="12" maxlength="14" value="<TMPL_VAR NAME=BUS_PHONE>"></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0" width="85%">
          <tr>
            <td width="55%"><hr align="right" width="100%" /></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="PRUD_REF"><b>Combined Comp Rep Reference</b></label></td>
            <td>&nbsp;<label for="ARCHIVED_NUM"><b>Archived Number</b></label></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="PRUD_REF" name="PRUD_REF" tabindex="15" size="27" value="<TMPL_VAR NAME=PRUD_REF>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="ARCHIVED_NUM" name="ARCHIVED_NUM" tabindex="16" size="15" value="<TMPL_VAR NAME=ARCHIVED_NUM>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>







<!-- end inputs_fields/prudential_report.tpl -->
