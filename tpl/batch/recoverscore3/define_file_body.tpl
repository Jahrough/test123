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
	<option value="RX_unparsedfullname"<TMPL_IF RX_unparsedfullname_C> SELECTED</TMPL_IF>>Full Name</option>
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
        <option value="RX_home_phone"<TMPL_IF RX_home_phone_C> SELECTED</TMPL_IF>>Phone Number</option>
        <option value="RX_work_phone"<TMPL_IF RX_work_phone_C> SELECTED</TMPL_IF>>Work Phone Number</option>
	<option value="dob"<TMPL_IF DOB_C> SELECTED</TMPL_IF>>DOB</option>
	<option value="open-date"<TMPL_IF OPEN-DATE_C> SELECTED</TMPL_IF>>Debt Open Date</option>
	<option value="charge-off-date"<TMPL_IF CHARGE-OFF-DATE_C> SELECTED</TMPL_IF>>Debt Charge-Off Date</option>
	<TMPL_IF IS_BATCH_ADMIN>
        <option value="keep"<TMPL_IF KEEP_C> SELECTED</TMPL_IF>>Client Account Number</option>
	</TMPL_IF>
	<option value="custom_input_1"<TMPL_IF CUSTOM_INPUT_1_C> SELECTED</TMPL_IF>>Custom Model Input 1</option>
	<option value="custom_input_2"<TMPL_IF CUSTOM_INPUT_2_C> SELECTED</TMPL_IF>>Custom Model Input 2</option>
	<option value="custom_input_3"<TMPL_IF CUSTOM_INPUT_3_C> SELECTED</TMPL_IF>>Custom Model Input 3</option>
	<option value="custom_input_4"<TMPL_IF CUSTOM_INPUT_4_C> SELECTED</TMPL_IF>>Custom Model Input 4</option>
	<option value="custom_input_5"<TMPL_IF CUSTOM_INPUT_5_C> SELECTED</TMPL_IF>>Custom Model Input 5</option>
	<option value="custom_input_6"<TMPL_IF CUSTOM_INPUT_6_C> SELECTED</TMPL_IF>>Custom Model Input 6</option>
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
	<td class="unifont1" align="center" valign="middle"><a href="javascript:prev_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/prev_record.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" align="center" valign="middle">Record Number:&nbsp;</td>
	<td class="unifont1" align="center" valign="middle"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" onFocus="this.blur()">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" align="center" valign="middle"><a href="javascript:next_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/next_record.gif" width="80" height="20" border="0"></a></td>
      </tr>
    </table>
    </td>
  </tr>


<!-- END define_file_body.tpl -->
