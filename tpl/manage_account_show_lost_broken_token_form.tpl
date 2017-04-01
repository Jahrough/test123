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
        <td colspan="2" align="center" class="myaccounttitle"><br>Report Lost or Broken Token</td>
      </tr>

      <TMPL_IF NAME="MESSAGE">
      <TR>
        <td align="center" class="myaccounttitle" width="856" colspan="2"><br><span class="myaccountalert"><TMPL_VAR NAME="MESSAGE">&nbsp;</span></TD>
      </TR>
      </TMPL_IF>
      <tr>
        <td>
        <table border=0 cellpadding="2" cellspacing="0" width="750">
	  <tr>
	  <td width="2">&nbsp</td>
	  <td colspan=2 class="unifont1" > 
	   <br>This setup process will allow you to report lost or broken security token of user <b>'<TMPL_VAR NAME="LOGINID">'</b>. Please provide us with the following information to complete the process:
	   </td>
	  </tr>

          <tr>
	  <td colspan="3">&nbsp;</td>
          </tr>
    </table>

        <table border=0 cellpadding="2" cellspacing="0" width="400">
          <tr>
	  <td width="2">&nbsp;</td>
          <td class="unifont1" align="left" width="75"><br> <b>Token ID: </b>
          <td class="unifont1" align="left" width="325" colspan="2"><br> <b><TMPL_VAR NAME="TOKENID"></b>
	  </td>
          </tr>
       </table>

        <table border=0 cellpadding="2" cellspacing="0" width="400">
          <tr>
	    <td width="2">&nbsp;</td>
            <td class="unifont1" align="left" width="200"><br> <b>Please select the reason:</b>
            <td class="unifont1" align="left" width="100"><input style="font-size: 9pt" type="RADIO" name="OTP_REASON" value="BROKEN" checked size="10">Broken</td>
            <td class="unifont1" align="left" width="200"><input style="font-size: 9pt" type="RADIO" name="OTP_REASON" value="LOST" size="10">Lost</td>
	    </td>
          </tr>
     </table>

        <table border=0 cellpadding="2" cellspacing="0" width="750">
	<tr><td height="10"></td></tr>
	  <tr>
	    <td align="right">
	      <input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/SHOW_LOST_BROKEN_FORM');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
	      </td>
	      <td align="left">
	      <input name="BUTTON" class="rb_otp_small" type="button" value="Save " onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/SAVE_LOST_BROKEN_TOKEN');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
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
