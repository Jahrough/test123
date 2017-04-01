<!-- begin manage_account_show_otp_tokens.tpl -->
<INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<INPUT type="hidden" name="OTP_SEARCH_FLAG">
<INPUT type="hidden" name="OTP_USERID">

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
        <td colspan="2" align="center" class="myaccounttitle"><br>Assign Security Token</td>
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
	   <TMPL_IF NAME="ASSIGNED_USER_ID">
		<td align="center" class="errormessage" colspan="4">
		 <span class="errormessage"><TMPL_VAR NAME="MESSAGE"> <br/><a href="javascript:unassign_user_token('OTP/SHOW_UNASSIGN_OTP_FORM','<TMPL_VAR NAME=ASSIGNED_USER_ID>')">Click Here </a>to un-assign this token ID first.</span>
		</td>
	   <TMPL_ELSE>
		<td align="center" class="errormessage" colspan="4">
		 <span class="errormessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
		</td>
	   </TMPL_IF>
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
	  <TMPL_IF NAME=MANAGE_USER_OTP>
	   <td colspan=2 class="unifont1" > 
	   <br>This setup process will allow you to associate security token to user <b>'<TMPL_VAR NAME="OTP_LOGINID">'</b> on your account. Please provide us with the following information:
	   </td>
	   <TMPL_ELSE>
	   <td colspan=2 class="unifont1" > 
	   <br>This setup process will allow you to associate security tokens to users on your account. Please select the user and provide us with the following information:
	   </td>
	   </TMPL_IF>
	  </tr>

          <tr>
	  <td colspan="3">&nbsp;</td>
          </tr>

          <tr>
	  <td width="2">&nbsp;</td>
          <td class="unifont1" align="left"><b>1. Select the user:</b> </td>
          <TMPL_IF NAME=MANAGE_USER_OTP>
	  <td class="unifont1" align="left">
	    <TMPL_IF NAME=MANAGE_USER_OTP>
	        <INPUT type=hidden NAME="LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
		<TMPL_VAR NAME="OTP_LOGINID">
            <TMPL_ELSE>
	        An Error Occured. Please go back and try again ! 
	    </TMPL_IF>
	  </td>
	  <TMPL_ELSE>
	  <td class="unifont1" align="left">
               <SELECT NAME=LOGINID>
               <OPTION VALUE="">Select User</OPTION>
		<TMPL_LOOP NAME=USER_SELECT_LOOP>
		<OPTION VALUE="<TMPL_VAR NAME=LOGINID>" <TMPL_IF NAME=SELECTED>SELECTED="SELECTED"</TMPL_IF>> <TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME> (<TMPL_VAR NAME=LOGINID>)</OPTION>
		</TMPL_LOOP>
		</SELECT>
          </td>
	  </TMPL_IF>
          </tr>


          <tr>
	  <td width="2">&nbsp;</td>
            <td class="unifont1" align="left" colspan=2><br><b>2.</b> Enter the Token ID that is located on the back of your token in the field below:
	    </td>
          </tr>

          <tr>
	  <td width="2">&nbsp;</td>
            <td class="unifont1" align="left" width="165"><b>Token ID:</b></td>
            <td align="left" width="585"><INPUT TYPE="text" NAME="TOKENID" SIZE="20" VALUE="<TMPL_VAR NAME="TOKENID">" MAXLENGTH=30 onBlur="this.value=this.value.toUpperCase()"><div class="unifont7pt">[12 character identifier]</div></TD>
          </tr>

          <tr>
	     <td width="2">&nbsp;</td>
            <td class="unifont1" align="left" colspan=2><br><b>3.</b> Push the button on the token and enter the One Time Password displayed on the token below:
	    </td>
          </tr>

          <tr>
	     <td width="2">&nbsp;</td>
            <td class="unifont1" align="left" width="165"><b>First Token Number:</b></TD>
            <td align="left" width="585"><INPUT TYPE="text" NAME="OTP1" SIZE="20" VALUE="" MAXLENGTH=30><div class="unifont7pt">[Ex: 123456]</div></TD>
          </tr>
          <tr>
	     <td width="2">&nbsp;</td>
            <td class="unifont1" align="left" colspan=2><br><b>4.</b> Wait 30 seconds until the token is not displaying the previous One Time Password. Push the button on the token and enter the new One Time Password below:
	    </td>
          </tr>
          <tr>
	     <td width="2">&nbsp;</td>

            <td class="unifont1" align="left" width="165"><b>Second Token Number:</b></TD>
            <td align="left" width="585"><INPUT TYPE="text" NAME="OTP2" SIZE="20" VALUE="" MAXLENGTH=30><div class="unifont7pt">[Ex: 567890]</div></TD>
          </tr>
        </table>

        <table border=0 cellpadding="2" cellspacing="0" width="750">
	<tr><td height="10"></td>
	<tr>
	  <tr>
	      <td align="right">
		      <TMPL_IF NAME="MANAGE_USER_OTP">
		      <!--<input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/MANAGE_OTP_USER');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">-->
		      <input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="edit_user('MANAGE/UPDATE_USER','<TMPL_VAR NAME=OTP_LOGINID>');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
		      <TMPL_ELSE>
		      <input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/MANAGE_OTP');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
		      </TMPL_IF>
	      </td>
	      <td align="left">
	      <input name="BUTTON" class="rb_otp_small" type="button" value="Save" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="return validateOTPForm('OTP/SAVE_OTP'); disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
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

<!-- manage_account_show_otp_tokens.tpl -->
