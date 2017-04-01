                            <div id="<TMPL_VAR NAME="MODULE_NAME">" class="modbox<TMPL_IF NAME="DDESKTOP_SEARCH"><TMPL_IF NAME="HIDE"> iamhiding</TMPL_IF><TMPL_ELSE> rbnBarPopoverBoxes</TMPL_IF>" style="<TMPL_IF NAME="DDESKTOP_SEARCH"><TMPL_IF NAME="HIDE">display:none;</TMPL_IF><TMPL_ELSE>display:none;</TMPL_IF>">
                                <div id="<TMPL_VAR NAME="MODULE_NAME">_hd" class="modtitle">
                                    <h2 id="<TMPL_VAR NAME="MODULE_NAME">_link" class="nlnk">
                                        <span id="<TMPL_VAR NAME="MODULE_NAME">_title" class="modtitle_text"><TMPL_VAR TITLE></span>
                                    </h2>
                                    <div id="<TMPL_VAR NAME="MODULE_NAME">_home_menu" style="display: block;" class="">
                                        <a id="<TMPL_VAR NAME="MODULE_NAME">_min_or_close_icon" class="<TMPL_IF DDESKTOP_SEARCH>v2closebox<TMPL_ELSE>v2ddbox</TMPL_IF>" href="javascript:void(0);"></a>
                                        <TMPL_IF NAME="OPTIONS_BUTTON">
                                        <a id="<TMPL_VAR NAME="MODULE_NAME">_maximize_icon" class="v2enlargebox" href="javascript:void(0);"></a>
                                        </TMPL_IF>
                                    </div>
                                    <TMPL_IF NAME="DDESKTOP_SEARCH">
                                    <div id="<TMPL_VAR NAME="MODULE_NAME">_move" class="dt" style="cursor: move;"></div>
                                    </TMPL_IF>
                                    <div style="clear: both;"></div>
                                </div>
                                <div id="<TMPL_VAR NAME="MODULE_NAME">_b" class="modboxin">
                                    <TMPL_UNLESS DISABLED>
                                    <TMPL_IF LNIN_Module>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/modules/lnin_module.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF ZipCode_Module>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/modules/zip_code_module.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF PersonAlerts_Module>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/modules/person_alerts_module.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF AreaCode_Module>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/modules/area_code_module.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF LexisNexisUniversity_Module>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/modules/lexisnexis_university_module.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF YouTube_Module>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/modules/youtube_module.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF MostWanted_Module>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/modules/most_wanted_module.tpl">
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_UNLESS>
                                </div>
                            </div>

