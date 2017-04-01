<!-- begin: $RCSfile: verify_confirmation_receipt.tpl,v $ -->
    <TMPL_INCLUDE NAME="manage_account_top.tpl">
    <input type="hidden" name="ACCOUNT_USERS_VERIFIED" value="1">
    <table cellpadding="0" cellspacing="0" border="0" width="90%">
    <tr>
    <td width="90%">
    <div class="infobox">
<strong>Date: </strong><TMPL_VAR NAME="CURRENT_DATE"><br>
<strong>Company ID: </strong><TMPL_VAR NAME="COMPANY_ID"><br><br>
	Your company's user accounts have been verified for the quarter ending <TMPL_VAR NAME="VERIFICATION_QUARTER_END">.<br>
	<br>
	<tmpl_if name="USER_LIST">
	<br>
	The following user(s) have been suspended:<br>

        <table border="0" cellpadding="3" cellspacing="0" width="100%">
          <tr>
            <th width="30%" align="left" class="smallfont1">Loginid</th>
            <th width="70%" align="left" class="smallfont1">Name</th>
          </tr>
        <TMPL_LOOP NAME=USER_LIST>
          <tr>
            <td align="left" class="smallfont1"><TMPL_VAR NAME=LOGINID></td>
            <td align="left" class="smallfont1"><TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME></td>
          </tr>
        </TMPL_LOOP>
        </table>
	</tmpl_if>
	<br>
	Thank You.
    </div>

    </td>
    </tr>
    <tr>
    <td width="100%" align="center">
    <br>
    <TMPL_IF NAME="STANDALONE">
    <input type="button" onclick="send_event('LOGIN/CONTINUE');" value="   CONTINUE   ">
    <TMPL_ELSE>
    <input type="button" onclick="send_event('MANAGE/MANAGE_ACCOUNTS');" value="   CONTINUE   ">
    </TMPL_IF>
    </td>
    </tr>
    </table>
    <TMPL_INCLUDE NAME="manage_account_bottom.tpl">
<!-- end: $RCSfile: verify_confirmation_receipt.tpl,v $ -->
