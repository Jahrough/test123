<!-- payments/confirm_cc_payment.tpl -->
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
	<th class="smallfont1" align="left" colspan="2">Credit Card</th>
	<th class="smallfont1" align="left" colspan="2">Amount</th>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" colspan="2">XXXX-XXXX-XXXX-<TMPL_VAR NAME="LAST4"></td>
	<td class="smallfont1" colspan="2"><TMPL_VAR NAME="CC_AMOUNT_DSP"></td>
	</tr>
      <tr>
	<td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
      </tr>
  <TMPL_INCLUDE NAME="confirm_invoices.tpl">
  <tr><td colspan="4"><TMPL_INCLUDE NAME="set_auto_debit_account.tpl"></td></tr>
	<tr>
	<td class="smallfont1" colspan="4" align="center">Is the above information correct?</td>
	</tr>
	<tr>
	<td colspan="4" align="center" class="smallfont1"> 
	<a href="javascript: send_payment_event('PAYMENT/POST_CC_PAYMENT');" tabindex="20"><img src="<TMPL_VAR NAME="IMGPATH">/yes.gif" height="29" width="54" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('PAYMENT/SHOW_CC_PAYMENT');" tabindex="10"><img src="<TMPL_VAR NAME="IMGPATH">/no.gif" height="29" width="54" border="0"></a>
	</td>
	</tr>
	</table>

	<!-- cc hidden -->
	    <input type="hidden" name="PAYMENT_FORM_ID" value="<TMPL_VAR NAME="PAYMENT_FORM_ID">">
	    <input type="hidden" name="CC_AMOUNT" value="<TMPL_VAR NAME="CC_AMOUNT">">
	    <input type="hidden" name="PAY_CREDITCARDID" value="<TMPL_VAR NAME="CREDITCARDID">">
	    <input type="hidden" name="OVER_PAY_AMOUNT" value="<TMPL_VAR NAME="OVER_PAY_AMOUNT">">
	    <input type="hidden" name="OVER_PAY_AMOUNT_DSP" value="<TMPL_VAR NAME="OVER_PAY_AMOUNT_DSP">">
	<!-- end cc payment -->
</center>
<TMPL_INCLUDE NAME="payment_bottom.tpl">
<!-- END payments/confirm_cc_payment.tpl -->
