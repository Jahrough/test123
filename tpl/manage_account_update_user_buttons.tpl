<!-- begin: manage_account_update_user_buttons.tpl -->
		<table border="0" cellpadding="0" cellspacing="0">
		  <tr>
		    <td ><a href="javascript:send_event('MANAGE/UPDATE_USER_NOW');" onClick="if(validate(<TMPL_VAR NAME=MIN_PASSWORD_LENGTH><TMPL_IF SHA2_PASSWORD>,1<TMPL_ELSE><TMPL_IF PW_COMPLEXITY_FOUR>,2<TMPL_ELSE>,0</TMPL_IF></TMPL_IF>)) { if('<TMPL_VAR NAME="PENDING_ADMINS">' == '1' && (document.forms[0].ORIG_SYSTEMADMINISTRATOR && document.forms[0].ORIG_SYSTEMADMINISTRATOR.value =='0' )) { return confirm_new_admin()} else {return true;}} else {return false;}"><img width="81" height="24" border="0" name="updateuser" src="<TMPL_VAR NAME=IMGPATH>/updateuser.gif"></a></td>
		    <td class="unifont1">&nbsp;</td>
		    <td><a href="javascript:send_event('MANAGE/DELETE_USER');" onClick="return confirm('!! PLEASE READ !!\n\nOnce a user is deleted you CANNOT REACTIVATE THAT USER!\n\nYou are about to delete <TMPL_VAR NAME=LOGINID> from your account.\n\nIf you are SURE YOU WANT TO DELETE THIS USER, Click the OK Button below.\n\nIf you wish to KEEP THIS USER, click CANCEL below.');"><img width="81" height="24" border="0" name="deleteuser" src="<TMPL_VAR NAME=IMGPATH>/deleteuser.gif"></a></td>
		  </tr>
  		</table>
		<table border="0" cellpadding="0" cellspacing="0">
		  <tr>
		    <td colspan="2"><a href="javascript:send_event('OTP/MANAGE_OTP_USER');"><img width="130" height="24" border="0" name="otpuser" src="<TMPL_VAR NAME=IMGPATH>/manage_security_tokens.gif"></a></td>
		    <td class="unifont1">&nbsp;</td>
		    <td><a href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS')"><img width="65" height="24" border="0" name="backadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a></td>
		  </tr>
		</table>
<!-- end: manage_account_update_user_buttons.tpl -->
