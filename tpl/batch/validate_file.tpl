<!-- BEGIN validate_file.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<INPUT TYPE=HIDDEN NAME=EVENT>
<table border="0" width="600">
<tr>
<td valign=top class="unifont1"><b>Validate File Layout</b></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td valign=top>Examine sample records below.</td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td align="center">
  <table border="1">
  <TMPL_IF PREVIEW_ROWS_HEADER>
   <tr>
  <TMPL_LOOP PREVIEW_ROWS_HEADER>
     <td class="smallfont1" NOWRAP><TMPL_IF FIELD_NAME><TMPL_VAR FIELD_NAME><TMPL_ELSE>&nbsp;</TMPL_IF></td>
  </TMPL_LOOP>
  </TMPL_IF>
   </tr>
  <TMPL_IF PREVIEW_LOOP>
  <TMPL_LOOP PREVIEW_LOOP>
   <TMPL_IF ROW>
   <tr>
   <TMPL_LOOP ROW>
     <td class="smallfont1"><TMPL_IF FIELD><TMPL_VAR FIELD><TMPL_ELSE>&nbsp;</TMPL_IF></td>
   </TMPL_LOOP>
   </tr>
   </TMPL_IF>
  </TMPL_LOOP>
  </TMPL_IF>
  </table>
</td>
<tr><td>&nbsp;</td></tr>
</table>

<table border="0" width="600" height="50">
<tr>
<td valign="bottom" align="right" class="unifont1"><a href="javascript:send_event('BATCH/DEFINE_FILE')">INCORRECT</a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCH/APPEND_FIELDS')">CORRECT</a></td>
</tr>
</table>
<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END validate_file.tpl -->
