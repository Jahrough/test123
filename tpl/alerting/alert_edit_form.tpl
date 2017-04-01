<!-- begin: $RCSfile: alert_edit_form.tpl,v $ -->
<script>

var help_html_file = '';
var help_flash_file = '';
var help_file_type = '';

var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
if (vertical == 'bps') { help_file_type = '_bps'; }

function open_help(help_html,help_flash) {
    help_html_file = help_html;
    if (vertical == 'bps' && help_flash) {
	help_flash_file = help_flash;
        show_post_popup('LOGIN/SHOW_POPUP','HelpWindow',780,490,1,1,1,1,1,0,'','show_help_option')
    } else {
        general_win('<TMPL_VAR NAME=HLPPATH>/' + help_html,'HelpWindow',780,490,1,1,1,1,1,0);
    }
}
function clear_alert_field(length_field) {
    if (length_field == 1) {
        document.getElementById('ALERT_LENGTH').value = '';
    }
    else {
        document.getElementById('ALERT_EXPIRATION_DATE').value = '';
    }
}

</script>

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<TMPL_UNLESS NAME="EDIT_ALERT">
<fieldset class="alert_new">
<table class="table_heading">
    <tr>
	<td></td>
	<td class="table_heading" nowrap="nowrap" valign="top"></td>
	<td class="panebar table_heading largefont1bold" nowrap="nowrap" valign="middle" width="100%">Save As Alert - <TMPL_VAR NAME=FULL_NAME> <TMPL_VAR NAME=SSN></td>
	<td class="table_heading" nowrap="nowrap"><input onClick="open_help('person_alerts_help.html');" name="help" value="Help ?" type="Button"></td>
	<td class="table_heading" align="right" nowrap="nowrap" valign="top"></td>
    </tr>
</table>
</fieldset>
</TMPL_UNLESS>

<table class="alert_new">
  <tr>
    <td class="unifont1" colspan="15">Notify me if any of the following sections changes:</td>
  </tr>
  <tr>
    <td width="1%"><input type="checkbox" name="alert_options_toggle" id="alert_options_toggle" value="1" <TMPL_IF NAME="alert_options_toggle">checked</TMPL_IF>></td>
    <td class="smallfont1" colspan="13"><label for="alert_options_toggle">All sections of the report</label>&nbsp;&nbsp;</td>
    <td align="right" class="smallfont1">&nbsp;</td>
  </tr>
  <tr>
    <td width="1%">&nbsp;</td>
    <td class="smallfont1">&nbsp;<input type="checkbox" name="alert_options" id="alert_options_name" error_message="Please select at least one alert option (report section)" value="name" <TMPL_IF NAME="alert_options_name">checked</TMPL_IF>>&nbsp;<label for="alert_options_name">Name</label>&nbsp;</td>
    <td align="right" class="smallfont1">&nbsp;</td>
    <td width="1%">&nbsp;</td>
    <td class="smallfont1">&nbsp;<input type="checkbox" name="alert_options" id="alert_options_address" value="address" <TMPL_IF NAME="alert_options_address">checked</TMPL_IF>>&nbsp;<label for="alert_options_address">Address</label>&nbsp;</td>
    <td align="right" class="smallfont1">&nbsp;</td>
    <td width="1%">&nbsp;</td>
    <td class="smallfont1">&nbsp;<input type="checkbox" name="alert_options" id="alert_options_phone" value="phone" <TMPL_IF NAME="alert_options_phone">checked</TMPL_IF>>&nbsp;<label for="alert_options_phone">Phone</label>&nbsp;</td>
    <td align="right" class="smallfont1">&nbsp;</td>
    <td width="1%">&nbsp;</td>
    <td class="smallfont1">&nbsp;<input type="checkbox" name="alert_options" id="alert_options_status" value="status" <TMPL_IF NAME=alert_options_status>checked</TMPL_IF>>&nbsp;<label for="alert_options_status">Death Records</label>&nbsp;</td>
    <td align="right" class="smallfont1">&nbsp;</td>
    <td align="right" class="smallfont1">&nbsp;</td>
    <td width="1%">&nbsp;</td>
    <td class="smallfont1">&nbsp;</td>
  </tr>
</table>

<table class="alert_new">
    <tr>
	<td class="unifont1 label_cell"><b>Name of Alert: </b></td>
	<td><input name="ALERT_NAME" maxlength="255" size="40" value="<TMPL_VAR NAME=ALERT_NAME>" type="text" lnpattern="generic" error_message="Please give the alert a name.  This is used to find this alert again under the Alerts Manager"></td>
    </tr>
    <tr>
	<td class="unifont1 label_cell">&nbsp;</td>
	<td class="unifont1" align="left">Used to find this alert again under the Alerts Manager</td>
    </tr>
</table>

<table class="alert_new" border="0">
<tr>
<td class="unifont1 label_cell" nowrap="nowrap"><b>Duration of Alert:</b>&nbsp;&nbsp;</td>
<td class="unifont1" width="20%" onClick="clear_alert_field(0)">
<select name="ALERT_LENGTH" id="ALERT_LENGTH" error_message="Please select a duration for the alert" lnpattern="generic" optional="1">
    <option value="">Select One</option>
    <option value="1" <TMPL_IF NAME="ALERT_LENGTH_1">selected</TMPL_IF>>Perpetual</option> 
    <option value="30" <TMPL_IF NAME="ALERT_LENGTH_30">selected</TMPL_IF>>30 Days</option>
    <option value="60" <TMPL_IF NAME="ALERT_LENGTH_60">selected</TMPL_IF>>60 Days</option>
    <option value="90" <TMPL_IF NAME="ALERT_LENGTH_90">selected</TMPL_IF>>90 Days</option>
    </select>
