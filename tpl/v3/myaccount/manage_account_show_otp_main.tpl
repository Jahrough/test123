<!-- begin myaccount/manage_account_show_otp_main.tpl -->

<div class="myaccount-section-title">Manage Security Tokens </div>


<table border=0 cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top" class="pd15">
    <INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
    <INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">

    <TMPL_IF NAME="MANAGE_USER_OTP">
    <table border="0" cellpadding="2" cellspacing="5" class="myaccountbody">
        <tr>
            <td width="2">&nbsp</td>
            <td colspan=2 class="unifont1" > 
                <br>You can perform the following operations for the user: <b>'<TMPL_VAR NAME="OTP_LOGINID">'</b>.
            </td>
        </tr>
    </table>
    <TMPL_ELSE>


        <table border="0" cellpadding="2" cellspacing="5" class="myaccountbody">
        <TMPL_IF NAME="MESSAGE">

        <TMPL_ELSE>
           <tr>
            <td colspan="4" align="left" class="unifont1" valign="top">
                <br> 
                This page provides you the controls you need for managing your Secure Token users within Accurint.
                <br><br>You can perform the following operations:
            </td>

            <td>
                <table border="0">
                    <tr>
                    <td width="150" "FONT-SIZE: 9pt; FONT-FAMILY: Arial;background:#FFFFFF" valign="top">
                      <img alt="" src="<TMPL_VAR NAME="IMGPATH">/otp_security_token.png">
                    </td>   
                    </tr>
                    <tr>
                    <td align="center" class="myaccountlabel" valign="middle">
                    <b>
                        <a class="myaccLnk" href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/bps/faq_2factorFAQAdmin.html','2FactorFAQAdmin',750,500,0,0,0,1,1,0);void(0);">Need Assistance?</a></td>
                    </b>
                    </td>   
                    </tr>
                </table>

            </td>   
            <td width="14" class="alternatebody" valign="top">&nbsp;</td>
              </tr>
        </TMPL_IF>
        </table>
   </TMPL_IF>
   

       <fieldset class="mgt15">
    <table border="0" cellpadding="2" cellspacing="5" class="myaccountbody">
              
          <TMPL_IF NAME="ADD_NEW_TOKEN">
          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
        <td width="200" ><input name="BUTTON" tabindex="1" class="btn darkgrey-btn" type="button" value="Assign Security Token" onClick="send_event('OTP/SHOW_ADD_OTP_FORM');" ></td>
        <td align="left" class="unifont1" valign="center"><br> 
        Assign a security token to a user.  Only one token is allowed per user.
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>
          </TMPL_IF>

          <TMPL_IF NAME="SEARCH_TOKEN">
          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
        <!--<td width="150" align="center"><a href="javascript:send_event('OTP/SHOW_SEARCH_OTP_FORM');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/search_security_token.gif" alt="Search Security Token"></a></td>-->
            <td><input name="BUTTON" tabindex="2" class="btn darkgrey-btn" type="button" value="Search Security Token" onClick="send_event('OTP/SHOW_SEARCH_OTP_FORM');" ></td>
        <td align="left" class="unifont1" valign="center"><br> 
        Search for security token information by assigned User or Token ID.
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>
          </TMPL_IF>

          <TMPL_IF NAME="MODIFY_EXISTING_TOKEN">
          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
        <!--<td width="150" align="center"><a href="javascript:send_event('OTP/SHOW_UNASSIGN_OTP_FORM');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/unassign_security_token.gif" alt="Unassign Security Token"></a></td>-->
            <td><input name="BUTTON" tabindex="3" class="btn darkgrey-btn" type="button" value="Unassign Security Token" onClick="send_event('OTP/SHOW_UNASSIGN_OTP_FORM');" ></td>
        <td align="left" class="unifont1" valign="center"><br> 
        Unassign a security token from a user. An unassigned token can be re-assigned to another user.
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>

          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
        <td><input name="BUTTON" tabindex="4" class="btn darkgrey-btn" type="button" value="Re-Sync Security Token" onClick="send_event('OTP/SHOW_REASSIGN_OTP_FORM');" ></td>
        <td align="left" class="unifont1" valign="center"><br> 
        Resynchronize an assigned security token. This may need to be performed if a user has accidentally hit the token button too many times, the token has not been used for an extended period of time, or the user has entered incorrect token codes numerous times in a single session.   It is recommended you try to re-sync a token prior to reporting it broken.
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>

          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
            <td><input name="BUTTON" tabindex="4" class="btn darkgrey-btn" type="button" value="Test Security Token" onClick="send_event('OTP/SHOW_TEST_OTP_FORM');" ></td>
        <td align="left" class="unifont1" valign="center"><br> 
           <TMPL_UNLESS name="MFA_MACHINE_ACTIVATE_ENABLED">
           Test an assigned security token.  Testing is only allowed on assigned tokens.
           <TMPL_ELSE>
           Test a security token.
           </TMPL_UNLESS>
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>

          <tr>
        <td Height="10" >&nbsp;</td>
          </tr>

          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
        <td align="left" colspan="2" class="unifont1"><b><a class="myaccLnk" href="javascript:send_event('OTP/SHOW_LOST_BROKEN_FORM');">Click here</a></b> to report a lost or broken Security Token.</td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>
              </TMPL_IF>

          <tr>
        <td Height="10" >&nbsp;</td>
          </tr>

    </table>

    <table border="0" cellpadding="2" cellspacing="5" class="myaccountbody">
      <TMPL_IF NAME="OTP_SEARCH_FLAG">
      <tr>
      <td colspan="2" align="right"><input name="BUTTON" tabindex="5" class="btn red-btn" type="button" value="<< Back" onClick="send_event('MANAGE/MANAGE_ACCOUNTS');"class="btn red-btn" ></td>
      <td colspan="2" align="left"><input name="BUTTON" tabindex="5" class="btn red-btn" type="button" value="Search" onClick="send_event('OTP/SHOW_SEARCH_OTP_FORM');"class="btn red-btn" ></td>
      </tr>
      <TMPL_ElSE>
      <tr>
      <td colspan="4" align="center"><input name="BUTTON" tabindex="5" class="btn red-btn" type="button" value="<< Back" onClick="send_event('MANAGE/MANAGE_ACCOUNTS');"class="btn red-btn" ></td>
      </tr>
      </TMPL_IF>
    </table>

      </td>
    </tr>
    </table>
</table>
    </fieldset>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>


<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- manage_account_show_otp_main.tpl -->
