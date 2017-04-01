<!-- BEGIN dynamic_desktop/person_alerts_module.tpl -->
            <table class="data_tables" cellpadding="0" cellspacing="5" border="0">
                <tr>
                    <td valign="top" align="left">
                    <TMPL_IF NAME="HAS_MORE_ALERTS">
                        <div class="person_alerts" style="font-weight: bold;">5 Most Recently Updated Alerts</div>
                        <div style="clear:both;"></div>
                    </TMPL_IF>
                    <TMPL_IF NAME="SUBSCRIPTION_ID_0">
                        <div class="person_alerts">
                            <span class="alerts_detail" id="<TMPL_VAR NAME="SUBSCRIPTION_ID_0">"><TMPL_VAR NAME="SUBJECT_NAME_0"><TMPL_IF SUBSCRIPTION_UNVIEWED_0><img src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/img-new-left.gif" alt="New Results" hspace="6" border="0" /></TMPL_IF></span><br>
                            Updated: <TMPL_VAR NAME="SUBSCRIPTION_UPDATE_DATE_0"><br>
                            Created: <TMPL_VAR NAME="SUBSCRIPTION_CREATE_DATE_0"><br>
                            Expiration: <TMPL_VAR NAME="SUBSCRIPTION_EXPIRE_DATE_0">
                        </div>
                        <div style="clear:both;"></div>
                    </TMPL_IF>
                    <TMPL_IF NAME="SUBSCRIPTION_ID_1">
                        <div class="person_alerts">
                            <span class="alerts_detail" id="<TMPL_VAR NAME="SUBSCRIPTION_ID_1">"><TMPL_VAR NAME="SUBJECT_NAME_1"><TMPL_IF SUBSCRIPTION_UNVIEWED_1><img src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/img-new-left.gif" alt="New Results" hspace="6" border="0" /></TMPL_IF></span><br>
                            Updated: <TMPL_VAR NAME="SUBSCRIPTION_UPDATE_DATE_1"><br>
                            Created: <TMPL_VAR NAME="SUBSCRIPTION_CREATE_DATE_1"><br>
                            Expiration: <TMPL_VAR NAME="SUBSCRIPTION_EXPIRE_DATE_1">
                        </div>
                        <div style="clear:both;"></div>
                    </TMPL_IF>
                    <TMPL_IF NAME="SUBSCRIPTION_ID_2">
                        <div class="person_alerts">
                            <span class="alerts_detail" id="<TMPL_VAR NAME="SUBSCRIPTION_ID_2">"><TMPL_VAR NAME="SUBJECT_NAME_2"><TMPL_IF SUBSCRIPTION_UNVIEWED_2><img src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/img-new-left.gif" alt="New Results" hspace="6" border="0" /></TMPL_IF></span><br>
                            Updated: <TMPL_VAR NAME="SUBSCRIPTION_UPDATE_DATE_2"><br>
                            Created: <TMPL_VAR NAME="SUBSCRIPTION_CREATE_DATE_2"><br>
                            Expiration: <TMPL_VAR NAME="SUBSCRIPTION_EXPIRE_DATE_2">
                        </div>
                        <div style="clear:both;"></div>
                    </TMPL_IF>
                    <TMPL_IF NAME="SUBSCRIPTION_ID_3">
                        <div class="person_alerts">
                            <span class="alerts_detail" id="<TMPL_VAR NAME="SUBSCRIPTION_ID_3">"><TMPL_VAR NAME="SUBJECT_NAME_3"><TMPL_IF SUBSCRIPTION_UNVIEWED_3><img src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/img-new-left.gif" alt="New Results" hspace="6" border="0" /></TMPL_IF></span><br>
                            Updated: <TMPL_VAR NAME="SUBSCRIPTION_UPDATE_DATE_3"><br>
                            Created: <TMPL_VAR NAME="SUBSCRIPTION_CREATE_DATE_3"><br>
                            Expiration: <TMPL_VAR NAME="SUBSCRIPTION_EXPIRE_DATE_3">
                        </div>
                        <div style="clear:both;"></div>
                    </TMPL_IF>
                    <TMPL_IF NAME="SUBSCRIPTION_ID_4">
                        <div class="person_alerts">
                            <span class="alerts_detail" id="<TMPL_VAR NAME="SUBSCRIPTION_ID_4">"><TMPL_VAR NAME="SUBJECT_NAME_4"><TMPL_IF SUBSCRIPTION_UNVIEWED_4><img src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/img-new-left.gif" alt="New Results" hspace="6" border="0" /></TMPL_IF></span><br>Updated: <TMPL_VAR NAME="SUBSCRIPTION_UPDATE_DATE_4"><br>
                            Created: <TMPL_VAR NAME="SUBSCRIPTION_CREATE_DATE_4"><br>
                            Expiration: <TMPL_VAR NAME="SUBSCRIPTION_EXPIRE_DATE_4">
                        </div>
                        <div style="clear:both;"></div>
                    </TMPL_IF>
                    <div style="clear:both;"></div>
                    <div class="person_alerts" style="text-align: right; padding: 5px;">
                            <TMPL_IF NAME="DDESKTOP_SEARCH"><span>You have <TMPL_IF NAME="PERSON_ALERTS_COUNT"><TMPL_VAR NAME="PERSON_ALERTS_COUNT"><TMPL_ELSE> no</TMPL_IF> new alerts.</span></TMPL_IF>
                            <a class="person_alerts" href="javascript:show_post_popup('ALERT/SHOW_ALERTS_MGR','MyAccountWin','','',1,1,1,1,1,0);">Manage your alerts</a> &raquo;<br>
                    </div>
                    <div style="clear:both;"></div>
                    </td>
                </tr>
            </table>
<!-- END dynamic_desktop/person_alerts_module.tpl -->

