<!-- begin inputs_fields/carrier_id_report.tpl -->

<input type="hidden" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">
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
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
        <td valign="top">&nbsp;*<b>&nbsp;Required Fields&nbsp; -- &nbsp;</b></td>
        <td><b>Note:</b> Search Methods are VIN only OR Name and Address. <br />For optimal results with Name and Address search, SSN,<br /> Driver License # & State should be populated.<br>
	<span style="color: #000000; font-size: 10pt;"><b>Fields in <span style="color: #0066CC">Blue</span> are highly recommended.</b></span></td>
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
                <td>&nbsp;<a href="javascript:void(0);" onClick="carrier_id_tip();"><b>VIN</b></a><span class=unifont1boldred>*</span></td>
                <td>&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('DOL_DATE');"><b>Date of Loss</b></a>&nbsp;<span style="color: #CE0031;font-size: 7pt;" >&nbsp;Highly Recommended</span><a href="javascript:void(0);" onClick="date_of_loss_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a>
                
                </td>
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" name="VIN" id="VIN" tabindex="1" size="25" maxlength="255" value="<TMPL_VAR NAME=VIN>" onBlur="enable_carrier_id_fields();this.value=this.value.toUpperCase()" onkeyup='enable_carrier_id_fields();'></td>
                <td class="nsinputs"><input onClick="displayDatePicker('DOL_DATE');" type="text" id="DOL_DATE" name="DOL_DATE" tabindex="2" size="16" maxlength="10" value="<TMPL_VAR NAME=DOL_DATE>" onkeyup='enable_carrier_id_fields();'><br /></td>
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
            <td>&nbsp;<a href="javascript:void(0);" onClick="carrier_id_tip();"><b>Last Name</b></a><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<a href="javascript:void(0);" onClick="carrier_id_tip();"><b>First Name</b></a><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
            <td nowrap="nowrap">&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('DOL_DATE2');"><b>Date of Loss</b></a>&nbsp;<span style="color: #CE0031;font-size:7pt;" >&nbsp;Highly Recommended</span><a href="javascript:void(0);" onClick="date_of_loss_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase();" onkeyup='enable_carrier_id_fields();'></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="4" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" tabindex="5" size="15" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs" valign="top"><input onClick="displayDatePicker('DOL_DATE2');" id="DOL_DATE2" type=text tabindex="6" size="16" maxlength="10" name="DOL_DATE2" value="<TMPL_VAR NAME=DOL_DATE2>" onkeyup='enable_carrier_id_fields();'><br /></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>(mm/dd/yyyy)</td>
          </tr>
        </table>
        </div>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <div id='div3'>
        <table cellpadding="2" cellspacing="0" border="0">
          <tr>
            <td>&nbsp;<a href="javascript:void(0);" onClick="generic_tip('SSN Information','Entering the SSN greatly enhances the search results.')"><b>SSN</b></a>&nbsp;<span style="color: #CE0031;font-size: 7pt;" >&nbsp;Highly Recommended</span><a href="javascript:void(0);" onClick="generic_tip('SSN Information','Entering the SSN greatly enhances the search results.');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('DOB');"><b>DOB</b></a>&nbsp;<span style="color: #CE0031;font-size: 7pt;" >&nbsp;Highly Recommended</span><a href="javascript:void(0);" onClick="generic_tip('DOB Information','Entering the DOB greatly enhances the search results.')"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="7" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <td class="nsinputs"><input onClick="displayDatePicker('DOB');" type="text" name="DOB" id="DOB" size="14" tabindex="8" maxlength="10" value="<TMPL_VAR NAME=DOB>"></td>
          </tr>
        </table>
        </div>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <div id='div5'>
        <table cellpadding="2" cellspacing="0" border="0">
          <tr>
            <td>&nbsp;<a href="javascript:void(0);" onClick="generic_tip('Driver License Number Information','Entering the Driver License Number greatly enhances the search results.')"><b>Driver License #</b></a>&nbsp;<span style="color: #CE0031;font-size: 7pt;" >&nbsp;Highly Recommended</span><a href="javascript:void(0);" onClick="generic_tip('Driver License Number Information','Entering the Driver License Number greatly enhances the search results.');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<a href="javascript:void(0);" onClick="generic_tip('Driver License State Information','Entering the Driver License State greatly enhances the search results.')"><b>State</b></a></b><a href="javascript:void(0);" onClick="state_list('LICENSE_STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a>&nbsp;<span style="color: #CE0031;font-size: 7pt;" >&nbsp;Highly Recommended</span><a href="javascript:void(0);" onClick="generic_tip('Driver License State Information','Entering the Driver License State greatly enhances the search results.');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LICENSE_NUMBER" id="LICENSE_NUMBER" tabindex="9" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" maxlength="255" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_STATE" id="LICENSE_STATE" tabindex="10" size="3" maxlength="2" value="<TMPL_VAR NAME=LICENSE_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </div>
        </td>
      </tr>
      <tr>
        <td>
        <div id='div2'>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
            <td>&nbsp;<b><label for="CITY">City</label></b></td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="11" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="12" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="13" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="14" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
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
<!-- end inputs_fields/carrier_id_report.tpl -->
