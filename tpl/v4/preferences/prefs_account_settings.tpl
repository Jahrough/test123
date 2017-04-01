<div id="tab-account-settings" class="tab-pane <TMPL_IF NAME="ACCOUNT_PREF">active</TMPL_IF>">
    <h3 class="gear svg-icon-normal">Account Settings<a href="javascript:void(0);" data-helpid = "PREFERENCES_ACCOUNT_SETTINGS"  class="help-search help-icon svg-icon-normal pull-right "></a></h3>
    <TMPL_UNLESS MFA_RESTRICT>
    <span class="pull-right">* Entry Required</span>
    </TMPL_UNLESS>
    <div class="settings-container">
        <form class="smart-form prefs-form" id="prefs-form-account-settings" name="PREFS_FORM_ACCOUNT_SETTINGS">
        <TMPL_IF MFA_RESTRICT>
           <TMPL_INCLUDE NAME="prefs_mfa_downgraded.tpl"> 
        <TMPL_ELSE>
            <h4>Security Settings</h4>
            <div class="row">
                <div class="input col col-3">
                    <label>
                        <input id="EMAIL_ADDR" type="text" placeholder="Email Address *" class="form-control" name="EMAIL_ADDR" value="<TMPL_VAR NAME=EMAIL_ADDR>" >
                        <span class="tooltip">Email Address</span>
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="input col col-3">
                    <label>
                        <input id="PHONE_VOICE1" type="text" placeholder="Primary Phone *" class="form-control" name="PHONE_VOICE1" value="<TMPL_VAR NAME=PHONE_VOICE1>" >
                        <span class="tooltip">Primary Phone</span>
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="input col col-3">
                    <label>
                        <input id="PHONE_VOICE2" type="text" placeholder="Alternate Phone" class="form-control" name="PHONE_VOICE2" value="<TMPL_VAR NAME=PHONE_VOICE2>" >
                        <span class="tooltip">Alternate Phone</span>
                    </label>
                </div>
            </div>
            <h4>My Role</h4>
            <div class="row">
                <div class="input col col-3">
                    <label>
                        <select id="ROLE" name="ROLE" class="form-control" data-default-value="<TMPL_VAR ROLE>" onchange="javascript:toggle_other_role(this);">
                            <option value="">Select a Role *</option>
                            <option value="1">AML Analyst/Investigator</option>
                            <option value="2">BSA/AML Compliance Officer</option>
                            <option value="3">Customer Service</option>
                            <option value="4">Fraud Analyst/Investigator</option>
                            <option value="5">Loan Underwriting</option>
                            <option value="6">Manager</option>
                            <option value="7">Quality Assurance/Control</option>
                            <option value="8">Other</option>
                        </select>
                        <script>
                            $(function(){
                                var $role = $('#ROLE');
                                var _role = $role.data('default-value');
                                if($role.length > 0 && _role){
                                    $role.val(_role);
                                }
                            });
                        </script>
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="input col col-3">
                    <label>
                        <input id="OTHER_ROLE" type="text" placeholder="Other Role" name="OTHER_ROLE" class="form-control" value="<TMPL_VAR OTHER_ROLE>">
                        <span class="tooltip">Other Role</span>
                    </label>
                </div>
            </div>
            <div id="pref_responsibilities">
                <h5>Responsibilities</h5>
                <span class="font-12">(for informational purposes only):</span>
                <div class="row">
                    <ul class="unmarked_list col col-4">
                        <li>
                            <label>
                                <input type="checkbox" name="IS_ACCOUNT_MANAGEMENT" id="IS_ACCOUNT_MANAGEMENT" <TMPL_IF IS_ACCOUNT_MANAGEMENT>checked="checked"</TMPL_IF> data-original="1">
                                Account Management
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="IS_ACCOUNT_OPENING" id="IS_ACCOUNT_OPENING" <TMPL_IF IS_ACCOUNT_OPENING>checked="checked"</TMPL_IF> data-original="1">
                                Account Opening 
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="IS_AUTO_LOAN_UNDERWRITE" id="IS_AUTO_LOAN_UNDERWRITE" <TMPL_IF IS_AUTO_LOAN_UNDERWRITE>checked="checked"</TMPL_IF> data-original="1">
                                Auto Loan Underwriting
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="IS_CUSTOMER_DUE_DILIGENCE" id="IS_CUSTOMER_DUE_DILIGENCE" <TMPL_IF IS_CUSTOMER_DUE_DILIGENCE>checked="checked"</TMPL_IF>>
                                Customer Due Diligence
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="IS_ENHANCED_DUE_DILIGENCE" id="IS_ENHANCED_DUE_DILIGENCE" <TMPL_IF IS_ENHANCED_DUE_DILIGENCE>checked="checked"</TMPL_IF>>
                                Enhanced Due Diligence
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="IS_ESTABLISH_POLICIES" id="IS_ESTABLISH_POLICIES" <TMPL_IF IS_ESTABLISH_POLICIES>checked="checked"</TMPL_IF>>
                                Establish BSA/AML/OFAC Policies 
                            </label>
                        </li>    
                        <li>
                            <label>
                                <input type="checkbox" name="IS_FRAUD_INVESTIGATION" id="IS_FRAUD_INVESTIGATION" <TMPL_IF IS_FRAUD_INVESTIGATION>checked="checked"</TMPL_IF>>
                                Fraud Investigation
                            </label>
                        </li>
                    </ul>
                    <ul class="unmarked_list col col-4">
                        <li>
                            <label>
                                <input type="checkbox" name="IS_FRAUD_INV_INTERNAL" id="IS_FRAUD_INV_INTERNAL" <TMPL_IF IS_FRAUD_INV_INTERNAL>checked="checked"</TMPL_IF>>
                                (Internal) Fraud Investigation
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="IS_INBOUND_CALLS" id="IS_INBOUND_CALLS" <TMPL_IF IS_INBOUND_CALLS>checked="checked"</TMPL_IF>>
                                Inbound Calls
                            </label>
                        </li>
                        <li>
                            <label>
                               <input type="checkbox" name="IS_OUTBOUND_CALLS" id="IS_OUTBOUND_CALLS" <TMPL_IF IS_OUTBOUND_CALLS>checked="checked"</TMPL_IF>>
                               Outbound Calls
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="IS_SAR_SUBMISSIONS" id="IS_SAR_SUBMISSIONS" <TMPL_IF IS_SAR_SUBMISSIONS>checked="checked"</TMPL_IF>>
                                SAR Submissions
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="IS_SCREENING_REMEDIATION" id="IS_SCREENING_REMEDIATION" <TMPL_IF IS_SCREENING_REMEDIATION>checked="checked"</TMPL_IF>>
                                Screening/Watchlist Remediation
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="IS_TEAM_LEAD" id="IS_TEAM_LEAD" <TMPL_IF IS_TEAM_LEAD>checked="checked"</TMPL_IF>>
                                Team Lead
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="IS_TRAINING_CONDUCT" id="IS_TRAINING_CONDUCT" <TMPL_IF IS_TRAINING_CONDUCT>checked="checked"</TMPL_IF>>
                                Training (Conduct)
                            </label>
                        </li>
                    </ul>
                </div>
            </div>
            <input type="hidden" name="EVENT" value="MISC/SAVE_WEB20_PREFS">
            <input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
            <input type="hidden" name="ACCT_SETTINGS" value="1">
            <div class="pull-right">
                <button type="button" class="btn btn-danger" onclick="javascript:if(!web20_validate('PREFS_FORM_ACCOUNT_SETTINGS')){return false;}else{save_prefs_data(this,1);$('#pref_content').data('changed', false);return false;}">Save Account Settings</button>
                <input type="button" class="btn btn-exit-prefs" onclick="javascript:check_display_cancel_confirmation_dialog(this);return false;" value="Exit Preferences" data-module_num="1"/>
            </div>
            </TMPL_IF>
        </form>
    </div>
</div>
