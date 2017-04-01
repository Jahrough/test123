<!-- BEGIN define_fixed_file_body_update.tpl -->
  <tr>
    <td align="center" class="batchbanner"><br><b>Define Field Labels</b></td>
  </tr>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>

  <TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
  </TMPL_IF>

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
      <td align="left">
       <!-- <select name="TEMPLATE_DROP_BOX" onChange="reset_labels_template();send_event('BATCH/DEFINE_FILE');""> -->
       <select name="TEMPLATE_DROP_BOX" onChange="if(!template_select_confirm(this.selectedIndex)) return false;send_event('PHONEBATCH/LOAD_TEMPLATE');"">
       <option value="0">Select Template from list... </option>
        <TMPL_LOOP TEMPLATE_LOOP>
          <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
        </TMPL_LOOP>
        </select>
        &nbsp;&nbsp;&nbsp;&nbsp;<input name="BATCH_DELETE_TEMPLATE" type="button" value="Delete Selected Template" onClick="if(!template_delete_confirm())return false;send_event('PHONEBATCH/DELETE_TEMPLATE');">
      </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="left" class="batchpricingheader"><br><b>Assign each field a label using the associated dropdown boxes. Mark fields that you do not want to use as Not Applicable.</b></td>
  </tr> 
  <tr>
    <td align="left">
    <div style="overflow: auto; width:680px;">
    <table id="ROW_TABLE">
      <tr>
      </tr>
        <TMPL_LOOP FIELDS>
        <td class="nsinputs">
        <INPUT TYPE=HIDDEN NAME="FIELD_<TMPL_VAR FIELD_NUM>" VALUE="" onFocus="this.blur()">
        </td>
        </TMPL_LOOP>
      </tr>
      <tbody id="myBody">
      </tbody>
    </table>
    </div>
    </td>

  <tr>
    <td align="center" class="unifont1" style="FONT-SIZE: 8pt; FONT-WEIGHT: bold; font-style: italic;">Use the scroll bar to view all columns.</td>
  </tr> 
  <tr>
    <td align="left">
    <table border="0" cellpadding="0" cellspacing="5">
    <TMPL_LOOP FIELDS>
      <tr>
        <!--
        <td class="unifont1">&nbsp;<INPUT TYPE=RADIO NAME="FIELD_NUM" VALUE="<TMPL_VAR FIELD_NUM>"<TMPL_IF FIELD_NUM_C>CHECKED</TMPL_IF>></td>
        -->
        <td class="unifont1" id="COL_<TMPL_VAR FIELD_NUM>">&nbsp;&nbsp;Column <TMPL_VAR FIELD_NUM>&nbsp;&nbsp;</td>
        <td class="unifont1">&nbsp;&nbsp;
        <select name="FIELD_NAME_<TMPL_VAR FIELD_NUM>">
	<TMPL_IF IS_BUS_BATCH>
        <option value=""></option>
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
        <option value=""></option>
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

	</TMPL_IF>
	</TMPL_IF>
        </select> 
        </td>

        <!--
        <td class="unifont1" class="nsinputs" align="center" valign="center" nowrap="nowrap">&nbsp;&nbsp;&nbsp;Length:&nbsp;<SELECT NAME="FIELD_SIZE_<TMPL_VAR NAME=FIELD_NUM>">
		<TMPL_LOOP SIZES>
		  <OPTION VALUE="<TMPL_VAR SIZE>"<TMPL_IF NAME=SELECTED> SELECTED</TMPL_IF>><TMPL_VAR SIZE></OPTION>
		</TMPL_LOOP>
		</SELECT>
		</td>
		</td>
        -->
        
        <td class="unifont1" class="nsinputs" align="center" valign="center" nowrap="nowrap">&nbsp;&nbsp;&nbsp;Start:&nbsp;<SELECT NAME="FIELD_START_SIZE_<TMPL_VAR NAME=FIELD_NUM>" onChange="set_fixed_width_column_highlight()" >
		<TMPL_LOOP START_SIZES>
		  <OPTION VALUE="<TMPL_VAR SIZE>"<TMPL_IF NAME=SELECTED> SELECTED</TMPL_IF>><TMPL_VAR SIZE></OPTION>
		</TMPL_LOOP>
		</SELECT>
		</td>
		</td>

        <td class="unifont1" class="nsinputs" align="center" valign="center" nowrap="nowrap">&nbsp;&nbsp;&nbsp;End:&nbsp;<SELECT NAME="FIELD_END_SIZE_<TMPL_VAR NAME=FIELD_NUM>" onChange="set_fixed_width_column_highlight()">
		<TMPL_LOOP END_SIZES>
		  <OPTION VALUE="<TMPL_VAR SIZE>"<TMPL_IF NAME=SELECTED> SELECTED</TMPL_IF>><TMPL_VAR SIZE></OPTION>
		</TMPL_LOOP>
		</SELECT>
		</td>
		</td>

        <INPUT TYPE=HIDDEN NAME="FIELD_SIZE_<TMPL_VAR NAME=FIELD_NUM>">

	<td class="unifont1" valign="top" align="left">&nbsp;&nbsp;&nbsp;<input
        name="BATCH_CLEAR_FIELD" type="button" value="Clear"
        onClick="clear_fixed_width_row(<TMPL_VAR
        NAME=FIELD_NUM>)">&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" valign="top" align="left"><input
        name="BATCH_REMOVE_FIELD" type="button" value="Remove" onClick="if(!validate()) return false;set_fixed_width_field_num(<TMPL_VAR NAME=FIELD_NUM>);send_event('PHONEBATCH/DELETE_FIELD');"></td>
      </tr>
    </TMPL_LOOP>
    </table>
    </td>
  </tr>

