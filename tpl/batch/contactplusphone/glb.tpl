<!-- BEGIN glb.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="CONTACTPLUSPHONEADDRESSBATCH/SAVE_GLB">
<INPUT TYPE=HIDDEN NAME=GLB VALUE="">

<div align="center">

<br>

<table border="0" cellpadding="0" cellspacing="0" width="600">
  <tr>
    <td class="wizardcounter" width="30%" align="left" nowrap="nowrap"><TMPL_INCLUDE NAME="title_line.tpl"></td>
  </tr>
  <tr>
   <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE NAME="../help_contact_line.tpl"></td>
  </tr>
</table>
  
<br>

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" class="glbtitle"><br><b>Permitted Use Certification</b></td>
  </tr>
</table>

<TMPL_IF FREE_TRIAL_CREDITS>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
</table>
</TMPL_IF>

<TMPL_INCLUDE NAME="../glb_body.tpl">

<br>

<table border="0" cellpadding="10" cellspacing="0" width="600">
  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('CONTACTPLUSPHONEADDRESSBATCH/<TMPL_UNLESS SHOW_BATCH_UPDATE>APPEND_FIELDS<TMPL_ELSE>DEFINE_FILE</TMPL_UNLESS>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>

</div>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END glb.tpl -->
