<!-- BEGIN rtphones/define_file_body.tpl -->
<tr>
    <td align="left">
        <table style="width:100%;">
            <tr>
                <td class="unifont1" valign="middle" align="left" nowrap="nowrap"><span id="is_frst_hdr">Is your first record a title row or does it contain the name of the corresponding fields?</span>&nbsp;
                <input aria-labelledby="is_frst_hdr" id="id_yes" type=checkbox name="FIRST_ROW_NAMES" value="1"<TMPL_IF CHECKED_FIRST_ROW_NAMES> CHECKED</TMPL_IF> OnClick="checkbox_set();">&nbsp;<label for="id_yes"><b>YES</b></label></td>
            </tr>

        </table>
    </td>
</tr>

<tr>
    <td align="left">
        <table style="width:100%;">
            <tr>
                <td class="unifont1" valign="middle" align="left" nowrap="nowrap"><label for="id_tmpl_drp_bx">If using previously saved template batch format, please select from drop down and click on Next.</label>&nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    <select id="id_tmpl_drp_bx" name="TEMPLATE_DROP_BOX" onChange="if(!template_select_confirm(this.selectedIndex)) return false;reset_labels_template();">
                        <option value="">Select Template from list... </option>
                        <TMPL_LOOP TEMPLATE_LOOP>
                            <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                        </TMPL_LOOP>
                    </select>
                    &nbsp;&nbsp;&nbsp;&nbsp;<input class="btn darkgrey-btn" name="BATCH_DELETE_TEMPLATE" class="btn darkgrey-btn" type="button" value="Delete Selected Template" onClick="if(!validate()) return false;send_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/DELETE_TEMPLATE');">
                </td>
            </tr>
        </table>
    </td>
</tr>

<tr>
    <td align="left">
        <table style="width:100%;">
            <tr>
                <td class="unifont1" valign="middle" align="left">Assign each field a label using the dropdown boxes above each column.&nbsp;Mark fields that you do not want to use as Not Applicable.</td>
            </tr>
        </table>
    </td>
</tr>

<tr>
    <td align="center" class="batchpricingheader" nowrap="nowrap" colspan="2">
        <b>Use the scroll bar to view all columns.</b>
    </td>
</tr>
    <td align="center">
        <div style="overflow: auto; width:680px;">
            <table style="width:100%;">
                <TMPL_IF DELIM_LOOP>
                    <tr>
                        <TMPL_LOOP DELIM_LOOP>
                            <td class="unifont1">
                                <label for="fld_nam_<TMPL_VAR FIELD_NUMBER>" style="display: none">dummy</label>
                                <select aria-labelledby="col_<TMPL_VAR FIELD_NUMBER>" id="fld_nam_<TMPL_VAR FIELD_NUMBER>" name="FIELD_NAME_<TMPL_VAR FIELD_NUMBER>" onBlur="check_fields(this,FIELD_1[<TMPL_VAR FIELD_NUMBER> - 1]);">
                                    <option value="">Select a field type...</option>
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
                                </select>

                                <center><span id="col_<TMPL_VAR FIELD_NUMBER>">Column&nbsp;<TMPL_VAR FIELD_NUMBER></span></center>

                                <TMPL_IF FIELD_LOOP>
                                    <TMPL_LOOP FIELD_LOOP>
                                         <label for="fld_<TMPL_VAR INDEX>" style="display: none">dummy</label>
                                        <INPUT aria-label="Field Value" id="fld_<TMPL_VAR INDEX>" TYPE=TEXT NAME="FIELD_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR FIELD_VAL ESCAPE=HTML>" SIZE="25" readonly tabindex="-1">
                                        <INPUT TYPE=HIDDEN NAME="FIELD_VALUE_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR FIELD_VAL ESCAPE=HTML>">
                                    </TMPL_LOOP>
                                <TMPL_ELSE>
                                    &nbsp;
                                </TMPL_IF>
                            </td>
                        </TMPL_LOOP>
                    </tr>
                </TMPL_IF>
            </table>
        </div>
    </td>
</tr>
<tr>
    <td class="unifont1"><label for="tmpl_nam">Save this Template File Layout (Optional):</label>&nbsp;<INPUT id="tmpl_nam" TYPE=TEXT NAME="TEMPLATE_NAME" VALUE="" SIZE="35" maxlength="40"></td>
</tr>
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
<!-- END rtphones/define_file_body.tpl -->
