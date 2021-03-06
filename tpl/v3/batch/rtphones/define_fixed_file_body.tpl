<!-- BEGIN rtphones/define_fixed_file_body.tpl -->
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
       <!-- <select name="TEMPLATE_DROP_BOX" onChange="reset_labels_template();send_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/DEFINE_FILE');""> -->
       <select name="TEMPLATE_DROP_BOX" onChange="if(!template_select_confirm(this.selectedIndex)) return false;send_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/LOAD_TEMPLATE');"">
       <option value="0">Select Template from list... </option>
        <TMPL_LOOP TEMPLATE_LOOP>
          <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
        </TMPL_LOOP>
        </select>
        &nbsp;&nbsp;&nbsp;&nbsp;<input class="btn darkgrey-btn" name="BATCH_DELETE_TEMPLATE" type="button" value="Delete Selected Template" onClick="if(!template_delete_confirm())return false;send_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/DELETE_TEMPLATE');">
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
        <INPUT TYPE=HIDDEN NAME="FIELD_<TMPL_VAR FIELD_NUM>" VALUE="">
        </td>
        </TMPL_LOOP>
      </tr>
      <tbody id="myBody">
        <div name="color_div" id="color_div"></div>
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
        <td class="unifont1" name="COL_<TMPL_VAR FIELD_NUM>" id="COL_<TMPL_VAR FIELD_NUM>">&nbsp;&nbsp;Column <TMPL_VAR FIELD_NUM>&nbsp;&nbsp;</td>
        <td class="unifont1">&nbsp;&nbsp;
        <select name="FIELD_NAME_<TMPL_VAR FIELD_NUM>">
        <option value=""></option>
        <option value="keep"<TMPL_IF KEEP_C> SELECTED</TMPL_IF>>Client Id</option>
        <option value="adl"<TMPL_IF ADL_C> SELECTED</TMPL_IF>>LexID</option>
        <option value="phoneno"<TMPL_IF PHONENO_C> SELECTED</TMPL_IF>>Phone Number</option>
	<option value="name"<TMPL_IF NAME_C> SELECTED</TMPL_IF>>Full Name</option>
        <option value="name-first"<TMPL_IF NAME-FIRST_C> SELECTED</TMPL_IF>>First Name</option>
        <option value="name-middle"<TMPL_IF NAME-MIDDLE_C> SELECTED</TMPL_IF>>Middle Name</option>
        <option value="name-last"<TMPL_IF NAME-LAST_C> SELECTED</TMPL_IF>>Last Name</option>
        <option value="RX_unparsedaddr1"<TMPL_IF ADDRESS-1_C> SELECTED</TMPL_IF>>Address Line 1</option>
        <option value="RX_unparsedaddr2"<TMPL_IF ADDRESS-2_C> SELECTED</TMPL_IF>>Address Line 2</option>
        <option value="city"<TMPL_IF CITY_C> SELECTED</TMPL_IF>>City</option>
        <option value="state"<TMPL_IF STATE_C> SELECTED</TMPL_IF>>State</option>
        <option value="zip"<TMPL_IF ZIP_C> SELECTED</TMPL_IF>>Zip</option>
        <option value="ssn"<TMPL_IF SSN_C> SELECTED</TMPL_IF>>SSN (9 digit)</option>
        <option value="ssnlast4"<TMPL_IF SSN4_C> SELECTED</TMPL_IF>>SSN (last 4 digits)</option>
	<option value="unknown"<TMPL_IF UNKNOWN_C> SELECTED</TMPL_IF>>Not Applicable</option>
    <TMPL_IF DISPLAY_NOW>       <!-- This variable is not created, just needed to not display the following options -->
        <option value="zip"<TMPL_IF ZIP_C> SELECTED</TMPL_IF>>Postal Code</option>
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
        name="BATCH_REMOVE_FIELD" type="button" value="Remove" onClick="if(!validate()){return false;}set_fixed_width_field_num(<TMPL_VAR NAME=FIELD_NUM>);send_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/DELETE_FIELD');"></td>
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
  <INPUT TYPE=HIDDEN NAME="FIELD_<TMPL_VAR FIELD_NUM>" VALUE="">
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
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
	<td class="unifont1" valign="top" align="left"><input name="BATCH_ADD_FIELD_AFTER" type="button" value="Add New Field" onClick="if(!validate()){return false;}set_fixed_width_field_num(<TMPL_VAR FIELD_COUNT>);send_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/ADD_FIELD_AFTER');"><i>&nbsp;&nbsp;Use <b>Add New Field</b> until your file is completely mapped. Unmapped fields will be ignored.</i></td>
      </tr>
    </table>
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
    <td align="left" class="batchpricingheader"><b>Enter a File Layout name of up to 40 characters. This layout will be available for all future batch orders in Step 3. Up to 10 template layouts may be saved.</b></td>
  </tr>
  <script type="text/javascript">
    populate_fixed_width_table();
    reset_labels_template();
  </script>
<!-- END rtphones/define_fixed_file_body.tpl -->

