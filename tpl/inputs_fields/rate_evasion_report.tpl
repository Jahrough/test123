<!-- begin inputs_fields/rate_evasion_report.tpl -->
      <INPUT type=hidden NAME="ACTION_REPORT" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
      <tr>
        <td class="inputlabel">&nbsp;<span class=unifont1boldred>*</span><b>&nbsp;Required Fields</b> - Note: Either City <u>and</u> State <u>OR</u> Zip is required</td>
      </tr>
      <tr>
        <td class="inputlabel">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Last Name</b>&nbsp;<span class=unifont1boldred>*</span></td>
            <td class="inputlabel">&nbsp;<b>First Name</b>&nbsp;<span class=unifont1boldred>*</span></td>
            <td class="inputlabel">&nbsp;<b>Middle Name</b></td>
            <td class="inputlabel">&nbsp;<b>Suffix</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="1" size="20" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="2" size="20" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="20" tabindex="3" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="SUFFIX" size="10" tabindex="4" maxlength="255" value="<TMPL_VAR NAME=SUFFIX>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Street Address</b>&nbsp;<span class=unifont1boldred>*</span></td>
            <td class="inputlabel">&nbsp;<b>City</b>&nbsp;<span class=unifont1boldred>*</span></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a>&nbsp;<span class=unifont1boldred>*</span></td>
            <td class="inputlabel">&nbsp;<b>Zip</b>&nbsp;<span class=unifont1boldred>*</span></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Phone</b></td>
            <td class="inputlabel">&nbsp;<b>Work Phone</b></td>
            <td class="inputlabel">&nbsp;<b>DOB</b></td>
            <td class="inputlabel">&nbsp;<b>SSN</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="PHONE" tabindex="11" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"></td>
            <td class="nsinputs"><input type="text" name="WORK_PHONE" tabindex="12" size="12" maxlength="14" value="<TMPL_VAR NAME=WORK_PHONE>"></td>
            <td class="nsinputs"><input type="text" name="DOB" size="14" tabindex="12" maxlength="10" value="<TMPL_VAR NAME=DOB>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="SSN" tabindex="13" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Driver License #</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist','LICENSE_STATE')">State</a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LICENSE_NUMBER" tabindex="15" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" maxlength="30" autocomplete="off" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_STATE" tabindex="16" size="3" maxlength="2" value="<TMPL_VAR NAME=LICENSE_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Agent Number</b></td>
            <td class="inputlabel">&nbsp;<b>Claim Number</b></td>
            <td class="inputlabel">&nbsp;<b>Policy Inception Date</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="AGENCY" size="20" tabindex="17" value="<TMPL_VAR NAME=AGENCY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CLAIM_NUMBER" size="20" tabindex="18" maxlength="255" value="<TMPL_VAR NAME=CLAIM_NUMBER>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="POLICY_INCEPTION_DATE" size="20" tabindex="19" value="<TMPL_VAR NAME=POLICY_INCEPTION_DATE>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Policy Number</b></td>
            <td class="inputlabel">&nbsp;<b>Date of Loss</b></td>
            <td class="inputlabel">&nbsp;<b>Examiner/Adjuster Code</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="POLICY_NUMBER" size="20" tabindex="20" value="<TMPL_VAR NAME=POLICY_NUMBER>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="DATE_OF_LOSS" size="20" tabindex="21" value="<TMPL_VAR NAME=DATE_OF_LOSS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="EXAMINER_ADJUSTER_CODE" size="20" tabindex="22" maxlength="255" value="<TMPL_VAR NAME=EXAMINER_ADJUSTER_CODE>" onBlur="this.value=this.value.toUpperCase()"></td>
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
                  <td class="inputlabel" align="left" colspan="2">&nbsp;<b>VINS(s):</b></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;<b>1:</b></td>
                  <td class="nsinputs"><input type="text" name="VIN1" tabindex="41" size="30" value="<TMPL_VAR NAME=VIN1>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;<b>2:</b></td>
                  <td class="nsinputs"><input type="text" name="VIN2" tabindex="42" size="30" value="<TMPL_VAR NAME=VIN2>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;<b>3:</b></td>
                  <td class="nsinputs"><input type="text" name="VIN3" tabindex="43" size="30" value="<TMPL_VAR NAME=VIN3>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;<b>4:</b></td>
                  <td class="nsinputs"><input type="text" name="VIN4" tabindex="44" size="30" value="<TMPL_VAR NAME=VIN4>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;<b>5:</b></td>
                  <td class="nsinputs"><input type="text" name="VIN5" tabindex="45" size="30" value="<TMPL_VAR NAME=VIN5>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;<b>6:</b></td>
                  <td class="nsinputs"><input type="text" name="VIN6" tabindex="46" size="30" value="<TMPL_VAR NAME=VIN6>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;<b>7:</b></td>
                  <td class="nsinputs"><input type="text" name="VIN7" tabindex="47" size="30" value="<TMPL_VAR NAME=VIN7>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;<b>8:</b></td>
                  <td class="nsinputs"><input type="text" name="VIN8" tabindex="48" size="30" value="<TMPL_VAR NAME=VIN8>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                </tr>
              </table>
            </td>
            <td>
              <table border="0" cellpadding="2" cellspacing="0">
                <tr>
                  <td class="inputlabel" colspan="2">&nbsp;<b>Select options to be included in the results</b></td>
                </tr>
                <tr>
                  <td class="inputlabel" colspan="2">&nbsp;<b>Click the&nbsp;<a href="javascript:void(0);" onClick="return_options(0);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></td>
                </tr>
                
                <tr>
                  <td class="nsinputs" nowrap="1"><a class="inputlinklabel" href="javascript:void(0);" onClick="check_res_report_options(1)">Select All</a></td>
                  <td class="nsinputs" nowrap="1"><a class="inputlinklabel" href="javascript:void(0);" onClick="check_res_report_options()">De-Select All</a></td>
                </tr>
                <tr>
                  <input type="hidden" name="RESOPTION1" value="true">
                  <td class="inputlabel">(default)</td>
                  <td class="inputlabel"><b>Identity Validation</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(1);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION2" tabindex="32" value="1" CHECKED></td>
                  <td class="inputlabel"><b>Matching Index</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(2);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION3" tabindex="33" value="1" CHECKED></td>
                  <td class="inputlabel"><b>Previous Addresses</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(3);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION4" tabindex="34" value="1" CHECKED></td>
                  <td class="inputlabel"><b>Reverse Phone</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(4);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION5" tabindex="35" value="1" CHECKED></td>
                  <td class="inputlabel"><b>Driver License</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(5);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION6" tabindex="36" value="1" CHECKED></td>
                  <td class="inputlabel"><b>Motor Vehicle Registrations</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(6);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <!-- <tr>
                  <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION7" tabindex="37" value="1"<TMPL_UNLESS ALLOW_BRANDED_TITLES> DISABLED</TMPL_UNLESS>></td>
                  <td class="inputlabel"><TMPL_UNLESS ALLOW_BRANDED_TITLES><a class="inputlinklabelred" href="javascript:void(0);" onClick="alert('You do not currently have access to the Branded Title Search. To obtain access please call Customer Service at 1-866-277-8407')"><b>Branded Titles</b></a><TMPL_ELSE><b><span class="inputlabelred">Branded Titles</span></b></TMPL_UNLESS>&nbsp;<a href="javascript:void(0);" onClick="return_options(7);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a><TMPL_UNLESS HIDE_PRICES>&nbsp;Cost of $1.00 per VIN supplied is charged for Branded Titles</TMPL_UNLESS></td>
                </tr> -->
                <tr>
                  <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION8" tabindex="38" value="1" CHECKED></td>
                  <td class="inputlabel"><b>Additional Drivers</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(8);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
                <tr>
                  <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="RESOPTION9" tabindex="39" value="1" CHECKED></td>
                  <td class="inputlabel"><b>Other Potential Additional Drivers</b>&nbsp;<a href="javascript:void(0);" onClick="return_options(9);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/rate_evasion_report.tpl -->
