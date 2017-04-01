<TMPL_IF NAME="OCCCR_ORDER_RESULTS_SEARCH">
    <footer>
        <p>Customer Support - 1-866-277-8407</p>
        <p><a href="http://www.lexisnexis.com/about-us" target="_blank">About LexisNexis</a><a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a><a class="last-child" href="https://risk.custhelp.com/app/ask" target="_blank">Contact Us</a></p>
        <p>
            <a target="_blank" href="http://www.lexisnexis.com/terms/copyright.aspx">Copyright &COPY;</a>
            <script>document.write(new Date().getFullYear())</script> LexisNexis. All rights reserved.
        </p>
        
        <div id="print-dialog-modal" class="modal fade" aria-live="polite" role="dialog" aria-labelledby="printDialogModal" aria-hidden="true">
            <div class="modal-dialog trap">
            </div>
        </div>
        <div id="error-dialog-modal" class="modal fade" aria-live="polite" role="dialog" aria-labelledby="errorDialogModal" aria-hidden="true" data-keyboard="false" data-backdrop="static">
            <div class="modal-dialog trap">
            </div>
        </div>
    
    </footer>
<TMPL_ELSE>
    <TMPL_INCLUDE NAME="verify_password_trigger.tpl">
    <form name="SELECT_GROUP" action="<TMPL_VAR NAME=ACTION_MAIN>" method="post" aria-hidden="true">
        <INPUT type=hidden NAME="SESSION_ID" VALUE="<TMPL_VAR NAME=SESSION_ID>">
        <INPUT type=hidden NAME="CSRF_TOKEN" VALUE="<TMPL_VAR NAME=CSRF_TOKEN>">  
        <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
        <input type="hidden" name="EVENT" value="MYACCOUNT/UPDATE_GROUP_SESSION_PORTAL" class="resettable">
        <input type="hidden" name="GROUPS" value="" class="resettable">
    </form>
    <TMPL_INCLUDE NAME="lexisnexis_footer.tpl">
    <div id="mainModal" class="modal fade bs-example-modal-lg" aria-live="polite" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>          
                    <h2 class="modal-title"> &nbsp;</h2>
                </div>
                <div class="modal-body">
                    <div class="well well-sm"><span class="loading_icon svg-icon-x-large loading-text">Working on the request, please wait...</span></div>
                </div>
            </div>
        </div>
    </div>
    <div id="logout-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="logoutModal" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h2 class="modal-title">Sign Out</h2>
                </div>
                <div class="modal-body">
                    <div>
                        <span>Do you want to save your Search tabs? Tabs are saved until midnight ET.</span>
                        <br/><hr/><br/>
                        <div style="text-align:center;">
                        <button class="btn btn-danger" onclick="update_clear_tabs_prefs('on');" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                        <button class="btn btn-default" onclick="update_clear_tabs_prefs('off');" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
                        </div>
                        <span style="font-family:Verdana; font-size: 8pt;"><br/>
                        <input type="checkbox" title="Do not prompt again" id="NO_CLEAR_TABS_PROMPT" name="NO_CLEAR_TABS_PROMPT"><label for="NO_CLEAR_TABS_PROMPT">Remember this setting. You can change it in your Preferences.</label></span>
                        <br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="clear-freqs-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="clearFreqsModal" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">Clear Frequent Searches Confirmation</h4>
                </div>
                <div class="modal-body">
                    <div style="text-align:center;">
                        <span>Are you sure you want to clear your Frequent Searches List?</span>
                        <br/><br/><br/>
                        <button class="btn btn-danger" onclick="update_clear_freqs_prefs(this,'yes');" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                        <button class="btn btn-default" onclick="update_clear_freqs_prefs(this,'no');" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="rerun-recent-search-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="rerunRecentModal" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h2 class="modal-title">Refresh tab results</h2>
                </div>
                <div class="modal-body">
                    <div>
                        <span>You have changed your preferred number of results per page to display since you generated these search results last. Click OK to refresh your page with preferred number of results to display.</span>
                        <br/><br/><br/>
                    </div>
                </div>
                <div class="modal-footer">
                    <div>
                        <button class="btn btn-default" onclick="force_rerun_recentSearch();" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="refresh-session-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="refreshSessionModal" aria-hidden="true" data-keyboard="false" data-backdrop="static">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title">Security Time Out</h2>
                </div>
                <div class="modal-body">
                    <div>
                        <span id="session_refresh_message">Your session will expire in <span id="remaining_minutes">0</span> minutes (about <span id="sess_expires_at">11:23:45 EST</span>) unless you refresh your session by clicking OK below</span>
                        <span id="session_expired_message" class="hidden">Your session has expired due to inactivity. Please click OK below to sign back in.</span>
                        <br/><br/><br/>
                    </div>
                </div>
                <div class="modal-footer">
                    <div>
                        <button id="session_refresh_btn" class="btn btn-default" onclick="refresh_web20_session();" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
                        <button id="session_expired_btn" class="btn btn-default hidden" onclick="web20_auto_logout();" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="print-dialog-modal" class="modal fade" aria-live="polite" role="dialog" aria-labelledby="printDialogModal" aria-hidden="true">
        <div class="modal-dialog trap">
        </div>
    </div>
    <div id="error-dialog-modal" class="modal fade" aria-live="polite" role="dialog" aria-labelledby="errorDialogModal" aria-hidden="true" data-keyboard="false" data-backdrop="static">
        <div class="modal-dialog trap">
        </div>
    </div>
    <div id="web20-survey-modal" class="modal fade bs-example-modal-sm" data-backdrop="static" data-keyboard="false" aria-live="polite" role="dialog" aria-labelledby="printDialogModal" aria-hidden="true">
        <div class="modal-dialog trap">
        </div>
    </div>
    <div id="web20-survey-final-modal" class="modal fade bs-example-modal-sm" data-backdrop="static" data-keyboard="false" aria-live="polite" role="dialog" aria-labelledby="printDialogModal" aria-hidden="true">
    </div>
    <div id="web20-survey-start-modal" class="modal fade bs-example-modal-sm" data-backdrop="static" data-keyboard="false" aria-live="polite" role="dialog" aria-labelledby="rerunRecentModal" aria-hidden="true">
        <div class="modal-dialog trap">
           <div class="modal-content">
              <div class="modal-header">
                  <h2 class="modal-title">Survey Start!!</h2>
              </div>
              <div class="modal-body">
                  <div>
                      <p>Thank you for taking this survey. When complete, your results will be stored, and the feedback used to make improvements in the future...</p>
                      <p class="hidden">Please click Start below to start the survey.</p>
                  </div>
              </div>
              <div class="modal-footer">
                  <div>
                      <button id="start-survey-button" class="btn btn-danger" type="button">&nbsp;&nbsp;Start Survey&nbsp;&nbsp;</button>
                      <button id="postpone-survey-button" class="btn btn-default" type="button">&nbsp;&nbsp;Maybe Later&nbsp;&nbsp;</button>
                      <button id="decline-survey-button" class="btn btn-default" type="button">&nbsp;&nbsp;Decline&nbsp;&nbsp;</button>
                  </div>
              </div>
          </div>
        </div>
    </div>
    <div id="disable-search-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="disableSearch" aria-hidden="true">
        <div class="modal-dialog trap">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">
               <span aria-hidden="true" class="close-icon"></span>
               <span class="sr-only">Close</span>
              </button>
              <h2 class="modal-title">Disabled Searches</h2>
            </div>
            <div class="modal-body">
                <div class="settings-container">
                    <div id="main_menu_data_ds" class="no-print" data-initialized="0">
                    </div>
                </div>
                <div style="text-align:center;margin:25px 0px 5px;">
                   <input style="width:75px;" type="button" value="OK" class="btn btn-danger" data-dismiss="modal">
                </div>
            </div>
          </div>  
        </div>
    </div>
    <div id="group-select-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="groupSelectModal" aria-hidden="true">
        <div class="modal-dialog trap col-8">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h2 class="modal-title">Select Group</h2>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <label>
                            <span class="form-control-label pull-left col-3 font-bold">Please select a group:</span>
                            <select id="group_select" class="form-control pull-left col-3">
                                <TMPL_LOOP NAME=USER_GROUP_LIST>
                                    <option<TMPL_IF NAME='GROUP_SELECTED'> selected</TMPL_IF> value="<TMPL_VAR NAME=GROUP_ID>">
                                        <TMPL_VAR NAME=GROUP_NAME>
                                    </option>
                                </TMPL_LOOP>
                            </select>
                        </label>
                        <button type="button" onclick="javascript:select_group_v4();" id="continue_group_select_button" class="btn btn-danger pull-left left-spacing-5 continue-group-select">Continue</button>
                        <div id="pw-group-select" onclick="javascript:void(0);" class="pull-left left-spacing-5 hidden"><span class="loading_icon svg-icon-x-large loading-text">Loading...</span></div>
                    </div>
                    <div id="group-desc">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="group-select-confirm-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="groupSelectConfirmModal" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">Change Group Confirmation</h4>
                </div>
                <div class="modal-body">
                    <div style="text-align:center;">
                        <span>Changing to a different group will delete your tabs. Do you want to proceed?</span>
                        <br/><br/><input type="checkbox" title="Do not prompt again" id="NO_CHANGE_GROUP_PROMPT" name="NO_CHANGE_GROUP_PROMPT"><label for="NO_CHANGE_GROUP_PROMPT">&nbsp;Remember this setting. You can change it in your Preferences.</label>
                        <br/><br/><br/>
                        <button class="btn btn-danger" onclick="show_group_modal_proceed(this);" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                        <button class="btn btn-default" data-dismiss="modal" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="single-tab-view-confirm-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="singleTabViewConfirmModal" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">Single-Tab View Switch Confirmation</h4>
                </div>
                <div class="modal-body">
                    <div style="text-align:center;">
                        <span>Changing to single-tab view will delete all but the current tab you are working in. Do you want to proceed?</span>
                        <br/><br/><br/>
                        <button class="btn btn-danger" onclick="set_tab_view_session('single');" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                        <button class="btn btn-default" data-dismiss="modal" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="permissible-purpose-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="permissiblePurposeModal" aria-hidden="true">
        <div class="modal-dialog trap col-8">
            <div class="modal-content">
                <div class="modal-header">
                    <!--
                    <button type="button" class="close" data-dismiss="modal">
                    -->
                    <button type="button" class="close" onclick="close_permissible_modal();">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h2 class="modal-title">Change Permissible Purpose</h2>
                </div>
                <div class="modal-body">
                    <div class="well well-sm"><span class="loading_icon svg-icon-x-large loading-text">Working on the request, please wait...</span></div>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
    <div id="ie8-modal" class="modal">
        <div class="well well-sm"><img src="<TMPL_VAR NAME=IMGPATH>/loading_spinner.gif" width="35" height="35" alt="Loading" />&nbsp;<span class="loading-text"></span></div>
    </div>
</TMPL_IF>
<form name="REDIRECT" action="<TMPL_VAR NAME=ACTION>" method="post" aria-hidden="true" class="hidden"></form>

