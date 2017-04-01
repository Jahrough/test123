<!-- begin: $RCSfile: verify_teaser.tpl,v $ -->
    <TMPL_INCLUDE NAME="manage_account_top.tpl">
    <table cellpadding="0" cellspacing="0" border="0" width="90%">
    <tr>
    <td width="100%">
    <div class="infobox">
    To ensure the security of your account, we are asking you to verify all of the users on your account.&nbsp;&nbsp;You should be able to recognize the users in your account by reviewing their name and loginid.&nbsp;&nbsp;If there are any users who you do not recognize as valid users on your account or who have left your company please do not verify them.&nbsp;&nbsp;Users who are not verified will be suspended.  
    </div>
    </td>
    </tr>
    <tr>
    <td width="100%" align="center">
    <br>
    <input type="button" onclick="send_event('MANAGE/VERIFY_ACCOUNT_NOW')" value="   NOW   "><TMPL_UNLESS NAME=DEADLINE_PASSED>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" onclick="send_event('MANAGE/VERIFY_ACCOUNT_LATER')" value="   LATER   "></TMPL_UNLESS>
    </td>
    </tr>
    </table>
    <TMPL_INCLUDE NAME="manage_account_bottom.tpl">
<!-- end: $RCSfile: verify_teaser.tpl,v $ -->
