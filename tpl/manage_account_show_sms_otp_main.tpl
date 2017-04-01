<!-- begin manage_account_show_sms_otp_main.tpl -->
<TMPL_IF SA_DISABLED>
  <TMPL_INCLUDE NAME="sa_disabled_message.tpl">
<TMPL_ELSE>
<table border=0 cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">

    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    
    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td colspan="2" align="center" class="myaccounttitle"><br>Manage Multi-Factor Security Tokens </td>
      </tr>

      <tr>
        <td align="center" class="myaccounttitle" width="856" colspan="2"><br></TD>     
      </tr>

    </table>

<INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">

    <TMPL_IF NAME="MESSAGE">
    <table border="0" cellpadding="2" cellspacing="5" width="856" class="myaccountbody">
    <tr>
    <TMPL_IF NAME="TASK_FAILURE">
    <td align="center" class="errormessage" colspan="4">
     <span class="errormessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
    </td>
    <TMPL_ELSE>
    <td align="center" class="successmessage" colspan="4">
     <span class="successmessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
    </td>
    </TMPL_IF>
    </tr>
    </table>
    </TMPL_IF>

    <TMPL_IF NAME="MANAGE_USER_OTP">
    <table border="0" cellpadding="2" cellspacing="5" width="856" class="myaccountbody">
       <TMPL_IF NAME="ERROR_MESSAGE">
      <tr>
      <td width="2">&nbsp</td>
      <td colspan=2 class="errormessage" > 
       <br><TMPL_VAR NAME="ERROR_MESSAGE">
       </td>
      </tr>
       </TMPL_IF>
      <tr>
      <td width="2">&nbsp</td>
      <td colspan=2 class="unifont1" > 
       <br>You can perform the following operations for the user: <b>'<TMPL_VAR NAME="OTP_LOGINID">'</b>.
       </td>
      </tr>
       </table>
    <TMPL_ELSE>
        <table border="0" cellpadding="2" cellspacing="5" width="856" class="myaccountbody">
        <TMPL_IF NAME="MESSAGE">
        <TMPL_ELSE>
              <tr>
            <td width="14" class="alternatebody" valign="top">&nbsp;</td>
            <td align="left" class="unifont1" width="750" valign="top"><br> 
            This page provides you the controls you need for managing your Multi-Factor based Secure Token users within Accurint.
            <br/><br/></br>You can perform the following operations:
            </td>
              </tr>
        </TMPL_IF>
        </table>
   </TMPL_IF>
   
    <table border="0" cellpadding="2" cellspacing="5" width="856" class="myaccountbody">

            <TMPL_IF NAME="ADD_NEW_TOKEN">
          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
            <td><input name="BUTTON" tabindex="4" class="rb_otp" type="button" value="Assign Multi-Factor Security Token" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('OTP/SHOW_ASSIGN_SMS_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp');" style="width:220px"></td>
        <td align="left" class="unifont1" width="500" valign="center"><br> 
        Assign an assigned security token to active Users of the company.
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>       
        </TMPL_IF>

            <TMPL_IF NAME="MODIFY_EXISTING_TOKEN">
          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
            <td><input name="BUTTON" tabindex="4" class="rb_otp" type="button" value="Test Multi-Factor Security Token" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('OTP/SHOW_TEST_SMS_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp');" style="width:220px"></td>
        <td align="left" class="unifont1" width="500" valign="center"><br> 
        <TMPL_UNLESS name="MFA_MACHINE_ACTIVATE_ENABLED">Test an assigned security token.  Testing is only allowed on assigned tokens.<TMPL_ELSE>Test a security token.</TMPL_UNLESS>
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>

          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
            <td><input name="BUTTON" tabindex="4" class="rb_otp" type="button" value="Edit Multi-Factor Security Token" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('OTP/SHOW_EDIT_SMS_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp');" style="width:220px"></td>
        <td align="left" class="unifont1" width="500" valign="center"><br> 
        <TMPL_UNLESS name="MFA_MACHINE_ACTIVATE_ENABLED">Edit an assigned security token.<TMPL_ELSE>Edit a security token.</TMPL_UNLESS>
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>
            </TMPL_IF>

            <TMPL_IF NAME="UNASSIGN_EXISTING_TOKEN">
          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
            <td><input name="BUTTON" tabindex="4" class="rb_otp" type="button" value="Unassign Multi-Factor Security Token" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('OTP/SHOW_UNASSIGN_SMS_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp');" style="width:220px"></td>
        <td align="left" class="unifont1" width="500" valign="center"><br> 
        Unassign an assigned security token.
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>
            </TMPL_IF>

        <TMPL_IF NAME="MFA_MACHINE_ACTIVATE_ENABLED">
          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
            <td><input name="BUTTON" tabindex="5" class="rb_otp" type="button" value="De-Authorize User Device" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('OTP/SHOW_MFA_DEAUTHORIZE_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp');" style="width:220px"></td>
        <td align="left" class="unifont1" width="500" valign="center"><br> 
       De-Authorize User Device.
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>
        </TMPL_IF>

          <tr>
        <td Height="10" >&nbsp;</td>
          </tr>

    </table>

    <table border="0" cellpadding="2" cellspacing="5" width="856" class="myaccountbody">
      <tr>
      <TMPL_IF NAME="MANAGE_USER_OTP">
         <td colspan="4" align="center"><input name="BUTTON" tabindex="6" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('MANAGE/MANAGE_ACCOUNTS');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
      <TMPL_ELSE>
         <td colspan="4" align="center"><input name="BUTTON" tabindex="6" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/SHOW_OTP_TYPE_SELECTION_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
      </TMPL_IF>
      </tr>
    </table>

      </td>
    </tr>
    </table>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">
</TMPL_IF>

<!-- manage_account_show_sms_otp_main.tpl -->
