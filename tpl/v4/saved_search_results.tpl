<!-- BEGIN: history_results.tpl -->
<div id="saved-searches-content">
    <h2 id="saved-searches-header">Saved Searches</h2>
       
    <TMPL_UNLESS HISTORY_DOWNLOAD>
        <div class="history-download-print-section">
            <TMPL_INCLUDE NAME="saved_search_nav_bar.tpl">
        </div>
    </TMPL_UNLESS>
    <table id="saved-searches" class="search-history-previous paged table-hover">
        <thead>
            <tr>
                <th>Search</th>
                <th>Description</th>
                <th class="sortable sort_icon" data-sort-type="date">Created (EDT/EST)</th>
                <th>Shared</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <TMPL_IF SAVED_SEARCHES_RESULTS_LOOP>
                <TMPL_LOOP SAVED_SEARCHES_RESULTS_LOOP>
                    <tr id="DELETE<TMPL_VAR NAME=SAVED_SEARCH_ROW_ID>" name="DELETE<TMPL_VAR NAME=SAVED_SEARCH_ROW_ID>">
                        <td class="col-3_5"><a href="javascript:cancel_saved_searches_page();javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_NEWS');"><TMPL_VAR NAME="SAVED_SEARCH_DESCRIPTION"></a></td>
                        <td class="col-3_5"><TMPL_VAR NAME="SAVED_SEARCH_DESCRIPTION"></td>
                        <td class="col-1"><TMPL_VAR NAME="SAVED_SEARCH_ROW_TIMESTAMP"></td>
                        <td class="col-1">
                            <label class="checkbox-toggle input" for="SHARE<TMPL_VAR NAME=SAVED_SEARCH_ROW_ID>">
                                <input type="checkbox" name="SHARE<TMPL_VAR NAME=SAVED_SEARCH_ROW_ID>" id="SHARE<TMPL_VAR NAME=SAVED_SEARCH_ROW_ID>" <TMPL_IF NAME=SAVED_SEARCH_ROW_SHARED>checked="checked"</TMPL_IF> onclick="javascript:shareorDeleteSavedSearch(<TMPL_VAR NAME=SAVED_SEARCH_ROW_ID>, <TMPL_VAR NAME=SAVED_SEARCH_ROW_BILLGROUP>, 'SHARE');">
                                <span class="toggle pull-left">
                                    <span class="toggle-on">Yes</span>
                                    <span class="toggle-switch"></span>
                                    <span class="toggle-off">No</span>
                                </span>
                            </label>
                        </td>
                        <td class="col-1">
                            <button type="button" data-placement="bottom" class="btn-actions btn red-x-icon svg-icon-tiny" data-original-title="Delete Saved Search" aria-label="Delete Saved Search" onclick="javascript:shareorDeleteSavedSearch(<TMPL_VAR NAME=SAVED_SEARCH_ROW_ID>, <TMPL_VAR NAME=SAVED_SEARCH_ROW_BILLGROUP>, 'DELETE');"></button>
                        </td>
                    </tr>
                </TMPL_LOOP>
            </TMPL_IF>
        </tbody>
    </table>
    <TMPL_UNLESS HISTORY_DOWNLOAD>
        <div class="history-download-print-section">
            <TMPL_INCLUDE NAME="saved_search_nav_bar.tpl">
        </div>
    </TMPL_UNLESS>
</div>
<!-- END: history_results.tpl -->