<TMPL_LOOP TEMPLATE_FIELD_LOOP>
  <INPUT TYPE=HIDDEN NAME="<TMPL_VAR NAME>" VALUE="<TMPL_VAR VALUE>">
</TMPL_LOOP>
<TMPL_LOOP TEMPLATE_COUNT_LOOP>
  <INPUT TYPE=HIDDEN NAME="<TMPL_VAR NAME>" VALUE="<TMPL_VAR VALUE>">
</TMPL_LOOP>
<TMPL_LOOP FIELDS>
  <INPUT TYPE=HIDDEN NAME="FIELD_<TMPL_VAR FIELD_NUM>" VALUE="" onFocus="this.blur()">
</TMPL_LOOP>
<TMPL_IF SHOW_BATCH_UPDATE>
    <INPUT TYPE=HIDDEN SIZE="1" NAME="SHOW_BATCH_UPDATE" VALUE="1">
</TMPL_IF>
<INPUT TYPE=HIDDEN SIZE="1" NAME="SELECTED_INDEX" VALUE="1">
<INPUT TYPE=HIDDEN NAME="FILE_TYPE" VALUE="<TMPL_VAR FILE_TYPE>">
<INPUT TYPE=HIDDEN NAME="FIELD_COUNT" VALUE="<TMPL_VAR FIELD_COUNT>">
<INPUT TYPE=HIDDEN NAME="FIELD_NUM" VALUE="<TMPL_VAR FIELD_NUM>">
<INPUT TYPE=HIDDEN NAME="ROW_COUNT" VALUE="<TMPL_VAR ROW_COUNT>">
<INPUT TYPE=HIDDEN NAME="ROW_LENGTH" VALUE="<TMPL_VAR ROW_LENGTH>">

  <TMPL_IF FILE_NAME>
  <tr>
  	<td class="unifont1" valign="middle" align="center">File Name: <b><TMPL_VAR FILE_NAME></b>&nbsp;</td>
  </tr>
  </TMPL_IF>


  <tr>
    <td align="left">
    <TMPL_UNLESS SHOW_BATCH_UPDATE>
    <br><br>
    </TMPL_UNLESS>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <TMPL_UNLESS SHOW_BATCH_UPDATE>
        <td class="unifont1" valign="middle" align="center"><a href="javascript:send_event('BATCH<TMPL_IF EDIT_FTP>FTP</TMPL_IF>/ADD_FIELD_FIRST')"><img src="<TMPL_VAR NAME=IMGPATH>/add_first.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><a href="javascript:send_event('BATCH<TMPL_IF EDIT_FTP>FTP</TMPL_IF>/ADD_FIELD_AFTER')"><img src="<TMPL_VAR NAME=IMGPATH>/add_after.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><a href="javascript:send_event('BATCH<TMPL_IF EDIT_FTP>FTP</TMPL_IF>/DELETE_FIELD')"><img src="<TMPL_VAR NAME=IMGPATH>/delete_field.gif" width="80" height="20" border="0"></a></td>
        <TMPL_ELSE>
	<td class="unifont1" valign="top" align="left"><input name="BATCH_ADD_FIELD_AFTER" type="button" value="Add New Field" onClick="if(!validate()) return false;set_fixed_width_field_num(<TMPL_VAR FIELD_COUNT>);send_event('PHONEBATCH/ADD_FIELD_AFTER');"><i>&nbsp;&nbsp;Use <b>Add New Field</b> until your file is completely mapped. Unmapped fields will be ignored.</i></td>
        </TMPL_UNLESS>
      </tr>
    </table>
    </td>
  </tr>

  <TMPL_UNLESS SHOW_BATCH_UPDATE>
  <tr>
    <td align="center">
    <br>
    <table border="1" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="valign" align="center" class="unifont1"><a href="javascript:prev_index(this.document.forms[0]);build_example();"><img src="<TMPL_VAR NAME=IMGPATH>/prev_record.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="valign" align="center" class="unifont1">Record Number:&nbsp;</td>
	<td valign="valign" align="center" class="unifont1"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" onFocus="this.blur()">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="valign" align="center" class="unifont1"><a href="javascript:next_index(this.document.forms[0]);build_example();"><img src="<TMPL_VAR NAME=IMGPATH>/next_record.gif" width="80" height="20" border="0"></a></td>
      </tr>
    </table>
    </td>
  </tr>
  </TMPL_UNLESS>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
    <td class="unifont1">Save this Template File Layout (Optional):&nbsp;<INPUT TYPE=TEXT NAME="TEMPLATE_NAME" VALUE="" SIZE="35" maxlength="40"></td>
  </tr>
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="5" border="0"></td>
  </tr>
  <tr>
    <td align="left" class="batchpricingheader"><b>Enter a File Layout name of up to 40 characters. This layout will be available for all future batch orders in Step 3. Up to 10 template layouts may be saved.</b></td>
  </tr>
  <script type="text/javascript">
    populate_fixed_width_table();
    reset_labels_template();
  </script>
<!-- END define_fixed_file_body_update.tpl -->

