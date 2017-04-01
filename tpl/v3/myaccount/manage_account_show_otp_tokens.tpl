<!-- begin manage_account_show_otp_tokens.tpl -->
<INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
<INPUT type="hidden" name="OTP_SEARCH_FLAG">
<INPUT type="hidden" name="OTP_USERID">

<div class="myaccount-section-title">Assign Security Token</div>

<table border="0" cellpadding="0" cellspacing="0" class="w100pc">
  <tr>
    <td align="center" valign="top" class="pd15">

<fieldset>

    <table cellpadding="0" cellspacing="0" class="myaccountbody">
      <tr>
        <td>
        <table border=0 cellpadding="2" cellspacing="0">
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

        <table border=0 cellpadding="2" cellspacing="0">
	<tr><td height="10"></td>
	<tr>
	  <tr>
	      <td align="right">
		      <TMPL_IF NAME="MANAGE_USER_OTP">
		      <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="edit_user('MANAGE/UPDATE_USER','<TMPL_VAR NAME=OTP_LOGINID>');" >
		      <TMPL_ELSE>
		      <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP');" >
		      </TMPL_IF>
	      </td>
	      <td align="left">
	      <input name="BUTTON" class="btn red-btn" type="button" value="Save" onClick="return validateOTPForm('OTP/SAVE_OTP'); " >
            </td>
	  </tr>
        </table>

	<br><br><br>
	</td>
      </tr>
    </table>
</fieldset>
    </td>
  </tr>
</table>


<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- manage_account_show_otp_tokens.tpl -->
