<!-- BEGIN recoverscore3/append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js">
</script>

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="RECOVERSCORE3BATCH/SAVE_APPEND_FIELDS">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">

<div align="center">
<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="center" class="batchbanner" colspan="2"><b>Append Fields</b></td>
  </tr>
<!-- BEGIN -->
<TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
</TMPL_IF>
                                                                                                                            
  <tr>
    <td class="largefont1" colspan="2"><br><b>Select the fields you wish to have appended to your file:</b></td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="608">

  <tr>
    <td colspan="2">
    <table cellspacing="5" width="600">
	<tr><td colspan="2">
	    <TMPL_INCLUDE NAME="append_fields_body.tpl">
	    </td>
	</tr>
    </table>
    </td>
  </tr>

  <tr>
    <td width="50"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="50" height="1" border="0"></td>
    <td width="100%" class="smallfont1" valign="top" align="right"><br><br><a href="javascript:send_event('RECOVERSCORE3BATCH/DEFINE_FILE')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('RECOVERSCORE3BATCH/SAVE_APPEND_FIELDS')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>

  </tr>
</table>
<br>
</div>

<input type=hidden name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END recoverscore3/append_fields.tpl -->
