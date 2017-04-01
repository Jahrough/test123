<!-- begin manage_account_show_edit_mfa_otp_token_form.tpl -->

<input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">
<input type="hidden" NAME="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<INPUT type="hidden" NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type="hidden" NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<INPUT type="hidden" NAME="NEW_MFA" VALUE="<TMPL_VAR NAME=MFA_MACHINE_ACTIVATE_ENABLED>">

<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td align="center" class="myaccounttitle"><br>De-Authorize User Device Status</td>
      </tr>

      <TMPL_IF NAME="MESSAGE">
        <tr>
          <td align="center" class="myaccounttitle" width="856"><br></TD>
        </tr>
        <tr>
        <TMPL_IF NAME="TASK_FAILURE">
          <td align="center" class="errormessage">
            <span class="errormessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
          </td>
        <TMPL_ELSE>
          <td align="center" class="warningmessage">
            <span class="successmessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
          </td>
        </TMPL_IF>
        </tr>
      </TMPL_IF>

      <tr>
        <td align="center">
          <table border=0 cellpadding="2" cellspacing="0" class="myaccountbody">
            <tr><td>&nbsp;</td></tr>
            <tr>
              <td>
                <table width="640" border=0 cellpadding="2" cellspacing="0" class="myaccountbody">
                  <tr height="26">
                    <td class="unifont1" align="center" width="30%">&nbsp;<b><TMPL_VAR NAME="LOGINID"></b></td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
          <br>
          <table border=0 cellpadding="2" cellspacing="0">
            <tr>
              <td align="right"><input name="BUTTON" class="myaccount-btn darkgrey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP_USER');disable_buttons('BUTTON');"></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<!-- end manage_account_show_edit_mfa_otp_token_form.tpl -->
