<!-- begin: manage_account_add_user_buttons.tpl -->
<div>
    <a class="btn grey-btn" href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS')">
        &lt; Back
    </a>
</div>
<div class="mgl10">
    <a class="btn red-btn" href="javascript:clearPlaceholders();send_event('MANAGE/ADD_USER_NOW')" onClick="clearPlaceholders();if(add_user(<TMPL_VAR NAME=MIN_PASSWORD_LENGTH><TMPL_IF COMPANY_PER_USER_CHARGE>, <TMPL_VAR NAME=COMPANY_PER_USER_CHARGE><TMPL_ELSE>,0</TMPL_IF><TMPL_IF SHA2_PASSWORD>,1<TMPL_ELSE><TMPL_IF PW_COMPLEXITY_FOUR>,2<TMPL_ELSE>,0</TMPL_IF></TMPL_IF>)) { if('<TMPL_VAR NAME="PENDING_ADMINS">' == '1') { return confirm_new_admin()} else { return true; }} else { placeholders_reset(); return false;}">
        Add User
    </a>
</div>
<!-- end: manage_account_add_user_buttons.tpl -->
