<!-- payments/confirm_payment.tpl -->
<TMPL_INCLUDE NAME="payment_top.tpl">
<center>
	<!-- display checking_accounts -->
	<table border="0" cellpadding="3" cellspacing="2" width="50%">
	<tr bgcolor="#CFCFCF">
	<td colspan="4" align="left" class="unifont1" style="font-weight: bold">
	Payment Information
	</td>
	</tr>
	<tr bgcolor="#CFCFCF">
	<th class="smallfont1" align="left">Name On Check</th>
	<th class="smallfont1" align="left">Bank Name</th>
	<th class="smallfont1" align="left">Check Number</th>
	<th class="smallfont1" align="left">Amount</th>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1"><TMPL_VAR NAME="NAME_ON_CHECK"></td>
	<td class="smallfont1"><TMPL_VAR NAME="BANK_NAME"></td>
	<td class="smallfont1"><TMPL_VAR NAME="CHECK_NUMBER"></td>
	<td class="smallfont1"><TMPL_VAR NAME="CHECK_AMOUNT_DSP"></td>
	</tr>
      <tr>
	<td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
      </tr>
  <TMPL_INCLUDE NAME="confirm_invoices.tpl">
  <TMPL_UNLESS HIDE_CHECK_AUTO_PAY>
  <tr><td colspan="4"><TMPL_INCLUDE NAME="set_auto_debit_account.tpl"></td></tr>
      <tr>
	<td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
      </tr>
  </TMPL_UNLESS>
	<tr>
	<td class="smallfont1" colspan="4" align="center">Is the above information correct?</td>
	</tr>
	<tr>
	<td colspan="4" align="center" class="smallfont1">
	<a href="javascript: send_payment_event('PAYMENT/POST_CHECK_PAYMENT');" tabindex="20"><img src="<TMPL_VAR NAME="IMGPATH">/yes.gif" height="29" width="54" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('PAYMENT/SHOW_CHECK_PAYMENT');" tabindex="10"><img src="<TMPL_VAR NAME="IMGPATH">/no.gif" height="29" width="54" border="0"></a>
	</td>
	</tr>
	</table>

	<!-- checking hidden -->


	    <input type="hidden" name="PAYMENT_FORM_ID" value="<TMPL_VAR NAME="PAYMENT_FORM_ID">">
	    <input type="hidden" name="CHECK_NUMBER" value="<TMPL_VAR NAME="CHECK_NUMBER">">
	    <input type="hidden" name="CHECK_AMOUNT" value="<TMPL_VAR NAME="CHECK_AMOUNT">">
	    <input type="hidden" name="PAY_CHECKING_ACCOUNT_ID" value="<TMPL_VAR NAME="CHECKING_ACCOUNT_ID">">
	    <input type="hidden" name="OVER_PAY_AMOUNT" value="<TMPL_VAR NAME="OVER_PAY_AMOUNT">">
	    <input type="hidden" name="OVER_PAY_AMOUNT_DSP" value="<TMPL_VAR NAME="OVER_PAY_AMOUNT_DSP">">
      
	<!-- end check payment -->
</center>
<TMPL_INCLUDE NAME="payment_bottom.tpl">
<!-- END payments/confirm_payment.tpl -->
