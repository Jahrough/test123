<!-- payments/invoices.tpl -->
<table class="display-not-dataTable-inv">
    <thead>
        <tr>
            <th id="col_inv">Invoice #</th>
            <th id="col_dt">Date</th>
            <th id="col_bal">Balance</th>
            <th id="col_amt_to_pay">Amount to Apply</th>
            <th id="col_pay_all">
                <div class="left mgt3 underline"><label for="py_all">Pay All</label></div>
                <input id="py_all" type="checkbox" name="PAY_ALL" onclick="check_all_invoices();">
            </th>
        </tr>
    </thead>
    <tbody>
        <TMPL_LOOP NAME=INVOICES>
            <tr>
                <td headers="col_inv">
                    <input type="hidden" name="INVOICE_AMOUNT_<TMPL_VAR NAME=INVOICE_ID>" value="<TMPL_VAR NAME=BALANCE>">
                    <input type="hidden" name="INVOICE_IDS" value="<TMPL_VAR NAME=INVOICE_ID>">
                    <TMPL_VAR NAME=INVOICE_NUMBER>
                </td>
                <td headers="col_dt">
                    <TMPL_VAR NAME=INVOICE_DATE>
                </td>
                <td headers="col_bal">
                    <TMPL_VAR NAME=BALANCE_DISP>
                </td>
                <td headers="col_amt_to_pay">
                    <input type="text" name="INVOICE_PAY_AMOUNT_<TMPL_VAR NAME=INVOICE_ID>" size="20" maxlength="15" onBlur="calc_total()" value="<TMPL_VAR NAME="PAY_AMOUNT">">
                </td>
                <td headers="col_pay_all">
                    <label for="py_inv_<TMPL_VAR NAME=INVOICE_ID>" style="display:none">pay all</label>
                    <input id="py_inv_<TMPL_VAR NAME=INVOICE_ID>" type="checkbox" name="PAY_INVOICE_<TMPL_VAR NAME=INVOICE_ID>" onClick="set_line_item( < TMPL_VAR NAME = INVOICE_ID > )">
                </td>
            </tr>
        </TMPL_LOOP>
    </tbody>
    <tr>
        <td colspan="3"><label for="pre_pay_amt">Pre-Pay Amount</label></td>
        <td><input id="pre_pay_amt" type="text" name="PRE_PAY_AMOUNT" size="20" maxlength="15" onBlur="calc_total()" value="<TMPL_VAR NAME="PRE_PAY_AMOUNT">"></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3"><label for="tot_amt">Total Payment:</label></td>
        <td>
            <input id="tot_amt" readonly="1" type="text"  name="TOTAL_AMOUNT" size="20" maxlength="15" value="<TMPL_VAR NAME="TOTAL_AMOUNT">">
        </td>
        <td>&nbsp;</td>
    </tr>
</table>	
<!-- END  payments/invoices.tpl -->
