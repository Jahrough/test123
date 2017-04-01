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
				<option value="account"<TMPL_IF ACCOUNT_C> SELECTED</TMPL_IF>>Account Number</option>
				<option value="RX_name_first"<TMPL_IF RX_NAME_FIRST_C> SELECTED</TMPL_IF>>First Name</option>
				<option value="RX_name_middle"<TMPL_IF RX_NAME_MIDDLE_C> SELECTED</TMPL_IF>>Middle Name</option>
				<option value="RX_name_last"<TMPL_IF RX_NAME_LAST_C> SELECTED</TMPL_IF>>Last Name</option>
				<option value="RX_ssn"<TMPL_IF RX_SSN_C> SELECTED</TMPL_IF>>Social Security #</option>
				<option value="RX_address-1"<TMPL_IF RX_ADDRESS-1_C> SELECTED</TMPL_IF>>Address Line 1</option>
				<option value="RX_address-2"<TMPL_IF RX_ADDRESS-2_C> SELECTED</TMPL_IF>>Address Line 2</option>
				<option value="RX_address-3"<TMPL_IF RX_ADDRESS-3_C> SELECTED</TMPL_IF>>Address Line 3</option>
				<option value="RX_city"<TMPL_IF RX_CITY_C> SELECTED</TMPL_IF>>City</option>
				<option value="RX_state"<TMPL_IF RX_STATE_C> SELECTED</TMPL_IF>>State</option>	
				<option value="RX_zip"<TMPL_IF RX_ZIP_C> SELECTED</TMPL_IF>>Zip</option>
				<option value="RX_dob"<TMPL_IF RX_DOB_C> SELECTED</TMPL_IF>>DOB</option>
				<option value="RX_docnum"<TMPL_IF RX_DOCNUM_C> SELECTED</TMPL_IF>>DOC Number</option>
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
				<td class="unifont1" align="center" valign="middle"><a href="javascript:prev_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/prev_record.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td class="unifont1" align="center" valign="middle">Record Number:&nbsp;</td>
				<td class="unifont1" align="center" valign="middle"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" onFocus="this.blur()">&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td class="unifont1" align="center" valign="middle"><a href="javascript:next_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/next_record.gif" width="80" height="20" border="0"></a></td>
      		</tr>
    	</table>
    	</td>
  	</tr>

<!-- END define_file_body.tpl -->