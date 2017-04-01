<!-- begin inputs_fields/police_records_title_history_search.tpl -->
      <script src="<TMPL_VAR NAME='JSPATH'>/police_records_search_inputs.js"></script>
      <script src="<TMPL_VAR NAME='JSPATH'>/myaccount.js"></script>
      <INPUT type=hidden NAME="ACTION" VALUE="<TMPL_VAR NAME=ACTION>">
      <INPUT type=hidden NAME="FAX_RELEASE" id="FAX_RELEASE" VALUE="<TMPL_VAR NAME=FAX_RELEASE>">
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('Police Records');</script>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="1" cellspacing="0">
        <td valign="top" nowrap="nowrap">&nbsp;*<b>&nbsp;Required Fields&nbsp; -- &nbsp;</b></td>
        <td> Claim #, Loss Date, State, Vehicle Owner (Last Name or Company Name), Agency Name, and Agency Type. For better search results include Home Address, City, and VIN.
        </td>
        </table>
      </tr>

      <TMPL_IF NAME="SEARCH_THANK_YOU">
      <tr>
      <td valign="top" align="center" class="unifont1blue" nowrap="nowrap" style="color: rgb(0, 102, 204); font-size: 12pt;"> 
        <center>
	<div id="searchThankYou">
          <br />
          <TMPL_VAR NAME="SEARCH_THANK_YOU">
          <br /><br />
        </div>
        </center>
      </td>
      </tr>
      </TMPL_IF>

      <TMPL_IF NAME="POLICE_REPORT_ALREADY">
        <script>
            police_records_order('MYACCOUNT/SHOW_POLICE_RECORDS_REPORT','<TMPL_VAR NAME="POLICE_REPORT_ALREADY">');
        </script>
      </TMPL_IF>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="1" cellspacing="0">
        <tr>
          <td valign="top" align="left" class="unifont1"><b>&nbsp;Select Report</b></td>
          <TMPL_IF NAME="ENABLE_USERID">
          <td>&nbsp;&nbsp;<b><label for="LOGIN_ID">User/User ID:</label></b>
                <a href="javascript:void(0);" onClick="generic_tip('User ID', 'This field holds the Login ID for the user which the Police Report is to be generated. Start by entering the LAST name of the user until recognized.');">
                <img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a>
            </td>
          </TMPL_IF>
        </tr>

        <tr>
          <td id="police_records_search_select"></td>
           <td class="nsinputs" valign="bottom">
             <TMPL_IF NAME="ENABLE_USERID">
               <input onBlur="setTimeout('hide_loginid_suggest()',1000);this.value=this.value.toUpperCase()" type="text" id="login_id" name="LOGIN_ID" size="43" tabindex="10" maxlength="46" onKeyUp="smartloginkey(this.value,event,'SEARCH/USER_SMARTKEY_LOOKUP');" autocomplete="off" value="<TMPL_VAR NAME=LOGIN_ID>">
               <p>
               <div id="loginid_suggest" name="loginid_suggest" style="position:absolute;width:300;"></div>
             </TMPL_IF>
           </td>
        </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <br />
        <hr />
        <table border="0" cellpadding="1" cellspacing="0">
          <tr>
            <td>
            <table cellpadding="1" cellspacing="0" border="0">
	      <tr>
                <td>
	         <table cellspacing="0" border="0">
	          <tr>
	      	  <td align="left"><b><label for="REF_CODE"><TMPL_IF REFERENCE_CODE_RENAME>&nbsp;Claim #<span class=unifont1boldred>*</span>&nbsp;<TMPL_ELSE>Reference Code:&nbsp;</TMPL_IF></label></b></td>
                  <td>&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('DOL_DATE');"><b>Loss Date</b></a>&nbsp;<TMPL_IF NAME="SHOW_DOL_REQUIRED"><span class=unifont1boldred><b>*</b></span></TMPL_IF></td>
                  <TMPL_IF NAME="SHOW_DOL_TIME">
                    <td colspan="4"><b><label for="TIME_HOURS">&nbsp;Time&nbsp;</label></b></td>
                  </TMPL_IF>
	          </tr>

	          <tr>
                    <td valign="top" class="nsinputs"><input type=text tabindex="34" size="16" maxlength="<TMPL_IF REFERENCE_CODE_MAX_LENGTH><TMPL_VAR REFERENCE_CODE_MAX_LENGTH><TMPL_ELSE>30</TMPL_IF>" name="REFERENCE_CODE" id="REF_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>"<TMPL_IF DISABLE_REF_CODE> DISABLED</TMPL_IF> ></td>
                    <td valign="top" class="nsinputs"><input onClick="displayDatePicker('DOL_DATE');" id="DOL_DATE" type=text tabindex="36" size="16" maxlength="10" name="DOL_DATE" value="<TMPL_VAR NAME=DOL_DATE>" ><br /></td>
                  <TMPL_IF NAME="SHOW_DOL_TIME">
                    <td valign="top" class="nsinputs"><input type="text" name="TIME_HOURS" id="TIME_HOURS" tabindex="38" size="3" maxlength="2" value="<TMPL_VAR NAME=TIME_HOURS>" onBlur="" onkeyup='' ></td>
		    <td><b>:</b></td>
		    <td valign="top" class="nsinputs"><input type="text" name="TIME_MINUTES" id="TIME_MINUTES" tabindex="40" size="3" maxlength="2" value="<TMPL_VAR NAME=TIME_MINUTES>" onBlur="" onkeyup='' ></td>
		    <td valign="top" class="nsinputs">
		    <SELECT NAME="TIME_AM_PM" tabindex="42">
			<OPTION VALUE="AM"<TMPL_IF AM_SELECTED> SELECTED</TMPL_IF>>AM
			<OPTION VALUE="PM"<TMPL_IF PM_SELECTED> SELECTED</TMPL_IF>>PM
		    </SELECT> 
                    </td>
                  </TMPL_IF>
	          </tr>
                  <tr>
                    <td></td>
                    <td>(mm/dd/yyyy)</td>
                  <TMPL_IF NAME="SHOW_DOL_TIME">
                    <td colspan="3" align="center">(hh:mm)</td>
                    <td></td>
                  </TMPL_IF>
                  </tr>
	         </table>
                </td>
	      </tr>

              <tr>
                <td>&nbsp;<b>Street</b></td>
              </tr>
              <tr>
                <td class="nsinputs" colspan="3"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="44" size="60" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=57 onBlur="this.value=this.value.toUpperCase()"></td>
              </tr>

            </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left" colspan="2">
        <table border="0" cellpadding="1" cellspacing="0">
          <tr>
            <td>&nbsp;<b>City</b></td>

            <td>&nbsp;<b><label for="STATE">State</label></b><span class=unifont1boldred>*</span><a href="javascript:void(0);" onClick="state_list('STATE','CA');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>

            <td>&nbsp;<b>&nbsp;&nbsp;&nbsp;Zip</b></td>
            <td>&nbsp;<b>County</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="46" size="15" value="<TMPL_VAR NAME=CITY>" maxlength="31" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="48" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="50" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>" onBlur=this.value=this.value.toUpperCase()  >-<input type="text" name="ZIP4" id="ZIP4" tabindex="52" size="4" maxlength="4" value="<TMPL_VAR NAME=ZIP4>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="COUNTY" id="COUNTY" tabindex="54" size="30" value="<TMPL_VAR NAME=COUNTY>" maxlength="26" onBlur="this.value=this.value.toUpperCase()" onkeyup='' ></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="1" cellspacing="0">
          <tr>
            <td colspan="2">&nbsp;<b>Vehicle Owner</b><span class=unifont1boldred>*</span></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="56" size="25" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength="20" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" tabindex="58" size="15" value="<TMPL_VAR NAME=MI>" maxlength="15" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="60" size="33" value="<TMPL_VAR NAME=LAST_NAME>" maxlength="30" onBlur="this.value=this.value.toUpperCase()" onkeyup='' ></td>
          </tr>
          <tr>
            <td><b>(First)</b></td>
            <td>&nbsp;<b><label for="MI">(Middle)</label></b></td>
            <td>&nbsp;<b>(Last Name or Company Name)</b><span class=unifont1boldred>*</span></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td>
        <table cellpadding="1" cellspacing="0" border="0">
          <tr>
            <td>&nbsp;<b>VIN</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="VIN" id="VIN" tabindex="62" size="17" maxlength="25" value="<TMPL_VAR NAME=VIN>" onBlur="this.value=this.value.toUpperCase()" onkeyup='' ></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="1" cellspacing="0">
          <tr>
            <td>&nbsp;<b>Vehicle Tag #</b></td>
            <td>&nbsp;<b><label for="LICENSE_PLATE_STATE">Tag State</label></b><a href="javascript:void(0);" onClick="state_list('LICENSE_PLATE_STATE','CA');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="MAKE">Vehicle Make</label></b></td>
            <td>&nbsp;<b><label for="MODEL">Vehicle Model</label></b></td>
            <td>&nbsp;<b><label for="YEAR_MAKE">Vehicle Year</label></b (yyyy)></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LICENSE_PLATE" id="LICENSE_PLATE" size="13" tabindex="64" maxlength="10" value="<TMPL_VAR NAME=LICENSE_PLATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_PLATE_STATE" id="LICENSE_PLATE_STATE" size="10" tabindex="66" maxlength="2" value="<TMPL_VAR NAME=LICENSE_PLATE_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MAKE" id="MAKE" size="13" tabindex="68" maxlength="20" value="<TMPL_VAR NAME=MAKE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MODEL" id="MODEL" size="13" tabindex="70" maxlength="20" value="<TMPL_VAR NAME=MODEL>" onBlur="this.value=this.value.toUpperCase()"></td>
            </td>
            <td class="nsinputs"><input type="text" name="YEAR_MAKE" id="YEAR_MAKE" size="13" tabindex="72" maxlength="4" value="<TMPL_VAR NAME=YEAR_MAKE>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="1" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="AGENCY_NAME">Agency Name</label></b><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<b><label for="AGENCY_TYPE">Agency Type</label></b><span class=unifont1boldred>*</span></td>
          </tr>
          <tr>
            <td class="nsinputs" valign="bottom">
              <input onBlur="setTimeout('hide_search_suggest()',1000);this.value=this.value.toUpperCase()" type="text" id="agency_name" name="AGENCY_NAME" size="33" tabindex="74" maxlength="36" onKeyUp="smartkey(this.value,event);" autocomplete="off" value="<TMPL_VAR NAME=AGENCY_NAME>">
              <p>
              <div id="search_suggest" name="search_suggest" style="position:absolute;width:300;"></div>
            </td>
            <td class="nsinputs">
              <div id="police_records_agency_select"></div>
            </td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="1" cellspacing="0">

          <tr>
            <td>&nbsp;<b><label for="ADDITIONAL_INFO">Additional Info</label></b><a href="javascript:void(0);" onClick="additional_info_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs" colspan="2"><input type="text" name="ADDITIONAL_INFO" id="ADDITIONAL_INFO" size="70" tabindex="76" maxlength="61"   value="<TMPL_VAR NAME=ADDITIONAL_INFO>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
          <tr>
            <td>&nbsp;<b><label for="POLICY_NUMBER">Policy #</label></b></td>
            <td>&nbsp;<b><label for="POLICY_STATE">Policy State</label></b><a href="javascript:void(0);" onClick="state_list('POLICY_STATE','CA');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="POLICY_NUMBER" id="POLICY_NUMBER" size="33" tabindex="78" maxlength="30" value="<TMPL_VAR NAME=POLICY_NUMBER>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs" colspan="2"><input type="text" name="POLICY_STATE" id="POLICY_STATE" size="2" tabindex="80" maxlength="2" value="<TMPL_VAR NAME=POLICY_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
          <tr>
            <td>&nbsp;<b><label for="LOSS_KIND">Loss Kind</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs" colspan="2"><input type="text" name="LOSS_KIND" id="LOSS_KIND" size="33" tabindex="82" maxlength="30" value="<TMPL_VAR NAME=LOSS_KIND>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>

<!-- end inputs_fields/police_records_title_history_search.tpl -->
