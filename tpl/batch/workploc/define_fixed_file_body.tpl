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
    <td align="center" class="unifont2"><br><b>Select the proper Field Label for each Field Value found in your data:</b><br><br></td>
  </tr>

  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont2" valign="middle" align="center"><TMPL_IF ALT_FIRST_ROW_MSG><b><FONT COLOR="#FF0000"></TMPL_IF>First row contains the name of the fields:&nbsp;<TMPL_IF ALT_FIRST_ROW_MSG></FONT></b></TMPL_IF></td>

	<td class="unifont2" valign="middle" align="center"><input type=checkbox name="FIRST_ROW_NAMES" value="1"<TMPL_IF CHECKED_FIRST_ROW_NAMES> CHECKED</TMPL_IF>></td>
      </tr>
    </table>
    </td>
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
        <select name="FIELD_NAME_<TMPL_VAR FIELD_NUM>">
        <option value=""></option>
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

        </select> 
        </td>
        <td class="unifont1" class="nsinputs" align="center">&nbsp;<SELECT NAME="FIELD_SIZE_<TMPL_VAR FIELD_NUM>" onChange="build_example();">
		<TMPL_LOOP SIZES>
		  <OPTION VALUE="<TMPL_VAR SIZE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR SIZE></OPTION>
		</TMPL_LOOP>
		</SELECT> 
		</td>
		<td class="nsinputs"><INPUT TYPE=TEXT NAME="FIELD_<TMPL_VAR FIELD_NUM>" VALUE="" SIZE=70 onFocus="this.blur()"></td>
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
        <td class="unifont1" valign="middle" align="center"><a href="javascript:send_event('WPL/ADD_FIELD_FIRST')"><img src="<TMPL_VAR IMGPATH>/add_first.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><a href="javascript:send_event('WPL/ADD_FIELD_AFTER')"><img src="<TMPL_VAR IMGPATH>/add_after.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><a href="javascript:send_event('WPL/DELETE_FIELD')"><img src="<TMPL_VAR IMGPATH>/delete_field.gif" width="80" height="20" border="0"></a></td>
      </tr>
    </table>
    </td>
  </tr>

  <tr>
    <td align="center">
    <br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="valign" align="center" class="unifont1"><a href="javascript:prev_index(this.document.forms[0]);build_example();"><img src="<TMPL_VAR IMGPATH>/prev_record.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="valign" align="center" class="unifont1">Record Number:&nbsp;</td>
	<td valign="valign" align="center" class="unifont1"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" onFocus="this.blur()">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="valign" align="center" class="unifont1"><a href="javascript:next_index(this.document.forms[0]);build_example();"><img src="<TMPL_VAR IMGPATH>/next_record.gif" width="80" height="20" border="0"></a></td>
      </tr>
    </table>
    </td>
  </tr>

<!-- END define_fixed_file_body.tpl -->