</td>	
<td class="unifont1"><b>OR</b></td>	
<td class="unifont1 label_cell" nowrap="nowrap"><b>Alert End Date:</b>&nbsp;&nbsp;</td>
<td class="formfld" width="30">
    <input onclick="clear_alert_field(1);displayDatePicker('ALERT_EXPIRATION_DATE');" type="text" name="ALERT_EXPIRATION_DATE" id="ALERT_EXPIRATION_DATE" value="<TMPL_VAR NAME="ALERT_EXPIRATION_DATE">" size="10" maxlength="10" error_message="Please select an end date for the alert" lnpattern="date" optional="1" /> 
</td>
<td class="formfld">
    <a href="javascript:void(0);" onclick="displayDatePicker('ALERT_EXPIRATION_DATE');"><img id="date_picker" src="<TMPL_VAR NAME="IMGPATH">/date_picker.gif" width="36" height="24" border="0" onmouseout="date_picker.src = '<TMPL_VAR NAME="IMGPATH">/date_picker.gif'" onmouseover="date_picker.src = '<TMPL_VAR NAME="IMGPATH">/date_picker_over.gif'" /></a>
</td>
</tr>
</table>

<table class="alert_new">
    <tr>
	<td class="unifont1 label_cell"><b>Reference Code: </b></td>
	<td><input name="REFERENCE_CODE" maxlength="30" size="40" value="<TMPL_VAR NAME=REFERENCE_CODE>" type="text"<TMPL_IF DISABLE_REF_CODE> DISABLED</TMPL_IF>></td>
    </tr>
</table>
 <fieldset class="alert_new">
   <span class="unifont1bold"><legend>Email Notifications</legend></span>

<!-- delivery -->
<table class="alert_new">
    <tr>
	<td class="unifont1 label_cell" valign="top" width="75"><b>Delivery:<font color="#ff0000">*</font></b></td>
	<td class="unifont1"></td>
	<td align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	    <tr>
		<td class="unifont1" colspan="2">
		    <input name="ALERT_EMAIL" value="1" type="checkbox" id="alert_email" <TMPL_IF NAME="ALERT_EMAIL">checked</TMPL_IF>><label for="alert_email">Send Email alert</label>
		</td>
	    </tr>
	    <tr>
		<td class="unifont1" colspan="2">
		    <input name="ALERT_EMAIL_ZERO_RESULTS" value="1" type="checkbox" id="alert_email_zero_results" <TMPL_IF NAME="ALERT_EMAIL_ZERO_RESULTS">checked</TMPL_IF>><label for="alert_email_zero_results">Alert me if there are no new results</label>
		</td>
	    </tr>
	    <tr>
		<td class="unifont1" colspan="2">&nbsp;</td>
	    </tr>
	    <tr>
		<td class="unifont1" valign="top" nowrap="nowrap">
		Email To:
		</td>
		<td class="unifont1">
		<textarea name="ALERT_DELIVERY_EMAIL" cols="40" rows="2"><TMPL_VAR NAME=ALERT_DELIVERY_EMAIL></textarea>
		</td>
	    </tr>
	    <tr>
		<td class="unifont1"></td>
		<td class="unifont1" align="left" width="99%">Ex: johndoe@yourcompany.com,janedoe@yourcompany.com</td>
	    </tr>
	    <tr>
		<td class="unifont1" colspan="2">&nbsp;</td>
	    </tr>
	    <tr>
		<td class="unifont1" valign="top" nowrap="nowrap">
		Add a Note:
		</td>
		<td class="unifont1">
		<textarea name="ALERT_NOTE" cols="40" rows="2" maxlength="10"><TMPL_VAR NAME=ALERT_NOTE></textarea>
		</td>
	    </tr>
	    <tr>
		<td class="unifont1" colspan="2">&nbsp;</td>
	    </tr>
	    <tr>
		<td class="unifont1" valign="top" nowrap="nowrap">
		Subject Line:
		</td>
		<td class="unifont1">
		    <input name="ALERT_SUBJECT_LINE" maxlength="100" size="23" value="<TMPL_VAR NAME=ALERT_SUBJECT_LINE>"/>
		</td>
	    </tr>
	    <tr>
		<td class="unifont1"></td>
		<td class="unifont1" align="left" width="99%">Note: Defaults to the Alert Name</td>
	    </tr>
	    </table>
	</td>
    </tr>
</table>
<!-- end delivery -->

</fieldset>

<TMPL_IF NAME="EDIT_ALERT">
    <table class="alert_new">
    <tr>
    <td class="deffld" align="right">&nbsp;</td>

    <td class="smallfont1" align="left" width="100%">&nbsp;</td>
    <td nowrap="nowrap" width="98%">
    <a href="javascript:save_edit_alert('<TMPL_VAR NAME="SUBSCRIPTION_ID">')"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/save_alert.gif" width="81" height="24"></a>
    </td>
    </tr>
    </table>
<TMPL_ELSE>
    <table class="alert_new">
    <tr>
      <td class="deffld"  width="1%" align="right"><font color="#ff0000">*</font></td>
      <td class="smallfont1" align="left" width="99%">Alerts are run weekly</td>
    </tr>
    <tr>
      <td colspan="2" align="right">
        <input name="SAVE_ALERT" value="Save" type="submit">
        <input name="CANCEL_ALERT" value="Cancel" onclick="if(confirm('Are you sure you want to Cancel?')) window.close();" type="button">
      </td>
    </tr>
    </table>
</TMPL_IF>

<!-- end: $RCSfile: alert_edit_form.tpl,v $ -->
