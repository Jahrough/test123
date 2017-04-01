<TMPL_IF NAME=IM_ON_ANTOOLS_SEARCH>
<td width="100"><a href="javascript:void(0);" onMouseOver="showantools('show_antools');"><img src="<TMPL_VAR NAME=IMGPATH>/an_tools_tab_over.gif" id="show_antools" name="show_antools" height="32" width="100" border="0"></a></td>
<TMPL_ELSE>
<td width="100"><a href="<TMPL_UNLESS DELETE_DISABLED>javascript:send_event('SEARCH/SHOW_RATE_EVASION')<TMPL_ELSE>javascript:void(0)</TMPL_UNLESS>;" onMouseOver="show_antools.src='<TMPL_VAR NAME=IMGPATH>/an_tools_tab_over.gif';showantools('show_antools');" onMouseOut="show_antools.src='<TMPL_VAR NAME=IMGPATH>/an_tools_tab.gif';"><img src="<TMPL_VAR NAME=IMGPATH>/an_tools_tab.gif" id="show_antools" name="show_antools" height="32" width="100" border="0"></a></td>
</TMPL_IF>
