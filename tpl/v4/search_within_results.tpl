<TMPL_UNLESS IS_REPORT_IN_TAB>
    <TMPL_UNLESS SHOW_PROP_PICKLIST>
    <TMPL_UNLESS FRAUDPOINT_ATO>
    <TMPL_UNLESS HIDE_SEARCH_WITHIN>
        <div class="form-group col input search-within-input">
            <label>
                <input type="text" class="form-control" maxlength="50" placeholder="Search Within" onkeydown="if (event.keyCode == 13) { event.preventDefault(); }" onkeyup="if (event.keyCode == 13) { <TMPL_IF SEARCH_WITHIN_SUPPORTED>submit_search_within(this);<TMPL_ELSE> alert('search within not supported for this search'); </TMPL_IF> }">
                <span class="tooltip" aria-hidden="true">Search within <TMPL_IF ORIGINAL_SEARCH_RECORD_COUNT>original <TMPL_VAR NAME="ORIGINAL_SEARCH_RECORD_COUNT"><TMPL_ELSE><TMPL_VAR NAME="RECORD_COUNT"></TMPL_IF> results</span> 
            </label>
            <span class="input-group-addon">
                <button type="button" class="btn-link search-within-icon svg-icon-tiny" <TMPL_IF SEARCH_WITHIN_SUPPORTED>onclick="submit_search_within(this);"<TMPL_ELSE>onclick="alert('search within not supported for this search');"</TMPL_IF>>
                    <span class="sr-only">Search</span>
                </button>
            </span>
        </div>
    </TMPL_UNLESS>
    </TMPL_UNLESS>
    </TMPL_UNLESS>
</TMPL_UNLESS>
<TMPL_IF REPORT_SEARCH_WITHIN>
    <div class="form-group col input search-within-input">
        <label>
            <input type="text" class="form-control" maxlength="50" placeholder="Search Within" onkeydown="if (event.keyCode == 13) { event.preventDefault(); }" onkeyup="if (event.keyCode == 13) { submit_search_within(this); }" data-from-doc="1">
            <span class="tooltip" aria-hidden="true">Search within <TMPL_IF ORIGINAL_SEARCH_RECORD_COUNT>original <TMPL_VAR NAME="ORIGINAL_SEARCH_RECORD_COUNT"><TMPL_ELSE><TMPL_VAR NAME="RECORD_COUNT"></TMPL_IF> results</span> 
        </label>
        <span class="input-group-addon">
            <button type="button" class="btn-link search-within-icon svg-icon-tiny" onclick="submit_search_within(this);">
                <span class="sr-only">Search</span>
            </button>
        </span>
    </div>
</TMPL_IF>
<TMPL_IF IS_REPORT_IN_TAB>
    <INPUT type=hidden NAME="SEARCH_EVT" VALUE="<TMPL_VAR NAME=SEARCH_EVT>">
    <div class="reportLeftNavToggle">
        <div class="additional-info">
            <button type="button" data-placement="bottom" class="btn-actions btn navigation_icon svg-icon-tiny" onclick="javascript:showHideReportNavigation();"></button>
            <span class="tooltip tooltip-35 hover">Toggle Navigation</span>
        </div>
    </div>
</TMPL_IF>
<div class="print-download-buttons">
    <TMPL_IF SOURCE_DOC_REC>
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn selectDeselectDocument checkbox-icon<TMPL_IF SOURCE_DOC_IS_SELECTED> checked</TMPL_IF>" data-original-title="Select Document" aria-label="Select Document" onclick="update_source_doc_selection(this,'<TMPL_VAR NAME="ORIGINAL_SEARCH_ID">','<TMPL_VAR NAME="SOURCE_DOC_REC">');"></button>
        <span class="tooltip tooltip-35 hover">Select Document</span>
    </div>
    </TMPL_IF>
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn print-icon svg-icon-tiny" data-original-title="Print Results" aria-label="Print Results" onclick="show_print_download_dialog('<TMPL_VAR NAME="ACTIVE_TAB">','print');"></button>
        <span class="tooltip tooltip-35 hover">Print</span>
    </div>
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn download-icon svg-icon-tiny" data-original-title="Download" data-download-active-tab="<TMPL_VAR ACTIVE_TAB>" aria-label="Download" onclick="show_print_download_dialog('<TMPL_VAR NAME="ACTIVE_TAB">','download');"></button> 
        <span class="tooltip tooltip-35 hover">Download</span>
    </div>
    <TMPL_IF BRIDGER_EXPORT>
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn external_link_icon svg-icon-x-tiny has-text" data-original-title="Download" aria-label="Download" onclick="show_print_download_dialog('<TMPL_VAR NAME="ACTIVE_TAB">','bridger');">
        Export to XG&nbsp;&nbsp;
        </button> 
        <span class="tooltip tooltip-35 hover">Export to XG</span>
    </div>
    </TMPL_IF>
