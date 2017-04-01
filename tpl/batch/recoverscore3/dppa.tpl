<!-- BEGIN dppa.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="RECOVERSCORE3BATCH/SAVE_DPPA">
<INPUT TYPE=HIDDEN NAME=DPPA VALUE="">

<script src="<TMPL_VAR NAME='JSPATH'>/dppa_info.js"></script>

<div align="center">

<br>

<table border="0" cellpadding="0" cellspacing="0" width="600">
  <tr>
    <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" class="glbtitle"><br><b>DPPA Compliance</b></td>
  </tr>
</table>

<TMPL_IF FREE_TRIAL_CREDITS>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
</table>
</TMPL_IF>

<TMPL_INCLUDE NAME="dppa_body.tpl">

<br>

<table border="0" cellpadding="10" cellspacing="0" width="600">
  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('RECOVERSCORE3BATCH/GLB')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>

</div>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END dppa.tpl -->
