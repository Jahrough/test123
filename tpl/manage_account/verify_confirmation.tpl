<!-- begin: $RCSfile: verify_confirmation.tpl,v $ -->
    <TMPL_INCLUDE NAME="manage_account_top.tpl">
    <input type="hidden" name="ACCOUNT_USERS_VERIFIED" value="1">
    <table cellpadding="0" cellspacing="0" border="0" width="90%">
    <tr>
    <td width="90%">

    <div class="infobox">
    <tmpl_unless name="USER_LIST_COUNT">
    You must verify the identity of one or more users in your account.  If you are unsure about this, please cancel
    <tmpl_else>
	<br>
	<tmpl_if name="SUSPENDED_USER_LIST">
	<br>
            You are verifying <TMPL_VAR NAME=USER_LIST_COUNT> user(s) on your account.<br><br>
	    You are about to suspend  <TMPL_VAR NAME=SUSPENDED_USER_LIST_COUNT> user(s) in your account.  The following users will be suspended:<br><br> 

        <table border="0" cellpadding="3" cellspacing="0" width="100%">
          <tr>
            <th width="30%" align="left" class="smallfont1">Loginid</th>
            <th width="70%" align="left" class="smallfont1">Name</th>
          </tr>
        <TMPL_LOOP NAME=SUSPENDED_USER_LIST>
          <tr>
            <td align="left" class="smallfont1"><TMPL_VAR NAME=LOGINID></td>
            <td align="left" class="smallfont1"><TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME></td>
          </tr>
        </TMPL_LOOP>
        </table>
	<br>
	    By clicking "CONTINUE", you affirm that<br>
	    <ul>
		<li>you have verified that Accurint IDs are assigned to current employees and should have access to Accurint services.</li>
		<li>you understand the information that you are providing will be retained by Accurint.</li>
	    </ul>
	<tmpl_else>
	    You are about to verify all users.<br><br>
	    By clicking "CONTINUE", you affirm that<br>
	    <ul>
		<li>you have verified that Accurint IDs are assigned to current employees and should have access to Accurint services.</li>
		<li>you understand the information that you are providing will be retained by Accurint.</li>
	    </ul>
	</tmpl_if>
    </tmpl_unless>
	<br>
	Thank You.
    </div>

    </td>
    </tr>
    <tr>
    <td width="100%" align="center">
    <br>
    <TMPL_UNLESS NAME="STANDALONE">
    <input type="button" onclick="send_event('MANAGE/VERIFY_ACCOUNT_CONFIRMED');" value="   CONTINUE   ">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" onclick="send_event('MANAGE/VERIFICATION_LOG');" value="   CANCEL   ">
    <TMPL_ELSE>
    <input type="button" onclick="send_event('MANAGE/VERIFY_ACCOUNT_CONFIRMED');" value="   CONTINUE   ">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" onclick="send_event('MANAGE/VERIFY_ACCOUNT_NOW');" value="   CANCEL   ">
    </TMPL_UNLESS>
    </td>
    </tr>
    </table>
    <TMPL_INCLUDE NAME="manage_account_bottom.tpl">
<!-- end: $RCSfile: verify_confirmation.tpl,v $ -->
