<!-- begin: manage_account_add_user_buttons.tpl -->
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
	        <td><a href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS')"><img width="65" height="24" border="0" name="backadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a></td>
		<td class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td><a href="javascript:send_event('MANAGE/ADD_USER_NOW');" onClick="if(add_user(<TMPL_VAR NAME=MIN_PASSWORD_LENGTH><TMPL_IF COMPANY_PER_USER_CHARGE>, <TMPL_VAR NAME=COMPANY_PER_USER_CHARGE><TMPL_ELSE>,0</TMPL_IF><TMPL_IF SHA2_PASSWORD>,1<TMPL_ELSE><TMPL_IF PW_COMPLEXITY_FOUR>,2<TMPL_ELSE>,0</TMPL_IF></TMPL_IF>)) { if('<TMPL_VAR NAME="PENDING_ADMINS">' == '1') { return confirm_new_admin()} else {return true;}} else {return false;}"><img width="81" height="24" border="0" name="adduser" src="<TMPL_VAR NAME=IMGPATH>/adduser.gif"></a></td>
	      </tr>
	    </table>
<!-- end: manage_account_add_user_buttons.tpl -->
