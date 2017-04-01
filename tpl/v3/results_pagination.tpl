<div class="resCountCon">
    <span class="resCount">Results <TMPL_VAR NAME="START_RECORD"> to <TMPL_VAR NAME="END_RECORD"> of <TMPL_IF NAME="SHOW_ALL"><TMPL_VAR NAME="RECORD_COUNT"><TMPL_ELSE><TMPL_IF NAME="MORE_THAN_MAX_GEN">first </TMPL_IF><TMPL_VAR NAME="END_RECORD"></TMPL_IF></span>
        <TMPL_UNLESS NAME="DONT_SHOW_NEXT_PAGE_LINKS">
            <div class="paginationCon">
                <ul class="pagination-ul">
                    <TMPL_IF NAME=PREV_PAGE>
                        <TMPL_INCLUDE NAME=v3/prev_url.tpl>
                    </TMPL_IF>

                    <TMPL_IF NAME="PAGE_LINKS_LOOP">
                        <TMPL_LOOP PAGE_LINKS_LOOP>
                            <TMPL_IF NAME="CURRENT_PAGE">
                               <li class="active"><TMPL_VAR NAME="PAGE"></li>
                            <TMPL_ELSE>
                                <li><a href="javascript:set_nextpage_search(<TMPL_VAR SEARCH_FORM_INDEX>,'<TMPL_VAR SEARCH_NAME>',<TMPL_VAR NAME=PAGE>)"><TMPL_VAR NAME="PAGE"></a></li>
                            </TMPL_IF>
                        </TMPL_LOOP>
                    </TMPL_IF>


                    <TMPL_IF NAME="SHOW_ALL">
                        <TMPL_IF NAME=NEXT_PAGE>
                            <TMPL_INCLUDE NAME=v3/next_url.tpl>
                        </TMPL_IF>
                    </TMPL_IF>
                </ul>
            </div>
        </TMPL_UNLESS>
</div>