<!-- BEGIN append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCH/SAVE_CHOOSE_PROCESS">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">

<div align="center">
<br>

<table border="0" cellpadding="0" cellspacing="0" width="600">
  <tr>
    <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
  </tr>
</table>

<br>


    <TMPL_INCLUDE NAME="../instantid/choose_process_body.tpl">

	<!-- use so to avoid js errors -->
	<INPUT TYPE=HIDDEN NAME="BATCH_TOTAL" VALUE="0">

    <td width="250" class="smallfont1" valign="bottom"><br><br><a href="javascript:send_event('BATCHFTP/<TMPL_IF PREV_BUTTON><TMPL_VAR PREV_BUTTON><TMPL_ELSE>CHOOSE_EDITFTP_JOB</TMPL_IF>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCHFTP/<TMPL_IF NEXT_BUTTON><TMPL_VAR NEXT_BUTTON><TMPL_ELSE>SAVE_FILE_INSTANTID</TMPL_IF>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>
<br>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('Please select purpose before proceeding.\n\n');</script>
</TMPL_IF>

<input type=hidden name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_INCLUDE NAME="../batch_footer.tpl">
<!-- END append_fields.tpl -->
