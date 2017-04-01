<TMPL_IF NAME=IM_ON_AVM_SEARCH>
<td width="52"><a href="javascript:void(0);" onMouseOver="showavm('show_avm_search');"><img src="<TMPL_VAR NAME=IMGPATH>/avms_tab_over.gif" id="show_avm_search" name="show_avm_search" width="52" height="32" border="0"></a></td>
<TMPL_ELSE>
<td width="52"><a href="<TMPL_UNLESS DELETE_DISABLED>javascript:send_event('SEARCH/SHOW_AVM')<TMPL_ELSE>javascript:send_pulldown_event('avm')</TMPL_UNLESS>;" onMouseOver="show_avm_search.src='<TMPL_VAR NAME=IMGPATH>/avms_tab_over.gif';showavm('show_avm_search');" onMouseOut="show_avm_search.src='<TMPL_VAR NAME=IMGPATH>/avms_tab.gif';"><img src="<TMPL_VAR NAME=IMGPATH>/avms_tab.gif" id="show_avm_search" name="show_avm_search" width="52" height="32" border="0"></a></td>
</TMPL_IF>
