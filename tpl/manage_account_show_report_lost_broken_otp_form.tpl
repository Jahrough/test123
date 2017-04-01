<!-- begin manage_account_show_unassign_otp_form.tpl -->
<INPUT type="hidden" name="LOGINID">
<INPUT type="hidden" name="TOKENID">
<INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">

<table border=0 cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">

    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>
	
    <table border=0 cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td colspan="2" align="center" class="myaccounttitle"><br>Report Lost or Broken Token</td>
      </tr>

      <tr>
        <td align="center" class="myaccounttitle" width="856" colspan="2"><br></TD>		
      </tr>

    </table>

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

        <table border="0" cellpadding="10" cellspacing="10" width="856" class="myaccountbody">

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
				<!--<td class="unifont1"><a href="javascript:resync_token('OTP/SAVE_LOST_BROKEN_FORM','<TMPL_VAR NAME=LOGINID>','<TMPL_VAR NAME=DETAIL1>')" onClick="return confirm('You are about to report a Lost/Broken token ID \'<TMPL_VAR NAME=DETAIL1>\' from the user \'<TMPL_VAR NAME=LOGINID>\'.\n\nIf you are SURE YOU WANT TO REPORT, Click the OK Button below.\n\nIf you wish NOT TO REPORT, click CANCEL below.');" ><TMPL_VAR NAME="DETAIL1"></a></td>-->
				<td class="unifont1"><a href="javascript:resync_token('OTP/SHOW_LOST_BROKEN_TOKEN_FORM','<TMPL_VAR NAME=LOGINID>','<TMPL_VAR NAME=DETAIL1>')"><TMPL_VAR NAME="DETAIL1"></a></td>
				</tr>
			   </TMPL_LOOP>
		           </table>
			</td>
		 </tr>
		 </TMPL_IF>

		  <tr>
			 <td colspan="4" align="center">
			      <TMPL_IF NAME="MANAGE_USER_OTP">
			      <input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/MANAGE_OTP_USER');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
			      <TMPL_ELSE>
			      <input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/MANAGE_OTP');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
			      </TMPL_IF>
			      <!--<input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/MANAGE_OTP');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">-->
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
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- manage_account_show_unassign_otp_form.tpl -->
