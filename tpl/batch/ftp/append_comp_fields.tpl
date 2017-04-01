<!-- BEGIN append_comp_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js">
</script>

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCHFTP/SAVE_APPEND_FIELDS">

<div align="center">

<TMPL_INCLUDE NAME="../append_comp_body.tpl">

<br>

<table border="0" cellpadding="0" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td class="smallfont1" valign="top">Approximate Number of Records: <b><TMPL_VAR NUM_RECS></b><br>Maximum Possible Cost: $ <input type=text name=BATCH_TOTAL size=7 value="<TMPL_VAR NAME=BATCH_TOTAL>" onFocus="this.blur()"><br><b>Note:</b> This is the maximum possible cost based on the estimate of <TMPL_VAR NUM_RECS> records in the file to be processed and assuming a 100% match rate. You will not be charged for options returning no results.<br><br><a href="javascript:send_event('BATCHFTP/OUTPUT_TYPE')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCHFTP/SAVE_APPEND_FIELDS')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
	</td>
  </tr>
</table>

</div>

<TMPL_IF ERROR_MESG>
    <script>alert('Please select purpose before proceeding.\n\n');</script>
</TMPL_IF>

<input type=hidden name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_INCLUDE NAME="../batch_footer.tpl">
<!-- END append_comp_fields.tpl -->
