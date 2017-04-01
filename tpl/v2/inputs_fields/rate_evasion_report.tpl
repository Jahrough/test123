<!-- begin inputs_fields/rate_evasion_report.tpl -->
      <INPUT type=hidden NAME="ACTION_REPORT" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
      <tr>
        <td>&nbsp;*<b>&nbsp;Required Fields</b> - Note: Either City <u>and</u> State <u>OR</u> Zip is required</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="LAST_NAME"><b>Last Name</b>&nbsp;*</label></td>
            <td>&nbsp;<label for="FIRST_NAME"><b>First Name</b>&nbsp;*</label></td>
            <td>&nbsp;<label for="MI"><b>Middle Name</b></label></td>
            <td>&nbsp;<label for="SUFFIX"><b>Suffix</b></label></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="LAST_NAME" name="LAST_NAME" tabindex="1" size="20" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="FIRST_NAME" name="FIRST_NAME" tabindex="2" size="20" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="MI" name="MI" size="20" tabindex="3" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="SUFFIX" name="SUFFIX" size="10" tabindex="4" maxlength="255" value="<TMPL_VAR NAME=SUFFIX>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="STREET_ADDRESS"><b>Street Address</b>&nbsp;*</label></td>
            <td>&nbsp;<label for="CITY"><b>City</b>&nbsp;*</label></td>
            <td>&nbsp;<b><label for="STATE">State&nbsp;*</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<label for="ZIP"><b>Zip</b>&nbsp;*</label></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="STREET_ADDRESS" name="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="CITY" name="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="STATE" name="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="ZIP" name="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="PHONE"><b>Phone</b></td>
            <td>&nbsp;<label for="WORK_PHONE"><b>Work Phone</b></td>
            <td>&nbsp;<label for="DOB"><b>DOB</b><a href="javascript:void(0);" onClick="dob_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<label for="SSN"><b>SSN</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="PHONE" name="PHONE" tabindex="11" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"></td>
            <td class="nsinputs"><input type="text" id="WORK_PHONE" name="WORK_PHONE" tabindex="12" size="12" maxlength="14" value="<TMPL_VAR NAME=WORK_PHONE>"></td>
            <td class="nsinputs"><input type="text" id="DOB" name="DOB" size="14" tabindex="12" maxlength="10" value="<TMPL_VAR NAME=DOB>"></td>
            <td class="nsinputs"><input type="text" id="SSN" name="SSN" tabindex="13" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="LICENSE_NUMBER"><b>Driver License #</b></td>
            <td>&nbsp;<b><label for="LICENSE_STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('LICENSE_STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="LICENSE_NUMBER" name="LICENSE_NUMBER" tabindex="15" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" maxlength="30" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" id="LICENSE_STATE" name="LICENSE_STATE" tabindex="16" size="3" maxlength="2" value="<TMPL_VAR NAME=LICENSE_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
	<table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="AGENCY"><b>Agent Number</b></td>
            <td>&nbsp;<label for="CLAIM_NUMBER"><b>Claim Number</b></td>
            <td>&nbsp;<label for="POLICY_INCEPTION_DATE"><a href="javascript:void(0);" onClick="displayDatePicker('POLICY_INCEPTION_DATE');"><b>Policy Inception Date</b></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="AGENCY" name="AGENCY" size="20" tabindex="17" value="<TMPL_VAR NAME=AGENCY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="CLAIM_NUMBER" name="CLAIM_NUMBER" size="20" tabindex="18" maxlength="255" value="<TMPL_VAR NAME=CLAIM_NUMBER>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input onClick="displayDatePicker('POLICY_INCEPTION_DATE');" type="text" id="POLICY_INCEPTION_DATE" name="POLICY_INCEPTION_DATE" size="20" tabindex="19" value="<TMPL_VAR NAME=POLICY_INCEPTION_DATE>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
	</td>
      </tr>
      <tr>
        <td valign="top" align="left">
	<table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="POLICY_NUMBER"><b>Policy Number</b></td>
            <td>&nbsp;<label for="DATE_OF_LOSS"><a href="javascript:void(0);" onClick="displayDatePicker('DATE_OF_LOSS');"><b>Date of Loss</b></a></td>
            <td>&nbsp;<label for="EXAMINER_ADJUSTER_CODE"><b>Examiner/Adjuster Code</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="POLICY_NUMBER" name="POLICY_NUMBER" size="20" tabindex="20" value="<TMPL_VAR NAME=POLICY_NUMBER>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input onClick="displayDatePicker('DATE_OF_LOSS');" type="text" id="DATE_OF_LOSS" name="DATE_OF_LOSS" size="20" tabindex="21" value="<TMPL_VAR NAME=DATE_OF_LOSS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="EXAMINER_ADJUSTER_CODE" name="EXAMINER_ADJUSTER_CODE" size="20" tabindex="22" maxlength="255" value="<TMPL_VAR NAME=EXAMINER_ADJUSTER_CODE>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
	</td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>
              <table border="0" cellpadding="2" cellspacing="0">
                <tr>
                  <td align="left" colspan="2">&nbsp;<label for="VIN1"><b>VINS(s):</b></label></td>
                </tr>
                <tr>
                  <td>&nbsp;<label for="VIN1"><b>1:</b></td>
                  <td class="nsinputs"><input type="text" id="VIN1" name="VIN1" tabindex="41" size="30" value="<TMPL_VAR NAME=VIN1>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td>&nbsp;<label for="VIN2"><b>2:</b></td>
                  <td class="nsinputs"><input type="text" id="VIN2" name="VIN2" tabindex="42" size="30" value="<TMPL_VAR NAME=VIN2>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td>&nbsp;<label for="VIN3"><b>3:</b></td>
                  <td class="nsinputs"><input type="text" id="VIN3" name="VIN3" tabindex="43" size="30" value="<TMPL_VAR NAME=VIN3>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td>&nbsp;<label for="VIN4"><b>4:</b></td>
                  <td class="nsinputs"><input type="text" id="VIN4" name="VIN4" tabindex="44" size="30" value="<TMPL_VAR NAME=VIN4>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td>&nbsp;<label for="VIN5"><b>5:</b></td>
                  <td class="nsinputs"><input type="text" id="VIN5" name="VIN5" tabindex="45" size="30" value="<TMPL_VAR NAME=VIN5>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td>&nbsp;<label for="VIN6"><b>6:</b></td>
                  <td class="nsinputs"><input type="text" id="VIN6" name="VIN6" tabindex="46" size="30" value="<TMPL_VAR NAME=VIN6>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td>&nbsp;<label for="VIN7"><b>7:</b></td>
                  <td class="nsinputs"><input type="text" id="VIN7" name="VIN7" tabindex="47" size="30" value="<TMPL_VAR NAME=VIN7>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td>&nbsp;<label for="VIN8"><b>8:</b></td>
                  <td class="nsinputs"><input type="text" id="VIN8" name="VIN8" tabindex="48" size="30" value="<TMPL_VAR NAME=VIN8>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
              </table>
            </td>
            <td>
              <table border="0" cellpadding="2" cellspacing="0">
                <tr>
                  <td colspan="2">&nbsp;<b>Select options to be included in the results</b></td>
                </tr>
                <tr>
                  <td colspan="2">&nbsp;<b>Click the&nbsp;<a href="javascript:void(0);" onClick="return_options(0);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></td>
                </tr>
                
                <tr>
                  <td class="nsinputs" nowrap="1"><a href="javascript:void(0);" onClick="check_res_report_options(1)"><b><u>Select All</u></b></a></td>
                  <td class="nsinputs" nowrap="1"><a href="javascript:void(0);" onClick="check_res_report_options()"><b><u>De-Select All</u></b></a></td>
                </tr>
                <tr>
                  <input type="hidden" name="RESOPTION1" value="true">
                  <td>(default)</td>
                  <td><b>Identity Validation</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(1);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION2" tabindex="32" value="1" CHECKED></td>
                  <td><b>Matching Index</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(2);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION3" tabindex="33" value="1" CHECKED></td>
                  <td><b>Previous Addresses</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(3);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION4" tabindex="34" value="1" CHECKED></td>
                  <td><b>Reverse Phone</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(4);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION5" tabindex="35" value="1" CHECKED></td>
                  <td><b>Driver License</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(5);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION6" tabindex="36" value="1" CHECKED></td>
                  <td><b>Motor Vehicle Registrations</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(6);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <!-- <tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION7" tabindex="37" value="1"<TMPL_UNLESS ALLOW_BRANDED_TITLES> DISABLED</TMPL_UNLESS>></td>
                  <td><TMPL_UNLESS ALLOW_BRANDED_TITLES><a class="inputlinklabelred" href="javascript:void(0);" onClick="alert('You do not currently have access to the Branded Title Search. To obtain access please call Customer Service at 1-866-277-8407')"><b>Branded Titles</b></a><TMPL_ELSE><b><span class="inputlabelred">Branded Titles</span></b></TMPL_UNLESS>&nbsp;<a href="javascript:void(0);" onClick="return_options(7);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a><TMPL_UNLESS HIDE_PRICES>&nbsp;Cost of $1.00 per VIN supplied is charged for Branded Titles</TMPL_UNLESS></td>
                </tr> -->
                <tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION8" tabindex="38" value="1" CHECKED></td>
                  <td><b>Additional Drivers</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(8);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION9" tabindex="39" value="1" CHECKED></td>
                  <td><b>Other Potential Additional Drivers</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(9);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/rate_evasion_report.tpl -->
