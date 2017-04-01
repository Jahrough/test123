<!-- BEGIN myaccount/manage_account_update_group_buttons_new.tpl -->
<div class="btn grey-btn">
    <a href="javascript:send_event('MANAGE/MANAGE_GROUPS')">
        &lt; Back
    </a>
</div>
<TMPL_UNLESS NAME=ROW_LOCKED>
    <div class="btn red-btn">
        <a href="javascript:send_event('MANAGE/UPDATE_GROUP_NOW');" onClick="if(concatUsers()){if('<TMPL_VAR NAME="PENDING_ADMINS">' == '1' && (document.forms[0].ORIG_SYSTEMADMINISTRATOR && document.forms[0].ORIG_SYSTEMADMINISTRATOR.value =='0' )) { return confirm_new_admin()} else {return true;}}">
            Update Group
        </a>
    </div>
    <div class="btn darkgrey-btn">
        <a href="javascript:send_event('MANAGE/DELETE_GROUP');" onClick="return confirm('Group <TMPL_IF NAME=GROUP_NAME_ESC>(<TMPL_VAR NAME=GROUP_NAME_ESC>)<TMPL_ELSE>(<TMPL_VAR NAME=GROUP_NAME>)</TMPL_IF> has <TMPL_VAR NAME=NUM_GROUP_USERS> user(s). Are you sure you want to delete this group?');">
            Delete Group
        </a>
    </div>
</TMPL_UNLESS>
<!-- END myaccount/manage_account_update_group_buttons_new.tpl -->
