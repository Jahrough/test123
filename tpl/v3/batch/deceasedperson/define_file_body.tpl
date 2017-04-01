<!-- BEGIN define_file_body.tpl -->
  <tr>
    <td align="center" class="unifont2"><br><b>Select the proper Field Label for each Field Value found in your data:</b><br><br></td>
  </tr>

  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont1" valign="middle" align="center"><label for="frst_row_nam">First row contains the name of the fields:</label>&nbsp;</td>
    <td class="unifont1" valign="middle" align="center"><input id="frst_row_nam" type=checkbox name="FIRST_ROW_NAMES" value="1"<TMPL_IF CHECKED_FIRST_ROW_NAMES> CHECKED</TMPL_IF> OnClick="checkbox_set();">&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td class="unifont1" valign="middle" align="center"><a style="FONT-SIZE: 8pt; FONT-WEIGHT: bold; text-decoration: underline;" href="javascript:reset_labels();">RESET SELECTIONS</a></td>
      </tr>
    </table>
    </td>
  </tr>

  
  <tr>
    <td align="center">
    <table border="1" cellpadding="0" cellspacing="0">
      <tr height="30">
        <th id="fld_ord" class="unifont2">&nbsp;<b>Field Order</b>&nbsp;</th>
        <th id="fld_val" class="unifont2">&nbsp;<b>Field Value</b>&nbsp;</th>
        <th id="fld_lbl" class="unifont2">&nbsp;<b>Field Label</b>&nbsp;</th>
      </tr>
      <TMPL_IF DELIM_LOOP>
      <TMPL_LOOP DELIM_LOOP>
      <tr>
        <td headers="fld_ord" class="unifont1">&nbsp;<TMPL_VAR FIELD_NUMBER></td>
        
    <td headers="fld_val" class="unifont1" class="nsinputs">&nbsp;
    <TMPL_IF FIELD_LOOP>
      <INPUT TYPE=TEXT NAME="FIELD_<TMPL_VAR FIELD_NUMBER>" VALUE="<TMPL_VAR FIRST_VALUE ESCAPE=HTML>" SIZE=40 readonly tabindex="-1">
    <TMPL_LOOP FIELD_LOOP>
      <INPUT TYPE=HIDDEN NAME="FIELD_VALUE_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR FIELD_VAL ESCAPE=HTML>">
    </TMPL_LOOP>
    <TMPL_ELSE>&nbsp;</TMPL_IF>
    </td>
        
    <td headers="fld_lbl" class="unifont1">
        <select name="FIELD_NAME_<TMPL_VAR FIELD_NUMBER>" onBlur="check_fields(this,FIELD_<TMPL_VAR FIELD_NUMBER>);">
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
      <TMPL_IF DISPLAY_NOW>       <!-- This variable is not created, just needed to not display the following options -->
        <option value="phoneno"<TMPL_IF PHONENO_C> SELECTED</TMPL_IF>>Phone Number</option>
        <option value="phoneno-2"<TMPL_IF PHONENO-2_C> SELECTED</TMPL_IF>>Phone Number 2</option>
        <option value="phoneno-3"<TMPL_IF PHONENO-3_C> SELECTED</TMPL_IF>>Phone Number 3</option>
        <option value="dl_number"<TMPL_IF DL_NUMBER_C> SELECTED</TMPL_IF>>Driver's License Number</option>
      </TMPL_IF>
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
<INPUT TYPE=HIDDEN NAME="STATE_INDEX" VALUE=11>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX" VALUE=12>
<INPUT TYPE=HIDDEN NAME="SSN_INDEX" VALUE=13>
<INPUT TYPE=HIDDEN NAME="PHONE_INDEX" VALUE=14>

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
    <td class="unifont1" align="center" valign="middle"><a class="btn darkgrey-btn" href="javascript:prev_options(this.document.forms[0])">Previous</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td class="unifont1" align="center" valign="middle">Record Number:&nbsp;</td>
    <td class="unifont1" align="center" valign="middle"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" readonly tabindex="-1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td class="unifont1" align="center" valign="middle"><a class="btn darkgrey-btn" href="javascript:next_options(this.document.forms[0])">Next</a></td>
      </tr>
    </table>
    </td>
  </tr>


<!-- END define_file_body.tpl -->
