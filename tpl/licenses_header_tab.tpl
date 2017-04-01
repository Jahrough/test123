<TMPL_IF NAME=IM_ON_LICENSE_SEARCH>
<td width="66"><a href="javascript:void(0);" onMouseOver="showlicense('show_licenses');"><img src="<TMPL_VAR NAME=IMGPATH>/find_licenses_tab_over.gif" id="show_licenses" name="show_licenses" height="32" width="66" border="0"></a></td>
<TMPL_ELSE>
<td width="66"><a href="<TMPL_UNLESS DELETE_DISABLED>javascript:send_event('WS_SEARCH/SHOW_LICENSE')<TMPL_ELSE>javascript:send_pulldown_event('license')</TMPL_UNLESS>;" onMouseOver="show_licenses.src='<TMPL_VAR NAME=IMGPATH>/find_licenses_tab_over.gif';showlicense('show_licenses');" onMouseOut="show_licenses.src='<TMPL_VAR NAME=IMGPATH>/find_licenses_tab.gif';"><img src="<TMPL_VAR NAME=IMGPATH>/find_licenses_tab.gif" id="show_licenses" name="show_licenses" height="32" width="66" border="0"></a></td>
</TMPL_IF>
