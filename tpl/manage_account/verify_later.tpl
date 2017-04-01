<!-- begin: $RCSfile: verify_later.tpl,v $ -->
    <TMPL_INCLUDE NAME="manage_account_top.tpl">
    <table cellpadding="0" cellspacing="0" border="0" width="90%">
    <tr>
    <td width="100%">
    <div class="infobox">
    For security purposes you must verify your user accounts once per quarter. User verification must 
be completed by <TMPL_VAR NAME=DEADLINE> (<TMPL_VAR NAME=DAYS_REMAINING> days remaining) or Social Security and Drivers License numbers will be masked on your account. 
    </div>
    </td>
    </tr>
    <tr>
    <td width="100%" align="center">
    <br>
    <input type="hidden" name="CONFIRMED_LATER" value="1">
    <input type="button" onclick="send_event('MANAGE/VERIFY_ACCOUNT_LATER');" value="   CONTINUE   ">
    </td>
    </tr>
    </table>
    <TMPL_INCLUDE NAME="manage_account_bottom.tpl">
<!-- end: $RCSfile: verify_later.tpl,v $ -->
