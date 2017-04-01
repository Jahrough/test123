<!-- BEGIN: dynamic_desktop/person_alerts_tab.tpl (Person Alerts) -->
                        <td id="<TMPL_VAR NAME="RIBBON_TAB">" class="userToolsTD <TMPL_IF NAME="HIDE"> disabled-by-user</TMPL_IF>">
                            <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td class="rbnBarTabIcon">
                                        <img class="rbnBarTabIcon" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/footbar_person.png">
                                    </td>
                                    <td>
                                        <div class="tabMover">&nbsp;</div>
                                        <div class="ribbon-text">Person Alerts&nbsp;<TMPL_IF NAME="PERSON_ALERTS_COUNT">(<TMPL_VAR NAME="PERSON_ALERTS_COUNT">)</TMPL_IF></div></div>
                                    </td>
                                    <td>
                                        <img class="rbnBarTabMarker" alt="" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/img-footbar-div.jpg">
                                    </td>
                                </tr>
                            </table>
                        </td>
<!-- END: dynamic_desktop/person_alerts_tab.tpl -->
