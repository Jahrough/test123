<!-- begin manage_account_show_test_otp_token_form.tpl -->
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
        <td colspan="2" align="center" class="myaccounttitle"><br>Test Security Token</td>
      </tr>

      <tr>
        <td>
        <table border=0 cellpadding="2" cellspacing="0" width="750">
	  <tr>
	  <td width="2">&nbsp</td>
	  <td colspan=2 class="unifont1" > 
	   <br>Enter the token provided One Time Password to test the token assigned to <b>'<TMPL_VAR NAME="LOGINID">'</b>.
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
            <td class="unifont1" align="left" colspan=2><br>A new One Time Password must be obtained for this test.  Push the button on the token and enter the One Time Password displayed on the token below:
	    </td>
          </tr>

          <tr>
	     <td width="2">&nbsp;</td>
            <td class="unifont1" align="left" width="165"><b>Token Number:</b></TD>
            <td align="left" width="585"><INPUT TYPE="text" NAME="OTP1" SIZE="20" VALUE="" MAXLENGTH=30> <div class="unifont7pt">[Ex: 123456]</div></TD>
          </tr>

	</table>

        <table border=0 cellpadding="2" cellspacing="0" width="750">
	<tr><td height="10"></td>
	<tr>
	  <tr>
	    <td align="right">
	      <input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/SHOW_TEST_OTP_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
	      </td>
	      <td align="left">
	      <input name="BUTTON" class="rb_otp_small" type="button" value="Test" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="return validateOTPTestForm('OTP/TEST_OTP'); disable_buttons('BUTTON'); " onMouseOut="flip_style(this,'rb_otp_small');">
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

<!-- manage_account_show_test_otp_token_form.tpl-->
