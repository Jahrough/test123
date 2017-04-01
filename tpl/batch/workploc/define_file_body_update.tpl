<!-- BEGIN define_file_body_update.tpl -->
  <!--
  <tr>
    <td align="center" class="unifont2"><br><b>Select the proper Field Label for each Field Value found in your data:</b><br><br></td>
  </tr>
  -->

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
  
  <tr>
    <td align="left">
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont1" valign="middle" align="left" nowrap="nowrap">Is your first record a title row or does it contain the name of the corresponding fields?&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><input type=checkbox name="FIRST_ROW_NAMES" value="1"<TMPL_IF CHECKED_FIRST_ROW_NAMES> CHECKED</TMPL_IF> OnClick="checkbox_set();">&nbsp;<b>YES</b></td>
	<!--
        <td class="unifont1" valign="middle" align="center"><a style="FONT-SIZE: 8pt; FONT-WEIGHT: bold; text-decoration: underline;" href="javascript:reset_labels();">RESET SELECTIONS</a></td>
        -->
      </tr>

    </table>
    </td>
  </tr>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>

  <tr>
    <td align="left">
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont1" valign="middle" align="left" nowrap="nowrap">If using previously saved template batch format, please select from drop down and click on Next.&nbsp;</td>
      </tr>
      <tr>
      <td align="center">
       <select name="TEMPLATE_DROP_BOX" onChange="if(!template_select_confirm(this.selectedIndex)) return false;reset_labels_template();">
       <option value="">Select Template from list... </option>
        <TMPL_LOOP TEMPLATE_LOOP>
          <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
        </TMPL_LOOP>
        </select>
        &nbsp;&nbsp;&nbsp;&nbsp;<input name="BATCH_DELETE_TEMPLATE" type="button" value="Delete Selected Template" onClick="if(!validate()) return false;send_event('WPL/DELETE_TEMPLATE');">
      </td>
      </tr>
    </table>
    </td>
  </tr>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>

  <tr>
    <td align="left">
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont1" valign="middle" align="left">Assign each field a label using the dropdown boxes above each column.&nbsp;Mark fields that you do not want to use as Not Applicable.</td>
      </tr>
    </table>
    </td>
  </tr>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
  <tr>
    <td align="center" class="batchpricingheader" nowrap="nowrap" colspan="2"><b>
        Use the scroll bar to view all columns.
        </b>
   </td>
  </tr>
    <td align="center">
    <div style="overflow: auto; width:680px;">
    <table border="1" cellpadding="0" cellspacing="0">
      <TMPL_IF DELIM_LOOP>
      <tr>
      <TMPL_LOOP DELIM_LOOP>
        <td class="unifont1">
        <select name="FIELD_NAME_<TMPL_VAR FIELD_NUMBER>" onChange="check_fields(this,FIELD_1[<TMPL_VAR FIELD_NUMBER> - 1]);">
	<TMPL_IF IS_BUS_BATCH>
        <option value="">Select a field type...</option>
	<option value="unknown"<TMPL_IF UNKNOWN_C> SELECTED</TMPL_IF>>Not Applicable</option>
	<option value="name-company"<TMPL_IF NAME-COMPANY_C> SELECTED</TMPL_IF>>Company Name</option>
	<option value="fein"<TMPL_IF FEIN_C> SELECTED</TMPL_IF>>FEIN</option>
        <option value="address-1"<TMPL_IF ADDRESS-1_C> SELECTED</TMPL_IF>>Address Line 1</option>
        <option value="address-2"<TMPL_IF ADDRESS-2_C> SELECTED</TMPL_IF>>Address Line 2</option>
        <option value="address-3"<TMPL_IF ADDRESS-3_C> SELECTED</TMPL_IF>>Address Line 3</option>
        <option value="city"<TMPL_IF CITY_C> SELECTED</TMPL_IF>>City</option>
        <option value="state"<TMPL_IF STATE_C> SELECTED</TMPL_IF>>State</option>
        <option value="zip"<TMPL_IF ZIP_C> SELECTED</TMPL_IF>>Zip</option>
        <option value="phoneno"<TMPL_IF PHONENO_C> SELECTED</TMPL_IF>>Phone Number</option>
	<TMPL_ELSE>
	<TMPL_IF IS_BUS_BATCH_DUEX>
        <option value="">Select a field type...</option>
	<option value="unknown"<TMPL_IF UNKNOWN_C> SELECTED</TMPL_IF>>Not Applicable</option>
	<option value="name-company"<TMPL_IF NAME-COMPANY_C> SELECTED</TMPL_IF>>Company Name</option>
	<option value="fein"<TMPL_IF FEIN_C> SELECTED</TMPL_IF>>FEIN</option>
        <option value="address-1"<TMPL_IF ADDRESS-1_C> SELECTED</TMPL_IF>>Address Line 1</option>
        <option value="address-2"<TMPL_IF ADDRESS-2_C> SELECTED</TMPL_IF>>Address Line 2</option>
        <option value="address-3"<TMPL_IF ADDRESS-3_C> SELECTED</TMPL_IF>>Address Line 3</option>
        <option value="city"<TMPL_IF CITY_C> SELECTED</TMPL_IF>>City</option>
        <option value="state"<TMPL_IF STATE_C> SELECTED</TMPL_IF>>State</option>
        <option value="zip"<TMPL_IF ZIP_C> SELECTED</TMPL_IF>>Zip</option>
        <option value="phoneno"<TMPL_IF PHONENO_C> SELECTED</TMPL_IF>>Phone Number</option>
        <option value="Principal-first-name"<TMPL_IF PRINCIPAL-FIRST-NAME_C> SELECTED</TMPL_IF>>Principal First Name</option>
        <option value="Principal-last-name"<TMPL_IF PRINCIPAL-LAST-NAME_C> SELECTED</TMPL_IF>>Principal Last Name</option>
        <option value="Principal-middle-name"<TMPL_IF PRINCIPAL-MIDDLE-NAME_C> SELECTED</TMPL_IF>>Principal Middle Name</option>
        <option value="Principal-full-name"<TMPL_IF PRINCIPAL-FULL-NAME_C> SELECTED</TMPL_IF>>Principal Full Name</option>
	<TMPL_ELSE>
        <option value="">Select a field type...</option>
	<option value="unknown"<TMPL_IF UNKNOWN_C> SELECTED</TMPL_IF>>Not Applicable</option>
	<option value="name"<TMPL_IF NAME_C> SELECTED</TMPL_IF>>Full Name</option>
        <option value="name-first"<TMPL_IF NAME-FIRST_C> SELECTED</TMPL_IF>>First Name</option>
        <option value="name-middle"<TMPL_IF NAME-MIDDLE_C> SELECTED</TMPL_IF>>Middle Name</option>
        <option value="name-last"<TMPL_IF NAME-LAST_C> SELECTED</TMPL_IF>>Last Name</option>
	<option value="name-suffix"<TMPL_IF NAME-SUFFIX_C> SELECTED</TMPL_IF>>Generational Suffix</option>

	<option value="address-1"<TMPL_IF ADDRESS-1_C> SELECTED</TMPL_IF>>Address 1</option>
	<option value="address-2"<TMPL_IF ADDRESS-2_C> SELECTED</TMPL_IF>>Address 1 Line 2</option>
        <option value="city"<TMPL_IF CITY_C> SELECTED</TMPL_IF>>City 1</option>
        <option value="state"<TMPL_IF STATE_C> SELECTED</TMPL_IF>>State 1</option>
        <option value="zip"<TMPL_IF ZIP_C> SELECTED</TMPL_IF>>Zip 1</option>
        <option value="phoneno"<TMPL_IF PHONENO_C> SELECTED</TMPL_IF>>Phone Number 1</option>
        <option value="ssn"<TMPL_IF SSN_C> SELECTED</TMPL_IF>>Social Security #</option>
        <option value="dob"<TMPL_IF DOB_C> SELECTED</TMPL_IF>>DOB</option>
        <option value="dl_number"<TMPL_IF DL_NUMBER_C> SELECTED</TMPL_IF>>Driver's License Number</option>

	<option value="RX_addr2"<TMPL_IF RX_ADDR2_C> SELECTED</TMPL_IF>>Address 2</option>
	<option value="RX_addr2_2"<TMPL_IF RX_ADDR2_2_C> SELECTED</TMPL_IF>>Address 2 Line 2</option>
        <option value="RX_city_name2"<TMPL_IF RX_CITY_NAME2_C> SELECTED</TMPL_IF>>City 2</option>
        <option value="RX_st2"<TMPL_IF RX_ST2_C> SELECTED</TMPL_IF>>State 2</option>
        <option value="RX_zip2"<TMPL_IF RX_ZIP2_C> SELECTED</TMPL_IF>>Zip 2</option>
        <option value="RX_phoneno_2"<TMPL_IF RX_PHONENO_2_C> SELECTED</TMPL_IF>>Phone Number 2</option>

	<option value="RX_addr3"<TMPL_IF RX_ADDR3_C> SELECTED</TMPL_IF>>Address 3</option>
	<option value="RX_addr3_2"<TMPL_IF RX_ADDR3_2_C> SELECTED</TMPL_IF>>Address 3 Line 2</option>
        <option value="RX_city_name3"<TMPL_IF RX_CITY_NAME3_C> SELECTED</TMPL_IF>>City 3</option>
        <option value="RX_st3"<TMPL_IF RX_ST3_C> SELECTED</TMPL_IF>>State 3</option>
        <option value="RX_zip3"<TMPL_IF RX_ZIP3_C> SELECTED</TMPL_IF>>Zip 3</option>
        <option value="RX_phoneno_3"<TMPL_IF RX_PHONENO_3_C> SELECTED</TMPL_IF>>Phone Number 3</option>

	<option value="RX_addr4"<TMPL_IF RX_ADDR4_C> SELECTED</TMPL_IF>>Address 4</option>
	<option value="RX_addr4_2"<TMPL_IF RX_ADDR4_2_C> SELECTED</TMPL_IF>>Address 4 Line 2</option>
        <option value="RX_city_name4"<TMPL_IF RX_CITY_NAME4_C> SELECTED</TMPL_IF>>City 4</option>
        <option value="RX_st4"<TMPL_IF RX_ST4_C> SELECTED</TMPL_IF>>State 4</option>
        <option value="RX_zip4"<TMPL_IF RX_ZIP4_C> SELECTED</TMPL_IF>>Zip 4</option>
        <option value="RX_phoneno_4"<TMPL_IF RX_PHONENO_4_C> SELECTED</TMPL_IF>>Phone Number 4</option>

	<option value="RX_addr5"<TMPL_IF RX_ADDR5_C> SELECTED</TMPL_IF>>Address 5</option>
	<option value="RX_addr5_2"<TMPL_IF RX_ADDR5_2_C> SELECTED</TMPL_IF>>Address 5 Line 2</option>
        <option value="RX_city_name5"<TMPL_IF RX_CITY_NAME5_C> SELECTED</TMPL_IF>>City 5</option>
        <option value="RX_st5"<TMPL_IF RX_ST5_C> SELECTED</TMPL_IF>>State 5</option>
        <option value="RX_zip5"<TMPL_IF RX_ZIP5_C> SELECTED</TMPL_IF>>Zip 5</option>
        <option value="RX_phoneno_5"<TMPL_IF RX_PHONENO_5_C> SELECTED</TMPL_IF>>Phone Number 5</option>

	<option value="RX_addr6"<TMPL_IF RX_ADDR6_C> SELECTED</TMPL_IF>>Address 6</option>
	<option value="RX_addr6_2"<TMPL_IF RX_ADDR6_2_C> SELECTED</TMPL_IF>>Address 6 Line 2</option>
        <option value="RX_city6"<TMPL_IF RX_CITY6_C> SELECTED</TMPL_IF>>City 6</option>
        <option value="RX_st6"<TMPL_IF RX_ST6_C> SELECTED</TMPL_IF>>State 6</option>
        <option value="RX_zip6"<TMPL_IF RX_ZIP6_C> SELECTED</TMPL_IF>>Zip 6</option>
        <option value="RX_phoneno_6"<TMPL_IF RX_PHONENO_6_C> SELECTED</TMPL_IF>>Phone Number 6</option>

	<option value="RX_addr7"<TMPL_IF RX_ADDR7_C> SELECTED</TMPL_IF>>Address 7</option>
	<option value="RX_addr7_2"<TMPL_IF RX_ADDR7_2_C> SELECTED</TMPL_IF>>Address 7 Line 2</option>
        <option value="RX_city7"<TMPL_IF RX_CITY7_C> SELECTED</TMPL_IF>>City 7</option>
        <option value="RX_st7"<TMPL_IF RX_ST7_C> SELECTED</TMPL_IF>>State 7</option>
        <option value="RX_zip7"<TMPL_IF RX_ZIP7_C> SELECTED</TMPL_IF>>Zip 7</option>
        <option value="RX_phoneno_7"<TMPL_IF RX_PHONENO_7_C> SELECTED</TMPL_IF>>Phone Number 7</option>

	<option value="RX_addr8"<TMPL_IF RX_ADDR8_C> SELECTED</TMPL_IF>>Address 8</option>
	<option value="RX_addr8_2"<TMPL_IF RX_ADDR8_2_C> SELECTED</TMPL_IF>>Address 8 Line 2</option>
        <option value="RX_city8"<TMPL_IF RX_CITY8_C> SELECTED</TMPL_IF>>City 8</option>
        <option value="RX_st8"<TMPL_IF RX_ST8_C> SELECTED</TMPL_IF>>State 8</option>
        <option value="RX_zip8"<TMPL_IF RX_ZIP8_C> SELECTED</TMPL_IF>>Zip 8</option>
        <option value="RX_phoneno_8"<TMPL_IF RX_PHONENO_8_C> SELECTED</TMPL_IF>>Phone Number 8</option>

	<option value="RX_addr9"<TMPL_IF RX_ADDR9_C> SELECTED</TMPL_IF>>Address 9</option>
	<option value="RX_addr9_2"<TMPL_IF RX_ADDR9_2_C> SELECTED</TMPL_IF>>Address 9 Line 2</option>
        <option value="RX_city9"<TMPL_IF RX_CITY9_C> SELECTED</TMPL_IF>>City 9</option>
        <option value="RX_st9"<TMPL_IF RX_ST9_C> SELECTED</TMPL_IF>>State 9</option>
        <option value="RX_zip9"<TMPL_IF RX_ZIP9_C> SELECTED</TMPL_IF>>Zip 9</option>
        <option value="RX_phoneno_9"<TMPL_IF RX_PHONENO_9_C> SELECTED</TMPL_IF>>Phone Number 9</option>

	<option value="RX_addr10"<TMPL_IF RX_ADDR10_C> SELECTED</TMPL_IF>>Address 10</option>
	<option value="RX_addr10_2"<TMPL_IF RX_ADDR10_2_C> SELECTED</TMPL_IF>>Address 10 Line 2</option>
        <option value="RX_city10"<TMPL_IF RX_CITY10_C> SELECTED</TMPL_IF>>City 10</option>
        <option value="RX_st10"<TMPL_IF RX_ST10_C> SELECTED</TMPL_IF>>State 10</option>
        <option value="RX_zip10"<TMPL_IF RX_ZIP10_C> SELECTED</TMPL_IF>>Zip 10</option>
        <option value="RX_phoneno_10"<TMPL_IF RX_PHONENO_10_C> SELECTED</TMPL_IF>>Phone Number 10</option>

	<TMPL_IF IS_BATCH_ADMIN>
        <option value="keep"<TMPL_IF KEEP_C> SELECTED</TMPL_IF>>Client Account Number</option>
        <option value="phone_disconnected"<TMPL_IF PHONE_DISCONNECTED_C> SELECTED</TMPL_IF>>Disconnect Flag</option>
        <option value="phone_disconnected-2"<TMPL_IF PHONE_DISCONNECTED-2_C> SELECTED</TMPL_IF>>Disconnect Flag 2</option>
        <option value="phone_disconnected-3"<TMPL_IF PHONE_DISCONNECTED-3_C> SELECTED</TMPL_IF>>Disconnect Flag 3</option>
        <option value="bad_address"<TMPL_IF BAD_ADDRESS_C> SELECTED</TMPL_IF>>Mail Return Flag</option>
        <option value="dob-dd-mmm-yyyy"<TMPL_IF dob-dd-mmm-yyyy_C> SELECTED</TMPL_IF>>DOB-DD-MMM-YYYY</option>
        <option value="dob-mmm-dd-yyyy"<TMPL_IF dob-mmm-dd-yyyy_C> SELECTED</TMPL_IF>>DOB-MMM-DD_YYYY</option>
        <option value="dob-yyyymmdd"<TMPL_IF dob-yyyymmdd_C> SELECTED</TMPL_IF>>DOB-YYYYMMDD</option>
        <option value="dob-mmddyyyy"<TMPL_IF dob-mmddyyyy_C> SELECTED</TMPL_IF>>DOB-MMDDYYYY</option>
        <option value="dob-ddmmyyyy"<TMPL_IF dob-ddmmyyyy_C> SELECTED</TMPL_IF>>DOB-DDMMYYYY</option>
        <option value="dob-yyyy"<TMPL_IF dob-yyyy_C> SELECTED</TMPL_IF>>DOB-YYYY</option>
        <option value="dob-mmyyyy"<TMPL_IF dob-mmyyyy_C> SELECTED</TMPL_IF>>DOB-MMYYYY</option>
        <option value="dob-yyymm"<TMPL_IF dob-yyymm_C> SELECTED</TMPL_IF>>DOB-YYYMM</option>
        <option value="filter-date-yyyy"<TMPL_IF filter-date-yyyy_C> SELECTED</TMPL_IF>>FILTER YYYY</option>
        <option value="filter-date-yyyymm"<TMPL_IF filter-date-yyyymm_C> SELECTED</TMPL_IF>>FILTER YYYYMM</option>
        <option value="filter-date-yyyymmdd"<TMPL_IF filter-date-yyyymmdd_C> SELECTED</TMPL_IF>>FILTER YYYYMMDD</option>
        <option value="filter-date-mmyyyy"<TMPL_IF filter-date-mmyyyy_C> SELECTED</TMPL_IF>>FILTER MMYYYY</option>
        <option value="filter-date-dd-mmm-yyyy"<TMPL_IF filter-date-dd-mmm-yyyy_C> SELECTED</TMPL_IF>>FILTER DD-MMM-YYYY</option>
        <option value="filter-date-mmm-dd-yyyy"<TMPL_IF filter-date-mmm-dd-yyyy_C> SELECTED</TMPL_IF>>FILTER MMM-DD-YYYY</option>
        <option value="filter-date-mmddyyyy"<TMPL_IF filter-date-mmddyyyy_C> SELECTED</TMPL_IF>>FILTER MMDDYYYY</option>
        <option value="filter-date-ddmmyyyy"<TMPL_IF filter-date-ddmmyyyy_C> SELECTED</TMPL_IF>>FILTER DDMMYYYY</option>
        <option value="adl"<TMPL_IF adl_C> SELECTED</TMPL_IF>>ADL</option>
	</TMPL_IF>
	</TMPL_IF>
	</TMPL_IF>
        </select> 

        <br><center>Column&nbsp;<TMPL_VAR FIELD_NUMBER></center>

	<TMPL_IF FIELD_LOOP>
	  <TMPL_LOOP FIELD_LOOP>
             <INPUT TYPE=TEXT NAME="FIELD_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR FIELD_VAL ESCAPE=HTML>" SIZE="25" onFocus="this.blur();">
	     <INPUT TYPE=HIDDEN NAME="FIELD_VALUE_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR FIELD_VAL ESCAPE=HTML>" onFocus="this.blur();">
             <br />
	  </TMPL_LOOP>
	<TMPL_ELSE>&nbsp;</TMPL_IF>
        </td>
      </TMPL_LOOP>
      </tr>
      </TMPL_IF>
    </table>
    </div>
    </td>
  </tr>
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>

    <td class="unifont1">Save this Template File Layout (Optional):&nbsp;<INPUT TYPE=TEXT NAME="TEMPLATE_NAME" VALUE="" SIZE="35" maxlength="40"></td>
  </tr>
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="5" border="0"></td>
  </tr>
  <tr>
  <tr>
    <td align="left" class="batchpricingheader"><b>Enter a File Layout name of up to 40 characters. This layout will be available for all future batch orders in Step 3. Up to 10 template layouts may be saved.</b></td>
  </tr>

