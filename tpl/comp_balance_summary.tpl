<!-- begin comp_balance_summary.tpl -->

    <table border="1" cellpadding="3" cellspacing="0" bgcolor="#ffffff" width="100%">
      <tr>
        <td class="unifont1" bgcolor="#cfcfcf"><b>Last Invoice Balance:</b></td>
        <td class="unifont1">&nbsp;<TMPL_VAR NAME=LAST_INV_AMOUNT> <i>(<TMPL_VAR NAME=LAST_BILL_DATE>)</i></td>
      </tr>
      <tr>
        <td class="unifont1" bgcolor="#cfcfcf"><b>Last Payment Activity Posted:</b></td>
        <td class="unifont1">&nbsp;<TMPL_VAR NAME=LAST_PAY_AMOUNT> <i>(<TMPL_VAR NAME=LAST_PAY_DATE>)</i></td>
      </tr>
      <tr>
        <td class="unifont1" bgcolor="#cfcfcf"><b>Account Balance:</b></td>
        <td class="unifont1">&nbsp;<TMPL_VAR NAME=AR_BALANCE></td>
      </tr>
      <TMPL_IF NAME="PENDING_CHECK_AMOUNT">
      <tr>
        <td class="unifont1" bgcolor="#cfcfcf"><b>Pending Check Payment:</b></td>
        <td class="unifont1">&nbsp;<TMPL_VAR NAME=PENDING_CHECK_AMOUNT></td
      </tr>
      </TMPL_IF>
      <tr>
        <td class="unifont1" bgcolor="#cfcfcf"><b>Amount Overdue:</b></td>
        <td class="unifont1">&nbsp;<TMPL_VAR NAME=AMT_OVERDUE></td>
      </tr>
    </table>

<!-- end comp_balance_summary.tpl -->
