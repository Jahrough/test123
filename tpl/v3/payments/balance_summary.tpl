<!-- START v3/payment/balance_summary.tpl -->
<TMPL_UNLESS NAME="HIDE_BILLING_DETAILS">
    <fieldset>
        <div class="left mgb6"><legend>Account Summary</legend></div>
        <table class="display">
            <thead>
                <tr>
                    <th id="col_lst_inv_bal">Last Invoice Balance</th>
                    <th id="col_lst_pay_act_post">Last Payment Activity Posted</th>
                    <th id="col_act_bal">Account Balance</th>
                    <TMPL_IF NAME="PENDING_CHECK_AMOUNT">
                        <th id="col_pend_online_pay">Pending Online Payments</th>
                    </TMPL_IF>
                    <th id="col_amt_over_due">Amount Overdue</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td headers="col_lst_inv_bal">
                        <TMPL_VAR NAME=LAST_INV_AMOUNT> <i>(<TMPL_VAR NAME=LAST_BILL_DATE>)</i>
                    </td>
                    <td headers="col_lst_pay_act_post">
                        <TMPL_VAR NAME=LAST_PAY_AMOUNT> <i>(<TMPL_VAR NAME=LAST_PAY_DATE>)</i>
                    </td>
                    <td headers="col_act_bal">
                        <TMPL_VAR NAME=AR_BALANCE>
                    </td>
                    <TMPL_IF NAME="PENDING_CHECK_AMOUNT">
                        <td headers="col_pend_online_pay">
                            <TMPL_VAR NAME=PENDING_CHECK_AMOUNT>
                        </td>
                    </TMPL_IF>
                    <td headers="col_amt_over_due">
                        <TMPL_VAR NAME=AMT_OVERDUE>
                    </td>
                </tr>
            </tbody>
        </table>
    </fieldset>
</TMPL_UNLESS>
<!-- END v3/payment/balance_summary.tpl -->
