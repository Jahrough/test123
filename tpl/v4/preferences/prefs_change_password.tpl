<div id="tab-change-password" class="tab-pane <TMPL_IF NAME="CHANGE_PASSWD">active</TMPL_IF>">
    <h3 class="key-icon svg-icon-normal">Change Password<a href="javascript:void(0);" data-helpid = "PREFERENCES_CHANGE_PASSWORD"  class="help-search help-icon svg-icon-normal pull-right "></a></h3>
    <TMPL_UNLESS MFA_RESTRICT>
            <span class="pull-right">* Entry Required</span>
        </TMPL_UNLESS>
        <div class="settings-container">
            <form name="PREFS_FORM" class="smart-form prefs-form" id="prefs-form-change-password">
            <input type="hidden" name="UPDATE_PW_SEC_QUESTION" value="<TMPL_VAR NAME='UPDATE_PW_SEC_QUESTION'>">
            <input type="hidden" name="PREFS_CHANGE_PASSWORD" value="1">
            <input type="hidden" name="MIN_PASSWORD_LENGTH" id="MIN_PASSWORD_LENGTH" value="<TMPL_VAR NAME='MIN_PASSWORD_LENGTH'>">
            <TMPL_IF MFA_RESTRICT>
                 <TMPL_INCLUDE NAME="prefs_mfa_downgraded.tpl">
            <TMPL_ELSE>
                <h4>Change Password</h4>
			<p>All new passwords must:</p>
                            <ul>
                                <li>Consist of at least <TMPL_VAR NAME='MIN_PASSWORD_LENGTH'> characters</li>
                                <li>Not include any spaces</li>
                                <li>Not include your ID</li>
                                <li>Not be the same as any of your previous 12 passwords</li>
                                <li>Not been used in the last 30 days</li>
                                <li>Contain at least <TMPL_IF SHA2_PASSWORD>three<TMPL_ELSE>two</TMPL_IF> of the following:
                                    <ul>
                                        <TMPL_IF SHA2_PASSWORD>
                                            <li>Uppercase characters</li>
                                            <li>Lowercase characters</li>
                                        <TMPL_ELSE>
                                            <li>Alphabetic characters</li>
                                        </TMPL_IF>
                                        <li>Numeric characters</li>
                                        <li>
                                            Special characters
                                            <span aria-hidden="true">(~!@#$%^&*(){};:.,)</span>
                                            <span class="sr-only">for example: tilde, exclamation mark, at sign, pound sign, dollar sign, percentage mark, caret, ampersand, star, parenthesis, curly brackets, colon, semi-colon, apostrophe, and period.</span>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
			    <br/>

                <div class="row">
                    <div class="input col col-4">
                        <label>
                            <input type="password" id="CURR_PASSWORD" class="form-control" name="CURR_PASSWORD" placeholder="Current Password *">
                            <span class="tooltip">Current Password *</span>
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="input col col-4">
                        <label>
                            <input type="password" id="NEWPASSWORD" class="form-control" name="NEWPASSWORD" placeholder="New Password *" maxlength="50">
                            <span class="tooltip">New Password *</span>
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="input col col-4">
                        <label>
                            <input type="password" id="CONFIRM_PASSWORD" class="form-control" name="CONFIRM_PASSWORD" placeholder="Verify New Password *" maxlength="50">
                            <span class="tooltip">Verify New Password *</span>
                        </label>
                    </div>
                </div>
                <TMPL_IF UPDATE_PW_SEC_QUESTION>
                    <div class="row"/>
                    <div class="row"/>
                    <div class="row"/>
                    <div class="row"/>
                    <div class="row">
                        &nbsp;&nbsp;Please enter an answer to the three security question (2-100 characters)
                    </div>
                    <TMPL_LOOP NAME=SECURITY_QUESTION_ANSWER_LOOP>
                       <strong>&nbsp;&nbsp;Question <TMPL_VAR NAME=INDEX>:</strong>
                       <div class="row">
                           <div class="input col col-9">
                               <label>
                                   <select class="form-control sec-ques" <TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">DISABLED</TMPL_IF> id="ques<TMPL_VAR NAME=INDEX>" NAME="SECURITY_QUESTION_<TMPL_VAR NAME=INDEX>" SIZE="1" data-clearonchange="ansr<TMPL_VAR NAME=INDEX>">
                                       <option value="">Select a Security question *</option>
                                       <TMPL_LOOP NAME=SECURITY_QUESTIONS>
                                           <option <TMPL_IF NAME=SELECTED>selected="selected" </TMPL_IF>value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION>
                                       </TMPL_LOOP>
                                   </select>
                               </label>
                           </div>
                       </div>
                       <div class="row">
                           <div class="input col col-9">
                               <label>
                                   <input placeholder="Security Answer *" type="text" id="ansr<TMPL_VAR NAME=INDEX>" class="form-control sec-ques" name="SECURITY_ANSWER_<TMPL_VAR NAME=INDEX>" <TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">disabled="disabled"</TMPL_IF> value="<TMPL_VAR NAME="SECURITY_ANSWER">" maxlength="200">
                                   <span class="tooltip">Security Answer *</span>
                               </label>
                           </div>
                       </div>
                    </TMPL_LOOP>
                </TMPL_IF>
                <input type="hidden" name="EVENT" value="MANAGE/UPDATE_SINGLE_USER">
                <input type="hidden" name="PREF_SELECTION" id="PREF_SELECTION" value=<TMPL_VAR NAME=PREF_SELECTION>>
                <div class="pull-right">
                <TMPL_IF UPDATE_PW_SEC_QUESTION>
                    <input type="button" id="save_new_password" class="btn btn-danger" value="Save New Password" onclick="if(!web20_validate('PREFS_FORM')){return false;}else{javascript:save_prefs_data(this);}">
                <TMPL_ELSE>
                    <input type="button" id="save_new_password" class="btn btn-danger" value="Save New Password" onclick="javascript: $('#history-preferences-content form[name=PREFS_FORM]').valid() && save_prefs_data(this,1);$('#pref_content').data('changed', false);">
                </TMPL_IF>
                    <input type="button" class="btn btn-exit-prefs" onclick="javascript:check_display_cancel_confirmation_dialog(this);return false;" value="Exit Preferences" data-module_num="2">
                </div>
            </TMPL_IF>
        </form>
    </div>
</div>

