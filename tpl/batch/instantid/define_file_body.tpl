<!-- BEGIN define_file_body.tpl -->
  <tr>
    <td align="center" class="unifont2"><br><b>Select the proper Field Label for each Field Value found in your data:</b><br><br></td>
  </tr>
   
  <tr>
    <td align="center">
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
    <table border="1" cellpadding="0" cellspacing="0">
      <tr height="30">
        <td class="unifont2">&nbsp;<b>Field Order</b>&nbsp;</td>
        <td class="unifont2">&nbsp;<b>Field Value</b>&nbsp;</td>
        <td class="unifont2">&nbsp;<b>Field Label</b>&nbsp;</td>
      </tr>
      <TMPL_IF DELIM_LOOP>
      <TMPL_LOOP DELIM_LOOP>
      <tr valign="center">
        <td class="unifont1">&nbsp;<TMPL_VAR FIELD_NUMBER></td>
        
	<td class="unifont1" class="nsinputs">&nbsp;
	<TMPL_IF FIELD_LOOP>
	  <INPUT TYPE=TEXT NAME="FIELD_<TMPL_VAR FIELD_NUMBER>" VALUE="<TMPL_VAR FIRST_VALUE ESCAPE=HTML>" SIZE=40 onFocus="this.blur()">
	<TMPL_LOOP FIELD_LOOP>
	  <INPUT TYPE=HIDDEN NAME="FIELD_VALUE_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR FIELD_VAL ESCAPE=HTML>" onFocus="this.blur();">&nbsp;
	</TMPL_LOOP>
	<TMPL_ELSE>&nbsp;</TMPL_IF>
	</td>
        
	<td class="unifont1" class="nsinputs"><select name="FIELD_NAME_<TMPL_VAR FIELD_NUMBER>" onChange="check_fields(this,FIELD_<TMPL_VAR FIELD_NUMBER>);">
        <option value=""></option>
	<option value="unknown"<TMPL_IF UNKNOWN_C> SELECTED</TMPL_IF>>Not Applicable</option>
        <option value="cust_acct"<TMPL_IF CUST_ACCT_C> SELECTED</TMPL_IF>>Account Number</option>
	<option value="open-date"<TMPL_IF open-date_C> SELECTED</TMPL_IF>>Account Open Date</option>

	<TMPL_IF IS_BATCH_ADMIN>
	<option value="open-date-yyyy"<TMPL_IF open-date-yyyy_C> SELECTED</TMPL_IF>>Account Open Date-YYYY</option>
	<option value="open-date-yyyymm"<TMPL_IF open-date-yyyymm_C> SELECTED</TMPL_IF>>Account Open Date-YYYYMM</option>
	<option value="open-date-yyyymmdd"<TMPL_IF open-date-yyyymmdd_C> SELECTED</TMPL_IF>>Account Open Date-YYYYMMDD</option>
	<option value="open-date-mmyyyy"<TMPL_IF open-date-mmyyyy_C> SELECTED</TMPL_IF>>Account Open Date-MMYYYY</option>
	<option value="open-date-dd-mmm-yyyy"<TMPL_IF open-date-dd-mmm-yyyy_C> SELECTED</TMPL_IF>>Account Open Date-DD-MMM-YYYY</option>
	<option value="open-date-mmm-dd-yyyy"<TMPL_IF open-date-mmm-dd-yyyy_C> SELECTED</TMPL_IF>>Account Open Date-MMM-DD-YYYY</option>
	<option value="open-date-mmddyyyy"<TMPL_IF open-date-mmddyyyy_C> SELECTED</TMPL_IF>>Account Open Date-MMDDYYYY</option>
	<option value="open-date-ddmmyyyy"<TMPL_IF open-date-ddmmyyyy_C> SELECTED</TMPL_IF>>Account Open Date-DDMMYYYY</option>
	</TMPL_IF>
	
	<TMPL_IF BUSINESS_PROCESS_TYPE>
	<option value="name-company"<TMPL_IF NAME-COMPANY_C> SELECTED</TMPL_IF>>Company Name</option>
	<option value="company-dba"<TMPL_IF COMPANY-DBA_C> SELECTED</TMPL_IF>>Company DBA</option>
	<option value="fein"<TMPL_IF FEIN_C> SELECTED</TMPL_IF>>FEIN</option>
  	<option value="address-1"<TMPL_IF ADDRESS-1_C> SELECTED</TMPL_IF>>Company Address Line 1</option>
        <option value="address-2"<TMPL_IF ADDRESS-2_C> SELECTED</TMPL_IF>>Company Address Line 2</option>
        <option value="address-3"<TMPL_IF ADDRESS-3_C> SELECTED</TMPL_IF>>Company Address Line 3</option>
        <option value="city"<TMPL_IF CITY_C> SELECTED</TMPL_IF>>Company City</option>
        <option value="state"<TMPL_IF STATE_C> SELECTED</TMPL_IF>>Company State</option>
        <option value="zip"<TMPL_IF ZIP_C> SELECTED</TMPL_IF>>Company Zip</option>
	<option value="phoneno"<TMPL_IF PHONENO_C> SELECTED</TMPL_IF>>Company Phone Number</option>
	<option value="name"<TMPL_IF NAME_C> SELECTED</TMPL_IF>>Authorized Representative Full Name</option>
        <option value="name-first"<TMPL_IF NAME-FIRST_C> SELECTED</TMPL_IF>>Authorized Representative First Name</option>
        <option value="name-middle"<TMPL_IF NAME-MIDDLE_C> SELECTED</TMPL_IF>>Authorized Representative Middle Name</option>
        <option value="name-last"<TMPL_IF NAME-LAST_C> SELECTED</TMPL_IF>>Authorized Representative Last Name</option>
	<option value="ssn"<TMPL_IF SSN_C> SELECTED</TMPL_IF>>Authorized Representative SSN</option>
	<option value="rep-address-1"<TMPL_IF REP-ADDRESS-1_C> SELECTED</TMPL_IF>>Authorized Representative Address Line 1</option>
        <option value="rep-address-2"<TMPL_IF REP-ADDRESS-2_C> SELECTED</TMPL_IF>>Authorized Representative Address Line 2</option>
        <option value="rep-address-3"<TMPL_IF REP-ADDRESS-3_C> SELECTED</TMPL_IF>>Authorized Representative Address Line 3</option>
        <option value="rep-city"<TMPL_IF REP-CITY_C> SELECTED</TMPL_IF>>Authorized Representative City</option>
        <option value="rep-state"<TMPL_IF REP-STATE_C> SELECTED</TMPL_IF>>Authorized Representative State</option>
        <option value="rep-zip"<TMPL_IF REP-ZIP_C> SELECTED</TMPL_IF>>Authorized Representative Zip</option>
        <option value="phone-2"<TMPL_IF PHONE-2_C> SELECTED</TMPL_IF>>Authorized Representative Phone Number</option>
	<option value="dob"<TMPL_IF DOB_C> SELECTED</TMPL_IF>>Authorized Representative DOB</option>
	<TMPL_ELSE>
	<option value="name"<TMPL_IF NAME_C> SELECTED</TMPL_IF>>Full Name</option>
        <option value="name-first"<TMPL_IF NAME-FIRST_C> SELECTED</TMPL_IF>>First Name</option>
        <option value="name-middle"<TMPL_IF NAME-MIDDLE_C> SELECTED</TMPL_IF>>Middle Name</option>
        <option value="name-last"<TMPL_IF NAME-LAST_C> SELECTED</TMPL_IF>>Last Name</option>
	<option value="name-suffix"<TMPL_IF NAME-SUFFIX_C> SELECTED</TMPL_IF>>Generational Suffix</option>
	<option value="address-1"<TMPL_IF ADDRESS-1_C> SELECTED</TMPL_IF>>Address Line 1</option>
        <option value="address-2"<TMPL_IF ADDRESS-2_C> SELECTED</TMPL_IF>>Address Line 2</option>
        <option value="address-3"<TMPL_IF ADDRESS-3_C> SELECTED</TMPL_IF>>Address Line 3</option>
        <option value="city"<TMPL_IF CITY_C> SELECTED</TMPL_IF>>City</option>
        <option value="state"<TMPL_IF STATE_C> SELECTED</TMPL_IF>>State</option>
        <option value="zip"<TMPL_IF ZIP_C> SELECTED</TMPL_IF>>Zip</option>
        <option value="ssn"<TMPL_IF SSN_C> SELECTED</TMPL_IF>>Social Security #</option>
        <option value="phoneno"<TMPL_IF PHONENO_C> SELECTED</TMPL_IF>>Phone Number</option>
        <option value="phoneno-2"<TMPL_IF PHONENO-2_C> SELECTED</TMPL_IF>>Phone Number 2</option>
        <option value="phoneno-3"<TMPL_IF PHONENO-3_C> SELECTED</TMPL_IF>>Phone Number 3</option>
        <option value="dob"<TMPL_IF DOB_C> SELECTED</TMPL_IF>>DOB</option>
        <option value="age"<TMPL_IF AGE_C> SELECTED</TMPL_IF>>Age</option>
        <option value="home_phone"<TMPL_IF HOME_PHONE_C> SELECTED</TMPL_IF>>Home Phone</option>
        <option value="work_phone"<TMPL_IF WORK_PHONE_C> SELECTED</TMPL_IF>>Work Phone</option>
        <option value="dl_number"<TMPL_IF DL_NUMBER_C> SELECTED</TMPL_IF>>Driver's License Number</option>
        <option value="dl_state"<TMPL_IF DL_STATE_C> SELECTED</TMPL_IF>>Driver's License State</option>
	</TMPL_IF>
</select></td>
	
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
	<td class="unifont1" align="center" valign="middle"><a href="javascript:prev_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/prev_record.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" align="center" valign="middle">Record Number:&nbsp;</td>
	<td class="unifont1" align="center" valign="middle"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" onFocus="this.blur()">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" align="center" valign="middle"><a href="javascript:next_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/next_record.gif" width="80" height="20" border="0"></a></td>
      </tr>
    </table>
    </td>
  </tr>


<!-- END define_file_body.tpl -->
