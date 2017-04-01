<!-- begin inputs_fields/instant_id_report.tpl -->
      <INPUT type=hidden NAME="ACTION_REPORT" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
      <INPUT type=hidden NAME="INSTANTID_CURRENT_VERSION" VALUE="<TMPL_VAR NAME=INSTANTID_CURRENT_VERSION>">
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td nowrap valign="top">&nbsp;<span class=unifont1boldred><b>*</b></span></td>
            <td><b>Required Fields</b>&nbsp; -- &nbsp;Note: The First Name, Last Name and Address fields are required. Address fields require Street Address and either City and State or Zip.</td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b>&nbsp;*</td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b>&nbsp;*</td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" size="10" tabindex="3" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b>&nbsp;*</td>
            <td>&nbsp;<b><label for="CITY">City</label></b>&nbsp;*</td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a>*</td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b>&nbsp;*</td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="7" size="9" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="PHONE">Home Phone</label></b></td>
            <td><b><label for="DOB">DOB</label></b><a href="javascript:void(0);" onClick="dob_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="PHONE" id="PHONE" tabindex="9" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"></td>
            <td class="nsinputs"><input type="text" name="DOB" size="14" id="DOB" tabindex="10" maxlength="10" value="<TMPL_VAR NAME=DOB>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LICENSE_NUMBER">Driver License #</label></b></td>
            <td>&nbsp;<b><label for="LICENSE_STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('LICENSE_STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;</td>
            <TMPL_UNLESS NAME=HIDE_FRAUD_DEFENDER_INPUT>
            <td>&nbsp;</td>
            </TMPL_UNLESS>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LICENSE_NUMBER" id="LICENSE_NUMBER" tabindex="11" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" maxlength="30" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_STATE" id="LICENSE_STATE" tabindex="12" size="3" maxlength="2" value="<TMPL_VAR NAME=LICENSE_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <TMPL_UNLESS NAME=HIDE_FRAUD_DEFENDER_INPUT>
            <td align="left">&nbsp; <b><label for="FRAUD_DEFENDER">Fraud Defender</label></b>&nbsp;<input type="checkbox" name="FRAUD_DEFENDER" id="FRAUD_DEFENDER" tabindex="13" value="1" <TMPL_IF DISABLE_FRAUD_DEFENDER_INPUT> DISABLED<TMPL_ELSE><TMPL_IF FRAUD_DEFENDER_INPUT_CHECKED> checked<TMPL_ELSE> </TMPL_IF></TMPL_IF>></td>
            </TMPL_UNLESS>
            <TMPL_IF NAME=INSTANTID_OLD_VERSION>
            <td align="left"><b><label for="OTHER_WATCH_LISTS">&nbsp;Include Other Watch Lists</label></b>&nbsp;<input type="checkbox" name="OTHER_WATCH_LISTS" id="OTHER_WATCH_LISTS" tabindex="14" value="1"></td>
            </TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/instant_id_report.tpl -->
