<!-- BEGIN: v4/print_cover_page.tpl -->
    <div id="print-cover-page" class="row print-only" style="page-break-after: always">
        <article class="col-sm-12 col-md-12 col-lg-12 sortable-grid ui-sortable">
            <hr/>
            <p><strong>Request Date and Time:</strong>&nbsp; <TMPL_VAR NAME="PRINT_DOWNLOAD_TIME"></p>
            <p><strong>User Name:</strong>&nbsp;<TMPL_VAR NAME="USER_NAME"></p>
            <TMPL_UNLESS HISTORY_DOWNLOAD>
            <p><strong>Reference ID:</strong>&nbsp;<TMPL_VAR NAME="REFERENCE_CODE"></p>
            </TMPL_UNLESS>
            <p><strong>Search:</strong>&nbsp;<TMPL_VAR NAME="PAGE_TITLE">
            <br><strong>Search Terms:</strong>&nbsp;
            <TMPL_IF SEARCH_TERMS>
            <TMPL_LOOP NAME="SEARCH_TERMS">
                <span class="search-term-label">
                    <TMPL_VAR NAME="TERM_NAME">:&nbsp;
                </span>
                <span class="search-term-text">
                    <strong><TMPL_VAR NAME="TERM_VALUE"></strong><TMPL_UNLESS name="__LAST__">;&nbsp;</TMPL_UNLESS>
                </span>
            </TMPL_LOOP>
            <TMPL_ELSE>
              <TMPL_IF COVER_PAGE_SRCH_TERMS>
                <TMPL_VAR COVER_PAGE_SRCH_TERMS>
              </TMPL_IF>
            </TMPL_IF>
            </p>
            <p><strong>Note:</strong>&nbsp;<TMPL_VAR NAME="COVER_PAGE_NOTE"></p>
            <hr/>
        </article>
    </div>
<!-- END: v4/print_cover_page.tpl -->
