<!DOCTYPE html>
<!-- BEGIN glb.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="INSTANTIDBATCH/SAVE_GLB">
<INPUT TYPE=HIDDEN NAME=GLB VALUE="">

<div align="center">

<br>

<table border="0" cellpadding="0" cellspacing="0" width="600">
  <tr>
    <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
  </tr>
</table>

<br>

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="glbtitle"><B>Permitted Use Certification</B></td>
  </tr>
</table>

<TMPL_IF FREE_TRIAL_CREDITS>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
</table>
</TMPL_IF>

<TMPL_INCLUDE NAME="../shared/glb_body.tpl">

<br>

<table border="0" cellpadding="10" cellspacing="0" width="600">
  <tr>
    <td valign="bottom" align="right" width="550"><a class="btn darkgrey-btn" href="javascript:send_event('INSTANTIDBATCH/DEFINE_FILE')">Back</a></td>
  </tr>
</table>

</div>

<TMPL_IF NAME="ERROR_MESG">
  <script>alert('<TMPL_VAR NAME="ERROR_MESG">');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END glb.tpl -->