<TMPL_LOOP TEMPLATE_FIELD_LOOP>
  <INPUT TYPE=HIDDEN NAME="<TMPL_VAR NAME>" VALUE="<TMPL_VAR VALUE>">
</TMPL_LOOP>
<INPUT TYPE=HIDDEN NAME="FIELD_COUNT" VALUE="<TMPL_VAR FIELD_COUNT>">
<INPUT TYPE=HIDDEN NAME="ROW_COUNT" VALUE="<TMPL_VAR ROW_COUNT>">
<INPUT TYPE=HIDDEN NAME="SHOW_BATCH_UPDATE" VALUE="<TMPL_VAR SHOW_BATCH_UPDATE>">
<INPUT TYPE=HIDDEN SIZE="1" NAME="SELECTED_INDEX" VALUE="1">
<INPUT TYPE=HIDDEN NAME="FILE_TYPE" VALUE="<TMPL_VAR FILE_TYPE>">

<!-- these indexes are used for the 'guess_fields' routine in batch.js -->
<TMPL_IF IS_BUS_BATCH>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX" VALUE=8>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX" VALUE=9>
<INPUT TYPE=HIDDEN NAME="PHONE_INDEX" VALUE=10>
<TMPL_ELSE>
<TMPL_IF IS_BUS_BATCH_DUEX>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX" VALUE=8>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX" VALUE=9>
<INPUT TYPE=HIDDEN NAME="PHONE_INDEX" VALUE=10>
<TMPL_ELSE>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX" VALUE=11>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX" VALUE=12>
<INPUT TYPE=HIDDEN NAME="SSN_INDEX" VALUE=13>
<INPUT TYPE=HIDDEN NAME="PHONE_INDEX" VALUE=14>
</TMPL_IF>
</TMPL_IF>

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
	<!-- <td class="unifont1" align="center" valign="middle"><a href="javascript:prev_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/prev_record.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td> -->
	<!-- <td class="unifont1" align="center" valign="middle">Record Number:&nbsp;</td> -->
	<!-- <td class="unifont1" align="center" valign="middle"><a href="javascript:next_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/next_record.gif" width="80" height="20" border="0"></a></td> -->
      </tr>
    </table>
    </td>
  </tr>

<!-- END define_file_body_update.tpl -->
