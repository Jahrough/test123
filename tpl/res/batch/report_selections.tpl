<!-- BEGIN report_selections.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="RESBATCH/REPORT_SELECTIONS_NEXT">
<INPUT TYPE=HIDDEN NAME=IS_BATCH_ADMIN VALUE="<TMPL_VAR NAME='BATCH_ADMIN'>">
<INPUT TYPE=HIDDEN NAME=BATCH_REPORT_OPTIONS VALUE="1">

<div align="center">
    <TMPL_INCLUDE NAME="report_selections_body.tpl">
    <td width="250" class="smallfont1" valign="top"><br><br><a href="javascript:send_event('RESBATCH/REPORT_SELECTIONS_PREVIOUS')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:submit_report_event('RESBATCH/REPORT_SELECTIONS_NEXT')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>

  </tr>
</table>
<br>
</div>
<input type=hidden name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END report_selections.tpl -->
