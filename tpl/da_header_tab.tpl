<TMPL_IF NAME=IM_ON_DA_SEARCH>
<td width="63"><a href="javascript:void(0);" onMouseOver="showda('show_da_search', '<TMPL_VAR NAME="DA_ONLY">', '<TMPL_VAR NAME="ENABLE_LOCATE_PLUS_SEARCH">', <TMPL_VAR NAME=SHOW_RT_PHONE> );"><img src="<TMPL_VAR NAME=IMGPATH>/da_search_tab_over.gif" id="show_da_search" name="show_da_search" height="32" border="0"></a></td>
<TMPL_ELSE>
<td width="63"><a href="<TMPL_UNLESS DELETE_DISABLED>javascript:send_event('<TMPL_IF NAME=SHOW_RT_PHONE>SEARCH/SHOW_RT_PHONE<TMPL_ELSE><TMPL_IF NAME="IRS">SEARCH/SHOW_DA_BASIC<TMPL_ELSE>SEARCH/SHOW_DA_WIRELESS</TMPL_IF></TMPL_IF>')<TMPL_ELSE>javascript:send_pulldown_event('da')</TMPL_UNLESS>;" onMouseOver="show_da_search.src='<TMPL_VAR NAME=IMGPATH>/da_search_tab_over.gif';showda('show_da_search', '<TMPL_VAR NAME="DA_ONLY">', '<TMPL_VAR NAME="ENABLE_LOCATE_PLUS_SEARCH">', <TMPL_VAR NAME=SHOW_RT_PHONE> );" onMouseOut="show_da_search.src='<TMPL_VAR NAME=IMGPATH>/da_search_tab.gif';"><img src="<TMPL_VAR NAME=IMGPATH>/da_search_tab.gif" id="show_da_search" name="show_da_search" height="32" border="0"></a></td>
</TMPL_IF>

