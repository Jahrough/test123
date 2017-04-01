<!-- BEGIN define_file_body.tpl -->
  <tr>
    <td align="center" class="unifont2"><br><b>Select the proper Field Label for each Field Value found in your data:</b><br><br></td>
  </tr>

  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont1" valign="middle" align="center"><TMPL_IF ALT_FIRST_ROW_MSG><b><FONT COLOR="#FF0000"></TMPL_IF>First row contains the name of the fields:&nbsp;<TMPL_IF ALT_FIRST_ROW_MSG></FONT></b></TMPL_IF></td>
	<td class="unifont1" valign="middle" align="center"><input type=checkbox name="FIRST_ROW_NAMES" tabindex=1 value="1"<TMPL_IF CHECKED_FIRST_ROW_NAMES> CHECKED</TMPL_IF> OnClick="checkbox_set();">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><a style="FONT-SIZE: 8pt; FONT-WEIGHT: bold; text-decoration: underline; textindex=2" href="javascript:reset_labels();">RESET SELECTIONS</a></td>
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
      <tr>
        <td class="unifont1">&nbsp;<TMPL_VAR FIELD_NUMBER></td>
        
	<td class="unifont1" class="nsinputs">&nbsp;
	<TMPL_IF FIELD_LOOP>
	  <INPUT TYPE=TEXT NAME="FIELD_<TMPL_VAR FIELD_NUMBER>" VALUE="<TMPL_VAR FIRST_VALUE ESCAPE=HTML>" SIZE=40 READONLY="TRUE">
	<TMPL_LOOP FIELD_LOOP>
	  <INPUT TYPE=HIDDEN NAME="FIELD_VALUE_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR FIELD_VAL ESCAPE=HTML>">
	</TMPL_LOOP>
	<TMPL_ELSE>&nbsp;</TMPL_IF>
	</td>
        
	<td class="unifont1">
        <select name="FIELD_NAME_<TMPL_VAR FIELD_NUMBER>" onChange="check_fields(this,FIELD_<TMPL_VAR FIELD_NUMBER>);">
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
	
      </tr>
      </TMPL_LOOP>
      </TMPL_IF>
    </table>
    </td>
  </tr>

<INPUT TYPE=HIDDEN NAME="FIELD_COUNT" VALUE="<TMPL_VAR FIELD_COUNT>">
<INPUT TYPE=HIDDEN NAME="ROW_COUNT" VALUE="<TMPL_VAR ROW_COUNT>">

<!-- can be taken out as at this point we are not guessing -->
<!-- these indexes are used for the 'guess_fields' routine in batch.js -->
<INPUT TYPE=HIDDEN NAME="SSN_INDEX" VALUE=11>
<INPUT TYPE=HIDDEN NAME="PHONE_INDEX" VALUE=12>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_1" VALUE=9>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_1" VALUE=10>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_2" VALUE=19>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_2" VALUE=20>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_3" VALUE=23>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_3" VALUE=24>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_4" VALUE=27>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_4" VALUE=28>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_5" VALUE=31>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_5" VALUE=32>

<INPUT TYPE=HIDDEN NAME="STATE_INDEX_6" VALUE=35>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_6" VALUE=36>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_7" VALUE=39>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_7" VALUE=40>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_8" VALUE=43>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_8" VALUE=44>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_9" VALUE=47>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_9" VALUE=48>

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
	<td class="unifont1" align="center" valign="middle"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" READONLY="TRUE">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" align="center" valign="middle"><a href="javascript:next_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/next_record.gif" width="80" height="20" border="0"></a></td>
      </tr>
    </table>
    </td>
  </tr>


<!-- END define_file_body.tpl -->
