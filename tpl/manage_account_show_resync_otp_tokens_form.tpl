<!-- begin manage_account_show_resync_otp_tokens_form.tpl -->
<input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">
<input type="hidden" NAME="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">

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
        <td colspan="2" align="center" class="myaccounttitle"><br>Re-Sync Security Token</td>
      </tr>

      <!--<TMPL_IF NAME="MESSAGE">
      <TR>
        <td align="center" class="myaccounttitle" width="856" colspan="2"><br><span class="myaccountalert"><TMPL_VAR NAME="MESSAGE">&nbsp;</span></TD>
      </TR>
      </TMPL_IF>-->

    <TMPL_IF NAME="MESSAGE">
      <tr>
        <td align="center" class="myaccounttitle" width="856" colspan="2"><br></TD>		
      </tr>
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
    </TMPL_IF>

      <tr>
        <td>
        <table border=0 cellpadding="2" cellspacing="0" width="750">
	  <tr>
	  <td width="2">&nbsp</td>
	  <td colspan=2 class="unifont1" > 
	   <br>Resynchronize an assigned security token. This may need to be performed if a user has accidentally hit the token button too many times, the token has not been used for an extended period of time, or the user has entered incorrect token codes numerous times in a single session.   It is recommended you try to re-sync a token prior to reporting it broken.
	   </td>
	  </tr>
	  
          <tr>
	  <td colspan="3">&nbsp;</td>
          </tr>
          <tr>
	  <td width="2">&nbsp;</td>
            <td class="unifont1" align="left" ><br> <b>Login ID: </b>
            <td class="unifont1" align="left" ><br> <b><TMPL_VAR NAME="LOGINID"></b>
	    </td>
          </tr>

          <tr>
	  <td width="2">&nbsp;</td>
            <td class="unifont1" align="left" ><br> <b>Token ID: </b>
            <td class="unifont1" align="left" ><br> <b><TMPL_VAR NAME="TOKENID"></b>
	    </td>
          </tr>

          <tr>
	     <td width="2">&nbsp;</td>
            <td class="unifont1" align="left" colspan=2><br><b>1.</b> Push the button on the token and enter the One Time Password displayed on the token below:
	    </td>
          </tr>

          <tr>
	     <td width="2">&nbsp;</td>
            <td class="unifont1" align="left" width="165"><b>First Token Number:</b></TD>
            <td align="left" width="585"><INPUT TYPE="text" NAME="OTP1" SIZE="20" VALUE="" MAXLENGTH=30> <div class="unifont7pt">[Ex: 123456]</div></TD>
          </tr>
          <tr>
	     <td width="2">&nbsp;</td>
            <td class="unifont1" align="left" colspan=2><br><b>2.</b> Wait 30 seconds until the token is not displaying the previous One Time Password. Push the button on the token and enter the new One Time Password below:
	    </td>
          </tr>
          <tr>
	     <td width="2">&nbsp;</td>

            <td class="unifont1" align="left" width="165"><b>Second Token Number:</b></TD>
            <td align="left" width="585"><INPUT TYPE="text" NAME="OTP2" SIZE="20" VALUE="" MAXLENGTH=30>  <div class="unifont7pt">[Ex: 567890]</div></TD>
          </tr>


        </table>

        <table border=0 cellpadding="2" cellspacing="0" width="750">
	<tr><td height="10"></td>
	<tr>
	  <tr>
	    <td align="right">
	      <input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/SHOW_REASSIGN_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
	      </td>
	      <td align="left">
	      <input name="BUTTON" class="rb_otp_small" type="button" value="Save" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="return validateOTPForm('OTP/RESYNC_OTP'); disable_buttons('BUTTON'); " onMouseOut="flip_style(this,'rb_otp_small');">
            </td>
	  </tr>
        </table>
	<br><br><br>
	</td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- manage_account_show_resync_otp_tokens_form.tpl-->
