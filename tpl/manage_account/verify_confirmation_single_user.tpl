<!-- begin: $RCSfile: verify_confirmation_single_user.tpl,v $ -->
    <TMPL_INCLUDE NAME="manage_account_top.tpl">
    <input type="hidden" name="ACCOUNT_USERS_VERIFIED" value="1">
    <table cellpadding="0" cellspacing="0" border="0" width="90%">
    <tr>
    <td width="90%">
    <div class="infobox">
<strong>Date: </strong><TMPL_VAR NAME="CURRENT_DATE"><br>
<strong>Company ID: </strong><TMPL_VAR NAME="COMPANY_ID"><br><br>
	As the single user for your company, you have been automatically verified for the quarter ending <TMPL_VAR NAME="VERIFICATION_QUARTER_END">.<br>
	<br>
	<br>
	Thank You.
    </div>

    </td>
    </tr>
    <tr>
    <td width="100%" align="center">
    <br>
    <input type="button" onclick="send_event('LOGIN/CONTINUE');" value="   CONTINUE   ">
    </td>
    </tr>
    </table>
    <TMPL_INCLUDE NAME="manage_account_bottom.tpl">
<!-- end: $RCSfile: verify_confirmation_single_user.tpl,v $ -->
