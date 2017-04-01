<!-- BEGIN confirm_send_ids.tpl -->
<TMPL_INCLUDE NAME="header.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>
<INPUT TYPE=HIDDEN NAME=EDIT_ORDER VALUE=1>
<INPUT TYPE=HIDDEN NAME=COMPANY_ID VALUE=<TMPL_VAR COMPANY_ID>>
<div align="center">

<table border="0" width="600">

  <tr>
    <td class="batchbanner" align="center"><br><b>Thank you for using Accurint Watchdog</b></td>
  </tr>
  <TMPL_IF IS_FTP>
  <tr>
    <td class="largefont1" align="center"><br>The Unique Ids for Order Name <b><TMPL_VAR ORDER_NAME></b> / Watchdog ID: <b><TMPL_VAR CONFIRM_NUM></b> has been sent to the outgoing folder of your FTP account: <b><TMPL_VAR FTP_ACCOUNT></b>&nbsp;&nbsp;</td>
  </tr>
  <TMPL_ELSE>
    <td class="largefont1" align="center"><br>The Unique Ids for Order Name <b><TMPL_VAR ORDER_NAME></b> / Watchdog ID: <b><TMPL_VAR CONFIRM_NUM></b> has been sent to: <b><TMPL_VAR EMAIL_ADDR></b>&nbsp;&nbsp;</td>
  </TMPL_IF>

</table>

<table border="0" width="600">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="30" border="0"></td>
  </tr>
  <tr>
    <td valign="bottom" align="center"><a href="javascript:window.close()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/close.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:printit()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/print.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('WATCHDOG/SAVE_START');"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/eao_button.gif" width="135" height="29" border="0"></a></td>
  </tr>
</table>

</div>

<TMPL_INCLUDE NAME="footer.tpl">
<!-- END confirm_send_ids.tpl -->
