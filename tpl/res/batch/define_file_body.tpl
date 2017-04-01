<!-- BEGIN define_file_body.tpl -->
  <tr>
    <td align="left" class="unifont2"><br><b>Select the proper Field Label for each Field Value found in your data:</b><br><br></td>
  </tr>
  
  <tr>
    <td align="center">
    <table border="1" cellpadding="0" cellspacing="0">
      <tr height="30">
        <td class="unifont2">&nbsp;<b>Field Order</b>&nbsp;</td>
        <td class="unifont2">&nbsp;<b>Field Value</b>&nbsp;</td>
        <td class="unifont2">&nbsp;<b>Field Label</b>&nbsp;</td>
      </tr>
      <TMPL_IF DELIM_LOOP>
      <TMPL_LOOP DELIM_LOOP>
      <tr>
        <td class="unifont1">&nbsp;<TMPL_VAR FIELD_NUMBER></td>
        
	<td class="unifont1" class="nsinputs">&nbsp;
	<TMPL_IF FIELD_LOOP>
	  <INPUT TYPE=TEXT NAME="FIELD_<TMPL_VAR FIELD_NUMBER>" VALUE="<TMPL_VAR FIRST_VALUE ESCAPE=HTML>" SIZE=40 onFocus="this.blur()">
	<TMPL_LOOP FIELD_LOOP>
	  <INPUT TYPE=HIDDEN NAME="FIELD_VALUE_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR FIELD_VAL ESCAPE=HTML>" onFocus="this.blur();">
	</TMPL_LOOP>
	<TMPL_ELSE>&nbsp;</TMPL_IF>
	</td>
        
	<td class="unifont1">
        <select name="FIELD_NAME_<TMPL_VAR FIELD_NUMBER>" onChange="check_fields(this,FIELD_<TMPL_VAR FIELD_NUMBER>);">
        <option value=""></option>
	<option value="unknown"<TMPL_IF UNKNOWN_C> SELECTED</TMPL_IF>>Not Applicable</option>
   	<option value="name-first"<TMPL_IF NAME-FIRST_C> SELECTED</TMPL_IF>>First Name</option>
        <option value="name-middle"<TMPL_IF NAME-MIDDLE_C> SELECTED</TMPL_IF>>Middle Name</option>
        <option value="name-last"<TMPL_IF NAME-LAST_C> SELECTED</TMPL_IF>>Last Name</option>
        <option value="name-suffix"<TMPL_IF NAME-SUFFIX_C> SELECTED</TMPL_IF>>Suffix</option>
	<option value="ssn"<TMPL_IF SSN_C> SELECTED</TMPL_IF>>Social Security #</option>
	<option value="phone"<TMPL_IF PHONE_C> SELECTED</TMPL_IF>>Phone Number</option>
	<option value="address-1"<TMPL_IF ADDRESS-1_C> SELECTED</TMPL_IF>>Address Line 1</option>
   <!--     <option value="address-2"<TMPL_IF ADDRESS-2_C> SELECTED</TMPL_IF>>Address Line 2</option> -->
	<option value="city"<TMPL_IF CITY_C> SELECTED</TMPL_IF>>City</option>
        <option value="state"<TMPL_IF STATE_C> SELECTED</TMPL_IF>>State</option>
        <option value="zip"<TMPL_IF ZIP_C> SELECTED</TMPL_IF>>Zip</option>
        <option value="dob1"<TMPL_IF DOB1_C> SELECTED</TMPL_IF>>Date of Birth YYYYMMDD</option>
        <option value="dob2"<TMPL_IF DOB2_C> SELECTED</TMPL_IF>>Date of Birth YYYY/MM/DD</option>
        <option value="dob3"<TMPL_IF DOB3_C> SELECTED</TMPL_IF>>Date of Birth MMDDYYYY</option>
        <option value="dob4"<TMPL_IF DOB4_C> SELECTED</TMPL_IF>>Date of Birth MM/DD/YYYY</option>
