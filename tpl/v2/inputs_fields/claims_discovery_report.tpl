<!-- begin inputs_fields/claims_discovery_report.tpl -->
<input type="hidden" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<input type="hidden" name="USERID" value="<TMPL_VAR NAME=USERID>">
<INPUT type=hidden NAME="DEMO" VALUE=<TMPL_VAR NAME=DEMO>>
<TMPL_IF DEMO>
  <INPUT type=hidden NAME="HTMLPATH" VALUE="<TMPL_VAR NAME=HTMLPATH>">
  <INPUT type=hidden NAME="DEMO_REPORT_NAME" VALUE="<TMPL_VAR NAME=DEMO_REPORT_NAME>">
</TMPL_IF>
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
        <td valign="top" nowrap>&nbsp;*<b>&nbsp;Required Fields&nbsp; -- &nbsp;</b></td>
        <td><b>Note:</b> Search Methods are VIN and Claim # only OR Name and Address and Claim #. For optimal results with Name and Address search, SSN, Driver License # &amp; State should be populated.</td>
        </td>
        </table>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>
            <div id="div4">
            <table cellpadding="2" cellspacing="0" border="0">
              <tr>
                <td>&nbsp;<a href="javascript:void(0);" onClick="claims_tip();"><b>VIN</b></a><span class=unifont1boldred>*</span></td>
                <td>&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('DOL_DATE');"><b>Date of Loss</b></a>&nbsp;<span style="color: #CE0031;font-size: 7pt;" >&nbsp;Highly Recommended</span><a href="javascript:void(0);" onClick="date_of_loss_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a> 
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" name="VIN" id="VIN" tabindex="1" size="25" maxlength="255" value="<TMPL_VAR NAME=VIN>" onBlur="enable_claims_discovery_fields();this.value=this.value.toUpperCase()" onkeyup='enable_claims_discovery_fields();'></td>
                <td class="nsinputs"><input onClick="displayDatePicker('DOL_DATE');" type="text" id="DOL_DATE" name="DOL_DATE" tabindex="2" size="16" maxlength="10" value="<TMPL_VAR NAME=DOL_DATE>" ><br /></td>
              </tr>
              <tr>
                <td></td>
                <td>(mm/dd/yyyy)</td>
              </tr>
            </table>
            </div>
            </td>
          </tr>
          <tr>
          <td valign="top" align="left"><br />
          <table border="0" cellpadding="2" cellspacing="0" width="85%">
            <tr>
              <td width="40%"><hr class="advline" align="left" width="100%" /></td>
              <td width="20%" valign="top" align="center"><b>OR</b></td>
              <td width="40%"><hr class="advline" align="right" width="100%" /></td>
            </tr>
          </table><br />
          </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <div id='div1'>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<a href="javascript:void(0);" onClick="claims_tip();"><b>Last Name</b></a><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<a href="javascript:void(0);" onClick="claims_tip();"><b>First Name</b></a><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
            <td>&nbsp;<b><label for="Phone">Phone</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()" onkeyup='enable_claims_discovery_fields();'></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="4" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()" onkeyup='enable_claims_discovery_fields();'></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" tabindex="5" size="15" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()" onkeyup='enable_claims_discovery_fields();'></td>
            <td class="nsinputs"><input type="text" name="PHONE" id="PHONE" tabindex="6" size="15" maxlength="255" value="<TMPL_VAR NAME=PHONE>" onkeyup='enable_claims_discovery_fields();'></td>
          </tr>
        </table>
        </div>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <div id='div2'>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<a href="javascript:void(0);" onClick="claims_tip();"><b>Street Address</b></a><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<a href="javascript:void(0);" onClick="claims_tip();"><b>City</b></a><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<b><label for="STATE">State</label></b><span class=unifont1boldred>*</span><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
        <td>&nbsp;<a href="javascript:void(0);" onClick="claims_tip();"><b>Zip</b></a><span class=unifont1boldred>*</span></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="7" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()" onkeyup='enable_claims_discovery_fields();'></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="8" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()" onkeyup='enable_claims_discovery_fields();'></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="9" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()" onkeyup='enable_claims_discovery_fields();'></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="10" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>" onkeyup='enable_claims_discovery_fields();'></td>
          </tr>
        </table>
        </div>
        </td>
      </tr>
      <tr>
        <td>
        <div id='div3'>
        <table cellpadding="2" cellspacing="0" border="0">
          <tr>
            <td valign="bottom">&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('DOB');"><b>DOB</b></a></td>
            <td valign="bottom">&nbsp;<b><label for="SSN">SSN</label></b></td>
            <td valign="bottom">&nbsp;<b><label for="LICENSE_NUMBER">Driver License Number</label></b></td>
            <td><b><label for="LICENSE_STATE">License State</label></b><a href="javascript:void(0);" onClick="state_list('LICENSE_STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input onClick="displayDatePicker('DOB');" type="text" name="DOB" id="DOB" size="14" tabindex="11" maxlength="10" value="<TMPL_VAR NAME=DOB>" onkeyup='enable_claims_discovery_fields();'></td>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="12" size="13" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off" onkeyup='enable_claims_discovery_fields();'></td>
            <td class="nsinputs"><input type="text" name="LICENSE_NUMBER" id="LICENSE_NUMBER" tabindex="13" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" maxlength="255" onBlur="this.value=this.value.toUpperCase()" onkeyup='enable_claims_discovery_fields();' autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_STATE" id="LICENSE_STATE" tabindex="14" size="3" maxlength="2" value="<TMPL_VAR NAME=LICENSE_STATE>" onBlur="this.value=this.value.toUpperCase()" onkeyup='enable_claims_discovery_fields();'></td>
          </tr>
        </table>
        </div>
        </td>
      </tr>
      <tr>
        <td>
        <div id='div3'>
        <table cellpadding="2" cellspacing="0" border="0">
          <tr>
            <td valign="bottom">&nbsp;<b><label for="VIN1">VIN</label></b></td>
            <td nowrap="nowrap">&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('DOL_DATE2');"><b>Date of Loss</b></a>&nbsp;<span style="color: #CE0031;font-size:7pt;" >&nbsp;Highly Recommended</span><a href="javascript:void(0);" onClick="date_of_loss_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="VIN1" id="VIN1" tabindex="15" size="25" maxlength="255" value="<TMPL_VAR NAME=VIN1>" onBlur="this.value=this.value.toUpperCase()" onkeyup='enable_claims_discovery_fields();'></td>
            <td onClick="displayDatePicker('DOL_DATE2');" class="nsinputs" valign="top"><input id="DOL_DATE2" type=text tabindex="16" size="16" maxlength="10" name="DOL_DATE2" value="<TMPL_VAR NAME=DOL_DATE2>" ><br /></td>
          </tr>
          <tr>
            <td></td>
            <td>(mm/dd/yyyy)</td>
          </tr>
        </table>
        </div>
        </td>
      </tr>
      <tr>
        <td width="56%" valign="top">
        <table cellpadding="2" cellspacing="0" border="0">
          <tr>
            <td>&nbsp;<b><label for="SSN">Select Report Type</label></b></td>
          </tr>
          <tr>
            <td>
            <select name="REPORT_FORMAT">
            <option value="html"<TMPL_IF NAME="report-format-html"> SELECTED</TMPL_IF>>Interactive Web Page</option>
            <option value="word"<TMPL_IF NAME="report-format-word"> SELECTED</TMPL_IF>>Microsoft Word Document</option>
            <option value="pdf"<TMPL_IF NAME="report-format-pdf"> SELECTED</TMPL_IF>>PDF Document</option>
            </select>
            </td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/claims_discovery_report.tpl -->
