<!-- BEGIN new_glb.tpl -->
<TMPL_INCLUDE NAME="_new_header.tpl">

<input type="hidden" name="EVENT" VALUE="<TMPL_VAR NEXT_EVENT>">
<input type="hidden" name="GLB">

<div align="center">

<br>

<table border="0" cellpadding="0" cellspacing="0" width="600">
      <TMPL_UNLESS SHOW_BATCH_UPDATE>
	<tr>
		<td class="wizardcounter" width="100%" align="left"><TMPL_INCLUDE NAME="_new_navigation.tpl"></b></td>
	</tr>
      <TMPL_ELSE>
        <tr>
          <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="instantid/title_line.tpl"></td>
        </tr>
        <tr>
          <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="./help_contact_line.tpl"></td>
        </tr>
      </TMPL_UNLESS>
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

<TMPL_INCLUDE NAME="new_glb_body.tpl">

<br>

<table border="0" cellpadding="10" cellspacing="0" width="600">
  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('<TMPL_VAR PREV_EVENT>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>

</div>

<TMPL_IF NAME="ERROR_MESG">
  <script>alert('<TMPL_VAR NAME="ERROR_MESG">');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="_new_footer.tpl">
<!-- END new_glb.tpl -->
