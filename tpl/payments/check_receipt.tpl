<!-- payments/check_receipt.tpl -->
    <TMPL_INCLUDE NAME="payment_top.tpl">
    <br>
    <table border="0" width="700">
    <tr>
    <td align="center" class="unifont1">
Thank you for your <TMPL_IF NAME="CHECK_RECEIPT">check<TMPL_ELSE>credit card</TMPL_IF> payment of <b><TMPL_VAR NAME="RECEIPT_AMOUNT"></b> on <TMPL_VAR NAME="RECEIPT_DATE">.  Your confirmation number is <b>(#<TMPL_VAR NAME="RECEIPT_NUMBER">)</b>.
<br><br>
Please print this page for your records.
<TMPL_IF NAME="STANDALONE_PAYMENTS">
<br><br>
<table border="0" cellpadding="0" cellspacing="0" width="90%">
  <tr>
    <td class="unifont1">
    <b>PLEASE NOTE:</b><br><br>If your account is inactive and the payment satisfies the outstanding amount due, your account should be activated within 24 hours.&nbsp; If you need more immediate action, please call Customer Accounting Monday through Friday at 866-818-0183 between the hours of 8:00-5:30 EST.
    </td>
  </tr>
</table>
</TMPL_IF>
<br><br>
<TMPL_IF NAME="STANDALONE_PAYMENTS">
<a href="javascript:send_event('LOGOUT');"><img border="0" width="68" height="29" src="<TMPL_VAR NAME="IMGPATH">/log_out.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript: printit();"><img border="0" width="87" height="29" src="<TMPL_VAR NAME="IMGPATH">/print.gif"></a>
<TMPL_ELSE>
<a href="javascript:send_event('BILLING/SUMMARY');"><img border="0" width="61" height="29" src="<TMPL_VAR NAME="IMGPATH">/back.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript: printit();"><img border="0" width="87" height="29" src="<TMPL_VAR NAME="IMGPATH">/print.gif"></a>
</TMPL_IF>
    </td>
    </tr>
    </table>
    <TMPL_INCLUDE NAME="payment_bottom.tpl">
<!--  END payments/check_receipt.tpl -->
