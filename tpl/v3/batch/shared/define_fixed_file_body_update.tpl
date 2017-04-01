<!-- BEGIN define_fixed_file_body_update.tpl -->
<TMPL_IF FREE_TRIAL_CREDITS>
    <tr>
        <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
    </tr>
</TMPL_IF>
<tr>
    <td>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td class="unifont1" valign="middle" align="left" nowrap="nowrap">Is your first record a title row or does it contain the name of the corresponding fields?&nbsp;</td>
                <td class="unifont1" valign="middle" align="center"><input type=checkbox name="FIRST_ROW_NAMES" value="1"<TMPL_IF CHECKED_FIRST_ROW_NAMES> CHECKED</TMPL_IF> OnClick="checkbox_set();">&nbsp;<b>YES</b></td>
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
                <td class="unifont1" valign="middle" align="left" nowrap="nowrap" style="padding-bottom:6px;">If using previously saved template batch format, please select from drop down and click on Next.&nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                    <select name="TEMPLATE_DROP_BOX" onChange="if(!template_select_confirm(this.selectedIndex)) return false;send_event('BATCH/LOAD_TEMPLATE');"">
                        <option value="0">Select Template from list... </option>
                        <TMPL_LOOP TEMPLATE_LOOP>
                            <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                        </TMPL_LOOP>
                    </select>
                    <input class="btn darkgrey-btn" name="BATCH_DELETE_TEMPLATE" type="button" value="Delete Selected Template" onClick="if(!template_delete_confirm())return false;send_event('BATCH/DELETE_TEMPLATE');">
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" class="batchpricingheader"><br><b>Assign each field a label using the associated dropdown boxes. Mark fields that you do not want to use as Not Applicable.</b></td>
</tr> 
<tr>
    <td align="left" style="padding-left:0;">
        <style>#ROW_TABLE td{background:#fff;}</style>
        <div style="overflow: auto; width:986px;">
            <table id="ROW_TABLE">
                <tr>
                    <TMPL_LOOP FIELDS>
                        <td class="nsinputs" style="display:none;">
                            <INPUT TYPE=HIDDEN NAME="FIELD_<TMPL_VAR FIELD_NUM>" VALUE="">
                        </td>
                    </TMPL_LOOP>
                </tr>
                <tbody id="myBody">
                </tbody>
            </table>
        </div>
    </td>
</tr>

<tr>
    <td>Use the scroll bar to view all columns.</td>
