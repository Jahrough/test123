<!-- begin manage_account_show_report_lost_broken_otp_form.tpl -->
<INPUT type="hidden" name="LOGINID">
<INPUT type="hidden" name="TOKENID">
<INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">

<div class="myaccount-section-title">Report Lost or Broken Token</div>

<table border="0" cellpadding="0" cellspacing="0" class="w100pc">
  <tr>
    <td align="center" valign="top" class="pd15">

<fieldset>
        <table border="0" cellpadding="10" cellspacing="10" width="856" class="myaccountbody">

		 </tr>
		 <TMPL_IF NAME="USER_LOOP">
		 <tr>
			<td colspan="4" align="center" valign="top">
			   <table border="1" cellpadding="3" cellspacing="0" width="600" >
			   <tr bgcolor="#CFCFCF">
			       <td colspan="4" class="myaccountlabel" align=center NOWRAP>Please click on the token ID to Report Lost or Broken Token <TMPL_IF NAME="OTP_LOGINID">for <TMPL_VAR NAME=OTP_LOGINID></TMPL_IF>.</td>
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
				<td class="unifont1"><a class="myaccLnk" href="javascript:resync_token('OTP/SHOW_LOST_BROKEN_TOKEN_FORM','<TMPL_VAR NAME=LOGINID>','<TMPL_VAR NAME=DETAIL1>')"><TMPL_VAR NAME="DETAIL1"></a></td>
				</tr>
			   </TMPL_LOOP>
		           </table>
			</td>
		 </tr>
		 </TMPL_IF>

		  <tr>
			 <td colspan="4" align="center">
			      <TMPL_IF NAME="MANAGE_USER_OTP">
			      <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP_USER');" >
			      <TMPL_ELSE>
			      <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP');" >
			      </TMPL_IF>
             </td>
		 </tr>

		 <tr>
                    <td align="center" class="myaccounttitle" colspan="4">
			 <br><br><br><br><br><br><br><br><br><br>
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

<!-- manage_account_show_report_lost_broken_otp_form.tpl -->
