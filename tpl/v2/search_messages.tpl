<!-- begin search messages -->

    <TMPL_UNLESS NAME="DONT_SHOW_NEXT_PAGE_LINKS">
	<span class="grey">
        <TMPL_IF IRB><FONT size=3></TMPL_IF>
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
    <TMPL_IF IRB></FONT></TMPL_IF>
    </span>
    </TMPL_UNLESS>

<!-- end search messages -->
