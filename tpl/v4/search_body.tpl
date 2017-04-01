<span id="web20-search-flags" class="hidden" 
data-search-disabled="<TMPL_IF SEARCH_DISABLED>1<TMPL_ELSE>0</TMPL_IF>" 
data-search-error-message="<TMPL_IF SEARCH_ERROR_MESSAGE>1<TMPL_ELSE>0</TMPL_IF>" 
data-report-error-message="<TMPL_IF REPORT_ERROR_MESSAGE>1<TMPL_ELSE>0</TMPL_IF>" 
data-is-from-main-menu="<TMPL_IF FROM_MAIN_MENU>1<TMPL_ELSE><TMPL_UNLESS ALLOW_BROWSER_CACHING>1<TMPL_ELSE>0</TMPL_UNLESS></TMPL_IF>" 
data-hit-tab-limit="<TMPL_IF HIT_TAB_LIMIT>1<TMPL_ELSE>0</TMPL_IF>" 
data-rerun-display-event="<TMPL_IF RERUN_EVENT_DISPLAY_FORM>1<TMPL_ELSE>0</TMPL_IF>" 
data-web20-page-title="<TMPL_VAR NAME="PAGE_TITLE">" 
data-search-idx="<TMPL_VAR NAME="SEARCH_IDX">"
data-clear-browser-cache-pages="<TMPL_IF CLEAR_BROWSER_CACHE_PAGES><TMPL_VAR NAME="CLEAR_BROWSER_CACHE_PAGES"></TMPL_IF>" 
data-is-clk-search="<TMPL_IF IS_CLICK_SEARCH>1<TMPL_ELSE>0</TMPL_IF>" 
data-is-search-within="<TMPL_IF IS_SEARCH_WITHIN>1<TMPL_ELSE>0</TMPL_IF>"
data-search-within-terms="<TMPL_VAR NAME="SEARCH_WITHIN_TERMS">"
data-webpubrec-request="<TMPL_IF IS_WEBPUBREC_REQUEST>1<TMPL_ELSE>0</TMPL_IF>"
data-is-new-window="<TMPL_IF NEW_WIN>1<TMPL_ELSE>0</TMPL_IF>"
data-active-tab="<TMPL_VAR NAME="ACTIVE_TAB">"
data-tab-id="<TMPL_VAR NAME="TAB_ID">"
data-page="<TMPL_IF NAME="PAGE"><TMPL_VAR NAME="PAGE"><TMPL_ELSE>0</TMPL_IF>"
<TMPL_IF NAME="IS_REPORT_IN_TAB">data-is-report="1" data-report-has-form="<TMPL_IF NAME="DIRECT_REPORT">1<TMPL_ELSE>0</TMPL_IF>"<TMPL_ELSE>data-is-report="0" data-report-has-form="0"</TMPL_IF> 
<TMPL_IF NAME="SHOW_EVENT_NAME">data-show-event="<TMPL_VAR NAME="SHOW_EVENT_NAME">"</TMPL_IF>
<TMPL_IF NAME="NO_TAB"><TMPL_UNLESS DIRECT_TO_SOURCE_RETURN_TO_HOME>data-no-tab="1"</TMPL_UNLESS></TMPL_IF>
<TMPL_IF SEARCH_ERROR_MESSAGE>
data-is-show-form-on-error=<TMPL_IF SHOW_FORM_ON_ERROR>1<TMPL_ELSE>0</TMPL_IF>
</TMPL_IF>
></span>
    <TMPL_IF NAME="OCCCR_ORDER_RESULTS_SEARCH">
        <div id="occcr-order-results-search-form-row">
    <TMPL_ELSE>
        <div id="search-form-row" class="row no-print<TMPL_IF NAME="FROM_MAIN_MENU"><TMPL_IF NAME="SEARCH_DISABLED"><TMPL_ELSE><TMPL_IF NAME="SEARCH_ERROR_MESSAGE"><TMPL_ELSE><TMPL_IF NAME="RESULTS"> hidden</TMPL_IF></TMPL_IF></TMPL_IF><TMPL_ELSE><TMPL_UNLESS NAME="ALLOW_BROWSER_CACHING"><TMPL_IF NAME="SEARCH_DISABLED"><TMPL_ELSE><TMPL_IF NAME="SEARCH_ERROR_MESSAGE"><TMPL_ELSE><TMPL_IF NAME="RESULTS"> hidden</TMPL_IF></TMPL_IF></TMPL_IF><TMPL_ELSE><TMPL_UNLESS NAME="SHOW_SEARCH_FORM"><TMPL_UNLESS NAME="SEARCH_ERROR_MESSAGE"> hidden</TMPL_UNLESS></TMPL_UNLESS></TMPL_UNLESS></TMPL_IF>">
    </TMPL_IF>
            <TMPL_UNLESS NAME="OCCCR_ORDER_RESULTS_SEARCH">
            <TMPL_UNLESS NAME="IRS_VERIFY">
                <TMPL_UNLESS NAME="SSA_VERIFY">
                    <TMPL_INCLUDE NAME="search_body_header.tpl">
                <TMPL_ELSE>
                    <TMPL_INCLUDE NAME="portal_verify_search_body_header.tpl">                    
                </TMPL_UNLESS>
            <TMPL_ELSE>
                <TMPL_INCLUDE NAME="portal_verify_search_body_header.tpl">
            </TMPL_UNLESS>
            </TMPL_UNLESS>
            <TMPL_INCLUDE NAME="search_body_inputs.tpl">
        </div>
<TMPL_IF FROM_MAIN_MENU>
    <TMPL_INCLUDE NAME="search_results.tpl">
</TMPL_IF>
