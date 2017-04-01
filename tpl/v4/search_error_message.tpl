                <TMPL_IF NAME="MVR_SEARCH_ISSUE">
                    <p><TMPL_VAR NAME="MVR_SEARCH_ISSUE_MESSAGE"></p>
                    <TMPL_IF MVR_SEARCH_ISSUE_DETAILS>
                    <p><TMPL_VAR NAME="MVR_SEARCH_ISSUE_DETAILS"></p>
                    </TMPL_IF>
                    <br /><br />
                    <p>Please <a style="cursor:pointer" href="javascript:$('#error-dialog-modal').modal('hide');$('.modal-footer').removeClass('hidden'); void(0)">edit your search terms</a>, 
                    or <a style="cursor:pointer" href="javascript:$('#error-dialog-modal').modal('hide');$('.modal-footer').removeClass('hidden');show_loading();mvr_local_only_option('SEARCH2/SEARCH_DL_REG','<TMPL_VAR NAME=ACTION_MISC>')">continue with your original search</a>*.</p>
                    <p>*Continuing with your original search may exclude current results from certain states.</p>
                    <script type="text/javascript">$(document).ready(function(){$(".modal-footer").addClass('hidden'); });</script>
                <TMPL_ELSE>
                    <div id="error-body" class="wordwrap-normal clear">
                        <TMPL_UNLESS BRIDGER_ERROR_MESSAGE_DONT_SHOW>
                        <div id="bridger-message" class="hidden">
                            <p><strong>Your file is being exported to Bridger Insight&trade; XG.</strong></p>
                            <hr class="simple">
                            <br/>
                        </div>
                        <div id="bridger-empty-finished" class="hidden">
                            Exported files can be found on the Record Details tab in the Record Attachment section.
                            <br/>
                            It may take up to five minutes for documents to appear in Bridger Insight&trade; XG.
                            <br/>
                            <br/>
                            <br/>
                            You can continue to work within LexisNexis<sup class="sup-reg-symbol">&reg;</sup> <TMPL_VAR NAME="SKIN_NAME"> or Bridger Insight&trade; XG after closing this window.
                            <br/>
                            <br/>
                        </div>
                        </TMPL_UNLESS>
                        <TMPL_UNLESS SEARCH_ERROR_MESSAGE_DONT_SHOW>
                        <TMPL_IF NAME="SEARCH_ERROR_MESSAGE_PRE">
                        <p><TMPL_VAR NAME="SEARCH_ERROR_MESSAGE_PRE"><br /><TMPL_IF SHOW_PERMISSIBLE_USES_FOR_ADD_CONTENT><span class="error-modal-date-time"><TMPL_VAR NAME=EXECUTION_DATE> <TMPL_VAR NAME=EXECUTION_TIME></span></TMPL_IF></p>
                        </TMPL_IF>
                        <p>
                            <strong><TMPL_VAR NAME="SEARCH_ERROR_MESSAGE"></strong>
                            <TMPL_IF SHOW_PERMISSIBLE_USES_FOR_ADD_CONTENT>
                                <br /><span class="error-modal-date-time"><TMPL_VAR NAME=EXECUTION_DATE> <TMPL_VAR NAME=EXECUTION_TIME></span>
                            </TMPL_IF>
                        </p>
                        </TMPL_UNLESS>
                        <TMPL_IF SEARCH_ERROR_MESSAGE_AUX>
                            <p>
                                <TMPL_VAR NAME="SEARCH_ERROR_MESSAGE_AUX">
                                <TMPL_IF SHOW_PERMISSIBLE_USES_FOR_ADD_CONTENT>
                                    <br /><span class="error-modal-date-time"><TMPL_VAR NAME=EXECUTION_DATE> <TMPL_VAR NAME=EXECUTION_TIME></span>
                                </TMPL_IF>
                            </p>
                        </TMPL_IF>
                        <TMPL_IF NAME="WEB20_IE_8_FAILED_CLICK_SEARCH">
                        <p>
                            <b>Search:</b> <TMPL_VAR NAME="CLK_SEARCH_PAGE_TITLE">
                        </p>
                        <div class="relative">
                        <TMPL_IF NAME="CLK_SEARCH_TERMS">
			    <strong>Search Terms:</strong>	
                            <div id="search-terms-nodoc-con">
                                <span id="search-terms-nodoc-span">
                                    <TMPL_LOOP NAME="SEARCH_TERMS">
                                        <span data-term-name="<TMPL_VAR NAME="TERM_NAME">"><TMPL_UNLESS NAME="__first__">;&nbsp</TMPL_UNLESS><TMPL_VAR NAME="TERM_NAME">: </span><strong class="search-term-text"><TMPL_VAR NAME="TERM_VALUE"></strong>
                                    </TMPL_LOOP>
                                </span>
                            </div>
                        </TMPL_IF>
                        <TMPL_UNLESS WEB20_PRINT_DOWNLOAD>
                            <span id="search-terms-nodoc-tooltip" class="tooltip hover delay-750ms wrapable max-7 tooltip-left hidden">
                                <TMPL_LOOP NAME="SEARCH_TERMS">
                                    <TMPL_IF NAME="TERM_NAME"><span class="nodoc-term-wrapper"><span class="search-term-label"><TMPL_VAR NAME="TERM_NAME"></span>:&nbsp;</TMPL_IF><TMPL_IF NAME="TERM_VALUE"><span class="search-term-text"><strong><TMPL_VAR NAME="TERM_VALUE"></strong></span></TMPL_IF><TMPL_UNLESS NAME="__last__">;</span></TMPL_UNLESS>
                                </TMPL_LOOP>
                            </span>
                        </TMPL_UNLESS>
                        </div>
                        <TMPL_IF SHOW_ADDITIONAL_CONTENT>
                            <div id="search-tems-additional-con"><strong>Additional Content: </strong><TMPL_LOOP NAME="SHOW_ADDITIONAL_CONTENT"><span data-term-name="<TMPL_VAR NAME="TERM_NAME">"><TMPL_UNLESS NAME="__first__">;&nbsp;</TMPL_UNLESS><TMPL_VAR NAME="TERM_NAME">: </span><strong class="search-term-text"><TMPL_VAR NAME="TERM_VALUE"></strong></TMPL_LOOP></div>
                        </TMPL_IF>
                        <TMPL_ELSE>
                            <b>Search:</b> <TMPL_VAR NAME="PAGE_TITLE">
                        <div class="relative">
                        <TMPL_IF NAME="SEARCH_TERMS">
                            <div id="search-terms-nodoc-con">
			      	<strong>Search Terms:</strong>
                                <span id="search-terms-nodoc-span">
                                    <TMPL_LOOP NAME="SEARCH_TERMS">
                                        <span data-term-name="<TMPL_VAR NAME="TERM_NAME">"><TMPL_UNLESS NAME="__first__">;&nbsp</TMPL_UNLESS><TMPL_VAR NAME="TERM_NAME">: </span><strong class="search-term-text"><TMPL_VAR NAME="TERM_VALUE"></strong>
                                    </TMPL_LOOP>
                                </span>
                            </div>
                        </TMPL_IF>
                        <TMPL_UNLESS WEB20_PRINT_DOWNLOAD>
                            <span id="search-terms-nodoc-tooltip" class="tooltip hover delay-750ms wrapable max-7 tooltip-left hidden">
                                <TMPL_LOOP NAME="SEARCH_TERMS">
                                    <TMPL_IF NAME="TERM_NAME"><span class="nodoc-term-wrapper"><span class="search-term-label"><TMPL_VAR NAME="TERM_NAME"></span>:&nbsp;</TMPL_IF><TMPL_IF NAME="TERM_VALUE"><span class="search-term-text"><strong><TMPL_VAR NAME="TERM_VALUE"></strong></span></TMPL_IF><TMPL_UNLESS NAME="__last__">;</span></TMPL_UNLESS>
                                </TMPL_LOOP>
                            </span>
                        </TMPL_UNLESS>
                        </div>
                        <TMPL_IF SHOW_ADDITIONAL_CONTENT>
                            <div id="search-tems-additional-con"><strong>Additional Content: </strong><TMPL_LOOP NAME="SHOW_ADDITIONAL_CONTENT"><span data-term-name="<TMPL_VAR NAME="TERM_NAME">"><TMPL_UNLESS NAME="__first__">;&nbsp;</TMPL_UNLESS><TMPL_VAR NAME="TERM_NAME">: </span><strong class="search-term-text"><TMPL_VAR NAME="TERM_VALUE"></strong></TMPL_LOOP></div>
                        </TMPL_IF>
                        </TMPL_IF>
                        <TMPL_IF SHOW_PERMISSIBLE_USES_FOR_ADD_CONTENT>
                            <TMPL_IF NAME=HID_DPPA_PERMISSBLE_USE>
                                <TMPL_INCLUDE NAME="include_permissible_uses.tpl">
                            <TMPL_ELSE>
                                <TMPL_IF NAME=HID_GLBA_PERMISSBLE_USE>
                                    <TMPL_INCLUDE NAME="include_permissible_uses.tpl">
                                <TMPL_ELSE>
                                    <TMPL_IF NAME=HID_DMF_PERMISSBLE_USE>
                                        <TMPL_INCLUDE NAME="include_permissible_uses.tpl">
                                    </TMPL_IF>
                                </TMPL_IF>
                            </TMPL_IF>
                        </TMPL_IF>
                        <TMPL_IF HINTS>
                            <div>
                                <b>Additional Details:</b>
                                <TMPL_LOOP NAME="HINTS">
                                    <div>
                                        <span><TMPL_VAR NAME="HINT"></span>
                                    </div>
                                </TMPL_LOOP>
                            </div>
                        </TMPL_IF>
                        <TMPL_IF ROXIE_ERROR>
                            <br />If this continues or you need assistance, please contact LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Customer Support at 1-866-277-8407.<br />
                        </TMPL_IF>
                        <input type="hidden" name="ERROR_MESSAGE_BLOB" value="<TMPL_VAR NAME="ERROR_MESSAGE_BLOB">">
                    </div>
                </TMPL_IF>
