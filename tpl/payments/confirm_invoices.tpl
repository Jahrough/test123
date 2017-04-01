<!-- payments/confirm_invoices.tpl -->
	    <tr bgcolor="#CFCFCF">
	    <th class="smallfont1" align="left">Invoice #</th>
	    <th class="smallfont1" align="left">Date</th>
	    <th class="smallfont1" align="left">Balance</th>
	    <th class="smallfont1" align="left">Amount to Apply</th>
	    </tr>
      <TMPL_LOOP NAME=INVOICES>
	    <tr bgcolor="#ffffff">
	    <td class="smallfont1"><TMPL_VAR NAME=INVOICE_NUMBER></td>
	    <td class="smallfont1"><TMPL_VAR NAME=INVOICE_DATE></td>
	    <td class="smallfont1"><TMPL_VAR NAME=BALANCE_DISP></td>
	    <td class="smallfont1"><TMPL_VAR NAME=PAY_AMOUNT_DISP></td>
      <input type="hidden"  name="INVOICE_PAY_AMOUNT_<TMPL_VAR NAME=INVOICE_ID>" size="20" maxlength="15" value="<TMPL_VAR NAME="PAY_AMOUNT">">
	    </tr>
      </TMPL_LOOP>
	    <tr bgcolor="#ffffff">
	    <td class="smallfont1" colspan="3" align="right">Total Invoice Payments:</td>
	    <td class="smallfont1"><TMPL_VAR NAME=TOTAL_INVOICE_AMOUNT_DSP></td>
	    </tr>
      <TMPL_IF NAME=OVER_PAY_AMOUNT>
	    <tr bgcolor="#ffffff">
	    <td class="smallfont1" colspan="3" align="right">Total Pre-Payments:</td>
	    <td class="smallfont1"><TMPL_VAR NAME=OVER_PAY_AMOUNT_DSP></td>
	    </tr>
      </TMPL_IF>
      <tr>
	    <td colspan="4"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
      </tr>
      <tr>
      <td class="smallfont1" colspan="4" align="center" width="100%">I authorize Seisint Inc. to charge my <TMPL_IF NAME=CC_AMOUNT>credit card<TMPL_ELSE>bank account</TMPL_IF> as listed. I guarantee and warrant I have legal ownership of this account or am legally authorized to enter into this payment agreement with Seisint Inc.</td>
      </tr>
      <tr>
      <td colspan="4"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
      </tr>
      <tr>
      <td class="smallfont1" colspan="4" align="center" width="100%">If approved, the payment will be credited to your account within 48 hours. A service fee of $25.00 will be charged for each returned payment. If you have any questions on this program, please contact Customer Accounting at 866-818-0183 0183 8:30am-5:00pm EST M-F or email us at <a href="mailto:Customer_Accounting@Seisint.com">Customer_Accounting@Seisint.com</a>.</td>
      </tr>
      <tr>
      <td colspan="4"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
      </tr>
<!-- END  payments/confirm_invoices.tpl -->
