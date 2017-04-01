<TMPL_INCLUDE NAME="search_frequent_favorites_navbar.tpl">
<TMPL_IF NEW_WIN>
    <textarea id="new-win-history-tab-data" class="hidden">
<TMPL_ELSE>
    <ul id="history-tab-ul" class="nav nav-tabs multi-tab-view<TMPL_IF MAIN_MENU> hidden</TMPL_IF>">
</TMPL_IF>
<TMPL_IF rcs_loop>
    <TMPL_LOOP rcs_loop>
        <li class="btn-group history-tab dropdown<TMPL_IF is_active> active</TMPL_IF> <TMPL_IF IS_SHOW_FORM_TAB> form-tab<TMPL_ELSE> not-form-tab</TMPL_IF>" data-paramli="<TMPL_VAR lnk>" data-isactive="<TMPL_IF is_active>1<TMPL_ELSE>0</TMPL_IF>" data-islocked="<TMPL_IF locked>1<TMPL_ELSE>0</TMPL_IF>">
            <div class="btn-group" data-paramrecent="<TMPL_VAR lnk>">
                <button data-focus="tab_<TMPL_VAR lnk>" class="btn fa fa-caret-down dropdown-toggle <TMPL_IF is_active>btn-danger<TMPL_ELSE>btn-default</TMPL_IF>" data-toggle="dropdown" data-hide-dropdown-icon="<TMPL_IF NAME="is_show_form_tab">1<TMPL_ELSE>0</TMPL_IF>">
                    <span class="sr-only">Open tab options</span>
                </button>
                <button data-container=".nav-tabs" data-toggle="popover" data-placement="top" data-trigger="hover" data-closebutton="off" class="tab-crit btn btn-lg <TMPL_IF is_active>btn-danger<TMPL_ELSE>btn-default</TMPL_IF>" onclick="<TMPL_IF NAME="IS_SHOW_FORM_TAB">pm_tab_v3('<TMPL_VAR LNK>');<TMPL_ELSE>process_tab_request(this,'<TMPL_VAR lnk>',<TMPL_VAR is_report> ,1);</TMPL_IF>">
                    <span data-searchtype="<TMPL_VAR title>" data-tabshowevt="<TMPL_VAR NAME="TAB_SHOW_EVENT">"  class="svg-icon-normal <TMPL_VAR icon_class>"></span>
                    <span class="history-tab-data" data-value="<TMPL_VAR full_crit>" data-shortvalue="<TMPL_VAR crit>" aria-hidden="true"><TMPL_VAR crit></span>
                </button>
		<div class="popper-content hide"><div class="popover-font-9 popover-tabs"><TMPL_VAR full_crit_tab_hover></div></div>
                <button class="remove-tab btn close-icon <TMPL_IF locked>hidden</TMPL_IF> <TMPL_IF is_active>btn-danger<TMPL_ELSE>btn-default</TMPL_IF>" onclick="javascript:remove_tab('<TMPL_VAR lnk>');">
                    <span class="sr-only">Close tab</span>
                </button>
                <button class="multi-tab btn btn-danger hidden" onclick="javascript:set_tab_view_session('multi');">Toggle to Multi-tab View</button>
                <ul id="tab_<TMPL_VAR lnk>" class="dropdown-menu tab-dropdown anim-fadeInDown">
                    <li role="presentation" class="dropdown-header">
                        Tab History 
                    </li>
                    <TMPL_IF has_loop>
                        <TMPL_IF RCS_LOOP2>
                            <TMPL_LOOP RCS_LOOP2>
                                <li tabindex="0" class="tab-dropdown-item lnkRecent<TMPL_IF IS_ACTIVE> recentRun</TMPL_IF><TMPL_IF HIDE_IN_TAB_HISTORY> hidden</TMPL_IF>" <TMPL_UNLESS IS_REPORT>onclick="if($('.popup-link:hover').length === 0){process_tab_request(this,'<TMPL_VAR lnk>',<TMPL_VAR is_report>);}"</TMPL_UNLESS> data-paramli="<TMPL_VAR lnk>" <TMPL_IF IS_REPORT>data-isreport="1"</TMPL_IF> <TMPL_IF PAGE>data-page="<TMPL_VAR PAGE>"</TMPL_IF>>
                                    <div class="history-tab-data" <TMPL_IF IS_REPORT>onclick="javascript:if($('.popup-link:hover').length === 0){process_tab_request(this,'<TMPL_VAR lnk>',<TMPL_VAR is_report>);}"</TMPL_IF>>
                                        <span data-searchtype="<TMPL_VAR title>" data-tabshowevt="<TMPL_VAR NAME="TAB_SHOW_EVENT">" class="svg-icon-small <TMPL_VAR icon_class>"></span>
                                        <span class="tab-search-name"><TMPL_VAR title><TMPL_UNLESS NAME="IS_REPORT"> (<TMPL_VAR NAME="TOTAL_RECS">)</TMPL_UNLESS></span>
                                        <span class="tab-search-terms"><TMPL_VAR crit></span>
                                    </div>
                                    <TMPL_IF NAME="IS_REPORT">
                                    <TMPL_UNLESS NAME="NO_NEW_WIN">
                                    <button type="button" class="btn btn-default pull-right external_link_icon svg-icon-x-tiny tab-btn" onclick="run_history_popup_search('<TMPL_VAR lnk>',<TMPL_VAR is_report>);"></button>
                                    </TMPL_UNLESS>
                                    </TMPL_IF>
                                    <br class="clear"/>
                                </li>
                                <TMPL_IF HAS_LOOP>
                                <li tabindex="0" class="tab-dropdown-item-second">
                                    <ul>
                                        <TMPL_IF RCS_LOOP3>
                                            <TMPL_LOOP RCS_LOOP3>
                                                <li class="tab-dropdown-item lnkRecent<TMPL_IF IS_ACTIVE> recentRun</TMPL_IF><TMPL_IF HIDE_IN_TAB_HISTORY> hidden</TMPL_IF>" <TMPL_UNLESS IS_REPORT>onclick="javascript:if($('.popup-link:hover').length === 0){process_tab_request(this,'<TMPL_VAR lnk>',<TMPL_VAR is_report>);}"</TMPL_UNLESS> data-paramli="<TMPL_VAR lnk>" <TMPL_IF IS_REPORT>data-isreport="1"</TMPL_IF> <TMPL_IF PAGE>data-page="<TMPL_VAR PAGE>"</TMPL_IF>>
                                                    <TMPL_IF SEARCH_WITHIN_TERMS>
                                                        <span>
                                                            <TMPL_VAR NAME="SEARCH_WITHIN_TERMS">
                                                        </span>
                                                    <TMPL_ELSE>
                                                        <span>
                                                            <span data-searchtype="<TMPL_VAR title>" data-tabshowevt="<TMPL_VAR NAME="TAB_SHOW_EVENT">" class="svg-icon-small <TMPL_VAR icon_class>"></span>
                                                            <TMPL_IF IS_REPORT>
                                                                <span onclick="javascript:process_tab_request(this,'<TMPL_VAR lnk>',<TMPL_VAR is_report>);"><TMPL_VAR title></span>
                                                                <TMPL_UNLESS NAME="NO_NEW_WIN">
                                                                    <span class="btn btn-default pull-right external_link_icon svg-icon-x-tiny tab-btn" onclick="run_history_popup_search('<TMPL_VAR lnk>',<TMPL_VAR is_report>);"></span>
                                                                </TMPL_UNLESS>
                                                            <TMPL_ELSE>
                                                                <TMPL_VAR title> (<TMPL_VAR NAME="TOTAL_RECS">)
                                                            </TMPL_IF>
                                                        </span>
                                                        <span <TMPL_IF IS_REPORT>onclick="javascript:process_tab_request(this, '<TMPL_VAR lnk>',<TMPL_VAR is_report>);"</TMPL_IF>><TMPL_VAR crit></span>
                                                    </TMPL_IF>
                                                </li>
                                            </TMPL_LOOP>
                                        </TMPL_IF>
                                    </ul>
                                </li>
                                </TMPL_IF>
                            </TMPL_LOOP>
                        </TMPL_IF>
                    </TMPL_IF>
                </ul>
            </div>
        </li>
    </TMPL_LOOP>
    <li class="btn-group history-tab dropdown hidden" id="history-more-tabs">
        <div class="additional-info">
            <button type="button" data-focus="tab-options-dropdown" data-toggle="dropdown" class="btn btn-default manage-tabs svg-icon-normal dropdown-toggle">
                <span class="overflow hidden" aria-hidden="true">View All</span>
                <span class="tooltip tooltip-right">Manage Tabs</span>
            </button>
            <ul id="tab-options-dropdown" class="dropdown-menu tab-dropdown anim-fadeInDown more-tabs-item">
                <li>
                    <a tabindex="0" href="javascript:void(0)" onclick="javascript:close_all_tabs();" data-toggle="tab" class="tab-option">Close All Tabs</a>
                </li>
                <li>
                    <a tabindex="0" href="javascript:void(0)" onclick="javascript:close_all_inactive_tabs();" data-toggle="tab" class="tab-option">Close All Tabs but the Active Tab</a>
                </li>
                <li id="toggle-print-screen-mode">
                    <a tabindex="0" onclick="javascript:toggle_print_screen_mode();" data-toggle="tab" class="tab-option">Toggle Print Screen Mode</a>
                </li>
                <li id="toggle-single-tab-view">
                    <a tabindex="0" onclick="javascript:confirm_set_single_tab_view();" class="tab-option">Toggle Single Tab View</a>
                </li>
                <li role="presentation" class="dropdown-header">Open Tabs (<span id="open-tab-count"></span>)</li>
                <TMPL_LOOP rcs_loop>
                    <li tabindex="0" class="tab-dropdown-item lnkRecent more-tabs-item<TMPL_IF IS_SHOW_FORM_TAB> more-form-tab<TMPL_ELSE> not-form-tab</TMPL_IF>" data-paramli="<TMPL_VAR lnk>">
                        <span class="close close-tab">
                            <a class="close-icon font-12" href="javascript:void(0);" onclick="remove_tab('<TMPL_VAR lnk>');">
                                <span class="sr-only">Delete tab</span>
                            </a>
                        </span>
                        <div class="history-tab-data">
                            <section <TMPL_IF NAME="IS_SHOW_FORM_TAB">onclick="javascript:if($('.popup-link:hover').length === 0){pm_tab_v3('<TMPL_VAR lnk>');}"<TMPL_ELSE>onclick="javascript:if($('.popup-link:hover').length === 0){process_tab_request(this,'<TMPL_VAR lnk>',<TMPL_VAR is_report>,1);}"</TMPL_IF>>
                                <span class="svg-icon-normal <TMPL_VAR icon_class>" data-tabshowevt="<TMPL_VAR NAME="TAB_SHOW_EVENT">"></span>
                                <span class="tab-search-name">
                                    <TMPL_VAR title><TMPL_UNLESS NAME="IS_SHOW_FORM_TAB"> (<TMPL_VAR NAME="TOTAL_RECS">)</TMPL_UNLESS>
                                </span>
                                <span class="tab-search-terms">
                                    <TMPL_VAR crit>
                                </span>
                            </section>
                        </div>
                        <br class="clear"/>
                   </li>
               </TMPL_LOOP>
            </ul>
        </div>
    </li>        
<TMPL_ELSE>
    <li class="pull-left">
        <button class="tab-options btn btn-lg btn-default btn-icon-lg" data-toggle="tab" href="#s1">
            <span class="fa fa-cog"></span>
        </button>
        <ul class="dropdown-menu anim-fadeInDown">
            <li role="presentation" class="dropdown-header">History</li>
            <TMPL_IF has_loop>
            <TMPL_IF rcs_loop>
            <TMPL_LOOP rcs_loop>
                <li>
                    <a data-toggle="tab" data-paramrecent="<TMPL_VAR lnk>" class="lnkRecent"><TMPL_VAR title> <br/>on <TMPL_VAR crit></a>
                </li>
            </TMPL_LOOP>
            </TMPL_IF>
            </TMPL_IF>
        </ul>
    </li>
</TMPL_IF>
<TMPL_IF NEW_WIN>
    </textarea>
<TMPL_ELSE>
    </ul>
</TMPL_IF>
