<div id="search-results-row" class="row<TMPL_IF NAME="FROM_MAIN_MENU"><TMPL_IF NAME="SEARCH_DISABLED"> hidden<TMPL_ELSE><TMPL_IF NAME="SEARCH_ERROR_MESSAGE"> hidden<TMPL_ELSE><TMPL_UNLESS NAME="RESULTS"> hidden</TMPL_UNLESS></TMPL_IF></TMPL_IF><TMPL_ELSE><TMPL_UNLESS NAME="ALLOW_BROWSER_CACHING"><TMPL_IF NAME="SEARCH_DISABLED"> hidden<TMPL_ELSE><TMPL_IF NAME="SEARCH_ERROR_MESSAGE"> hidden<TMPL_ELSE><TMPL_UNLESS NAME="RESULTS"> hidden</TMPL_UNLESS></TMPL_IF></TMPL_IF><TMPL_ELSE><TMPL_UNLESS NAME="SEARCH_ERROR_MESSAGE"><TMPL_UNLESS NAME="RESULTS"> hidden</TMPL_UNLESS></TMPL_UNLESS></TMPL_UNLESS></TMPL_IF>">
    <TMPL_IF NAME="SEARCH_ERROR_MESSAGE">
        <TMPL_INCLUDE NAME="search_error_container.tpl">
    </TMPL_IF>
    <TMPL_IF NAME="RESULTS">
        <TMPL_IF NAME="SHOW_TERMS_BAR">               
            <header class="relative" role="menu-bar">
                <h2 id="search-results-header">
                    <TMPL_INCLUDE NAME="search_form_icons.tpl">
                    <strong>
                        <TMPL_VAR NAME="PAGE_TITLE">
                    </strong>
                    <span class="search-results-count">(<TMPL_VAR NAME="RECORD_COUNT">)</span>
                </h2>
                <TMPL_IF WEB20_PRINT_RESULTS>
                  <div class="clear"/>
                </TMPL_IF>
                <TMPL_IF NAME="SEARCH_TERMS">
                    <div id="search-terms"<TMPL_IF WEB20_PRINT_DOWNLOAD> style="line-height: 20px;"</TMPL_IF>>
                        <span class="search-container">
                            <strong>Search Terms: </strong>
                            <TMPL_LOOP NAME="SEARCH_TERMS"><span class="search-term-label" data-term-name="<TMPL_VAR NAME="TERM_NAME">"><TMPL_VAR NAME="TERM_NAME"></span><span class="colon">:&nbsp;</span><strong class="search-term-text"><TMPL_VAR NAME="TERM_VALUE"></strong><TMPL_UNLESS NAME="__last__"><span class="semicolon">;&nbsp;</span></TMPL_UNLESS></TMPL_LOOP>
                        </span>
                    </div>
                    <TMPL_UNLESS WEB20_PRINT_RESULTS>
                    <span id="terms-tooltip" class="tooltip hover delay-750ms wrapable max-7 tooltip-right hidden">
                        <TMPL_LOOP NAME="SEARCH_TERMS"><span class="search-term-label"><TMPL_VAR NAME="TERM_NAME">:</span><span class="search-term-text"><TMPL_VAR NAME="TERM_VALUE"></span><TMPL_UNLESS NAME="__last__">;</TMPL_UNLESS></TMPL_LOOP>
                    </span>
                    </TMPL_UNLESS>
                </TMPL_IF>
            </header>
        </TMPL_IF>
            <TMPL_UNLESS SHOW_PROP_PICKLIST>
                <TMPL_UNLESS IS_REPORT_IN_TAB>
                <TMPL_UNLESS IS_PRINT_DOWNLOAD_REPORT>
                <header class="relative">
                    <h2 id="search-results-header">
                        <TMPL_INCLUDE NAME="search_form_icons.tpl">
                        <strong>
                            <TMPL_VAR NAME="PAGE_TITLE">
                        </strong>
                        <span class="search-results-count<TMPL_IF NAME=FRAUDPOINT_ATO> hidden</TMPL_IF>"><TMPL_IF RECORD_COUNT>(<TMPL_VAR NAME="RECORD_COUNT">)</TMPL_IF></span>
                    </h2>
                    <TMPL_IF WEB20_PRINT_RESULTS>
                      <div class="clear"/>
                    </TMPL_IF>
                    <TMPL_IF NAME="SEARCH_TERMS">
                        <div id="search-terms"<TMPL_IF WEB20_PRINT_DOWNLOAD> style="line-height: 20px;"</TMPL_IF>>
                            <span class="search-container">
                                <strong>Search Terms: </strong>
                                <TMPL_LOOP NAME="SEARCH_TERMS">
                                    <span data-term-name="<TMPL_VAR NAME="TERM_NAME">"><TMPL_UNLESS NAME="__first__">;&nbsp;</TMPL_UNLESS><TMPL_VAR NAME="TERM_NAME">:&nbsp;</span>
                                    <strong class="search-term-text"><TMPL_VAR NAME="TERM_VALUE"></strong>
                                </TMPL_LOOP>
                            </span>
                        </div>
                        <TMPL_UNLESS WEB20_PRINT_RESULTS>
                        <span id="terms-tooltip" class="tooltip hover delay-750ms wrapable max-7 tooltip-right hidden">
                            <TMPL_LOOP NAME="SEARCH_TERMS"><TMPL_VAR NAME="TERM_NAME">:&nbsp;<strong><TMPL_VAR NAME="TERM_VALUE"></strong><TMPL_UNLESS NAME="__last__">;&nbsp;</TMPL_UNLESS></TMPL_LOOP>
                        </span>
                        </TMPL_UNLESS>
                    </TMPL_IF>
                </header>
                </TMPL_UNLESS>
                </TMPL_UNLESS>
            </TMPL_UNLESS>
        <TMPL_UNLESS WEB20_PRINT_DOWNLOAD>    
        <div class="search-results-actions">
            <TMPL_INCLUDE NAME="search_within_results.tpl">
        </div>
        </TMPL_UNLESS>
        <div id="search-results-con">
            <form name="SEARCH_RESULTS" method="post">
                <TMPL_IF NAME="SHOW_PROP_PICKLIST">
                    <TMPL_INCLUDE name="property_history_plus_picklist_body.tpl">
                <TMPL_ELSE>
                    <TMPL_VAR NAME="RESULTS">
                </TMPL_IF>
                <INPUT type=hidden NAME="GMAP_UNIQUE_ID" VALUE="<TMPL_VAR NAME=GMAP_UNIQUE_ID>">
                <INPUT type=hidden NAME="IMGPATH" VALUE="<TMPL_VAR NAME=IMGPATH>">
            </form>
        </div>
        <TMPL_UNLESS WEB20_PRINT_DOWNLOAD>
        <div class="search-results-actions">
            <TMPL_INCLUDE NAME="search_within_results.tpl">
        </div>
        </TMPL_UNLESS>
        <TMPL_IF NAME="LEGEND_ENABLED">
            <div class="search-results-legend">
                <TMPL_INCLUDE NAME="search_legend.tpl">
            </div>
        </TMPL_IF>
    </TMPL_IF>
</div>
