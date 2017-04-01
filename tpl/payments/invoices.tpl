<!-- payments/invoices.tpl -->
	    <table>
	    <tr bgcolor="#CFCFCF">
	    <th class="smallfont1">Invoice #</th>
	    <th class="smallfont1">Date</th>
	    <th class="smallfont1">Balance</th>
	    <th class="smallfont1">Amount to Apply</th>
	    <th class="smallfont1">Pay All <input type="checkbox" name="PAY_ALL" onClick="check_all_invoices()"></th>
	    </tr>
      <TMPL_LOOP NAME=INVOICES>
	    <tr bgcolor="#ffffff">
	    <td class="smallfont1"><TMPL_VAR NAME=INVOICE_NUMBER></td>
	    <td class="smallfont1"><TMPL_VAR NAME=INVOICE_DATE></td>
	    <!--<td><TMPL_VAR NAME=BALANCE></td>-->
      <input type="hidden" name="INVOICE_AMOUNT_<TMPL_VAR NAME=INVOICE_ID>" value="<TMPL_VAR NAME=BALANCE>">
      <input type="hidden" name="INVOICE_IDS" value="<TMPL_VAR NAME=INVOICE_ID>">
	    <td class="smallfont1"><TMPL_VAR NAME=BALANCE_DISP></td>
	    <td class="smallfont1"><input type="text" name="INVOICE_PAY_AMOUNT_<TMPL_VAR NAME=INVOICE_ID>" size="20" maxlength="15" onBlur="calc_total()" value="<TMPL_VAR NAME="PAY_AMOUNT">"></td>
      <td class="smallfont1" align="center"><input type="checkbox" name="PAY_INVOICE_<TMPL_VAR NAME=INVOICE_ID>" onClick="set_line_item(<TMPL_VAR NAME=INVOICE_ID>)"></td>
	    </tr>
      </TMPL_LOOP>
	    <tr bgcolor="#ffffff">
	    <td class="smallfont1" colspan="3">Pre-Pay Amount</td>
	    <td class="smallfont1"><input type="text" name="PRE_PAY_AMOUNT" size="20" maxlength="15" onBlur="calc_total()" value="<TMPL_VAR NAME="PRE_PAY_AMOUNT">"></td>
      <td class="smallfont1">&nbsp;</td>
	    </tr>
	    <tr bgcolor="#ffffff">
	    <td class="smallfont1" colspan="3" align="right">Total Payment:</td>
	    <td class="smallfont1"><input readonly="1" type="text"  name="TOTAL_AMOUNT" size="20" maxlength="15" value="<TMPL_VAR NAME="TOTAL_AMOUNT">"></td>
      <td class="smallfont1">&nbsp;</td>
	    </tr>
	    </table>	
<!-- END  payments/invoices.tpl -->
