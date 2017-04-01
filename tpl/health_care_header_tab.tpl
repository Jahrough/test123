<TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>
<td width="80"><a href="javascript:void(0);" onMouseOver="showhealthcare('show_health_care_search');"><img src="<TMPL_VAR NAME=IMGPATH>/healthcare_tab_over.gif" id="show_health_care_search" name="show_health_care_search" width="80" height="32" border="0"></a></td>
<TMPL_ELSE>
<td width="80"><a href="<TMPL_UNLESS DELETE_DISABLED>javascript:send_event('SEARCH/SHOW_PROVIDER')<TMPL_ELSE>javascript:void(0)</TMPL_UNLESS>;" onMouseOver="show_health_care_search.src='<TMPL_VAR NAME=IMGPATH>/healthcare_tab_over.gif';showhealthcare('show_health_care_search');" onMouseOut="show_health_care_search.src='<TMPL_VAR NAME=IMGPATH>/healthcare_tab.gif';"><img src="<TMPL_VAR NAME=IMGPATH>/healthcare_tab.gif" id="show_health_care_search" name="show_health_care_search" width="80" height="32" border="0"></a></td>


</TMPL_IF>
