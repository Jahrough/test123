<!-- BEGIN: v4/print_download_dialog.tpl -->
<script type="text/javascript">
var php_hist_range_download = false;
var allow_csv_download = true;
var is_occcr_download = false;

<TMPL_IF IS_ADMIN_REPORT>
var is_admin_report = true;
<TMPL_ELSE>
var is_admin_report = false;
</TMPL_IF>

<TMPL_IF IS_SOURCE_DOCS_REPORT>
var is_source_docs_report = true;
<TMPL_ELSE>
var is_source_docs_report = false;
</TMPL_IF>

<TMPL_IF IS_OCCCR_DOWNLOAD>
var is_occcr_download = true;
<TMPL_ELSE>
var is_occcr_download = false;
</TMPL_IF>

<TMPL_IF DOWNLOAD_FILE_FORMAT>
  var downlod_file_format = "<TMPL_VAR DOWNLOAD_FILE_FORMAT>";
</TMPL_IF>
</script>
<div class="modal-dialog trap">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
                <span aria-hidden="true">x</span>
                <span class="sr-only">Close</span>
            </button>
            <h4 class="modal-title">
                <TMPL_IF NAME="DOWNLOAD">Download</TMPL_IF>
                <TMPL_IF NAME="bridger">Export</TMPL_IF>
                <TMPL_IF NAME="emptybridger">Export No</TMPL_IF>
                <TMPL_IF NAME="PRINT">Print</TMPL_IF><TMPL_IF NAME="PRINT_HISTORY">Print</TMPL_IF> <TMPL_IF SOURCE_DOCS_REPORT>Document<TMPL_ELSE>Results</TMPL_IF></h4>
            <TMPL_IF NAME="bridger"><strong>to (Subject: <TMPL_VAR NAME="BRIDGER_STRING">)</strong></TMPL_IF>
        </div>
        <div class="modal-body">
            <TMPL_IF PRINT_DOWNLOAD_ERROR_MESSAGE>
                <div class="alert alert-warning fade in text-center">
                <i class="fa-fw fa fa-warning"></i>
                Error processing <TMPL_VAR NAME="TYPE"> request!
                <p>
                <strong><TMPL_VAR NAME="PRINT_DOWNLOAD_ERROR_MESSAGE"></strong>
                </p>
                </div>
            <TMPL_ELSE>
                <div id="pd-wait" class="hidden">
                    <p><strong>Preparing results...</strong></p>
                    <hr class="simple">
                    <div id="pd-progress" class="progress progress-sm hidden">
                        <div class="progress-bar bg-color-greenLight" style="width:0%" role="progressbar"></div>
                    </div>
                    <div id="pd-prepared" class="hidden">
                        <p><strong>All documents obtained, ready to print/download now.</strong></p>
                    </div>
                    <div id="pd-error" class="hidden">
                        <div class="alert alert-warning fade in text-center">
                            <i class="fa-fw fa fa-warning"></i>
                            <span></span>
                        </div>
                    </div>
                </div>
                <div id="bridger-message" class="hidden">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">x</span>
                        <span class="sr-only">Close</span>
                    </button>
                    <p><strong>Your file is being exported to Bridger Insight&trade; XG.</strong></p>
                    <hr class="simple">
                    <br/>
                </div>
                <div id="bridger-finished" class="hidden">
                    Exported files can be found on the Record Details tab in the Record Attachment section.
                    <br/>
                    It may take up to five minutes for documents to appear in Bridger Insight&trade; XG.
                    <br/>
                    <br/>
                    <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The file will be associated with Result ID: <strong><TMPL_VAR NAME="BRIDGER_RESULT"></strong>
                    <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Subject: <strong><TMPL_VAR NAME="BRIDGER_STRING"></strong>
                    <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Name: <strong><TMPL_VAR NAME="BRIDGER_FILE">Search Results - <span id="bridger-date"></span>.pdf</strong>
                    <br/>
                    <br/>
                    You can continue to work within LexisNexis<sup class="sup-reg-symbol">&reg;</sup> <TMPL_VAR NAME="SKIN_NAME"> or Bridger Insight&trade; XG after closing this window.
                </div>
                <div id="bridger-empty-finished" class="hidden">
                    Exported files can be found on the Record Details tab in the Record Attachment section.
                    <br/>
                    It may take up to five minutes for documents to appear in Bridger Insight&trade; XG.
                    <br/>
                    <br/>
                    <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The file will be associated with Result ID: <strong><TMPL_VAR NAME="BRIDGER_RESULT"></strong>
                    <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Subject: <strong><TMPL_VAR NAME="BRIDGER_STRING"></strong>
                    <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Name: <strong><TMPL_VAR NAME="BRIDGER_FILE">No Results to Display  - <span id="bridger-empty-date"></span>.pdf</strong>
                    <br/>
                    <br/>
                    You can continue to work within LexisNexis<sup class="sup-reg-symbol">&reg;</sup> <TMPL_VAR NAME="SKIN_NAME"> or Bridger Insight&trade; XG after closing this window.
                </div>
                <form name="PRINT_FORM" id="print_download" class="smart-form print-download-form">
                    <div class="col-xs-12 col-sm-12">
                        <TMPL_UNLESS DOWNLOAD_HISTORY>
                        <fieldset>
                            <section>
                                <div class="row">
                                    <strong>
                                        <TMPL_IF NAME="DOWNLOAD">Download Format</TMPL_IF>
                                        <TMPL_IF NAME="PRINT"><TMPL_IF SHOW_SOURCE_DOC>Print Format</TMPL_IF></TMPL_IF>
                                    </strong>
                                </div>
                                    <TMPL_IF DATA_OPTION>
                                    <div class="row <TMPL_UNLESS SHOW_SOURCE_DOC>hidden</TMPL_UNLESS>">
                                        <div class="col col-2">Data</div>
                                        <section class="col col-3">
                                            <label class="select">
                                                <select name="PD_OPTION" id="PD_OPTION">
                                                    <option value="RESULT_LIST">Results List</option>
                                                    <TMPL_IF SHOW_SOURCE_DOC>
                                                    <option value="SOURCE_DOC" <TMPL_IF SOURCE_DOCS_REPORT>selected</TMPL_IF>>Documents</option>
                                                    </TMPL_IF>
                                                </select>
                                            </label>
                                        </section>
                                    </div>
                                    </TMPL_IF>
                                <TMPL_IF NAME="DOWNLOAD">
                                <div class="row">
                                    <div class="col">Download type</div>
                                    <section class="col col-3">
                                        <label class="select">
                                            <select name="DOWNLOAD_FORMAT" id="DOWNLOAD_FORMAT">
                                                <option value="PDF">Adobe&reg; PDF (.pdf)</option>
                                                <TMPL_UNLESS IS_ADMIN_REPORT>
                                                <TMPL_UNLESS SOURCE_DOCS_REPORT>
                                                <TMPL_UNLESS IS_OCCCR_DOWNLOAD>
                                                <option value="CSV">Comma-separated values (.csv)</option>
                                                <option value="CSV">Excel (.csv)</option>
                                                </TMPL_UNLESS>
                                                </TMPL_UNLESS>
                                                </TMPL_UNLESS>
                                                <option value="HTML">HTML (.html)</option>
                                                <!--  <TMPL_UNLESS IS_ADMIN_REPORT> -->
                                                <!--  <option value="RTF" disabled>Rich text format (.rtf)</option> -->
                                                <!--  <option value="TXT" disabled>Text (.txt)</option> -->
                                                <!--  </TMPL_UNLESS> -->
                                            </select>
                                        </label>
                                    </section>
                                </div>
                                    
                                </TMPL_IF>
                                <TMPL_IF NAME="bridger">
                                    <input type="hidden" id="DOWNLOAD_FORMAT" name="DOWNLOAD_FORMAT" value="EXPORT"/>
                                </TMPL_IF>
                                <TMPL_IF NAME="emptybridger">
                                    <input type="hidden" id="DOWNLOAD_FORMAT" name="DOWNLOAD_FORMAT" value="EMPTYEXPORT"/>
                                </TMPL_IF>
                                <TMPL_UNLESS DOWNLOAD>
                                    <TMPL_IF DATA_OPTION>
                                    <div class="row">
                                        <input type="hidden" name="SRC_DOC_PAGE_BREAK" id="SRC_DOC_PAGE_BREAK" value="<TMPL_VAR SRC_DOC_PAGE_BREAK>">
                                        <label class="checkbox-inline">
                                            <input type="checkbox" name="PD_DOC_PAGE_BREAK" <TMPL_IF SRC_DOC_PAGE_BREAK>CHECKED</TMPL_IF>><i> </i>Print each document starting on a new page
                                        </label>
                                    </div>
                                    </TMPL_IF>
                                </TMPL_UNLESS>
                            </section>
                        </fieldset>
                        </TMPL_UNLESS>
                        <TMPL_UNLESS IS_ADMIN_REPORT>
                        <TMPL_UNLESS NAME="emptybridger">
                        <TMPL_UNLESS IS_OCCCR_DOWNLOAD>
                        <TMPL_UNLESS IS_OCCCR_PRINT>
                        <fieldset class="<TMPL_UNLESS SHOW_SOURCE_DOC>no-border-top</TMPL_UNLESS>">
                            <section>
                                <div class="row">
                                    <TMPL_IF NAME="DOWNLOAD">
                                        <strong>Download Range</strong>
                                    <TMPL_ELSE>
                                        <TMPL_IF NAME="bridger">
                                            <strong>Export Range</strong>
                                        <TMPL_ELSE>
                                            <strong>Print Range</strong>
                                        </TMPL_IF>
                                    </TMPL_IF>
                                </div>
                                <div class="row">
                                    <div class="col col-3">
                                        <label class="radio-inline">
                                            <input type="radio" value="ALL" name="PD_RANGE"><i></i>All Pages</label>
                                        </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col col-3">
                                        <label class="radio-inline">
                                            <input type="radio" value="CURRENT" name="PD_RANGE" <TMPL_UNLESS CHECK_RESULTS>checked</TMPL_UNLESS>><i></i>Current Page</label>
                                        </label>
                                    </div>
                                </div>
                                <TMPL_UNLESS DOWNLOAD_HISTORY>
                                <TMPL_UNLESS PRINT_HISTORY>
                                <div class="row">
                                    <div class="col col-3">
                                        <label class="radio-inline">
                                            <input type="radio" value="SELECTED_RESULTS" name="PD_RANGE" <TMPL_IF CHECK_RESULTS>checked</TMPL_IF>><i></i>Document(s)</label>
                                        </label>
                                    </div>
                                    <div class="col col-4">
                                        <label class="input state-disabled">
                                            <input type="text" disabled="disabled" id="SELECTED_RESULTS" name="SELECTED_RESULTS" data-max-record="<TMPL_VAR NAME="SEARCH_TOTAL_RECS">" value="<TMPL_VAR NAME="SELECTED_RESULTS">">
                                        </label>  
                                    </div>
                                    <div class="col col-3">
                                        <span class="smallgrey">Example (1,3,5-10,14)</span>
                                    </div>
                                </div>
                                </TMPL_UNLESS>
                                </TMPL_UNLESS>
                            </section>
                        </fieldset>
                        </TMPL_UNLESS>
                        </TMPL_UNLESS>
                        <fieldset>
                            <section>
                                <div class="row"><strong>Formatting Options</strong></div>
                                <div class="row">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="INCLUDE_COVER_PAGE" <TMPL_IF INCLUDE_COVER_PAGE>checked="checked"</TMPL_IF>><i> </i>Include cover page
                                    </label>
                                </div>
                                <div class="row" style="padding-left:30px;">
                                    <div class="col col-10">
                                        <textarea class="custom-scroll" name="COVER_PAGE_NOTE" <TMPL_UNLESS INCLUDE_COVER_PAGE>disabled="disabled"</TMPL_UNLESS> rows="3" placeholder="Add a Brief Note" maxlength="1000"></textarea>
                                        <div id="cover_page_count" class="row pull-right">1,000 characters left</div>
                                    </div>
                                </div>
                            </section>
                        </fieldset>
                        </TMPL_UNLESS>
                        <TMPL_IF NAME="DOWNLOAD">
                        <TMPL_UNLESS DOWNLOAD_HISTORY>
                        <fieldset>
                            <section>
                                <div class="row"><strong>Name <TMPL_IF SOURCE_DOCS_REPORT>Document<TMPL_ELSE>Result</TMPL_IF>(s) (Optional)</strong></div>
                                <div class="row">
                                    <div class="col col-2">File name</div>
                                    <div class="col col-8">
                                        <label class="input">
                                        <input type="text" id="DOWNLOAD_FILE_NAME" name="DOWNLOAD_FILE_NAME" value="<TMPL_VAR DOWNLOAD_FILE_NAME>" placeholder="<TMPL_IF SOURCE_DOCS_REPORT>Documents.pdf<TMPL_ELSE>Results.pdf</TMPL_IF>">
                                        </label>
                                    </div>
                                </div>
                            </section>
                        </fieldset>
                        </TMPL_UNLESS>
                        </TMPL_IF>
                        </TMPL_UNLESS>
                    </div>
                    <br/><br/><br/>
                    <INPUT type="hidden" name="RECENT_SEARCH_INDEX" value="<TMPL_VAR NAME="RECENT_SEARCH_INDEX">">
                    <INPUT type="hidden" name="CURR_PAGE" value="">
                    <INPUT type="hidden" name="SEARCH_START_REC" value="<TMPL_VAR SEARCH_START_REC>">
                    <INPUT type="hidden" name="SEARCH_LAST_REC" value="<TMPL_VAR SEARCH_LAST_REC>">
                    <INPUT type="hidden" name="FIRST_REC" value="">
                    <INPUT type="hidden" name="LAST_REC" value="">
                    <INPUT type="hidden" name="HISTORY_SORT_ORDER" value="">
                    <INPUT type="hidden" name="HISTORY_ACTIVE_PREVIOUS" value="<TMPL_VAR NAME="HISTORY_ACTIVE_PREVIOUS">">
                    <INPUT type="hidden" name="EVENT" value="<TMPL_VAR NAME="EVENT">">
                    <INPUT type="hidden" name="SOURCE_DOC_RPT_NUM" value="<TMPL_VAR SOURCE_DOC_RPT_NUM>">
                    <TMPL_IF PRINT_DOWNLOAD_HISTORY>
                      <INPUT type="hidden" name="HISTORY_PAGE_LENGTH" value="<TMPL_VAR HISTORY_PAGE_LENGTH>">
                      <INPUT type="hidden" name="HISTORY_START_REC" value="<TMPL_VAR HISTORY_START_REC>">
                      <INPUT type="hidden" name="HISTORY_TBL_ORD" value="<TMPL_VAR HISTORY_TBL_ORD>">
                      <TMPL_IF NAME="PRINT_HISTORY">
                        <INPUT type="hidden" name="TYPE" value="PRINT_HISTORY">
                      </TMPL_IF>
                    </TMPL_IF>
                    <TMPL_UNLESS IS_ADMIN_REPORT>
                    <INPUT type="hidden" name="SEARCH_TYPE" value="<TMPL_VAR NAME="SEARCH_TYPE">">
                    <INPUT type="hidden" name="DYNAMIC_CSS" value="<TMPL_VAR DYNAMIC_CSS>">
                    <INPUT type="hidden" name="IS_WEBPUBREC_SEARCH" value="<TMPL_VAR IS_WEBPUBREC_SEARCH>">
                    </TMPL_UNLESS>
                    <TMPL_IF IS_OCCCR_DOWNLOAD>
                    <INPUT type="hidden" name="DOCID" value="">
                    <INPUT type="hidden" name="IS_OCCCR_DOWNLOAD" value="1">
                    </TMPL_IF>
                    <TMPL_IF IS_OCCCR_PRINT>
                    <INPUT type="hidden" name="DOCID" value="">
                    <INPUT type="hidden" name="IS_OCCCR_DOWNLOAD" value="0">
                    <INPUT type="hidden" name="IS_OCCCR_PRINT" value="1">
                    </TMPL_IF>
                    <div class="print-download-button-wrapper">
                        <button class="btn btn-danger" onclick="do_verify_print_download(this,'<TMPL_VAR NAME="TYPE">','<TMPL_VAR NAME="PAGE_TITLE">');" type="button">&nbsp;&nbsp;<TMPL_IF NAME="DOWNLOAD">Download</TMPL_IF><TMPL_IF NAME="bridger">Export</TMPL_IF><TMPL_IF NAME="emptybridger">Export</TMPL_IF><TMPL_IF NAME="PRINT">Print</TMPL_IF><TMPL_IF NAME="PRINT_HISTORY">Print</TMPL_IF>&nbsp;&nbsp;</button>
                        <button class="btn btn-default" onclick="close_print_dialog();" type="button">&nbsp;&nbsp;Cancel&nbsp;&nbsp;</button>
                    </div>
                </form>
            </TMPL_IF>
        </div>
    </div>
</div>
<!-- END: v4/print_download_dialog.tpl -->
