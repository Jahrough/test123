<!-- BEGIN: dynamic_desktop/ribbon_bar.tpl -->
    <div id="dynamic_desktop_message" class="ajax-message" style="background-color: #dadada; font-size: 10px; width: 200px; padding: 5px; position: absolute; z-index: 20000; display: none;">
        <center>
        Processing request, please wait...
        <br />
        <img src="<TMPL_VAR NAME=IMGPATH>/loading_anim2.gif" alt="Please wait" title="Please wait" border="0" width="128" height="15"></img>
    </div>

    <div id="tab-position-indicator" style="display:none;">
        <img src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/footbar_active.png" alt="Dynamic Desktop" title="Dyanmic Desktop">
    </div>
    <div id="ddRibbonBarWrap" class="expanded">
        <div id="ddRibbonBarInnerWrap">
            <div id="ddRibbonBarContent" class="ddRibbonBarBlack">
                <table cellpadding="0" cellspacing="0" border="0">
                  <thead class="nodisplay">
                    <tr>
                      <th aria-label="Dynamic Desktop">&nbsp;</th>
                    </tr>
                  </thead>                    
                    <tr>
                        <TMPL_IF NAME="ALLOW_CHAT">
                        <td id="rbnBarChatTD" class="always-show" style="padding-left: 12px;">
                            <table cellpadding="0" cellspacing="0" border="0">
                              <thead class="nodisplay">
                                <tr>
                                  <th aria-label="Image">&nbsp;</th>
                                  <th aria-label="Join Chat">&nbsp;</th>
                                  <th aria-label="Image">&nbsp;</th>                                                                    
                                </tr>
                              </thead>                    
                                <tr>
                                    <td style="padding-bottom: 0px;">
                                        <img class="rbnBarTabIcon" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/footbar_chat.png"></td>
                                    <td>
                                        <div class="ribbon-text" style="padding-top: 6px; width: 68px;">Join Chat&nbsp;</div>
                                    </td>
                                    <td>
                                        <img class="rbnBarTabMarker" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/img-footbar-div.jpg">
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <TMPL_IF PENDING_CHAT_INVITES>
                        <td id="rbnBarChatPendingInviteTD" class="always-show" style="padding-left: 12px;">
                            <table cellpadding="0" cellspacing="0" border="0">
                              <thead class="nodisplay">
                                <tr>
                                  <th aria-label="Image">&nbsp;</th>
                                  <th aria-label="Chat">&nbsp;</th>
                                  <th aria-label="Image">&nbsp;</th>                                                                    
                                </tr>
                              </thead>                    
                                <tr>
                                    <td style="padding-bottom: 0px;">
                                        <img class="rbnBarTabIcon" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/footbar_chat_invite.png"></td>
                                    <td onclick="show_post_popup('DYNAMIC_DESKTOP/MANAGE_CHAT','MyAccountWin','','',1,1,1,1,1,0,'','', '');">
                                        <div class="ribbon-text" style="padding-top: 6px; width: 190px;">Chat Invitation Request&nbsp;(<TMPL_VAR PENDING_CHAT_INVITES>)&nbsp;</div>
                                    </td>
                                    <td>
                                        <img class="rbnBarTabMarker" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/img-footbar-div.jpg">
                                    </td>
                                </tr>
                            </table>
                        </td>
                        </TMPL_IF>
                        </TMPL_IF>
                        <TMPL_UNLESS NAME=DDESKTOP_SEARCH>
                        <td id="rbnBarPrevTD" class="always-show">
                            <table cellpadding="0" cellspacing="0" border="0">
                              <thead class="nodisplay">
                                <tr>
                                  <th aria-label="Image">&nbsp;</th>
                                  <th aria-label="Chat">&nbsp;</th>
                                  <th aria-label="Image">&nbsp;</th>                                                                    
                                </tr>
                              </thead>                    
                            
                                <tr>
                                    <td style="padding-left: 5px; padding-right: 10px; padding-bottom: 0px;">
                                        <img class="rbnBarTabIcon" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/footbar_arrowleft.png">
                                    </td>
                                    <td>
                                        <img class="rbnBarTabMarker" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/img-footbar-div.jpg">
                                    </td>
                                </tr>
                            </table>
                        </td>
                        </TMPL_UNLESS>
                        <td id="rbnBarModuleTabsTD">
                            <div id="rbnBarModuleTabs" style="overflow: hidden; position: relative; height: 35px;">
                                <div id="rbnBarModuleTabsShifter" style="position: absolute; top: 0px; height: 35px; left: 0px; visibility: visible;">
                                <TMPL_UNLESS NAME=DDESKTOP_SEARCH>
                                    <table cellpadding="0" cellspacing="0" border="0">
                                      <thead class="nodisplay">
                                        <tr>
                                          <th aria-label="Tabs">&nbsp;</th>
                                        </tr>
                                      </thead>                    
                                    
                                        <tr>
                            <TMPL_LOOP RIBBON_BAR_LOOP>
                                    <TMPL_IF LNIN_Tab>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/tabs/lnin_tab.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF ZipCode_Tab>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/tabs/zip_code_tab.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF PersonAlerts_Tab>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/tabs/person_alerts_tab.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF AreaCode_Tab>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/tabs/area_code_tab.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF LexisNexisUniversity_Tab>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/tabs/lexisnexis_university_tab.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF YouTube_Tab>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/tabs/youtube_tab.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF MostWanted_Tab>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/tabs/most_wanted_tab.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF PSBR_Tab>
                                        <TMPL_INCLUDE NAME="dynamic_desktop/tabs/psbr_tab.tpl">
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_IF>
                            </TMPL_LOOP>

                                        </tr>
                                    </table>
                                </TMPL_UNLESS>
                                </div>
                            </div>
                        </td>
                        <TMPL_UNLESS NAME=DDESKTOP_SEARCH>
                        <td id="rbnBarNextTD" class="always-show">
                            <table cellpadding="0" cellspacing="0" border="0">
                                <thead class="nodisplay">
                                  <tr>
                                    <th aria-label="Image">&nbsp;</th>
                                    <th aria-label="Image">&nbsp;</th>
                                    <th aria-label="Image">&nbsp;</th>                                                                        
                                  </tr>
                                </thead>                    
                            
                                <tr>
                                    <td>
                                        <img class="rbnBarTabMarker" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/img-footbar-div.jpg">
                                    </td>
                                    <td style="padding-left: 5px; padding-right: 10px; padding-bottom: 0px;">
                                        <img class="rbnBarTabIcon" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/footbar_arrowright.png">
                                    </td>
                                    <td>
                                        <img class="rbnBarTabMarker" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/img-footbar-div.jpg">
                                    </td>
                                </tr>
                            </table>
                        </td>
                        </TMPL_UNLESS>
                        <td id="rbnBarExpandCollapseTD" class="always-show" style="padding-left: 5px; padding-right: 5px; padding-top: 4px; padding-bottom: 4px;">
                            <table cellpadding="0" cellspacing="0" border="0">
                                <thead class="nodisplay">
                                  <tr>
                                    <th aria-label="Image">&nbsp;</th>
                                  </tr>
                                </thead>                    
                            
                                <tr>
                                    <td style="padding-left: 0px; padding-right: 0px; padding-bottom: 0px; cursor: pointer;">
                                        <div id="rbnBarCollapseImage">
                                        <img class="rbnBarTabIcon" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/footbar_minimize.png">
                                        </div>
                                        <div id="rbnBarExpandImage" style="display:none;">
                                        <img class="rbnBarTabIcon" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/footbar_maximize.png">
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div> 

    <TMPL_UNLESS NAME=DDESKTOP_SEARCH>
    <div id="rbnBarTabPopover" style="display:none;">
        <TMPL_LOOP RIBBON_BAR_LOOP>
            <TMPL_INCLUDE NAME="dynamic_desktop/dynamic_desktop_modules.tpl">
        </TMPL_LOOP>
        <div style="clear: both;"></div>
        <dIv id="footbarTriangle" style="padding:0; float:left;">
        <div style="position:absolute; bottom: 0px; padding: 0px; margin: 0px; height: 7px; line-height: 7px;">
    <img style="padding: 0px; margin: 0px;" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/img-footbar-triangle.gif" alt="" width="13px" height="7px"/>
        </div>
        
        </div>
    </div>
    </TMPL_UNLESS>
<!-- END: dynamic_desktop/ribbon_bar.tpl -->
