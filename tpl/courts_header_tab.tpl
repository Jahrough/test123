<TMPL_IF NAME=IM_ON_LEGAL_SEARCH>
<td width="52"><a href="javascript:void(0);" onMouseOver="showcourts('show_courts',<TMPL_IF NAME="INS">1<TMPL_ELSE>0</TMPL_IF>);"><img src="<TMPL_VAR NAME=IMGPATH>/find_courts_tab_over.gif" id="show_courts" name="show_courts" height="32" width="52" border="0"></a></td>
<TMPL_ELSE>
<td width="52"><a href="<TMPL_UNLESS DELETE_DISABLED>javascript:send_event('SEARCH/SHOW_BANKRUPTCY')<TMPL_ELSE>javascript:send_pulldown_event('courts')</TMPL_UNLESS>;" onMouseOver="show_courts.src='<TMPL_VAR NAME=IMGPATH>/find_courts_tab_over.gif';showcourts('show_courts',<TMPL_IF NAME="INS">1<TMPL_ELSE>0</TMPL_IF>);" onMouseOut="show_courts.src='<TMPL_VAR NAME=IMGPATH>/find_courts_tab.gif';"><img src="<TMPL_VAR NAME=IMGPATH>/find_courts_tab.gif" id="show_courts" name="show_courts" height="32" width="52" border="0"></a></td>
</TMPL_IF>
