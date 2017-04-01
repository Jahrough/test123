<!-- begin manage_account_show_reassign_otp_form.tpl -->
<INPUT type="hidden" name="LOGINID">
<INPUT type="hidden" name="TOKENID">
<INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">


<div class="myaccount-section-title">Re-Sync Security Token </div>

<table border="0" cellpadding="0" cellspacing="0" class="w100pc">
  <tr>
    <td align="center" valign="top" class="pd15">

<fieldset>

    <table border="0" cellpadding="2" cellspacing="5" class="myaccountbody">
	<tr>
	<td align="left" class="unifont1" colspan="4">
	 Resynchronize an assigned security token. This may need to be performed if a user has accidentally hit the token button too many times, the token has not been used for an extended period of time, or the user has entered incorrect token codes numerous times in a single session.   It is recommended you try to re-sync a token prior to reporting it broken.
	</td>
	</tr>
    </table>

        <table border="0" cellpadding="10" cellspacing="10" class="myaccountbody">

                 <!--<TMPL_IF NAME="MESSAGE">
		    <tr>
                       <td align="center" class="myaccounttitle" colspan="4">
			 <span class="myaccountalert"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
		      </td>
                    </tr>
                 </TMPL_IF>-->

		 </tr>
		 <TMPL_IF NAME="USER_LOOP">
		 <tr>
			<td colspan="4" align="center" valign="top">
			   <table border="1"  width="600" cellpadding="3" cellspacing="2">
			   <tr bgcolor="#CFCFCF">
			       <td colspan="4" class="myaccountlabel" align=center NOWRAP>Please click on the token ID to Re-Sync the token<TMPL_IF NAME="OTP_LOGINID"> for <TMPL_VAR NAME="OTP_LOGINID"></TMPL_IF>.</td>
							                           </tr>

                           <tr bgcolor="#CFCFCF">
                             <td class="smallfont1" align=center NOWRAP><b>Login ID</b></td>
		             <td class="smallfont1" align=center NOWRAP><b>First Name</b></td>
		             <td class="smallfont1" align=center NOWRAP><b>Last Name</b></td>
            		     <td class="smallfont1" align=center NOWRAP><b>Token ID</b></TD>
                           </tr>

			   <TMPL_LOOP NAME="USER_LOOP">
				<tr bgcolor="#ffffff">
				<td class="unifont1"><TMPL_VAR NAME="LOGINID"></td>
				<td class="unifont1"><TMPL_VAR NAME="FIRSTNAME"></td>
				<td class="unifont1"><TMPL_VAR NAME="LASTNAME"></td>
				<td class="unifont1"><a class="myaccLnk" href="javascript:resync_token('OTP/SHOW_RESYNC_OTP_TOKENS_FORM','<TMPL_VAR NAME=LOGINID>','<TMPL_VAR NAME=DETAIL1>')"><TMPL_VAR NAME="DETAIL1"></a></td>
				</tr>
			   </TMPL_LOOP>
		           </table>
			</td>
		 </tr>
		 </TMPL_IF>

		  <tr>
			 <td colspan="4" align="center">
			      <TMPL_IF NAME="MANAGE_USER_OTP">
			      <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP_USER');">
			      <TMPL_ELSE>
			      <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP');">
			      </TMPL_IF>
			</td>
		 </tr>
        </table>
      </td>
    </tr>
    </table>

</fieldset>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">


<!-- manage_account_show_otp_main.tpl -->
