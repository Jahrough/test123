<!-- BEGIN new_define_fixed_file_body.tpl -->
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
        <select name="FIELD_NAME_<TMPL_VAR FIELD_NUM>" onChange="check_fields(this,FIELD_<TMPL_VAR FIELD_NUM>);">
        <option value=""></option>
        <option value="unknown"<TMPL_IF UNKNOWN_C> SELECTED</TMPL_IF>>Not Applicable</option>
        <option value="account"<TMPL_IF ACCOUNT_C> SELECTED</TMPL_IF>>Account Number</option>
		<option value="RX_name_first"<TMPL_IF NAME-FIRST_C> SELECTED</TMPL_IF>>First Name</option>
		<option value="RX_name_middle"<TMPL_IF NAME-MIDDLE_C> SELECTED</TMPL_IF>>Middle Name</option>
		<option value="RX_name_last"<TMPL_IF NAME-LAST_C> SELECTED</TMPL_IF>>Last Name</option>
		<option value="RX_ssn"<TMPL_IF SSN_C> SELECTED</TMPL_IF>>Social Security #</option>
		<option value="RX_address-1"<TMPL_IF ADDRESS-1_C> SELECTED</TMPL_IF>>Address Line 1</option>
		<option value="RX_address-2"<TMPL_IF ADDRESS-2_C> SELECTED</TMPL_IF>>Address Line 2</option>
		<option value="RX_address-3"<TMPL_IF ADDRESS-3_C> SELECTED</TMPL_IF>>Address Line 3</option>
		<option value="RX_city"<TMPL_IF CITY_C> SELECTED</TMPL_IF>>City</option>
		<option value="RX_state"<TMPL_IF STATE_C> SELECTED</TMPL_IF>>State</option>	
		<option value="RX_zip"<TMPL_IF ZIP_C> SELECTED</TMPL_IF>>Zip</option>
		<option value="RX_dob"<TMPL_IF DOB_C> SELECTED</TMPL_IF>>DOB</option>
		<option value="RX_docnum"<TMPL_IF DOCNUM_C> SELECTED</TMPL_IF>>DOC Number</option>
        </select> 
        </td>
        <td class="unifont1" class="nsinputs" align="center">&nbsp;<SELECT NAME="FIELD_SIZE_<TMPL_VAR NAME=FIELD_NUM>" onChange="build_example();">
		<TMPL_LOOP SIZES>
		  <OPTION VALUE="<TMPL_VAR SIZE>"<TMPL_IF NAME=SELECTED> SELECTED</TMPL_IF>><TMPL_VAR SIZE></OPTION>
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
        <td valign="valign" align="center" class="unifont1"><a href="javascript:prev_index(this.document.forms[0]);build_example();"><img src="<TMPL_VAR NAME=IMGPATH>/prev_record.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="valign" align="center" class="unifont1">Record Number:&nbsp;</td>
	<td valign="valign" align="center" class="unifont1"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" onFocus="this.blur()">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="valign" align="center" class="unifont1"><a href="javascript:next_index(this.document.forms[0]);build_example();"><img src="<TMPL_VAR NAME=IMGPATH>/next_record.gif" width="80" height="20" border="0"></a></td>
      </tr>
    </table>
    </td>
  </tr>

<!-- END new_define_fixed_file_body.tpl -->
