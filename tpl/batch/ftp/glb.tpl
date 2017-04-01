<!-- BEGIN glb.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCHFTP/SAVE_GLB">
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

<TMPL_IF businessbatch>
	<TMPL_INCLUDE NAME="../glb_body.tpl">
<TMPL_ELSE>
<TMPL_IF businesscollectionsbatch>
	<TMPL_INCLUDE NAME="../glb_body.tpl">
<TMPL_ELSE>
<TMPL_IF phonebatch>
	<TMPL_INCLUDE NAME="../glb_body.tpl">
<TMPL_ELSE>
<TMPL_IF surecontactbatch>
    <TMPL_INCLUDE NAME="../surecontact/glb_body.tpl">
<TMPL_ELSE>
<TMPL_IF sureplacementbatch>
    <TMPL_INCLUDE NAME="../sureplacement/glb_body.tpl">
<TMPL_ELSE>
<TMPL_IF recoverscorebatch>
    <TMPL_INCLUDE NAME="../recoverscore/glb_body.tpl">
<TMPL_ELSE>
	<TMPL_INCLUDE NAME="../glb_body.tpl">
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>

<br>

<table border="0" cellpadding="10" cellspacing="0" width="600">
  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('BATCHFTP/<TMPL_IF PREV_BUTTON><TMPL_VAR PREV_BUTTON><TMPL_ELSE>APPEND_FIELDS</TMPL_IF>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>

</div>

<TMPL_INCLUDE NAME="../batch_footer.tpl">
<!-- END ../glb.tpl -->
