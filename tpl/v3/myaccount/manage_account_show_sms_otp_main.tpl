<!-- begin manage_account_show_sms_otp_main.tpl -->

<TMPL_IF SA_DISABLED>
  <TMPL_INCLUDE NAME="myaccount/sa_disabled_message.tpl">
<TMPL_ELSE>
<div class="myaccount-section-title">Manage Multi-Factor Security Tokens </div>


<table border=0 cellpadding="0" cellspacing="0" width="98%;">
  <tr>
    <td valign="top" class="pd15">

    <INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
    <INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
    <INPUT type=hidden NAME="OTP_USERID" VALUE="<TMPL_VAR NAME=OTP_USERID>">

    <TMPL_INCLUDE NAME=myaccount/myaccount_messages.tpl>

    <fieldset class="mgt15">
        <style>
            table#mfsTokens td{
                padding-left:6px;
                padding-bottom:10px;
            }
        </style>
        <TMPL_IF NAME="MANAGE_USER_OTP">
          <table border="0" cellpadding="2" cellspacing="5" class="myaccountbody">
            <TMPL_IF NAME="ERROR_MESSAGE">
            <tr>
                <td colspan=2 class="errormessage" ><br/><TMPL_VAR NAME="ERROR_MESSAGE"></td>
            </tr>
            </TMPL_IF>
            <tr>
                <td colspan=2 class="unifont1" > 
                    <br/>You can perform the following operations for the user: <b>'<TMPL_VAR NAME="OTP_LOGINID">'</b>.<br/><br/>
                </td>
            </tr>
            </table>
        <TMPL_ELSE>
            <table border="0" cellpadding="2" cellspacing="5" class="myaccountbody">
            <TMPL_IF NAME="MESSAGE">
            <TMPL_ELSE>
            <tr>
                <td align="left" class="unifont1" valign="top"><br/> 
                This page provides you the controls you need for managing your Multi-Factor based Secure Token users within Accurint.
                <br/><br/><br/>You can perform the following operations:<br/>
                </td>
            </tr>
            </TMPL_IF>
          </table>
        </TMPL_IF>

        <table id="mfsTokens" style="width:80%;">
            <TMPL_IF NAME="ADD_NEW_TOKEN">
                <tr>
                    <td style="width:300px">
                        <input name="BUTTON" tabindex="4" class="btn darkgrey-btn" style="width:240px" type="button" value="Assign Multi-Factor Security Token" onClick="send_event('OTP/SHOW_ASSIGN_SMS_OTP_FORM');">
                    </td>
                    <td align="left" class="unifont1" valign="center">
                        Assign an assigned security token to active Users of the company.
                    </td>
                </tr>       
            </TMPL_IF>

            <TMPL_IF NAME="MODIFY_EXISTING_TOKEN">
                <tr>
                    <td style="width:300px">
                        <input name="BUTTON" tabindex="4" class="btn darkgrey-btn" style="width:240px" type="button" value="Test Multi-Factor Security Token" onClick="send_event('OTP/SHOW_TEST_SMS_OTP_FORM');">
                    </td>
                    <td align="left" class="unifont1" valign="center">
                        <TMPL_UNLESS name="MFA_MACHINE_ACTIVATE_ENABLED">Test an assigned security token.  Testing is only allowed on assigned tokens.<TMPL_ELSE>Test a security token.</TMPL_UNLESS>
                    </td>
                </tr>
                <tr>
                    <td style="width:300px">
                        <input name="BUTTON" tabindex="4" class="btn darkgrey-btn" style="width:240px" type="button" value="Edit Multi-Factor Security Token" onClick="send_event('OTP/SHOW_EDIT_SMS_OTP_FORM');">
                    </td>
                    <td align="left" class="unifont1" valign="center">
                        <TMPL_UNLESS name="MFA_MACHINE_ACTIVATE_ENABLED">Edit an assigned security token.<TMPL_ELSE>Edit a security token.</TMPL_UNLESS>
                    </td>
                </tr>
            </TMPL_IF>

            <TMPL_IF NAME="MFA_MACHINE_ACTIVATE_ENABLED">
            <tr>
                <td style="width:300px">
                    <input name="BUTTON" tabindex="4" class="btn darkgrey-btn" style="width:240px" type="button" value="De-Authorize User Device" onClick="send_event('OTP/SHOW_MFA_DEAUTHORIZE_FORM');">
                </td>
                <td align="left" class="unifont1" valign="center">De-Authorize User Device.</td>
            </tr>
            </TMPL_IF>

            <TMPL_IF NAME="UNASSIGN_EXISTING_TOKEN">
                <tr>
                    <td style="width:300px">
                        <input name="BUTTON" tabindex="4" class="btn darkgrey-btn" type="button" value="Unassign Multi-Factor Security Token" onClick="send_event('OTP/SHOW_UNASSIGN_SMS_OTP_FORM');">
                    </td>
                    <td align="left" class="unifont1" width="75%" valign="center">
                        Unassign an assigned security token.
                    </td>
                </tr>
            </TMPL_IF>
            <tr><td colspan="2" align="center"><br/>
                <TMPL_IF NAME="MANAGE_USER_OTP">
                    <input name="BUTTON" tabindex="5" class="btn red-btn" type="button" value="<< Back" onClick="send_event('MANAGE/MANAGE_ACCOUNTS');">
                <TMPL_ELSE>
                    <input name="BUTTON" tabindex="5" class="btn red-btn" type="button" value="<< Back" onClick="send_event('OTP/SHOW_OTP_TYPE_SELECTION_FORM');">
                </TMPL_IF>
            </td></tr>
        </table>
    </fieldset>
</td>
</tr>
</table>
</TMPL_IF>
<!-- manage_account_show_sms_otp_main.tpl -->
