<!-- begin: $RCSfile: verify_lost_lock.tpl,v $ -->
    <TMPL_INCLUDE NAME="manage_account_top.tpl">
    <table cellpadding="0" cellspacing="0" border="0" width="90%">
    <tr>
    <td width="100%">
    <div class="infobox">
    Another admin in your account has started the process of verification. 
    </div>
    </td>
    </tr>
    <tr>
    <td width="100%" align="center">
    <br>
    <TMPL_IF NAME="STANDALONE">
    <input type="button" onclick="send_event('LOGIN/CONTINUE')" value="   CONTINUE   ">
    <TMPL_ELSE>
    <input type="button" onclick="send_event('MANAGE/VERIFICATION_LOG')" value="   CONTINUE   ">
    </TMPL_IF>
    </td>
    </tr>
    </table>
    <TMPL_INCLUDE NAME="manage_account_bottom.tpl">
<!-- end: $RCSfile: verify_lost_lock.tpl,v $ -->
