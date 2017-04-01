<!DOCTYPE html>
<html lang="en">
<head>
    <!-- begin v4/report/report_new_win_error.tpl -->
    <!--<TMPL_VAR NAME=SERVER_ID>-->
    <TMPL_INCLUDE NAME="includes.tpl">
    <style>
        #error-dialog-modal {
            display: block;
        }
    </style>
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
    <div id="main" class="clear">
        <header>
            <h1>
                <TMPL_IF AML>
                    <img src="<tmpl_var name=IMGPATH>/LN-AML-Insight.png" alt="LexisNexis&copy; AML Insight&trade;"/>
                <TMPL_ELSE>
                    <img src="<tmpl_var name=IMGPATH>/LN-RSKM.png" alt="LexisNexis&copy; Risk Management Solutions&reg;"/>
                </TMPL_IF>
            </h1>
        </header>
    </div>
    <TMPL_INCLUDE NAME="lexisnexis_footer.tpl">
    <div id="error-dialog-modal" class="modal fade in">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" onclick="javascript:window.close();return false;">
                        <span aria-hidden="true">x</span>
                        <span class="sr-only">Close</span>
                    </button>
                    <div class="print-download-buttons pull-right padding-right-5">
                        <div class="additional-info">
                            <button type="button" data-placement="bottom" class="btn-actions btn print-icon svg-icon-tiny" data-original-title="Print Results" aria-label="Print Results" onclick="error_dialog_toggle_print();"></button>
                            <span class="tooltip tooltip-35 hover">Print</span>
                        </div>
                        <div class="additional-info">
                            <button type="button" data-placement="bottom" class="btn-actions btn download-icon svg-icon-tiny" data-original-title="Download" aria-label="Download" onclick="error_dialog_toggle_download();"></button> 
                            <span class="tooltip tooltip-35 hover">Download</span>
                        </div>                        
                    </div>
                    <h2 class="modal-title"><TMPL_IF NAME="ERROR_MESSAGE_TITLE"><TMPL_VAR NAME="ERROR_MESSAGE_TITLE"><TMPL_ELSE>Error</TMPL_IF></h2>
                </div>
                <div class="modal-body">
                    <div class="col col-xs-12 col-sm-12">
                        <div class="hidden" id="print-bar">
                            <div class="row">
                                <div class="col col-sm-8">
                                    <textarea class="error-dialog custom-scroll form-control" id="error-print" rows="1" placeholder="Add a Brief Note" maxlength="1000"></textarea>
                                </div>
                                <div class="col col-sm-2 pull-right">
                                    <button type="button" class="btn btn-danger" onclick="javascript:error_dialog_print_now();">Print</button>
                                </div>
                            </div>
                            <h2></h2>
                        </div>
                        <div class="hidden" id="download-bar"> 
                            <div class="row">
                                <div class="col col-sm-2">
                                	<label for="DOWNLOAD_FORMAT">Download type: </label>
                                </div>
                                <div class="col col-sm-4">
                                    <select id="DOWNLOAD_FORMAT" name="DOWNLOAD_FORMAT" class="form-control">
                                        <option value="PDF">Adobe&reg; PDF (.pdf)</option>
                                        <option value="CSV">Comma-separated values (.csv)</option>
                                        <option value="EXCEL">Excel (.csv)</option>
                                        <option value="HTML">HTML (.html)</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-2">
                                	<label for="DOWNLOAD_FILE_NAME">File name:</label>
                                </div>
                                <div class="col col-sm-4">
                                    <input type="text" id="DOWNLOAD_FILE_NAME" name="DOWNLOAD_FILE_NAME" class="form-control" value="" placeholder="Error.pdf">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-8">
                                    <textarea class="error-dialog custom-scroll form-control" id="error-download" rows="1" name="DOWNLOAD_NOTE" placeholder="Add a Brief Note" maxlength="1000"></textarea>
                                </div>
                                <div class="col col-sm-2 pull-right">
                                    <button type="button" class="btn btn-danger" onclick="javascript:error_dialog_download_now();">Download</button>
                                </div>
                            </div>
                            <h2></h2>
                        </div>
                        <div class="hidden" id="bridger-bar">
                            <div class="row">
                                <div class="col col-sm-2 pull-right">
                                    <button type="button" class="btn btn-danger" onclick="javascript:error_dialog_bridger_now();">Export</button>
                                </div>
                            </div>
                            <h2></h2>
                        </div>                        
                    </div>
                    <TMPL_INCLUDE NAME="search_error_message.tpl">
                </div>
                <div class="modal-footer">
                    <div class="text-center" id="new-edit-buttons">
                        <button type="button" class="btn btn-danger" onclick="javascript:window.close();return false;">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-backdrop fade in"></div>    
</body>
</html>
<!-- end v4/report/report_new_win_error.tpl -->
