<!-- begin inputs_fields/official_records_search.tpl -->
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
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="20" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="20" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" tabindex="3" size="15" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COMPANY_NAME">Company Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" id="COMPANY_NAME" tabindex="4" size="30" maxlength="255" value="<TMPL_VAR NAME=COMPANY_NAME>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td><input type="checkbox" name="STRICT" tabindex="5" value="1" id="strict_cb"
             <TMPL_IF NAME="STRICT">checked="checked" </TMPL_IF>/></td>
            <td nowrap>&nbsp;<label for="strict_cb">Strict Search</label>&nbsp;</td>
            <td align="left"><a href="javascript:void(0);" onClick="strict_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COUNTY">County</label></b></td>
	    <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td colspan="3">&nbsp;<b><label for="DATE_BEGIN">Filing Date Range (mm/dd/yyyy)</label></b>&nbsp; </td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COUNTY" id="COUNTY" tabindex="6" size="15" value="<TMPL_VAR NAME=COUNTY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input onClick="displayDatePicker('DATE_BEGIN','below');" type="text" name="DATE_BEGIN" id="DATE_BEGIN" tabindex="8" size="14" maxlength="10" value="<TMPL_VAR NAME=DATE_BEGIN>"></td>
            <td nowrap>&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input onClick="displayDatePicker('DATE_END','below');" type="text" name="DATE_END" tabindex="9" size="14" maxlength="10" value="<TMPL_VAR NAME=DATE_END>"></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/official_records_search.tpl -->
