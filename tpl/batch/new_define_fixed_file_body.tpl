<!-- BEGIN new_define_fixed_file_body.tpl -->
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
				<td class="unifont2" valign="middle" align="center">First row contains the name of the fields:&nbsp;</td>
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
<TMPL_LOOP APPEND_OPTIONS_LOOP>
                <option value="<TMPL_VAR INTERNAL_NAME>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_IF IS_REQUIRED>* </TMPL_IF><TMPL_VAR DISPLAY_NAME></option>
</TMPL_LOOP>
<TMPL_IF APPEND_OPTIONS_LOOP>
                <option value="">-----------------------</option>
</TMPL_IF>
<TMPL_IF IS_BUS_BATCH>
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
<TMPL_IF IS_BUSDUEX_BATCH>
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
<TMPL_IF IS_PATRIOTACT_BATCH>
                <option value="unknown"<TMPL_IF UNKNOWN_C> SELECTED</TMPL_IF>>Not Applicable</option>
                <option value="RX_name_first"<TMPL_IF RX_NAME_FIRST_C> SELECTED</TMPL_IF>>First Name</option>
                <option value="RX_name_middle"<TMPL_IF RX_NAME_MIDDLE_C> SELECTED</TMPL_IF>>Middle Name</option>
                <option value="RX_name_last"<TMPL_IF RX_NAME_LAST_C> SELECTED</TMPL_IF>>Last Name</option>
                <option value="RX_name_unparsed"<TMPL_IF RX_NAME_UNPARSED_C> SELECTED</TMPL_IF>>Company Name/Full Name</option>
                <option value="RX_country"<TMPL_IF RX_NAME_COUNTRY_C> SELECTED</TMPL_IF>>Country</option>
<TMPL_ELSE>
				<option value="unknown"<TMPL_IF UNKNOWN_C> SELECTED</TMPL_IF>>Not Applicable</option>
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
				<option value="dob"<TMPL_IF DOB_C> SELECTED</TMPL_IF>>DOB</option>
				<option value="dl_number"<TMPL_IF DL_NUMBER_C> SELECTED</TMPL_IF>>Driver's License Number</option>
				<option value="dl_state"<TMPL_IF DL_STATE_C> SELECTED</TMPL_IF>>Driver's License State</option>
    <TMPL_IF IS_AHAS_BATCH>
                <option value="open-date"<TMPL_IF open-date_C> SELECTED</TMPL_IF>>Account Open Date</option>
                <option value="debt-amount"<TMPL_IF DEBT-AMOUNT_C> SELECTED</TMPL_IF>>Debt Amount</option>
                <option value="charge-off-date"<TMPL_IF CHARGE-OFF-DATE_C> SELECTED</TMPL_IF>>Debt Charge-Off Date</option>
    </TMPL_IF>

<TMPL_IF DISPLAY_NOW>       <!-- This variable is not created, just needed to not display the following options -->
<TMPL_IF IS_BATCH_ADMIN>
				<option value="keep"<TMPL_IF KEEP_C> SELECTED</TMPL_IF>>Client Account Number</option>
				<option value="phoneno-2"<TMPL_IF PHONENO-2_C> SELECTED</TMPL_IF>>Phone Number 2</option>
				<option value="phoneno-3"<TMPL_IF PHONENO-3_C> SELECTED</TMPL_IF>>Phone Number 3</option>
				<option value="phone_disconnected"<TMPL_IF PHONE_DISCONNECTED_C> SELECTED</TMPL_IF>>Disconnect Flag</option>
				<option value="phone_disconnected-2"<TMPL_IF PHONE_DISCONNECTED-2_C> SELECTED</TMPL_IF>>Disconnect Flag 2</option>
				<option value="phone_disconnected-3"<TMPL_IF PHONE_DISCONNECTED-3_C> SELECTED</TMPL_IF>>Disconnect Flag 3</option>
				<option value="bad_address"<TMPL_IF BAD_ADDRESS_C> SELECTED</TMPL_IF>>Mail Return Flag</option>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
				</select> 
				</td>
        		<td class="unifont1" class="nsinputs" align="center">&nbsp;<select name="FIELD_SIZE_<TMPL_VAR NAME=FIELD_NUM>" onChange="build_example();">
		<TMPL_LOOP SIZES>
				<option value="<TMPL_VAR SIZE>"<TMPL_IF NAME=SELECTED> SELECTED</TMPL_IF>><TMPL_VAR SIZE></option>
		</TMPL_LOOP>
				</select> 
				</td>
				<td class="nsinputs"><input type="text" name="FIELD_<TMPL_VAR FIELD_NUM>" value="" size="50" onFocus="this.blur()"></td>
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
				<td class="unifont1" valign="middle" align="center"><a href="javascript:send_event('<TMPL_VAR ADD_FIELD_FIRST_EVENT>')"><img src="<TMPL_VAR NAME=IMGPATH>/add_first.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td class="unifont1" valign="middle" align="center"><a href="javascript:send_event('<TMPL_VAR ADD_FIELD_AFTER_EVENT>')"><img src="<TMPL_VAR NAME=IMGPATH>/add_after.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td class="unifont1" valign="middle" align="center"><a href="javascript:send_event('<TMPL_VAR DELETE_FIELD_EVENT>')"><img src="<TMPL_VAR NAME=IMGPATH>/delete_field.gif" width="80" height="20" border="0"></a></td>
      		</tr>
    	</table>
		</td>
	</tr>
	<tr>
		<td align="center">
    	<br>
    	<table border="0" cellpadding="0" cellspacing="0">
			<tr>
        		<td valign="valign" align="center" class="unifont1"><a href="javascript:prev_index(this.document.forms[0]);build_example();"><img src="<TMPL_VAR NAME=IMGPATH>/prev_record.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td valign="valign" align="center" class="unifont1">Record Number:&nbsp;</td>
				<td valign="valign" align="center" class="unifont1"><input type="text" size="1" name="SELECTED_INDEX" value="1" onFocus="this.blur()">&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td valign="valign" align="center" class="unifont1"><a href="javascript:next_index(this.document.forms[0]);build_example();"><img src="<TMPL_VAR NAME=IMGPATH>/next_record.gif" width="80" height="20" border="0"></a></td>
			</tr>
		</table>
		</td>
	</tr>
<!-- END new_define_fixed_file_body.tpl -->
