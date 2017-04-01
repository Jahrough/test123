<!-- BEGIN: history_results.tpl -->
<div id="history-preferences-content">
    <h2 id="history-header">History</h2>
    <TMPL_IF HISTORY_DOWNLOAD>
      <TMPL_UNLESS HISTORY_ACTIVE_PREVIOUS>
      <strong>Today (<TMPL_IF NAME="HISTORY_RECORD_COUNT_TODAY"><TMPL_VAR NAME="HISTORY_RECORD_COUNT_TODAY"><TMPL_ELSE>0</TMPL_IF>)</strong>
      <span class="textRed font-bold" id="history-today-label">Searches are saved until 12:00 Midnight (Eastern Time)</span>
      <TMPL_ELSE>
      <strong>Previous 30 Days (<TMPL_IF NAME="HISTORY_RECORD_COUNT_PREVIOUS"><TMPL_VAR NAME="HISTORY_RECORD_COUNT_PREVIOUS"><TMPL_ELSE>0</TMPL_IF>)</strong>
      <span class="textRed font-bold" id="history-previous-label">Additional Charges Apply</span>
      </TMPL_UNLESS>
      <hr/>
    </TMPL_IF>
    <TMPL_UNLESS HISTORY_DOWNLOAD>
    <label for="history-link-today" class="history-actions<TMPL_UNLESS HISTORY_ACTIVE_PREVIOUS> current</TMPL_UNLESS>">
        <input type="radio" id="history-link-today" name="history-radio" <TMPL_UNLESS HISTORY_ACTIVE_PREVIOUS>checked="checked"</TMPL_UNLESS> onclick="get_history_data(this)"/>       
        Today (<TMPL_IF NAME="HISTORY_RECORD_COUNT_TODAY"><TMPL_VAR NAME="HISTORY_RECORD_COUNT_TODAY"><TMPL_ELSE>0</TMPL_IF>)
    </label>
    <label for="history-link-previous" class="history-actions<TMPL_IF HISTORY_ACTIVE_PREVIOUS> current</TMPL_IF>">
        <input type="radio" id="history-link-previous" name="history-radio" <TMPL_IF HISTORY_ACTIVE_PREVIOUS>checked="checked"</TMPL_IF> onclick="get_history_data(this)"/>
        Previous 30 Days (<TMPL_IF NAME="HISTORY_RECORD_COUNT_PREVIOUS"><TMPL_VAR NAME="HISTORY_RECORD_COUNT_PREVIOUS"><TMPL_ELSE>0</TMPL_IF>)
    </label>
    <span class="textRed font-bold" id="history-today-label">Searches are saved until 12:00 Midnight (Eastern Time)</span>
    <span class="textRed font-bold" id="history-previous-label">Additional Charges Apply</span>
    </TMPL_UNLESS>
       
    <TMPL_UNLESS HISTORY_DOWNLOAD>
       <div class="history-download-print-section">
        <TMPL_INCLUDE NAME="history_results_nav_bar.tpl">
       </div>
    </TMPL_UNLESS>
    <TMPL_IF HISTORY_ACTIVE_PREVIOUS>
         <input type="hidden" name="HELP_PAGE_NAME" value="PREVIOUS_HISTORY">
         <table id="<TMPL_UNLESS HISTORY_DOWNLOAD>search-history-previous<TMPL_ELSE>search-history-previous-download</TMPL_UNLESS>" class="history_tbl search-history-previous">
            <caption class="sr-only">History last 30 days</caption>
            <thead>
                <tr>
                    <th scope="col" class="activity-th">Activity</th>
                    <th scope="col" class="terms-th">Search Terms</th>
                    <th scope="col" class="doc-count-th"># Docs</th>
                    <th scope="col" <TMPL_UNLESS HISTORY_DOWNLOAD>class="time-th"</TMPL_UNLESS>>Time (EDT/EST)</th>
                    <th scope="col" <TMPL_UNLESS HISTORY_DOWNLOAD>class="ref-th"</TMPL_UNLESS>>Reference ID</th>
                    <th scope="col" class="grouptime-th <TMPL_IF HISTORY_DOWNLOAD>no-print</TMPL_IF>">Group Time</th>
                    <th scope="col" class="parenttime-th <TMPL_IF HISTORY_DOWNLOAD>no-print</TMPL_IF>">Parent Time</th>
                    <th scope="col" class="mytime-th <TMPL_IF HISTORY_DOWNLOAD>no-print</TMPL_IF>">My Time</th>
                </tr>
            </thead>
            <tbody>
                <TMPL_IF HISTORY_RESULTS_LOOP>
                    <TMPL_LOOP HISTORY_RESULTS_LOOP>
                        <tr class="<TMPL_IF IS_SEARCH_WITHIN>search-within-tr</TMPL_IF><TMPL_IF HISTORY_PARENT_TIMESTAMP> has-parent-tr<TMPL_ELSE> has-no-parent-tr</TMPL_IF><TMPL_UNLESS HISTORY_TAB_GROUP> is-sub-search-tr</TMPL_UNLESS>">
                            <td class="activity-td">
                                <TMPL_IF IS_SEARCH_WITHIN>
                                    &nbsp;
                                <TMPL_ELSE>
                                    <TMPL_VAR NAME="HISTORY_ACTIVITY">
                                </TMPL_IF>
                            </td>
                            <td class="terms-td">
                                <TMPL_IF ENCRYPTED_LOGGING>
                                    Search Terms are not available.  This account elected  to have searches encrypted.
                                <TMPL_ELSE>
                                    <TMPL_IF IS_SEARCH_WITHIN>
                                        &#8226;&nbsp;Search Within:&nbsp;
                                    </TMPL_IF>
                                    <TMPL_IF HISTORY_SHOW_EVENT_PREV_HIST>
                                        <TMPL_UNLESS HISTORY_DOWNLOAD>
                                            <TMPL_IF IS_SEARCH_WITHIN>
                                                <TMPL_VAR HISTORY_SEARCH_TERMS>
                                            <TMPL_ELSE>
                                                <TMPL_UNLESS IS_DISABLED>
                                                <a href="javascript:tab_results_request('<TMPL_VAR HISTORY_LINK>', <TMPL_VAR IS_REPORT>);"><TMPL_VAR HISTORY_SEARCH_TERMS></a>
                                                <TMPL_ELSE>
                                                <TMPL_VAR HISTORY_SEARCH_TERMS>
                                                </TMPL_UNLESS>
                                            </TMPL_IF>
                                        <TMPL_ELSE>
                                            <TMPL_VAR HISTORY_SEARCH_TERMS>
                                        </TMPL_UNLESS>
                                    <TMPL_ELSE>
                                        <TMPL_VAR HISTORY_SEARCH_TERMS>
                                    </TMPL_IF>
                                </TMPL_IF>
                            </td>
                            <td class="doc-count-td"><TMPL_VAR NAME="HISTORY_NUM_DOCS"></td>
                            <td class="time-td"><TMPL_VAR NAME="HISTORY_TIMESTAMP"></td>
                            <td class="ref-td"><TMPL_VAR NAME="HISTORY_REFERENCE_ID"></td>
                            <td class="grouptime-td <TMPL_IF HISTORY_DOWNLOAD>no-print</TMPL_IF>"><TMPL_VAR HISTORY_TAB_GROUP_TIME></td>
                            <td class="parenttime-td <TMPL_IF HISTORY_DOWNLOAD>no-print</TMPL_IF>"><TMPL_IF HISTORY_PARENT_TIMESTAMP><TMPL_VAR HISTORY_PARENT_TIMESTAMP><TMPL_ELSE><TMPL_VAR HISTORY_SORT_TIMESTAMP></TMPL_IF></td>
                            <td class="mytime-td <TMPL_IF HISTORY_DOWNLOAD>no-print</TMPL_IF>"><TMPL_VAR HISTORY_SORT_TIMESTAMP></td>
                        </tr>
                    </TMPL_LOOP>
                </TMPL_IF>
            </tbody>
        </table>
    <TMPL_ELSE>
        <input type="hidden" name="HELP_PAGE_NAME" value="TODAYS_HISTORY">
        <table id="<TMPL_UNLESS HISTORY_DOWNLOAD>search-history-today<TMPL_ELSE>search-history-today-download</TMPL_UNLESS>" class="history_tbl search-history-today">
            <caption class="sr-only">Today's history</caption>
            <thead>
                <tr>
                    <th scope="col" <TMPL_UNLESS HISTORY_DOWNLOAD>class="tab-th"</TMPL_UNLESS>>Tab</th>
                    <th scope="col" class="activity-th">Activity</th>
                    <th scope="col" class="terms-th">Search Terms</th>
                    <th scope="col" class="doc-count-th"># Docs</th>
                    <th scope="col" <TMPL_UNLESS HISTORY_DOWNLOAD>class="time-th"</TMPL_UNLESS>>Time (EDT/EST)</th>
                    <th scope="col" <TMPL_UNLESS HISTORY_DOWNLOAD>class="ref-th"</TMPL_UNLESS>>Reference ID</th>
                    <th scope="col" class="grouptime-th <TMPL_IF HISTORY_DOWNLOAD>no-print</TMPL_IF>">Group Time</th>
                    <th scope="col" class="parenttime-th <TMPL_IF HISTORY_DOWNLOAD>no-print</TMPL_IF>">Parent Time</th>
                    <th scope="col" class="mytime-th <TMPL_IF HISTORY_DOWNLOAD>no-print</TMPL_IF>">My Time</th>
                </tr>
            </thead>
            <tbody>
                <TMPL_IF HISTORY_RESULTS_LOOP>
                    <TMPL_LOOP HISTORY_RESULTS_LOOP>
                        <tr class="<TMPL_IF IS_SEARCH_WITHIN>search-within-tr</TMPL_IF><TMPL_IF HISTORY_PARENT_TIMESTAMP> has-parent-tr<TMPL_ELSE> has-no-parent-tr</TMPL_IF><TMPL_UNLESS HISTORY_TAB_GROUP> is-sub-search-tr</TMPL_UNLESS>">
                            <td class="tab-td">
                              <TMPL_IF HISTORY_TAB_GROUP> <!-- Show icon if it is a parent row -->
                              <span data-searchtype="<TMPL_VAR HISTORY_ACTIVITY>" <TMPL_IF NAME="HISTORY_SHOW_EVENT_ICON">data-tabshowevt="<TMPL_VAR NAME="HISTORY_SHOW_EVENT_ICON">"</TMPL_IF> class="svg-icon-small <TMPL_VAR ICON_CLASS>"></span>
                              </TMPL_IF>
                            </td>
                            <td class="activity-td">
                                <TMPL_UNLESS IS_SEARCH_WITHIN><TMPL_VAR NAME="HISTORY_ACTIVITY"></TMPL_UNLESS>&nbsp;
                            </td>
                            <td class="terms-td">
                                <TMPL_IF ENCRYPTED_LOGGING>
                                    Search Terms are not available.  This account elected  to have searches encrypted.
                                <TMPL_ELSE>
                                    <TMPL_IF IS_SEARCH_WITHIN>
                                        &#8226;&nbsp;Search Within:&nbsp;
                                    </TMPL_IF>
                                    <TMPL_IF HISTORY_SHOW_EVENT>
                                        <TMPL_UNLESS HISTORY_DOWNLOAD>
                                            <a href="javascript:tab_results_request('<TMPL_VAR HISTORY_LINK>', <TMPL_VAR IS_REPORT>);"><TMPL_VAR HISTORY_SEARCH_TERMS></a>
                                        <TMPL_ELSE>
                                            <TMPL_VAR HISTORY_SEARCH_TERMS>
                                        </TMPL_UNLESS>
                                    <TMPL_ELSE>
                                        <TMPL_VAR HISTORY_SEARCH_TERMS>
                                    </TMPL_IF>
                                </TMPL_IF>
                            </td>
                            <td class="doc-count-td"><TMPL_VAR NAME="HISTORY_NUM_DOCS"></td>
                            <td class="time-td"><TMPL_VAR NAME="HISTORY_TIMESTAMP"></td>
                            <td class="ref-td"><TMPL_VAR NAME="HISTORY_REFERENCE_ID"></td>
                            <td class="grouptime-td <TMPL_IF HISTORY_DOWNLOAD>no-print</TMPL_IF>"><TMPL_VAR HISTORY_TAB_GROUP_TIME></td>
                            <td class="parenttime-td <TMPL_IF HISTORY_DOWNLOAD>no-print</TMPL_IF>"><TMPL_IF HISTORY_PARENT_TIMESTAMP><TMPL_VAR HISTORY_PARENT_TIMESTAMP><TMPL_ELSE><TMPL_VAR HISTORY_SORT_TIMESTAMP></TMPL_IF></td>
                            <td class="mytime-td <TMPL_IF HISTORY_DOWNLOAD>no-print</TMPL_IF>"><TMPL_VAR HISTORY_SORT_TIMESTAMP></td>
                        </tr>
                    </TMPL_LOOP>
                </TMPL_IF>
            </tbody>
        </table>
    </TMPL_IF>
    <TMPL_UNLESS HISTORY_DOWNLOAD>
   	<div class="history-download-print-section">
        <TMPL_INCLUDE NAME="history_results_nav_bar.tpl">
      </div>
    </TMPL_UNLESS>
</div>
<!-- END: history_results.tpl -->
