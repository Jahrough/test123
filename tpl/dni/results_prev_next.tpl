<td align="left" valign="center" class="title_text" colspan="32">
<TMPL_IF NAME="NO_SEARCH_RESULTS_FOUND">
&nbsp;
<TMPL_ELSE>
<table border="0" cellpadding="1" cellspacing="0" class="title_text">
<tr>
<td width="50">&nbsp;</td>
<td width="200" align="center"><b>Records</b>&nbsp;&nbsp;<b><TMPL_VAR NAME="STARTING_COUNT_DISPLAYED"></b>&nbsp;&nbsp;to&nbsp;&nbsp;<b><TMPL_VAR NAME="ENDING_COUNT_DISPLAYED"></b>&nbsp;&nbsp;of&nbsp;&nbsp;<b><TMPL_VAR NAME="TOTAL_RECS"></b>&nbsp;</td>
<td width="29" align="center"><TMPL_IF NAME="PREV_ACTIVE"><a href="javascript:send_event('<TMPL_VAR NAME='DEFAULT_EVENT'>_PREV')"><img src="<TMPL_VAR NAME='IMGPATH'>/btn_back.gif" height="14" width="29" border="0"></a><TMPL_ELSE><img src="<TMPL_VAR NAME='IMGPATH'>/spacer.gif" height="14" width="29" border="0"></TMPL_IF></td>
<td width="10" align="center">&nbsp;</td>
<td width="29" align="center"><TMPL_IF NAME="NEXT_ACTIVE"><a href="javascript:send_event('<TMPL_VAR NAME='DEFAULT_EVENT'>_NEXT')"><img src="<TMPL_VAR NAME='IMGPATH'>/btn_next.gif" height="14" width="29" border="0"></a><TMPL_ELSE><img src="<TMPL_VAR NAME='IMGPATH'>/spacer.gif" height="14" width="29" border="0"></TMPL_IF></td>
</tr>
</table>
</TMPL_IF>
</td>
