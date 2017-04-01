<div id="tab-sec-questions" class="tab-pane <TMPL_IF NAME="SEC_QUESTIONS">active</TMPL_IF>">
    <h3 class="grey_lock_icon svg-icon-normal">Security Questions<a href="javascript:void(0);" data-helpid = "PREFERENCES_SECURITY_QUESTIONS"  class="help-search help-icon svg-icon-normal pull-right "></a></h3>
    <TMPL_UNLESS MFA_RESTRICT>
       <span class="pull-right">* Entry Required</span>
    </TMPL_UNLESS>
    <div class="settings-container">
        <form name="PREFS_FORM_SEC_QUESTION" class="smart-form prefs-form" id="prefs-form-sec-question">
        <TMPL_IF MFA_RESTRICT>
           <TMPL_INCLUDE NAME="prefs_mfa_downgraded.tpl">
        <TMPL_ELSE>
            <h4>Security Questions and Answers</h4>
            <div class="row">
               &nbsp;&nbsp;Please enter an answer to the three security question (2-100 characters).
            </div>
            <TMPL_LOOP NAME=SECURITY_QUESTION_ANSWER_LOOP>
                <div class="row"></div>
                <strong>Question <TMPL_VAR NAME=INDEX>:</strong>
                <div class="row"></div>
                <div class="row">
                    <div class="input col col-6">
                        <label>
                            <select class="form-control sec-ques" <TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">DISABLED</TMPL_IF> id="q<TMPL_VAR NAME=INDEX>" NAME="SECURITY_QUESTION_<TMPL_VAR NAME=INDEX>" SIZE="1" data-clearonchange="a<TMPL_VAR NAME=INDEX>">
                                <option value="">Select a security question *</option>
                                <TMPL_LOOP NAME=SECURITY_QUESTIONS>
                                    <option <TMPL_IF NAME=SELECTED>selected="selected" </TMPL_IF>value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION>
                                </TMPL_LOOP>
                            </select>
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="input col col-4">
                        <label>
                            <input placeholder="Security Answer *" type="text" id="a<TMPL_VAR NAME=INDEX>" class="form-control" name="SECURITY_ANSWER_<TMPL_VAR NAME=INDEX>" <TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">disabled="disabled"</TMPL_IF> value="<TMPL_VAR NAME="SECURITY_ANSWER">" maxlength="100">
                            <span class="tooltip">Security Answer *</span>
                        </label>
                    </div>
                </div>
            </TMPL_LOOP>
            <div class="row">&nbsp;</div>
            <input type="hidden" name="EVENT" value="MANAGE/UPDATE_SINGLE_USER_SEC_Q">
            <div class="center">
                <input type="button" class="btn btn-danger" value="&nbsp;&nbsp;&nbsp;Save Security Question&nbsp;&nbsp;&nbsp;" onclick="if(!web20_validate('PREFS_FORM_SEC_QUESTION')){return false;}else{javascript:save_prefs_data(this,1);$('#pref_content').data('changed', false); }">&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="button" class="btn btn-exit-prefs" onclick="javascript:check_display_cancel_confirmation_dialog(this);return false;" value="Exit Preferences" data-module_num="3">
            </div>
        </TMPL_IF>
        </form>
    </div>
</div>
