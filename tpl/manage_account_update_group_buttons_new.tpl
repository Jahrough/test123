<!-- begin: manage_account_update_group_buttons_new.tpl -->
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><a href="javascript:send_event('MANAGE/MANAGE_GROUPS')"><img width="65" height="24" border="0" name="backadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a></td>
    <TMPL_UNLESS NAME=ROW_LOCKED>
    <td class="unifont1">&nbsp;</td>
    <td ><a href="javascript:send_event('MANAGE/UPDATE_GROUP_NOW');" onClick="if(concatUsers()){if('<TMPL_VAR NAME="PENDING_ADMINS">' == '1' && (document.forms[0].ORIG_SYSTEMADMINISTRATOR && document.forms[0].ORIG_SYSTEMADMINISTRATOR.value =='0' )) { return confirm_new_admin()} else {return true;}}"><img width="89" height="24" border="0" name="updategroup" src="<TMPL_VAR NAME=IMGPATH>/update_group.gif"></a></td>
    <td class="unifont1">&nbsp;</td>
    <td><a href="javascript:send_event('MANAGE/DELETE_GROUP');" onClick="return confirm('Group (<TMPL_VAR NAME=GROUP_NAME>) has <TMPL_VAR NAME=NUM_GROUP_USERS> user(s). Are you sure you want to delete this group?');"><img width="89" height="24" border="0" name="deletegroup" src="<TMPL_VAR NAME=IMGPATH>/delete_group.gif"></a></td>
    </TMPL_UNLESS>
  </tr>
</table>
<!-- end: manage_account_update_group_buttons_new.tpl -->
