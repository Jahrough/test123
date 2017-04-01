<!-- begin: manage_account_update_user_buttons.tpl -->

    <div class="btn grey-btn">
        <a href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS')">
            < Back
        </a>
    </div>
    <TMPL_UNLESS NAME=ROW_LOCKED>
        <div class="btn red-btn">
            <a href="javascript:clearPlaceholders();send_event('MANAGE/UPDATE_USER_NOW');" onClick="clearPlaceholders(); if (validate(<TMPL_VAR NAME=MIN_PASSWORD_LENGTH><TMPL_IF SHA2_PASSWORD>,1<TMPL_ELSE>,0</TMPL_IF>)) { if ('<TMPL_VAR NAME="PENDING_ADMINS">' == '1' && (document.forms[0].ORIG_SYSTEMADMINISTRATOR && document.forms[0].ORIG_SYSTEMADMINISTRATOR.value =='0' )) { return confirm_new_admin()} else {return confirm_unsuspend_user()}} else { placeholders_reset(); return false;}">
               Update User
            </a>
        </div>
        <div class="btn darkgrey-btn">
            <a href="javascript:send_event('MANAGE/DELETE_USER');" onClick="return confirm('!! PLEASE READ !!\n\nOnce a user is deleted you CANNOT REACTIVATE THAT USER!\n\nYou are about to delete <TMPL_VAR NAME=LOGINID> from your account.\n\nIf you are SURE YOU WANT TO DELETE THIS USER, Click the OK Button below.\n\nIf you wish to KEEP THIS USER, click CANCEL below.');">
                Delete User
            </a>
        </div>
        <TMPL_UNLESS IRS>
            <div class="btn darkgrey-btn">
                <a href="javascript:send_event('MANAGE/COPY_USER');">
                    Copy User
                </a>
            </div>
        </TMPL_UNLESS>
        <TMPL_UNLESS CSAML_LOGIN>
        <TMPL_IF NAME="MFA_MACHINE_ACTIVATE_ENABLED">
            <TMPL_UNLESS NAME="MFA_COMPANY_IP_RESTRICT_NOROAM">
                <div class="btn darkgrey-btn">
                    <a href="javascript:send_event('OTP/MANAGE_OTP_USER');">Manage Security Tokens</a>
                </div>
            </TMPL_UNLESS>
        <TMPL_ELSE>
            <TMPL_IF NAME="ENABLE_OTP">
                <div class="btn darkgrey-btn">
                    <a href="javascript:send_event('OTP/MANAGE_OTP_USER');">Manage Security Tokens</a>
                </div>
            </TMPL_IF>
        </TMPL_IF>
        </TMPL_UNLESS>
    </TMPL_UNLESS>
<!-- end: manage_account_update_user_buttons.tpl -->
