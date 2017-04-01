<!-- begin payment/balance_summary.tpl -->
<TMPL_UNLESS NAME="HIDE_BILLING_DETAILS">
    <table border="0" cellpadding="3" cellspacing="2" width="100%">
    <tr bgcolor="#CFCFCF">
    <td colspan="5" align="left" class="myaccountlabel">Account Summary</td>
    </tr>
    <tr bgcolor="#CFCFCF">
        <td class="smallfont1" nowrap="nowrap"><b>Last Invoice Balance</b></td>
        <td class="smallfont1" nowrap="nowrap"><b>Last Payment Activity Posted</b></td>
        <td class="smallfont1" nowrap="nowrap"><b>Account Balance</b></td>
        <TMPL_IF NAME="PENDING_CHECK_AMOUNT"><td class="smallfont1" nowrap="nowrap"><b>Pending Online Payments</b></td></TMPL_IF>
        <td class="smallfont1" nowrap="nowrap"><b>Amount Overdue</b></td>
    </tr>
    <tr bgcolor="#ffffff">
        <td class="unifont1">&nbsp;<TMPL_VAR NAME=LAST_INV_AMOUNT> <i>(<TMPL_VAR NAME=LAST_BILL_DATE>)</i></td>
        <td class="unifont1">&nbsp;<TMPL_VAR NAME=LAST_PAY_AMOUNT> <i>(<TMPL_VAR NAME=LAST_PAY_DATE>)</i></td>
        <td class="unifont1">&nbsp;<TMPL_VAR NAME=AR_BALANCE></td>
        <TMPL_IF NAME="PENDING_CHECK_AMOUNT"><td class="unifont1">&nbsp;<TMPL_VAR NAME=PENDING_CHECK_AMOUNT></td></TMPL_IF>
        <td class="unifont1">&nbsp;<TMPL_VAR NAME=AMT_OVERDUE></td>
    </tr>
    </table>
</TMPL_UNLESS>

<!-- end payment/balance_summary.tpl -->
