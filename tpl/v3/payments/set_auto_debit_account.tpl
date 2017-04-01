<!-- payments/set_auto_debit_account.tpl -->
<table border=1>
  <tr>
	  <td class="smallfont1" colspan="2" align="center" width="100%">
      <table>
	<tr>
	<td class="smallfont1" colspan="2" align="center" width="100%">Do you want this account to be used for auto-debit paying of your monthly invoices?</td>
	</tr>
	<tr>
  <INPUT type=hidden NAME="AUTO_DEBIT_ACCOUNT_INITIAL" VALUE="<TMPL_VAR NAME=AUTO_DEBIT>">
	<td class="smallfont1" align="center"><input type="radio" name="AUTO_DEBIT_ACCOUNT" value="1"<TMPL_IF AUTO_DEBIT> checked</TMPL_IF>> Yes</td>
  <td class="smallfont1" align="center"><input type="radio" name="AUTO_DEBIT_ACCOUNT" value="0"<TMPL_UNLESS AUTO_DEBIT> checked</TMPL_UNLESS>> No</td>
	</tr>
	<tr>
	<td class="smallfont1" colspan="2" align="center" width="100%">I authorize Seisint Inc. to charge my <TMPL_IF NAME=CC_AMOUNT>credit card<TMPL_ELSE>bank account</TMPL_IF> as listed on a monthly recurring basis for the month end account balance.  This agreement will continue to apply for any subsequent charges until revoked by me in writing with a 10 day notice.  I agree I will not dispute any charges from Seisint Inc. unless I have already attempted in good faith to rectify the situation directly with Seisint Inc. and those attempts have failed.  I guarantee and warrant I have legal ownership of this account or am legally authorized to enter into this payment agreement with Seisint Inc.</td>
	</tr>
  <tr><td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td></tr>
  <tr>
  <td class="smallfont1" colspan="2" align="center" width="100%">If you choose to have this service, our bank will charge your <TMPL_IF NAME=CC_AMOUNT>credit card<TMPL_ELSE>bank account</TMPL_IF> for your month end account balance for free.  If approved, the payment will be credited to your account within 5 business days after month end.  You hereby agree we will charge a service fee of $25.00 for each returned payment.</td>
	</tr>
  <tr><td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td></tr>
	<tr>
	<td class="smallfont1" colspan="2" align="center" width="100%">If you have any questions on this program, please contact Customer Accounting at 866-818-0183 8:30am-5:00pm EST M-F or email us at <a href="mailto:Customer_Accounting@Seisint.com">Customer_Accounting@Seisint.com</a>.</td>
	</tr>
      </table>
    </td>
  </tr>
</table>
<!-- END  payments/set_auto_debit_account.tpl -->