</tr> 
<tr>
    <td align="left">
        <style>#col-controls td{ padding-bottom:4px; }</style>
        <table id="col-controls">
            <TMPL_LOOP FIELDS>
                <tr>
                    <td class="unifont1">
                        <div id="COL_<TMPL_VAR FIELD_NUM>" style="padding:3px;">
                            Column <TMPL_VAR FIELD_NUM>
                        </div>
                    </td>
                    <td class="unifont1">
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
                                    <option value="adl"<TMPL_IF ADL_C> SELECTED</TMPL_IF>>LexID</option>
                                    <option value="name"<TMPL_IF NAME_C> SELECTED</TMPL_IF>>Full Name</option>
                                    <option value="name-first"<TMPL_IF NAME-FIRST_C> SELECTED</TMPL_IF>>First Name</option>
                                    <option value="name-middle"<TMPL_IF NAME-MIDDLE_C> SELECTED</TMPL_IF>>Middle Name</option>
                                    <option value="name-last"<TMPL_IF NAME-LAST_C> SELECTED</TMPL_IF>>Last Name</option>
                                    <option value="name-suffix"<TMPL_IF NAME-SUFFIX_C> SELECTED</TMPL_IF>>Generational Suffix</option>
                                    <option value="dob"<TMPL_IF DOB_C> SELECTED</TMPL_IF>>DOB</option>
                                    <option value="ssn"<TMPL_IF SSN_C> SELECTED</TMPL_IF>>Social Security #</option>
                                    <option value="address-1"<TMPL_IF ADDRESS-1_C> SELECTED</TMPL_IF>>Address Line 1</option>
                                    <option value="address-2"<TMPL_IF ADDRESS-2_C> SELECTED</TMPL_IF>>Address Line 2</option>
                                    <option value="address-3"<TMPL_IF ADDRESS-3_C> SELECTED</TMPL_IF>>Address Line 3</option>
                                    <option value="city"<TMPL_IF CITY_C> SELECTED</TMPL_IF>>City</option>
                                    <option value="state"<TMPL_IF STATE_C> SELECTED</TMPL_IF>>State</option>
                                    <option value="zip"<TMPL_IF ZIP_C> SELECTED</TMPL_IF>>Zip</option>
                                    <option value="phoneno"<TMPL_IF PHONENO_C> SELECTED</TMPL_IF>>Phone Number</option>
                                    <option value="phoneno-2"<TMPL_IF PHONENO-2_C> SELECTED</TMPL_IF>>Phone Number 2</option>
                                    <option value="phoneno-3"<TMPL_IF PHONENO-3_C> SELECTED</TMPL_IF>>Phone Number 3</option>
                                    <option value="dl_number"<TMPL_IF DL_NUMBER_C> SELECTED</TMPL_IF>>Driver's License Number</option>
                                    <option value="dl_state"<TMPL_IF DL_STATE_C> SELECTED</TMPL_IF>>Driver's License State</option>
                                    <TMPL_IF DISPLAY_NOW>       <!-- This variable is not created, just needed to not display the following options -->
                                    <TMPL_IF IS_BATCH_ADMIN>
                                        <option value="keep"<TMPL_IF KEEP_C> SELECTED</TMPL_IF>>Client Account Number</option>
                                        <option value="phone_disconnected"<TMPL_IF PHONE_DISCONNECTED_C> SELECTED</TMPL_IF>>Disconnect Flag</option>
                                        <option value="phone_disconnected-2"<TMPL_IF PHONE_DISCONNECTED-2_C> SELECTED</TMPL_IF>>Disconnect Flag 2</option>
                                        <option value="phone_disconnected-3"<TMPL_IF PHONE_DISCONNECTED-3_C> SELECTED</TMPL_IF>>Disconnect Flag 3</option>
                                        <option value="bad_address"<TMPL_IF BAD_ADDRESS_C> SELECTED</TMPL_IF>>Mail Return Flag</option>
                                    </TMPL_IF>
                                    </TMPL_IF>
                                </TMPL_IF>
                            </TMPL_IF>
                        </select>
                    </td>
                    <td class="unifont1" class="nsinputs">
                        <label>
                            Start:
                            <SELECT NAME="FIELD_START_SIZE_<TMPL_VAR NAME=FIELD_NUM>" onChange="set_fixed_width_column_highlight()" >
                                <TMPL_LOOP START_SIZES>
                                    <OPTION VALUE="<TMPL_VAR SIZE>"<TMPL_IF NAME=SELECTED> SELECTED</TMPL_IF>><TMPL_VAR SIZE></OPTION>
                                </TMPL_LOOP>
                            </SELECT>
                        </label>
                    </td>
                    <td class="unifont1" class="nsinputs" align="center" valign="center" nowrap="nowrap">
                        <label>
                            End:
                            <SELECT NAME="FIELD_END_SIZE_<TMPL_VAR NAME=FIELD_NUM>" onChange="set_fixed_width_column_highlight()">
                                <TMPL_LOOP END_SIZES>
                                    <OPTION VALUE="<TMPL_VAR SIZE>"<TMPL_IF NAME=SELECTED> SELECTED</TMPL_IF>><TMPL_VAR SIZE></OPTION>
                                </TMPL_LOOP>
                            </SELECT>
                        </label>
                    </td>
                    <INPUT TYPE=HIDDEN NAME="FIELD_SIZE_<TMPL_VAR NAME=FIELD_NUM>">
                    <td class="unifont1" valign="top" align="left"><input class="btn darkgrey-btn" name="BATCH_CLEAR_FIELD" type="button" value="Clear" onClick="clear_fixed_width_row(<TMPL_VAR NAME=FIELD_NUM>)"></td>
                    <td class="unifont1" valign="top" align="left"><input class="btn darkgrey-btn" name="BATCH_REMOVE_FIELD" type="button" value="Remove" onClick="if(!validate()){return false;}set_fixed_width_field_num(<TMPL_VAR NAME=FIELD_NUM>);send_event('BATCH/DELETE_FIELD');"></td>
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
        <TMPL_UNLESS SHOW_BATCH_UPDATE>
            <br><br>
        </TMPL_UNLESS>
        <table>
            <tr>
                <TMPL_UNLESS SHOW_BATCH_UPDATE>
                    <td class="unifont1" valign="middle" align="center">
                        <a class="btn darkgrey-btn" href="javascript:send_event('BATCH<TMPL_IF EDIT_FTP>FTP</TMPL_IF>/ADD_FIELD_FIRST')">
                            Add First
                        </a>
                    </td>
                    <td class="unifont1" valign="middle" align="center">
                        <a class="btn darkgrey-btn" href="javascript:send_event('BATCH<TMPL_IF EDIT_FTP>FTP</TMPL_IF>/ADD_FIELD_AFTER')">
                            Add After
                        </a>
                    </td>
                    <td class="unifont1" valign="middle" align="center">
                        <a class="btn darkgrey-btn" href="javascript:send_event('BATCH<TMPL_IF EDIT_FTP>FTP</TMPL_IF>/DELETE_FIELD')">
                            Delete Field
                        </a>
                    </td>
                <TMPL_ELSE>
                    <td class="unifont1" valign="top" align="left">
                    <input class="btn darkgrey-btn" name="BATCH_ADD_FIELD_AFTER" type="button" value="Add New Field" onClick="if(!validate()){return false;}set_fixed_width_field_num(<TMPL_VAR FIELD_COUNT>);send_event('BATCH/ADD_FIELD_AFTER');"><i>&nbsp;&nbsp;Use <b>Add New Field</b> until your file is completely mapped. Unmapped fields will be ignored.</i></td>
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
                    <td valign="valign" align="center" class="unifont1">
                        <a class="btn darkgrey-btn" href="javascript:prev_index(this.document.forms[0]);build_example();">
                            Previous Record
                        </a>
                    </td>
                    <td valign="valign" align="center" class="unifont1">Record Number:&nbsp;</td>
                    <td valign="valign" align="center" class="unifont1"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" readonly tabindex="-1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td valign="valign" align="center" class="unifont1">
                        <a class="btn darkgrey-btn" href="javascript:next_index(this.document.forms[0]);build_example();">
                            Next Record
                        </a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</TMPL_UNLESS>

<tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
</tr>
<tr>
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

