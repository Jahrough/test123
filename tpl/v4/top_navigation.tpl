<TMPL_UNLESS NAME="OCCCR_ORDER_RESULTS_SEARCH">
<nav id="top-navigation" class="navbar navbar-inverse clear no-print">
    <div class="container pull-left top-section">
        <div>        
            <ul class="nav navbar-nav pull-left" id="bs-example-navbar-collapse-1">
                <li>
                    <a href="javascript:maybe_show_prefs_save_dialog(get_history_data);">History</a>
                </li>
            </ul>
            
            <div id="delivery-tray-container" class="hidden">
              <img id="delivery-tray-folder-icon" src="<tmpl_var name=IMGPATH>/delivery-tray-folder-icon.svg" alt="Delivery Tray" onclick="javascript:get_delivery_tray()" />
              <p id="delivery-tray-count"><TMPL_VAR NAME=DELIVERY_TRAY_COUNT></p>
            </div>

            <div class="navbar-form pull-right" role="search" id="quick-search">
                <div id="quick-search-dropdown" class="input-group-btn qs-more-searches">
                    <button class="btn dropdown btn-default2 search-icon dropdown-toggle svg-icon-tiny" type="button" data-toggle="dropdown">   
                        <span class="fa fa-caret-down"></span>
                        <span class="sr-only">Open search within menu</span>                        
                    </button>
                    <ul role="menu" class="dropdown-menu">
                        <TMPL_UNLESS DISABLE_PERSON>
                        <li>
                            <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter SSN" data-qsoption="SSN" data-maxlength="" data-qs-permission="people_IDX_0">SSN Lookup</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter Address" data-qsoption="Address" data-maxlength="130" data-qs-permission="people_IDX_0">Address</a>
                        </li>
                        </TMPL_UNLESS>
                        <TMPL_UNLESS DISABLE_DA_BASIC>
                        <li>
                            <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter Phone" data-qsoption="Phone" data-maxlength="" data-qs-permission="phones_IDX_79">Reverse Phone</a>
                        </li>
                        </TMPL_UNLESS>
                        <TMPL_UNLESS DISABLE_BUS>
                        <li>
                            <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter Company" data-qsoption="Company" data-maxlength="" data-qs-permission="business_IDX_13">Company Name</a>
                        </li>
                        </TMPL_UNLESS>
                        <TMPL_IF REAL>
                            <li>
                                <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter APN" data-qsoption="Location" data-maxlength="" data-qs-permission="assets_IDX_118">Assessor Parcel Number</a>
                            </li>
                        </TMPL_IF>
                    </ul>
                </div>
                <div class="form-group"> 
                    <div class="col input">  
                        <label for="QS_TEXT">                 
                            <input autocomplete="off" name="QS_TEXT" id="QS_TEXT" class="form-control qs-input" placeholder="Enter SSN" type="text" onkeypress="javascript:submitQuickKeyPress(event)" onkeyup="javascript:dokey_stop_flag=false;"/>
                            <span class="tooltip qs_text_tip tooltip-35">Enter SSN</span>
                        </label>
                    </div>

                    <div class="col input">
                        <label for="QS_REFERENCE_CODE">
                            <input class="form-control qs-input" id="QS_REFERENCE_CODE" name="QS_REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>" maxlength="<TMPL_VAR NAME=REFERENCE_CODE_MAX_LENGTH>" <TMPL_IF NAME="GROUP_REFERENCE_CODE">readonly="readonly"</TMPL_IF> placeholder="Enter Reference ID" type="text" onkeypress="javascript:submitQuickKeyPress(event)">
                            <span class="tooltip tooltip-35">Enter Reference ID</span>
                        </label>
                    </div>
                </div>
                <button class="btn btn-success qs-go-button" type="button" id="quickSearchBtn">Go</button>
            </div>
        </div>
    </div>                               
</nav>
</TMPL_UNLESS>
