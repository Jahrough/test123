<!-- begin: $RCSfile: alert_edit_form.tpl,v $ -->
<script>
function clear_alert_field(length_field) {
    if (length_field == 1) {
        document.getElementById('ALERT_LENGTH').value = '';
    }
    else {
        document.getElementById('ALERT_EXPIRATION_DATE').value = '';
    }
}
</script>


<TMPL_UNLESS NAME="EDIT_ALERT">
	<div class="batch-status-title">Save As Person Alert</div>
    <div class="fieldset-title"><TMPL_VAR NAME=FULL_NAME> <TMPL_IF NAME=SSN>(<TMPL_VAR NAME=SSN>)</TMPL_IF></div>                
</TMPL_UNLESS>
<fieldset class="batchFieldset">
    <div class="pdl15">
        <span style="text-align:left;"><b class="f-14">Notify me if any of the following sections changes:</b></span>
        <label class="f-14">
            <input type="checkbox" name="alert_options_toggle" id="alert_options_toggle" value="1" <TMPL_IF NAME="alert_options_toggle">checked</TMPL_IF>>
            All sections of the report
        </label>
    </div>
    <table style="width:100%;">
      <thead style="display: none">
        <tr>
          <th aria-label="Alert">&nbsp;</th>
        </tr>
      </thead>
        <tr>
            <td>
                <div class="pa-checkbox-con">
                    <table style="width:100%;">
                      <thead style="display: none">
                        <tr>
                          <th aria-label="Alert">&nbsp;</th>
                        </tr>
                      </thead>
                    
                        <tr>
                            <td>
                                <label class="f-14">
                                    <input type="checkbox" name="alert_options" id="alert_options_name" error_message="Please select at least one alert option (report section)" value="name" <TMPL_IF NAME="alert_options_name">checked</TMPL_IF>>
                                    Name
                                </label>
                            </td>
                            <td>
                                <label class="f-14">
                                    <input type="checkbox" name="alert_options" id="alert_options_address" value="address" <TMPL_IF NAME="alert_options_address">checked</TMPL_IF>>
                                    Address
                                </label>
                            </td>
                            <td>
                                <label class="f-14">
                                    <input type="checkbox" name="alert_options" id="alert_options_phone" value="phone" <TMPL_IF NAME="alert_options_phone">checked</TMPL_IF>>
                                    Phone
                                </label>
                            <td>
                                <label class="f-14">
                                    <input type="checkbox" name="alert_options" id="alert_options_status" value="status" <TMPL_IF NAME=alert_options_status>checked</TMPL_IF>>
                                    Death Records
                                </label>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <table class="batchInputTable" style="margin:25px 0 0 0px;">
                   <thead style="display: none">
                        <tr>
                          <th aria-label="Alert">&nbsp;</th>
                        </tr>
                   </thead>
                
                    <tr>
                        <td style="width:200px;">
                            <label for="ALERT_NAME"><b class="f-14">Name of Alert:</b></label>
                        </td>
                        <td>
                            <input id="ALERT_NAME" name="ALERT_NAME" maxlength="255" size="40" value="<TMPL_VAR NAME=ALERT_NAME>" type="text" lnpattern="generic" error_message="Please give the alert a name.  This is used to find this alert again under the Alerts Manager">
                            <span class="f-13">(Will be listed under this name in the Alerts Manager)</span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:200px;">
                            <label for="ALERT_LENGTH"><b class="f-14">Duration of Alert:</b></label>
                        </td>
                        <td onClick="clear_alert_field(0)">
                            <select style="float:left;" id="ALERT_LENGTH" name="ALERT_LENGTH" error_message="Please select a duration for the alert" optional="1" lnpattern="generic">
                                <option value="">Select One</option>
                                <option value="1" <TMPL_IF NAME="ALERT_LENGTH_1">selected</TMPL_IF>>Perpetual</option> 
                                <option value="30" <TMPL_IF NAME="ALERT_LENGTH_30">selected</TMPL_IF>>30 Days</option>
                                <option value="60" <TMPL_IF NAME="ALERT_LENGTH_60">selected</TMPL_IF>>60 Days</option>
                                <option value="90" <TMPL_IF NAME="ALERT_LENGTH_90">selected</TMPL_IF>>90 Days</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:200px;">
                            <label for="ALERT_EXPIRATION_DATE"><b class="f-14">OR Alert End Date:</b></label>
                        </td>
                        <td>
                            <input onclick="clear_alert_field(1);displayDatePicker('ALERT_EXPIRATION_DATE');" type="text" id="ALERT_EXPIRATION_DATE" name="ALERT_EXPIRATION_DATE" value="<TMPL_VAR NAME="ALERT_EXPIRATION_DATE">" size="12" maxlength="10" error_message="Please select an end date for the alert" lnpattern="date" optional="1" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width:200px;">
                            <label for="REFERENCE_CODE"><b class="f-14">Reference:</b></label>
                        </td>
                        <td>
                            <input id="REFERENCE_CODE" name="REFERENCE_CODE" maxlength="30" size="40" value="<TMPL_VAR NAME=REFERENCE_CODE>" type="text"<TMPL_IF DISABLE_REF_CODE> DISABLED</TMPL_IF>>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <br/>
                <hr style="width: 98%;border-top: 1px dotted red;border-width: 1px 0 0 0;margin:0;">
                <br/>
                <br/>
                <!-- delivery -->
                <table class="batchInputTable" style="width:95%;">
                    <thead style="display: none">
                      <tr>
                        <th aria-label="Delivery">&nbsp;</th>
                      </tr>
                    </thead>
                    <tr>
                        <td style="width:200px;">
                            <b class="f-14">Email Notification:<font color="#ff0000">*</font></b>
                        </td>
                        <td>
                            <input name="ALERT_EMAIL" value="1" type="checkbox" id="alert_email" <TMPL_IF NAME="ALERT_EMAIL">checked</TMPL_IF>>
                            <label for="alert_email">Send Email alert</label>
                            <input name="ALERT_EMAIL_ZERO_RESULTS" value="1" type="checkbox" id="alert_email_zero_results" <TMPL_IF NAME="ALERT_EMAIL_ZERO_RESULTS">checked</TMPL_IF>>
                            <label for="alert_email_zero_results">Alert me if there are no new results</label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:200px;">
                            <label for="ALERT_DELIVERY_EMAIL"><b class="f-14">Email Address(es):</b></label>
                        </td>
                        <td>
                            <textarea id="ALERT_DELIVERY_EMAIL" name="ALERT_DELIVERY_EMAIL" rows="1" style="width:305px;margin-left:0;height:26px;"><TMPL_VAR NAME=ALERT_DELIVERY_EMAIL></textarea>
                            <span class="f-13" style="position:relative;top:-10px;">(For multiple email addresses, separate with commas)</span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:200px;">
                            <label for="ALERT_NOTE"><b class="f-14">Notes:</b></label>
                        </td>
                        <td>
                            <textarea id="ALERT_NOTE" name="ALERT_NOTE" rows="3" style="width:100%;margin-left:0;"><TMPL_VAR NAME=ALERT_NOTE></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:200px;">
                            <label for="ALERT_SUBJECT_LINE"><b class="f-14">Subject Line:</b></label>
                        </td>
                        <td>
                            <input type="text" id="ALERT_SUBJECT_LINE" name="ALERT_SUBJECT_LINE" maxlength="100" style="width:305px;margin-left:0;" value="<TMPL_VAR NAME=ALERT_SUBJECT_LINE>"/>
                            <span class="f-13">(Defaults to the Alert Name)</span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="batchfilealert batchsmallfont" colspan="2" nowrap="nowrap">
                <font color="#ff0000">*</font>&nbsp;Alerts are run weekly
            </td>
        </tr>	
    </table>
</fieldset>
<div class="section-row child-divs-right">
	<TMPL_IF NAME="EDIT_ALERT">
		<a class="btn darkgrey-btn" href="javascript:save_edit_alert('<TMPL_VAR NAME="SUBSCRIPTION_ID">')">
            Save Alert
        </a>
	<TMPL_ELSE>
		<div>
			<input class="btn red-btn" name="SAVE_ALERT" value="Save" type="submit">
			<input class="btn grey-btn" name="CANCEL_ALERT" value="Cancel" onclick="if(confirm('Are you sure you want to Cancel?')) window.close();" type="button">
		</div>
	</TMPL_IF>
</div>
<!-- end: $RCSfile: alert_edit_form.tpl,v $ -->