<!--	<option value="prev-address-1"<TMPL_IF PREV-ADDRESS-1_C> SELECTED</TMPL_IF>>Previous Address Line 1</option>
        <option value="prev-address-2"<TMPL_IF PREV-ADDRESS-2_C> SELECTED</TMPL_IF>>Previous Address Line 2</option>
	<option value="prev-city"<TMPL_IF PREV-CITY_C> SELECTED</TMPL_IF>>Previous City</option>
        <option value="prev-state"<TMPL_IF PREV-STATE_C> SELECTED</TMPL_IF>>Previous State</option>
        <option value="prev-zip"<TMPL_IF PREV-ZIP_C> SELECTED</TMPL_IF>>Previous Zip</option> -->
        <option value="license-num"<TMPL_IF LICENSE-NUM_C> SELECTED</TMPL_IF>>Driver's License Number</option>
        <option value="license-state"<TMPL_IF LICENSE-STATE_C> SELECTED</TMPL_IF>>Driver's License State</option>
	<option value="vin1"<TMPL_IF VIN1_C> SELECTED</TMPL_IF>>VIN1</option>
	<option value="vin2"<TMPL_IF VIN2_C> SELECTED</TMPL_IF>>VIN2</option>
	<option value="vin3"<TMPL_IF VIN3_C> SELECTED</TMPL_IF>>VIN3</option>
	<option value="vin4"<TMPL_IF VIN4_C> SELECTED</TMPL_IF>>VIN4</option>
	<option value="vin5"<TMPL_IF VIN5_C> SELECTED</TMPL_IF>>VIN5</option>
	<option value="vin6"<TMPL_IF VIN6_C> SELECTED</TMPL_IF>>VIN6</option>
	<option value="vin7"<TMPL_IF VIN7_C> SELECTED</TMPL_IF>>VIN7</option>
	<option value="vin8"<TMPL_IF VIN8_C> SELECTED</TMPL_IF>>VIN8</option>
	<option value="agency"<TMPL_IF AGENCY_C> SELECTED</TMPL_IF>>Agent Number</option>
	<option value="claim-number"<TMPL_IF CLAIM-NUMBER_C> SELECTED</TMPL_IF>>Claim Number</option>
	<option value="dol"<TMPL_IF DOL_C> SELECTED</TMPL_IF>>Date of Loss</option>
	<option value="examiner-adjuster-code-number"<TMPL_IF EXAMINER-ADJUSTER-CODE-NUMBER_C> SELECTED</TMPL_IF>>Examiner/Adjuster Code Number</option>
	<option value="policy-inception-date"<TMPL_IF POLICY-INCEPTION-DATE_C> SELECTED</TMPL_IF>>Policy Inception Date</option>
	<option value="policy-number"<TMPL_IF POLICY-NUMBER_C> SELECTED</TMPL_IF>>Policy Number</option>
	<option value="reference-code"<TMPL_IF REFERENCE-CODE_C> SELECTED</TMPL_IF>>Reference Code</option>
  <option value="work-phone"<TMPL_IF WORK-PHONE_C> SELECTED</TMPL_IF>>Work Phone Number</option>

        </select> 
        </td>
	
      </tr>
      </TMPL_LOOP>
      </TMPL_IF>
    </table>
    </td>
  </tr>

<INPUT TYPE=HIDDEN NAME="FIELD_COUNT" VALUE="<TMPL_VAR FIELD_COUNT>">
<INPUT TYPE=HIDDEN NAME="ROW_COUNT" VALUE="<TMPL_VAR ROW_COUNT>">

  <TMPL_IF FILE_NAME>
  <tr>
  	<td class="unifont1" valign="middle" align="center">File Name: <b><TMPL_VAR FILE_NAME></b>&nbsp;</td>
  </tr>
  </TMPL_IF>

  <tr>
    <td align="center">
    <br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont1" valign="middle" align="center">First row contains the name of the fields:&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><input type=checkbox name="FIRST_ROW_NAMES" value="1"<TMPL_IF CHECKED_FIRST_ROW_NAMES> CHECKED</TMPL_IF> OnClick="checkbox_set();">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><a style="FONT-SIZE: 8pt; FONT-WEIGHT: bold; text-decoration: underline;" href="javascript:reset_labels();">RESET SELECTIONS</a></td>
      </tr>
    </table>
    </td>
  </tr>

  <tr>
    <td align="center">
    <br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
	<td class="unifont1" align="center" valign="middle"><a href="javascript:prev_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/prev_record.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" align="center" valign="middle">Record Number:&nbsp;</td>
	<td class="unifont1" align="center" valign="middle"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" onFocus="this.blur()">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" align="center" valign="middle"><a href="javascript:next_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next_record.gif" width="80" height="20" border="0"></a></td>
      </tr>
    </table>
    </td>
  </tr>


<!-- END define_file_body.tpl -->
