<header id="search-form-header">
    <h2>
        <strong><TMPL_VAR NAME="PAGE_TITLE"></strong>
    </h2>
    <div class="additional-info" id="add_to_fav">
        <button type="button" class="favorites-star-red svg-icon-normal btn btn-link">
            <span class="tooltip centered">Add to Favorites</span>
        </button>
    </div>
    <div id="header-addl-wrapper">
        <div id="form-help-icon-container">
            <span class="additional-info">
                <a href="javascript:void(0);" class="help-search help-icon svg-icon-tiny">
                    <span class="tooltip centered">Help</span>
                </a>
            </span>
        </div>

        <div class="additional-info" id="search-form-actions">
            <TMPL_IF NAME="SHOW_SAMPLE_REPORT">
                <TMPL_IF NAME="FAP_SEARCH">
                    <a href="javascript:void(0);" class="button-icon ctrls-text-link" data-toggle="dropdown">Sample Report <span class="fa fa-caret-down"></span><span class="sr-only"> (open sample report menu)</span></a>
                    <ul role="menu" class="dropdown-menu auto-right-align">
                        <li>
                            <a href="#" onClick="javascript:show_post_popup('SEARCH/SHOW_SAMPLE_REPORT','SampleReportWindow','','','','','',1,1,'','','','<INPUT type=\'hidden\' name=\'SEARCH_NAME\' value=\'<TMPL_VAR NAME=SEARCH_NAME>\'><INPUT type=\'hidden\' name=\'FAP_SMARTLINX_PAGE\' value=\'1\'>'); return false;" class="button-icon ctrls-text-link">SmartLinx<sup>&reg;</sup> Person Report</a>
                        </li>
                        <li>
                            <a href="#" onClick="javascript:show_post_popup('SEARCH/SHOW_SAMPLE_REPORT','SampleReportWindow','','','','','',1,1,'','','','<INPUT type=\'hidden\' name=\'SEARCH_NAME\' value=\'<TMPL_VAR NAME=SEARCH_NAME>\'>'); return false;" class="button-icon ctrls-text-link">Find a Person Search Results</a>
                        </li>
                    </ul>
                <TMPL_ELSE>
                    <TMPL_IF NAME="BUSINESS_ASSURANCE_SEARCH">
                        <a href="javascript:void(0);" class="button-icon ctrls-text-link" data-toggle="dropdown">Sample Report <span class="fa fa-caret-down"></span><span class="sr-only"> (open sample report menu)</span></a>
                        <ul role="menu" class="dropdown-menu auto-right-align">
                            <li>
                                <a href="#" onClick="javascript:show_post_popup('SEARCH/SHOW_SAMPLE_REPORT','SampleReportWindow','','','','','',1,1,'','','','<INPUT type=\'hidden\' name=\'SEARCH_NAME\' value=\'<TMPL_VAR NAME=SEARCH_NAME>\'>'); return false;" class="button-icon ctrls-text-link">Base Business Report</a>
                            </li>
                            <li>
                                <a href="#" onClick="javascript:show_post_popup('SEARCH/SHOW_SAMPLE_REPORT','SampleReportWindow','','','','','',1,1,'','','','<INPUT type=\'hidden\' name=\'SEARCH_NAME\' value=\'<TMPL_VAR NAME=SEARCH_NAME>\'><INPUT type=\'hidden\' name=\'BUSINESS_PRINCIPAL_PAGE\' value=\'1\'>'); return false;" class="button-icon ctrls-text-link">Base Business Principal Report</a>
                            </li>
                            <li>
                                <a href="#" onClick="javascript:show_post_popup('SEARCH/SHOW_SAMPLE_REPORT','SampleReportWindow','','','','','',1,1,'','','','<INPUT type=\'hidden\' name=\'SEARCH_NAME\' value=\'<TMPL_VAR NAME=SEARCH_NAME>\'><INPUT type=\'hidden\' name=\'COMPREHENSIVE_PRINCIPAL_PAGE\' value=\'1\'>'); return false;" class="button-icon ctrls-text-link">Comprehensive Business Principal Report</a>
                            </li>
                            <li>
                                <a href="#" onClick="javascript:show_post_popup('SEARCH/SHOW_SAMPLE_REPORT','SampleReportWindow','','','','','',1,1,'','','','<INPUT type=\'hidden\' name=\'SEARCH_NAME\' value=\'<TMPL_VAR NAME=SEARCH_NAME>\'><INPUT type=\'hidden\' name=\'COMMERCIAL_REAL_ESTATE_PAGE\' value=\'1\'>'); return false;" class="button-icon ctrls-text-link">Commercial Real Estate Report</a>
                            </li>
                            <li>
                                <a href="#" onClick="javascript:show_post_popup('SEARCH/SHOW_SAMPLE_REPORT','SampleReportWindow','','','','','',1,1,'','','','<INPUT type=\'hidden\' name=\'SEARCH_NAME\' value=\'<TMPL_VAR NAME=SEARCH_NAME>\'><INPUT type=\'hidden\' name=\'COMMERCIAL_LEASING_PAGE\' value=\'1\'>'); return false;" class="button-icon ctrls-text-link">Commercial Leasing Report</a>
                            </li>
                            <li>
                                <a href="#" onClick="javascript:show_post_popup('SEARCH/SHOW_SAMPLE_REPORT','SampleReportWindow','','','','','',1,1,'','','','<INPUT type=\'hidden\' name=\'SEARCH_NAME\' value=\'<TMPL_VAR NAME=SEARCH_NAME>\'><INPUT type=\'hidden\' name=\'COMMERCIAL_LENDING_PAGE\' value=\'1\'>'); return false;" class="button-icon ctrls-text-link">Commercial Lending Report</a>
                            </li>
                            <li>
                                <a href="#" onClick="javascript:show_post_popup('SEARCH/SHOW_SAMPLE_REPORT','SampleReportWindow','','','','','',1,1,'','','','<INPUT type=\'hidden\' name=\'SEARCH_NAME\' value=\'<TMPL_VAR NAME=SEARCH_NAME>\'><INPUT type=\'hidden\' name=\'PARTNER_VENDOR_PAGE\' value=\'1\'>'); return false;" class="button-icon ctrls-text-link">Partner / Vendor Report</a>
                            </li>
                            <li>
                                <a href="#" onClick="javascript:show_post_popup('SEARCH/SHOW_SAMPLE_REPORT','SampleReportWindow','','','','','',1,1,'','','','<INPUT type=\'hidden\' name=\'SEARCH_NAME\' value=\'<TMPL_VAR NAME=SEARCH_NAME>\'><INPUT type=\'hidden\' name=\'SMALL_BUSINESS_PAGE\' value=\'1\'>'); return false;" class="button-icon ctrls-text-link">Small Business Report</a>
                            </li>
                        </ul>
                    <TMPL_ELSE> 
                   		<a href="#" onClick="javascript:show_post_popup('SEARCH/SHOW_SAMPLE_REPORT','SampleReportWindow','','','','','',1,1,'','','','<INPUT type=\'hidden\' name=\'SEARCH_NAME\' value=\'<TMPL_VAR NAME=SEARCH_NAME>\'>'); return false;"  class="button-icon ctrls-text-link">Sample Report</a>
                    </TMPL_IF> 
                </TMPL_IF> 
            </TMPL_IF>
            <a href="javascript:void(0);" id="source-link" class="button-icon ctrls-text-link">Source</a>
            <TMPL_INCLUDE NAME="start_page.tpl">
        </div>
    </div>
</header>
