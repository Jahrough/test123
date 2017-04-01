
<div>
    <div id="search-results-pw" class="col-sm-12 hidden">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">x</span>
                        <span class="sr-only">Close</span>
                    </button>
                    <TMPL_UNLESS search_disabled>
	                    <div class="print-download-buttons pull-right padding-right-5">
	                        <div class="additional-info">
	                            <button type="button" data-placement="bottom" class="btn-actions btn print-icon svg-icon-tiny" data-original-title="Print Results" aria-label="Print Results" onclick="error_dialog_toggle_print();"></button>
	                            <span class="tooltip tooltip-35 hover">Print</span>
	                        </div>
	                        <div class="additional-info">
	                            <button type="button" data-placement="bottom" class="btn-actions btn download-icon svg-icon-tiny" data-original-title="Download" aria-label="Download" onclick="error_dialog_toggle_download();"></button> 
	                            <span class="tooltip tooltip-35 hover">Download</span>
	                        </div>
	                        <TMPL_IF BRIDGER_DISPLAY_NOT_FOUND>
	                        <div class="additional-info">
	                            <button type="button" data-placement="bottom" class="btn-actions btn external_link_icon svg-icon-x-tiny has-text" data-original-title="Download" aria-label="Download" onclick="error_dialog_bridger_now();"> 
	                             Export to XG&nbsp;&nbsp;
	                             </button> 
	                            <span class="tooltip tooltip-35 hover">Export to XG</span>
	                        </div>
	                        </TMPL_IF>
	                    </div>
	              	</TMPL_UNLESS>
                    <h2 class="modal-title"><TMPL_IF NAME="ERROR_MESSAGE_TITLE"><TMPL_VAR NAME="ERROR_MESSAGE_TITLE"><TMPL_ELSE>Error</TMPL_IF></h2>
                    <h3 class="modal-title"></h3>
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
                                    <textarea class="error-dialog custom-scroll form-control" id="error-download" rows="1" name="DOWNLOAD_NOTE" placeholder="Add a Brief Note" maxlength="1000"/></textarea>
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
                    <div class="text-center hidden" id="new-edit-buttons">
                        <button type="button" class="btn btn-danger" id="edit-button-on-error" onclick="javascript:portal_edit_search(<TMPL_IF NAME="IS_FROM_QS"><TMPL_VAR NAME="IS_FROM_QS"><TMPL_ELSE><TMPL_VAR NAME="IS_FROM_FORM"></TMPL_IF>);">Edit Search</button>                        
                        <button type="button" class="btn btn-default" id="new-button-on-error" onclick="javascript:web20_clear_all();portal_new_search(<TMPL_VAR NAME="IS_FROM_FORM">);">New Search</button>
                        <button type="button" class="btn btn-danger hidden" id="close-button-on-error" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