</div>

<TMPL_IF DELIVERY_TRAY_ENABLED>
<div class="delivery-tray-area">
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn delivery-tray-icon svg-icon-tiny" data-original-title="Delivery Tray" aria-label="Delivery Tray" onclick="update_delivery_tray({TAB_ID: get_active_history_tab(), ACTION_TYPE: 'ADD', TRAY_SELECTION: get_selected_tray_ids()});"></button>
        <span class="tooltip tooltip-35 hover">Delivery Tray</span>
    </div>
</div>
</TMPL_IF>

<TMPL_IF PAGE_LINKS>
    <div class="pagination-container">
        <ul class="pagination">
            <li>
                <TMPL_IF PREV_PAGE>
                <a href="javascript:web20_next_prev_page(<TMPL_IF SEARCH_FORM_INDEX><TMPL_VAR NAME="SEARCH_FORM_INDEX"><TMPL_ELSE>1</TMPL_IF>,'<TMPL_VAR NAME="SEARCH_NAME">',1,'<TMPL_VAR NAME="ACTIVE_TAB">')">&lt;&lt;</a>
                <TMPL_ELSE>
                <a tabindex="-1" class="disabled" href="javascript:void(0);">&lt;&lt;</a>
                </TMPL_IF>
            </li>
            <li>
                <TMPL_IF PREV_PAGE>
                <a href="javascript:web20_next_prev_page(<TMPL_IF SEARCH_FORM_INDEX><TMPL_VAR NAME="SEARCH_FORM_INDEX"><TMPL_ELSE>1</TMPL_IF>,'<TMPL_VAR NAME="SEARCH_NAME">',<TMPL_VAR NAME="PREV_PAGE">,'<TMPL_VAR NAME="ACTIVE_TAB">')">&lt;</a>
                <TMPL_ELSE>
                <a tabindex="-1" class="disabled" href="javascript:void(0);">&lt;</a>
                </TMPL_IF>
            </li>
            <li>
                <span>
                    <TMPL_VAR NAME="PAGE"> of <TMPL_IF LAST_PAGE><TMPL_VAR NAME="LAST_PAGE"><TMPL_ELSE>1</TMPL_IF> pages
                </span>
            </li>
            <li>
                <TMPL_IF NEXT_PAGE>
                <a href="javascript:web20_next_prev_page(<TMPL_IF SEARCH_FORM_INDEX><TMPL_VAR NAME="SEARCH_FORM_INDEX"><TMPL_ELSE>1</TMPL_IF>,'<TMPL_VAR NAME="SEARCH_NAME">',<TMPL_VAR NAME="NEXT_PAGE">,'<TMPL_VAR NAME="ACTIVE_TAB">')">&gt;</a>
                <TMPL_ELSE>
                <a tabindex="-1" class="disabled" href="javascript:void(0);">&gt;</a>
                </TMPL_IF>
            </li>
            <li>
                <TMPL_IF NEXT_PAGE>
                <a href="javascript:web20_next_prev_page(<TMPL_IF SEARCH_FORM_INDEX><TMPL_VAR NAME="SEARCH_FORM_INDEX"><TMPL_ELSE>1</TMPL_IF>,'<TMPL_VAR NAME="SEARCH_NAME">',<TMPL_VAR NAME="LAST_PAGE">,'<TMPL_VAR NAME="ACTIVE_TAB">')">&gt;&gt;</a>
                <TMPL_ELSE>
                <a tabindex="-1" class="disabled" href="javascript:void(0);">&gt;&gt;</a>
                </TMPL_IF>
            </li>
        </ul>
    </div>
