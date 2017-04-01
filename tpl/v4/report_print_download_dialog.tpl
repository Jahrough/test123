<!-- BEGIN: v4/report_print_download_dialog.tpl -->
<script type="text/javascript">

var is_admin_report = false;
var is_source_docs_report = false;

<TMPL_IF PHP_HIST_RANGE_DOWNLOAD>
var php_hist_range_download = true;
<TMPL_ELSE>
var php_hist_range_download = false;
</TMPL_IF>

<TMPL_IF ALLOW_CSV_DOWNLOAD>
var allow_csv_download = true;
<TMPL_ELSE>
var allow_csv_download = false;
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
            <h4 class="modal-title"><TMPL_IF NAME="DOWNLOAD">Download</TMPL_IF><TMPL_IF NAME="bridger">Export</TMPL_IF><TMPL_IF NAME="PRINT">Print</TMPL_IF> Report</h4>
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
                <div id="bridger-report-message" class="hidden">
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Name: <strong><TMPL_VAR NAME="BRIDGER_FILE">View Report - <span id="bridger-date"></span>.pdf</strong>
                    <br/>
                    <br/>
                    You can continue to work within LexisNexis<sup class="sup-reg-symbol">&reg;</sup> <TMPL_VAR NAME="SKIN_NAME"> or Bridger Insight&trade; XG after closing this window.
                </div>
                <form name="PRINT_FORM" id="report_print_download" class="smart-form print-download-form" method="POST" ACTION="">
                    <div class="col-xs-12 col-sm-12">
                        <TMPL_IF NAME="DOWNLOAD">
                        <fieldset>
                            <section>
                                <div class="row"><strong>Download Format</strong></div>
                                <div class="row">
                                    <div class="col">Download type</div>
                                    <section class="col col-3">
                                        <label class="select">
                                            <select name="DOWNLOAD_FORMAT" id="DOWNLOAD_FORMAT">
                                              <TMPL_UNLESS PHP_HIST_RANGE_DOWNLOAD>
                                                <option value="PDF">Adobe&reg; PDF (.pdf)</option>
                                                <option value="HTML">HTML (.html)</option>
                                                <TMPL_IF ALLOW_CSV_DOWNLOAD>
                                                  <option value="CSV">Comma-separated values (.csv)</option>
                                                  <option value="CSV">Excel (.xls)</option>
                                                </TMPL_IF>
                                                <!--  <option value="RTF" disabled>Rich text format (.rtf)</option> -->
                                                <!--  <option value="TXT" disabled>Text (.txt)</option> -->
                                              <TMPL_ELSE>
                                                <option value="CSV">Excel</option>  
                                              </TMPL_UNLESS>  
                                            </select>
                                        </label>
                                    </section>
                                </div>
                            </section>
                        </fieldset>
                        </TMPL_IF>
                        <TMPL_IF NAME="bridger">
                            <input type="hidden" id="DOWNLOAD_FORMAT" name="DOWNLOAD_FORMAT" value="REXPORT"/>
                        </TMPL_IF>
                        <fieldset>
                            <section>
                                <div class="row">
                                    <strong>Formatting Options</strong>
                                </div>
                                <div class="row">
                                    <label class="checkbox-inline" style="margin-left:10px;">
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
                        <TMPL_IF NAME="ALL_SOURCES_COUNT">
                        <fieldset>
                            <section>
                                <div class="row">
                                    <strong>Source Documents</strong>
                                </div>
                                <div class="row">
                                    <div class="col col-9">
                                        <label class="radio-inline">
                                            <input type="radio" value="NONE" name="REPORT_SOURCE_DOC" checked="checked"><i></i>None</label>
                                        </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col col-9">
                                        <label class="radio-inline">
                                            <input type="radio" value="ALL" name="REPORT_SOURCE_DOC"><i></i>All (<TMPL_VAR NAME="ALL_SOURCES_COUNT"> documents)</label>
                                        </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col col-9">
                                        <label class="radio-inline">
                                            <input type="radio" value="SELECTED_RESULTS" name="REPORT_SOURCE_DOC"><i></i>Selected Sources</label>
                                        </label>
                                    </div>
                                    <div class="col col-9" style="margin-left:50px;">
                                        <label class="input state-disabled">
                                            <TMPL_IF SOURCE_COUNTS_LOOP>
                                                <TMPL_LOOP SOURCE_COUNTS_LOOP>
                                                    <label class="checkbox">
                                                        <input type="checkbox" disabled="disabled"<TMPL_UNLESS NAME="DISABLED"> class="SrcDocsChkBox"</TMPL_UNLESS> name="<TMPL_VAR NAME="INPUT">"><i> </i><TMPL_VAR NAME="LABEL">&nbsp;(<TMPL_VAR NAME="COUNT"> documents)
                                                    </label>
                                                </TMPL_LOOP>
                                            </TMPL_IF>
                                        </label>  
                                    </div>
                                </div>
                            </section>
                        </fieldset>
                        </TMPL_IF>
                        <TMPL_IF NAME="DOWNLOAD">
                        <fieldset>
                            <section>
                                <div class="row"><strong>Name Report (Optional)</strong></div>
                                <div class="row">
                                    <div class="col col-2">File name:</div>
                                    <div class="col col-8">
                                        <label class="input">
                                        <input type="text" id="DOWNLOAD_FILE_NAME" name="DOWNLOAD_FILE_NAME" value="<TMPL_VAR DOWNLOAD_FILE_NAME>" placeholder="Results.pdf">
                                        </label>
                                    </div>
                                </div>
                            </section>
                        </fieldset>
                        </TMPL_IF>
                    </div>
                    <br/><br/><br/>
                    <INPUT type="hidden" name="RECENT_SEARCH_INDEX" value="<TMPL_VAR NAME="RECENT_SEARCH_INDEX">">
                    <INPUT type="hidden" name="EVENT" value="WEB20_DOWNLOAD/DOWNLOAD">
                    <INPUT type="hidden" name="REPORT_TYPE" value="<TMPL_VAR NAME="REPORT_TYPE">">
                    <INPUT type="hidden" name="DYNAMIC_CSS" value="<TMPL_VAR DYNAMIC_CSS>">
                    <INPUT type="hidden" name="PHP_HIST_RANGE_DOWNLOAD" value="<TMPL_VAR PHP_HIST_RANGE_DOWNLOAD>">
                    <TMPL_IF NOTES_LOOP>
                      <TMPL_LOOP NOTES_LOOP>
                        <INPUT type="hidden" name="<TMPL_VAR NAME>" value="<TMPL_VAR VALUE>">
                      </TMPL_LOOP>
                    </TMPL_IF>
                    
                    <TMPL_IF CHECKBOX_LOOP>
                      <TMPL_LOOP CHECKBOX_LOOP>
                        <INPUT type="hidden" name="<TMPL_VAR NAME>" value="<TMPL_VAR VALUE>">
                      </TMPL_LOOP>
                    </TMPL_IF>

                    <TMPL_IF EXPANDED_LOOP>
                      <TMPL_LOOP EXPANDED_LOOP>
                        <INPUT type="hidden" name="<TMPL_VAR NAME>" value="<TMPL_VAR VALUE>">
                      </TMPL_LOOP>
                    </TMPL_IF>
                    
                    <INPUT type="hidden" name="IS_WEBPUBREC_SEARCH" value="<TMPL_VAR IS_WEBPUBREC_SEARCH>">
                    <div class="print-download-button-wrapper">
                        <button class="btn btn-danger" onclick="do_verify_print_download(this,'<TMPL_VAR NAME="TYPE">','<TMPL_VAR NAME="PAGE_TITLE">');" type="button">
                                &nbsp;&nbsp;
                                <TMPL_IF NAME="DOWNLOAD">Download</TMPL_IF>
                                <TMPL_IF NAME="bridger">Export</TMPL_IF>
                                <TMPL_IF NAME="PRINT">Print</TMPL_IF>
                                &nbsp;&nbsp;
                        </button>
                        <button class="btn btn-default" onclick="close_print_dialog();" type="button">&nbsp;&nbsp;Cancel&nbsp;&nbsp;</button>
                    </div>
                </form>
            </TMPL_IF>
        </div>
    </div>
</div>
<!-- END: v4/report_print_download_dialog.tpl -->
