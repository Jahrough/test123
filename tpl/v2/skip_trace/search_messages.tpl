<!-- begin search messages -->

	<span class="grey" id="st_page_links">
	<TMPL_IF NAME="PAGE_LINKS_LOOP">Result Page:&nbsp;</TMPL_IF> 
	    <TMPL_IF NAME=PREV_PAGE><TMPL_INCLUDE NAME=prev_url.tpl></TMPL_IF>
		<TMPL_IF NAME="PAGE_LINKS_LOOP">
			<TMPL_LOOP PAGE_LINKS_LOOP>
				<TMPL_IF NAME="CURRENT_PAGE">
				   <TMPL_VAR NAME="PAGE">
				<TMPL_ELSE>
				<a href="javascript:showwaitnew();javascript:set_nextpage_search(<TMPL_VAR SEARCH_FORM_INDEX>,'<TMPL_VAR SEARCH_NAME>',<TMPL_VAR NAME=PAGE>)"><TMPL_VAR NAME="PAGE"></a>
				</TMPL_IF>
			</TMPL_LOOP>
		</TMPL_IF>
       <TMPL_IF NAME="SHOW_ALL"><TMPL_IF NAME=NEXT_PAGE><TMPL_INCLUDE NAME=next_url.tpl></TMPL_IF></TMPL_IF>
    <br/>
    </span>

<!-- end search messages -->
