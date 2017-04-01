<!-- Begin mobile_user_settings_prefs.tpl-->
<input type="hidden" name="save-report" value="0">
<table border="0" cellpadding="0" cellspacing="0" width="620">
    <TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
        <tr>
            <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
        </tr>
    </TMPL_IF>
        <tr>
        <td>
            <table border="0" cellpadding="2" cellspacing="0" width="100%">
                <tr>
                    <td valign="top">
                        <table border="0" cellpadding="2" cellspacing="0" width="100%">
                            <tr>
                                <td>
                                    <div class="myaccount-section-title">Other User Settings:</div>
                                        <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                                            <br>
                                            <ol>
                                                <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>>
                                                    <label for="password_reset_feature">Save report for later access:</label>&nbsp;
                                                    <br><label for="person_report">Person Report</label>&nbsp;<input type="checkbox" name="save-person-report" value="1" <TMPL_VAR NAME=SAVE_PERSON_REPORT><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>>
                                                    <br><label for="phone_report">Phone report</label>&nbsp;<input type="checkbox" name="save-phone-report" value="1" <TMPL_VAR NAME=SAVE_PHONE_REPORT><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>>
                                                    <br><label for="address_report">Address report</label>&nbsp;<input type="checkbox" name="save-address-report" value="1" <TMPL_VAR NAME=SAVE_ADDRESS_REPORT><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>>
                                                    <br><label for="business_report">Business report</label>&nbsp;<input type="checkbox" name="save-business-report" value="1" <TMPL_VAR NAME=SAVE_BUSINESS_REPORT><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>>
                                                    <br><label for="vehicle_report">Vehicle report</label>&nbsp;<input type="checkbox" name="save-vehicle-report" value="1" <TMPL_VAR NAME=SAVE_VEHICLE_REPORT><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>>
                                                </span>
                                            </ol>
                                            <TMPL_IF NAME="REPORT_MANAGER_OFF">
                                                &nbsp;(Saving Reports currently not available)
                                            </TMPL_IF>
                                        </TMPL_IF>
                                    <TMPL_IF MYACCOUNT_PREFERENCES_CHILD>
                                        <TMPL_IF NAME="MYACCOUNT_FEATURE_FORGOTPASSWORD">
                                            <TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_INFO">
                                                <TMPL_INCLUDE NAME=features/forgotpassword/myaccount_info.tpl>
                                            </TMPL_IF>
                                            <TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_ENABLE">
                                                <TMPL_INCLUDE NAME=features/forgotpassword/myaccount_enable.tpl>
                                            <TMPL_ELSE>
                                                <TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_REGISTRATION">
                                                    <TMPL_INCLUDE NAME=features/forgotpassword/myaccount_register.tpl>
                                                </TMPL_IF>
                                            </TMPL_IF>
                                            <TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_CANCEL">
                                                <TMPL_INCLUDE NAME=features/forgotpassword/myaccount_cancel.tpl>
                                            </TMPL_IF>
                                        </TMPL_IF>
                                    <TMPL_ELSE>
                                         <ol>
                                            <TMPL_UNLESS MANDATORY_REGISTER>
                                            <TMPL_IF USER_CAN_SEE_FORGOT_PASSWORD_FEATURE>
                                                <INPUT TYPE=HIDDEN NAME="I" VALUE="NOW">
                                                <label for="password_reset_feature">Forgot Password Feature:</label>&nbsp;
                                                <TMPL_IF NAME=USER_ELIGIBLE_FORGOT_PASSWORD_FEATURE>
                                                    <b>Disabled</b>&nbsp;<input type=button value="Edit" onclick="send_event('PRELOGIN/SHOW_INFO');">
                                                <TMPL_ELSE>
                                                    <TMPL_IF NAME=USER_REGISTERED_FORGOT_PASSWORD_FEATURE>
                                                        <b>Need verification</b>&nbsp;<input type=button value="Edit" onclick="send_event('PRELOGIN/SHOW_EMAIL_VERIFY')">
                                                    <TMPL_ELSE>
                                                        <TMPL_IF NAME=DISABLE_FORGOT_PASSWORD_FEATURE>
                                                            <b>Disabled</b>&nbsp;<input type=button value="Edit" onclick="send_event('PRELOGIN/ENABLE_DISABLE')">
                                                        <TMPL_ELSE>
                                                            <b>Enabled</b>&nbsp;<input type=button value="Edit" onclick="send_event('PRELOGIN/ENABLE_DISABLE')">
                                                        </TMPL_IF>
                                                    </TMPL_IF>
                                                </TMPL_IF>
                                            </TMPL_IF>
                                            </TMPL_UNLESS>
	                                     </ol>
                                    </TMPL_IF>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<!-- End mobile_user_settings_prefs.tpl-->
