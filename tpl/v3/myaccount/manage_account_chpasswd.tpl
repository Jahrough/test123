<!-- begin myaccount/manage_account_chpasswd.tpl -->
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='LOGINID'>">
<input type="hidden" name="MIN_PW_LEN" value="<TMPL_VAR NAME='MIN_PASSWORD_LENGTH'>">

<div class="myaccount-section-title">Change Password</div>

<div class="myaccount-containers" style="padding:0 100px"> 
    <div class="section">
            <TMPL_IF NAME="MESSAGE">
                <div class="section-row child-divs-center">
                    <div>
                        <span><TMPL_VAR NAME="MESSAGE"></span>
                    </div>
                </div>
            </TMPL_IF>
        <TMPL_UNLESS NAME="PASSWORD_CHANGE_DONE">

            <script>
                  document.forms[0].EVENT.value = '<TMPL_IF NAME=REQUIRE_PASSWORD_CHANGE>LOGIN/REQUIRE_PASSWORD_CHANGE_DO<TMPL_ELSE>MANAGE/UPDATE_SINGLE_USER</TMPL_IF>';
              setup_keypress_handler();
            </script>
            <noscript>Your browser does not support JavaScript!</noscript>
            <div class="section-row child-divs-center">
                <div>
                    <span><b>If you don't remember your password, please contact your System Administrator.</b></td>
                </div>
            </div>
            <fieldset class="mgt15 pd15">
                <div class="section-row child-divs-center">
                    <div style="vertical-align: top;width:49%;padding-left: 100px;">
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        <b><label for="cur_pass">Current Password:</label></b>
                                    </td>
                                    <td>
                                        <INPUT id="cur_pass" tabindex="1" TYPE="password" NAME="CURR_PASSWORD" SIZE="20" MAXLENGTH=30 AUTOCOMPLETE="off">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b><label for="new_pass">Type New Password:</label></b>
                                    </td>
                                    <td>
                                        <INPUT id="new_pass" tabindex="2" TYPE="password" NAME="NEWPASSWORD" SIZE="20" MAXLENGTH=30 AUTOCOMPLETE="off">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b><label for="con_new_pass">Confirm New Password:</label></b>
                                    </td>
                                    <td>
                                        <INPUT id="con_new_pass" tabindex="3" TYPE="password" NAME="CONFIRM_PASSWORD" SIZE="20" MAXLENGTH=30 AUTOCOMPLETE="off">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div class="section-row child-divs-center mgt15">
                                            <TMPL_UNLESS NAME="REQUIRE_PASSWORD_CHANGE">
                                                <TMPL_IF ENABLE_SECURITY_QUESTION>
                                                    <div>
                                                        <a class="btn grey-btn" href="javascript:send_event('MANAGE/MANAGE_SINGLE_ACCOUNT');">
                                                            Back
                                                        </a>
                                                    </div>
                                                </TMPL_IF> 
                                            </TMPL_UNLESS>
                                            <div>
                                                <a class="btn red-btn" href="javascript:if(password_match(document.forms[0].NEWPASSWORD, document.forms[0].CONFIRM_PASSWORD, document.forms[0].CURR_PASSWORD, <TMPL_VAR NAME=MIN_PASSWORD_LENGTH>, <TMPL_IF SHA2_PASSWORD>1<TMPL_ELSE><TMPL_IF PW_COMPLEXITY_FOUR>2<TMPL_ELSE>0</TMPL_IF></TMPL_IF>)) send_event(document.forms[0].EVENT.value);">
                                                    Save
                                                </a>
                                            </div>
                                            <TMPL_IF NAME="REQUIRE_PASSWORD_CHANGE">
                                                <div>
                                                    <a class="btn grey-btn" href="javascript:send_event('LOGOUT');">
                                                        Cancel
                                                    </a>
                                                </div>
                                            </TMPL_IF>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div style="vertical-align: top; width:49%;">
                        <TMPL_INCLUDE NAME="manage_account_password_req.tpl">
                    </div>
                </div>
            </fieldset>
        </TMPL_UNLESS>
    </div>
</div>
<script>
if (document.forms[0].CURR_PASSWORD) {
  document.forms[0].CURR_PASSWORD.focus();
} else if (document.forms[0].NEWPASSWORD) {
  document.forms[0].NEWPASSWORD.focus();
}
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end myaccount/manage_account_chpasswd.tpl -->
