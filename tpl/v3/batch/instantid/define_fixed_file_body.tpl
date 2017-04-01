<!-- BEGIN define_fixed_file_body.tpl -->
  <tr>
    <td align="center" class="batchbanner"><br><b>Define Field Labels</b></td>
  </tr>

  <TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
  </TMPL_IF>

  <tr>
    <td align="left" class="unifont2"><br><b>Select the proper Field Label for each Field Value found in your data:</b><br><br></td>
  </tr>
  
  <tr>
    <td align="center">
    <table border="1" cellpadding="0" cellspacing="0">
      <tr height="30">
        <td class="unifont2">&nbsp;<b></b>&nbsp;</td>
        <td class="unifont2">&nbsp;<b>Field Label</b>&nbsp;</td>
        <td class="unifont2">&nbsp;<b>Field Length</b>&nbsp;</td>
        <td class="unifont2">&nbsp;<b>Example</b>&nbsp;</td>
      </tr>
  	  <TMPL_LOOP FIELDS>
      <tr>
        <td class="unifont1">&nbsp;<INPUT TYPE=RADIO NAME="FIELD_NUM" VALUE="<TMPL_VAR FIELD_NUM>"<TMPL_IF FIELD_NUM_C>CHECKED</TMPL_IF>></td>
        <td class="unifont1">
        <select name="FIELD_NAME_<TMPL_VAR FIELD_NUM>" onBlur="check_fields(this,FIELD_<TMPL_VAR FIELD_NUM>);">
        <option value=""></option>
        <option value="unknown"<TMPL_IF UNKNOWN_C> SELECTED</TMPL_IF>>Not Applicable</option>
        <option value="cust_acct"<TMPL_IF CUST_ACCT_C> SELECTED</TMPL_IF>>Account Number</option>
        <option value="open-date"<TMPL_IF ACCOUNT-OPEN-DATE_C> SELECTED</TMPL_IF>>Account Open Date</option>
        <TMPL_IF DISPLAY_NOW>       <!-- This variable is not created, just needed to not display the following options -->
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
        </TMPL_IF>
 	<TMPL_UNLESS IS_BIID_BATCH>>
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
	</TMPL_UNLESS>
        </select> 
        </td>
        <td class="unifont1" class="nsinputs" align="center">&nbsp;<SELECT NAME="FIELD_SIZE_<TMPL_VAR NAME=FIELD_NUM>" onChange="build_example();">
		<TMPL_LOOP SIZES>
		  <OPTION VALUE="<TMPL_VAR SIZE>"<TMPL_IF NAME=SELECTED> SELECTED</TMPL_IF>><TMPL_VAR SIZE></OPTION>
		</TMPL_LOOP>
		</SELECT> 
		</td>
		<td class="nsinputs"><INPUT TYPE=TEXT NAME="FIELD_<TMPL_VAR FIELD_NUM>" VALUE="" SIZE=70 readonly tabindex="-1"></td>
      </tr>
    </TMPL_LOOP>
    </table>
    </td>
  </tr>

<INPUT TYPE=HIDDEN NAME="FIELD_COUNT" VALUE="<TMPL_VAR FIELD_COUNT>">
<INPUT TYPE=HIDDEN NAME="ROW_COUNT" VALUE="<TMPL_VAR ROW_COUNT>">
<INPUT TYPE=HIDDEN NAME="ROW_LENGTH" VALUE="<TMPL_VAR ROW_LENGTH>">

  <TMPL_IF FILE_NAME>
  <tr>
  	<td class="unifont1" valign="middle" align="center">File Name: <b><TMPL_VAR FILE_NAME></b>&nbsp;</td>
  </tr>
  </TMPL_IF>


  <tr>
    <td align="center">
    <br><br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont1" valign="middle" align="center"><a class="btn darkgrey-btn" href="javascript:send_event('INSTANTIDBATCH/ADD_FIELD_FIRST')">Add First</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><a class="btn darkgrey-btn" href="javascript:send_event('INSTANTIDBATCH/ADD_FIELD_AFTER')">Add After</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><a class="btn darkgrey-btn" href="javascript:send_event('INSTANTIDBATCH/DELETE_FIELD')">Delete Field</a></td>
      </tr>
    </table>
    </td>
  </tr>

  <tr>
    <td align="center">
    <br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont2" valign="middle" align="center">First row contains the name of the fields:&nbsp;</td>
	<td class="unifont2" valign="middle" align="center"><input type=checkbox name="FIRST_ROW_NAMES" value="1"<TMPL_IF CHECKED_FIRST_ROW_NAMES> CHECKED</TMPL_IF>></td>
      </tr>
    </table>
    </td>
  </tr>

  <tr>
    <td align="center">
    <br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="valign" align="center" class="unifont1"><a href="javascript:prev_index(this.document.forms[0]);build_example();">Previous</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="valign" align="center" class="unifont1">Record Number:&nbsp;</td>
	<td valign="valign" align="center" class="unifont1"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" readonly tabindex="-1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="valign" align="center" class="unifont1"><a href="javascript:next_index(this.document.forms[0]);build_example();">Next</a></td>
      </tr>
    </table>
    </td>
  </tr>

<!-- END define_fixed_file_body.tpl -->
