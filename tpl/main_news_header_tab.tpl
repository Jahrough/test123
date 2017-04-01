<TMPL_IF NAME=IM_ON_NEWS_SEARCH>
<td width="52"><a href="javascript:void(0);" onMouseOver="shownews('show_news');"><img src="<TMPL_VAR NAME=IMGPATH>/find_news_tab_over.gif" id="show_news" name="show_news" height="32" width="52" border="0"></a></td>
<TMPL_ELSE>
<td width="52"><a href="<TMPL_UNLESS DELETE_DISABLED>javascript:send_event('SEARCH/SHOW_NEWS')<TMPL_ELSE>javascript:void(0)</TMPL_UNLESS>;" onMouseOver="show_news.src='<TMPL_VAR NAME=IMGPATH>/find_news_tab_over.gif';shownews('show_news');" onMouseOut="show_news.src='<TMPL_VAR NAME=IMGPATH>/find_news_tab.gif';"><img src="<TMPL_VAR NAME=IMGPATH>/find_news_tab.gif" id="show_news" name="show_news" height="32" width="52" border="0"></a></td>
</TMPL_IF>
