<!-- BEGIN confirm_xml.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>

<div align="center">

<table border="0" width="600">

  <tr>
    <td class="batchbanner" align="center"><br><b>Thank you for using Accurint</b></td>
  </tr>
  <tr>
    <td class="largefont1" align="center"><br><b>Your batch job confirmation number is:&nbsp;&nbsp;<TMPL_VAR CONFIRM_NUM></b></td>
  </tr>

</table>

<table border="1" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td>
    <table width="500" border="0" cellpadding="2" cellspacing="2">
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Job Name:&nbsp;<b><TMPL_VAR BATCH_NAME></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;XML has been updated. </td>
      </tr>

    </table>
    </td>
  </tr>
</table>

<table border="0" width="600">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="30" border="0"></td>
  </tr>
  <tr>
    <td valign="bottom" align="center"><a href="javascript:window.close()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/close.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:printit()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/print.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCH/START_BATCH');"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/run_another_batch.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>

</div>

<TMPL_INCLUDE NAME="../batch_footer.tpl">
<!-- END confirm_xml.tpl -->