<TMPL_ELSE>
<TMPL_IF SOURCE_DOC_REC>
    <div class="pagination-container">
        <ul class="pagination">
            <li>
                <TMPL_IF SOURCE_DOCS_PREV>
                <a href="javascript:build_web20_source_doc('<TMPL_VAR NAME="ACTION_REPORT">',1,'<TMPL_VAR NAME="ORIGINAL_SEARCH_ID">')">&lt;&lt;</a>
                <TMPL_ELSE>
                <a tabindex="-1" class="disabled" href="javascript:void(0);">&lt;&lt;</a>
                </TMPL_IF>
            </li>
            <li>
                <TMPL_IF SOURCE_DOCS_PREV>
                <a href="javascript:build_web20_source_doc('<TMPL_VAR NAME="ACTION_REPORT">',<TMPL_VAR NAME="SOURCE_DOCS_PREV">,'<TMPL_VAR NAME="ORIGINAL_SEARCH_ID">')">&lt;</a>
                <TMPL_ELSE>
                <a tabindex="-1" class="disabled" href="javascript:void(0);">&lt;</a>
                </TMPL_IF>
            </li>
            <li>
                <span>
                    <TMPL_VAR NAME="SOURCE_DOCS_CURRENT"> of <TMPL_IF SOURCE_DOCS_TOTAL><TMPL_VAR NAME="SOURCE_DOCS_TOTAL"><TMPL_ELSE>1</TMPL_IF> pages
                </span>
            </li>
            <li>
                <TMPL_IF SOURCE_DOCS_NEXT>
                <a href="javascript:build_web20_source_doc('<TMPL_VAR NAME="ACTION_REPORT">',<TMPL_VAR NAME="SOURCE_DOCS_NEXT">,'<TMPL_VAR NAME="ORIGINAL_SEARCH_ID">')">&gt;</a>
                <TMPL_ELSE>
                <a tabindex="-1" class="disabled" href="javascript:void(0);">&gt;</a>
                </TMPL_IF>
            </li>
            <li>
                <TMPL_IF SOURCE_DOCS_NEXT>
                <a href="javascript:build_web20_source_doc('<TMPL_VAR NAME="ACTION_REPORT">',<TMPL_VAR NAME="SOURCE_DOCS_TOTAL">,'<TMPL_VAR NAME="ORIGINAL_SEARCH_ID">')">&gt;&gt;</a>
                <TMPL_ELSE>
                <a tabindex="-1" class="disabled" href="javascript:void(0);">&gt;&gt;</a>
                </TMPL_IF>
            </li>
        </ul>
    </div>
</TMPL_IF>
</TMPL_IF>
<TMPL_UNLESS ID_VERIFY>
<TMPL_UNLESS ID_QUIZ>
<TMPL_UNLESS ID_SKIP>
<TMPL_UNLESS ID_AUTH>
<div class="new-edit-search-buttons" data-active-tabid="<TMPL_VAR NAME="ACTIVE_TAB">"> 
    <TMPL_IF IS_REPORT_IN_TAB>
        <TMPL_UNLESS SHOW_TERMS_BAR>
            <TMPL_UNLESS SKIP_SHOW_ALL_DEATILS>
                <div class="report-actions">
                    <div class="additional-info">
                        <button type="button" class="btn edit-icon svg-icon-tiny btn-actions reportnotessh" onclick="javascript:showHideNotes(reportNotesContainer)">
                            <span class="tooltip centered">Show or Hide Notes</span>
                        </button>
                    </div>
                    <button type="button" class="btn display_all_button" onclick="javascript:showHideAllSections();">Show All Details</button> 
                </div>
            </TMPL_UNLESS>
        </TMPL_UNLESS>
    </TMPL_IF>
    <TMPL_UNLESS HIDE_EDIT_NEW_BUTTONS>
    <button class="btn" onclick="edit_search_button()">Edit Search</button> 
    <button class="btn" onclick="new_search_button()">New Search</button> 
    </TMPL_UNLESS>
    <TMPL_UNLESS HIDE_HELP>
        <div class="additional-info">
            <a href="javascript:void(0);" class="help-search-results help-icon svg-icon-small">
                <span class="tooltip tooltip-right">Help</span>
            </a>
        </div>
    </TMPL_UNLESS>
</div>
</TMPL_UNLESS>
</TMPL_UNLESS>
</TMPL_UNLESS>
</TMPL_UNLESS>
