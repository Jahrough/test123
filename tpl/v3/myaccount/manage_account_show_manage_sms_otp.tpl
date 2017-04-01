<!-- begin manage_account_show_manage_sms_otp.tpl -->
<INPUT type="hidden" name="LOGINID">
<INPUT type="hidden" name="TOKENID">
<INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<INPUT type="hidden" name="TOKEN_TYPE">
<INPUT type="hidden" name="ALT_TOKEN_DETAILS">

<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.dataTables.js"></script>
<script>
var userList;
$j(function() {
    userList = $j('#userList').DataTable({
        "lengthMenu": [25, 50, 100, 400],
    });
});

</script>


<div class="myaccount-section-title"><TMPL_VAR NAME=SMS_OTP_EVENT_TITLE> Multi-Factor Security Token </div>

<table border="0" cellpadding="0" cellspacing="0" class="w100pc">
  <tr>
    <td align="center" valign="top" class="pd15">

   <fieldset class="mgt15">

     <TMPL_INCLUDE NAME=myaccount/myaccount_messages.tpl>

        <table class="myaccountbody">
        <tr>
            <tr><td>&nbsp;</td></tr>
            <TMPL_UNLESS NAME="MFA_MACHINE_ACTIVATE_ENABLED">
            <td colspan="5" class="myaccountlabel">Please click on the phone number to <TMPL_VAR NAME=SMS_OTP_EVENT_TITLE>  the token<TMPL_IF NAME="OTP_LOGINID"> for <TMPL_VAR NAME="OTP_LOGINID"></TMPL_IF>.</td>
            <TMPL_ELSE">
            <td colspan="5" class="myaccountlabel">Please click on any token details to <TMPL_VAR NAME=SMS_OTP_EVENT_TITLE> settings<TMPL_IF NAME="OTP_LOGINID"> for <TMPL_VAR NAME="OTP_LOGINID"></TMPL_IF>.</td>
            </TMPL_UNLESS>
        </tr>

         <TMPL_IF NAME="USER_LOOP">
         <tr>
            <td colspan="5" valign="top">
                <table id="userList" class="display">
                <thead>
                      <tr class="myaccountbody">
                        <td><b>Login ID</b></td>
                        <td><b>First Name</b></td>
                        <td><b>Last Name</b></td>
                        <TMPL_UNLESS NAME="MFA_MACHINE_ACTIVATE_ENABLED">
                          <td><b>Phone Number</b></TD>
                          <td><b>Carrier</b></TD>
                        <TMPL_ELSE>
                          <td><b>Primary Phone</b></TD>
                          <td><b>Alternate Phone</b></TD>
                          <td><b>Email</b></TD>
                        </TMPL_UNLESS>
                      </tr>
                </thead>

                <TMPL_LOOP NAME="USER_LOOP">
                <tr>
                    <td><TMPL_VAR NAME="LOGINID"></td>
                    <td><TMPL_VAR NAME="FIRSTNAME"></td>
                    <td><TMPL_VAR NAME="LASTNAME"></td>
                    <TMPL_IF NAME="UNASSIGN_SMS_OTP_TOKEN_FLAG">
                      <td><a class="myaccLnk" href="javascript:resync_token('<TMPL_VAR NAME=SMS_OTP_EVENT>','<TMPL_VAR NAME=LOGINID>','<TMPL_VAR NAME=DETAIL1>')" onClick="return confirm('WARNING: You have selected to un-assign Phone \'<TMPL_VAR NAME=PHONE>\' from \'<TMPL_VAR NAME=LOGINID>\'.\n\nIf you wish to continue with this un-assignment, click Ok.\n\nIf you wish to cancel this un-assignment, click Cancel.');" ><TMPL_VAR NAME="PHONE"></a></td>
                    <TMPL_ELSE>
                      <td><a class="myaccLnk" href="javascript:resync_token('<TMPL_VAR NAME=SMS_OTP_EVENT>','<TMPL_VAR NAME=LOGINID>','<TMPL_VAR NAME=DETAIL1>','TOKEN_TYPE_PHONE')"><TMPL_VAR NAME="PHONE"></a></td>
                    </TMPL_IF>
                    <TMPL_UNLESS NAME="MFA_MACHINE_ACTIVATE_ENABLED">
                      <td><TMPL_VAR NAME="PROVIDER"></td>
                    <TMPL_ELSE>
                      <td><a class="myaccLnk" href="javascript:resync_token('<TMPL_VAR NAME=SMS_OTP_EVENT>','<TMPL_VAR NAME=LOGINID>','<TMPL_VAR NAME=DETAIL1>','TOKEN_TYPE_ALT_PHONE','<TMPL_VAR NAME=PHONE_VOICE1>')"><TMPL_VAR NAME="PHONE_VOICE1"></a></td>
                      <td><a class="myaccLnk" href="javascript:resync_token('<TMPL_VAR NAME=SMS_OTP_EVENT>','<TMPL_VAR NAME=LOGINID>','<TMPL_VAR NAME=DETAIL1>','TOKEN_TYPE_EMAIL','<TMPL_VAR NAME=USER_EMAIL>')"><TMPL_VAR NAME="USER_EMAIL"></a></td>
                    </TMPL_UNLESS>
                </tr>
                </TMPL_LOOP>
                </table>
            </td>
         </tr>
         </TMPL_IF>

          <tr>
             <td colspan="5" align="center">
                  <TMPL_IF NAME="MANAGE_USER_OTP">
                    <TMPL_IF NAME="MANAGE_USER_DISPLAY_FLAG">
                    <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="edit_user('MANAGE/UPDATE_USER','<TMPL_VAR NAME=LOGINID>');">
                <TMPL_ELSE>
                    <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP_USER');">
                </TMPL_IF>

                  <TMPL_ELSE>
                  <input name="BUTTON" class="btn red-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_SMS_OTP');">
                  </TMPL_IF>
            </td>
         </tr>

        </table>
</fieldset>
    </td>
  </tr>
</table>

<!-- manage_account_show_manage_sms_otp.tpl -->
