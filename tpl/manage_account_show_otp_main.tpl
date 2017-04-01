<!-- begin manage_account_show_otp_main.tpl -->
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
        <td colspan="2" align="center" class="myaccounttitle"><br>Manage Security Tokens </td>
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
    <!--<TMPL_IF NAME="MESSAGE">
    <tr>
    <td align="center" class="errormessage" colspan="4">
     <span class="errormessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
    </td>
    </tr>
    </TMPL_IF>-->
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
            <!--<tr>
            <td align="center" class="myaccounttitle" colspan="4">
             <span class="myaccountalert"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
            </td>
            </tr>-->
        <TMPL_ELSE>
              <tr>
            <td width="14" class="alternatebody" valign="top">&nbsp;</td>
            <td align="left" class="unifont1" width="500" valign="top"><br> 
            This page provides you the controls you need for managing your Secure Token users within Accurint.
            <br><br>You can perform the following operations:
            </td>
            <td>
            <table border="0">
                <tr>
                <td width="150" "FONT-SIZE: 9pt; FONT-FAMILY: Arial;background:#FFFFFF" valign="top">
                  <img alt="" src="<TMPL_VAR NAME="IMGPATH">/otp_security_token.gif">
                </td>   
                </tr>
                <tr>
                <td align="center" class="myaccountlabel" valign="middle">
                <b>
                <!--<a href="javascript:general_win('<TMPL_VAR NAME=PDFPATH>/faq/2FactorFAQAdmin.pdf','2FactorFAQ','','',1,1,1,1,1,0);void(0);">Need Assistance?</a>-->
                    <a class="adver" href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/bps/faq_2factorFAQAdmin.html','2FactorFAQAdmin',750,500,0,0,0,1,1,0);void(0);">Need Assistance?</a></td>
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
   
    <table border="0" cellpadding="2" cellspacing="5" width="856" class="myaccountbody">
              
          <TMPL_IF NAME="ADD_NEW_TOKEN">
          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
        <!--<td width="150" align="center"><a href="javascript:send_event('OTP/SHOW_ADD_OTP_FORM');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/assign_security_token.gif" alt="Assign Security Token"></a></td>-->
            <td width="150" ><input name="BUTTON" tabindex="1" class="rb_otp" type="button" value="Assign Security Token" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('OTP/SHOW_ADD_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp');"></td>
        <td align="left" class="unifont1" width="500" valign="center"><br> 
        Assign a security token to a user.  Only one token is allowed per user.
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>
          </TMPL_IF>

          <TMPL_IF NAME="SEARCH_TOKEN">
          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
        <!--<td width="150" align="center"><a href="javascript:send_event('OTP/SHOW_SEARCH_OTP_FORM');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/search_security_token.gif" alt="Search Security Token"></a></td>-->
            <td><input name="BUTTON" tabindex="2" class="rb_otp" type="button" value="Search Security Token" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('OTP/SHOW_SEARCH_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp');"></td>
        <td align="left" class="unifont1" width="500" valign="center"><br> 
        Search for security token information by assigned User or Token ID.
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>
          </TMPL_IF>

          <TMPL_IF NAME="MODIFY_EXISTING_TOKEN">
          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
        <!--<td width="150" align="center"><a href="javascript:send_event('OTP/SHOW_UNASSIGN_OTP_FORM');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/unassign_security_token.gif" alt="Unassign Security Token"></a></td>-->
            <td><input name="BUTTON" tabindex="3" class="rb_otp" type="button" value="Unassign Security Token" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('OTP/SHOW_UNASSIGN_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp');"></td>
        <td align="left" class="unifont1" width="500" valign="center"><br> 
        Unassign a security token from a user. An unassigned token can be re-assigned to another user.
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>

          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
        <!--<td width="150" align="center"><a href="javascript:send_event('OTP/SHOW_REASSIGN_OTP_FORM');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/resync_security_token.gif" alt="Resync Security Token"></a></td>-->
            <td><input name="BUTTON" tabindex="4" class="rb_otp" type="button" value="Re-Sync Security Token" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('OTP/SHOW_REASSIGN_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp');"></td>
        <td align="left" class="unifont1" width="500" valign="center"><br> 
        Resynchronize an assigned security token. This may need to be performed if a user has accidentally hit the token button too many times, the token has not been used for an extended period of time, or the user has entered incorrect token codes numerous times in a single session.   It is recommended you try to re-sync a token prior to reporting it broken.
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>

          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
            <td><input name="BUTTON" tabindex="4" class="rb_otp" type="button" value="Test Security Token" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('OTP/SHOW_TEST_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp');"></td>
        <td align="left" class="unifont1" width="500" valign="center"><br> 
        <TMPL_UNLESS name="MFA_MACHINE_ACTIVATE_ENABLED">
        Test an assigned security token.  Testing is only allowed on assigned tokens.<TMPL_ELSE>Test a security token.</TMPL_UNLESS>
        </td>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>

          <tr>
        <td Height="10" >&nbsp;</td>
          </tr>

          <tr>
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
        <td align="left" colspan="2" class="unifont1"><b><a href="javascript:send_event('OTP/SHOW_LOST_BROKEN_FORM');">Click here</a></b> to report a lost or broken Security Token.</td>
            <!--<td><input name="BUTTON" tabindex="5" class="rb_otp" type="button" value="Report Lost/Broken Token" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('OTP/SHOW_LOST_BROKEN_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp');"></td>
        <td align="left" class="unifont1" width="500" valign="center"><br>Report Lost or Broken Token.</td>-->
        <td width="14" class="alternatebody" valign="top">&nbsp;</td>
          </tr>
              </TMPL_IF>

          <tr>
        <td Height="10" >&nbsp;</td>
          </tr>

    </table>

    <table border="0" cellpadding="2" cellspacing="5" width="856" class="myaccountbody">
      <TMPL_IF NAME="OTP_SEARCH_FLAG">
      <tr>
      <td colspan="2" align="right"><input name="BUTTON" tabindex="5" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('MANAGE/MANAGE_ACCOUNTS');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
      <td colspan="2" align="left"><input name="BUTTON" tabindex="5" class="rb_otp_small" type="button" value="Search" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/SHOW_SEARCH_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
      </tr>
      <TMPL_ElSE>
      <tr>
      <td colspan="4" align="center"><input name="BUTTON" tabindex="5" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('MANAGE/MANAGE_ACCOUNTS');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
      </tr>
      </TMPL_IF>
    </table>

      </td>
    </tr>
    </table>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- manage_account_show_otp_main.tpl -->
