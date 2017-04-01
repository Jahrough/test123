<!-- begin billing/balance_summary.tpl -->
<TMPL_UNLESS NAME="HIDE_BILLING_DETAILS">
    <fieldset class="fieldset-with-datatable">
        <div class="inline-block mgb10"><legend>Account Summary</legend></div>
        <table id="account-summary" class="fieldset-datatable w100pc display">
            <thead>
                <tr bgcolor="#CFCFCF">
                    <th id="col_lst_inv_bal"><b>Last Invoice Balance</b></th>
                    <th id="col_lst_pay_act"><b>Last Payment Activity Posted</b></th>
                    <th id="col_acct_bal"><b>Account Balance</b></th>
                    <TMPL_IF NAME="PENDING_CHECK_AMOUNT"><th id="col_pend_act_act"><b>Pending Online Payments</b></th></TMPL_IF>
                    <th id="col_amt_ovdu"><b>Amount Overdue</b></th>
                </tr>
            </thead>
            <tbody>
                <tr bgcolor="#ffffff">
                    <td headers="col_lst_inv_bal">&nbsp;<TMPL_VAR NAME=LAST_INV_AMOUNT> <i>(<TMPL_VAR NAME=LAST_BILL_DATE>)</i></td>
                    <td headers="col_lst_pay_act">&nbsp;<TMPL_VAR NAME=LAST_PAY_AMOUNT> <i>(<TMPL_VAR NAME=LAST_PAY_DATE>)</i></td>
                    <td headers="col_acct_bal">&nbsp;<TMPL_VAR NAME=AR_BALANCE></td>
                    <TMPL_IF NAME="PENDING_CHECK_AMOUNT"><td headers="col_pend_act_act">&nbsp;<TMPL_VAR NAME=PENDING_CHECK_AMOUNT></td></TMPL_IF>
                    <td headers="col_amt_ovdu">&nbsp;<TMPL_VAR NAME=AMT_OVERDUE></td>
                </tr>
            </tbody>
        </table>
    </fieldset>
</TMPL_UNLESS>
<!-- end billing/balance_summary.tpl -->
