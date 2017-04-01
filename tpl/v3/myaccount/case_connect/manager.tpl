<!-- begin:  $RCSfile: manager.tpl,v $ -->
<script>
  var subscriberHelp = "<TMPL_VAR HLPPATH>" + '/v3/case_deconfliction_help.html#view';
    function open_cc_help(){
        window.open(subscriberHelp);
    }
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<div class="myaccount-section-title">Case Deconfliction Management</div>
<a class="btn red-btn" href="javascript:void(0);" onclick="javascript:open_cc_help();" style="float:right;margin-top:-22px;margin-right:15px;">Help?</a>
<div class="myaccount-containers">
    <div class="section">
        <div class="section-row">
            <div id="caseConnect">
                <div id="managerView">
                    <fieldset>
                        <div><legend>Filters</legend></div>
                        <TMPL_IF SUBSCRIBER_LOOP>
                            <div>
                                <label for="SUBSCRIBER_ID">Owner:</label>
                                <select name="SUBSCRIBER_ID" id="SUBSCRIBER_ID">
                                    <TMPL_LOOP SUBSCRIBER_LOOP>
                                        <option value="<TMPL_VAR SUBSCRIBER_ID>" <TMPL_IF SELECTED>selected="selected" </TMPL_IF>><TMPL_VAR FIRST_NAME> <TMPL_VAR LAST_NAME> <TMPL_VAR SUFFIX> - <TMPL_VAR LOGIN_ID></option>
                                    </TMPL_LOOP>
                                </select>
                            </div>
                        </TMPL_IF>
                        <div>
                            <label for="FILTER_DECONF">Filter:</label>
                            <select name="FILTER_DECONF" id="FILTER_DECONF">
                                <option value="all" selected="selected">All</option>
                                <option value="recent">Recent - 30 days</option>
                                <option value="older">Older - 30 days</option>
                            </select>
                        </div>
                    </fieldset>
                    <div id="blockMsg"></div>
                    <fieldset>
                        <div id="optInTable">
                            <div><legend>Opt-Ins</legend></div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div id="enrollTable">
                            <div><legend>Enrollments</legend></div>
                        </div>
                        <span class="hide4Adm">
                            <!--input type="button" id="deleteBtn" value="Delete Selected"/-->
                            <div>
                                <a class="btn red-btn" id="deleteBtn" href="javascript:deleteHandler();">Delete Selected</a>
                            </div>
                        </span>
                    </fieldset>
                </div>
                <div id="optInView">
                    <fieldset>
                        <div><legend>Opt-In Details</legend></div>
                        <div id="optInDetailView" class="detailView">
                            <div class="hide4Adm">
                                <input type="button" id="blockOptInBtn" class="btn red-btn" value="Opt-Out Alert"/>
                                <input type="button" id="deleteOptInBtn" class="btn red-btn" value="Delete Alert"/>
                                <input type="button" id="activateOptInBtn" class="btn red-btn" value="Activate Alert"/>
                            </div>
                            <div>&nbsp;</div>
                            <div>
                                <label for="FILTER_OPTIN">Filter:</label>
                                <select name="FILTER_OPTIN" id="FILTER_OPTIN">
                                    <option value="all" selected="selected">All</option>
                                    <option value="notarchive">Recent - 30 Days</option>
                                    <option value="connected">Connected</option>
                                    <option value="older">Older - 30 Days</option>
                                    <option value="nonresponsive">Non Responsive</option>
                                </select>
                            </div>
                            <ul>
                                #{DeconflictionName} #{DateAdded} #{DateChanged}
                                <li>
                                    <span class=" bold liLbl">Status:</span>
                                    <span id="optInStatus">#{Status}</span>
                                </li>
                                #{Permissions}
                            </ul>
                            </div>
                        <div>
                            <span class="hide4Adm">
                                <input type="button" id="deleteBtn1" class="btn red-btn" value="Archive Seleted"/>
                            </span>
                            <input type="button" id="backBtn1" class="btn darkgrey-btn" value="Back to Manager"/>
                        </div>
                    </fieldset>
                </div>
                <div id="enrollView">
                    <fieldset>
                        <div><legend>Enrollment Details</legend></div>         
                        <div id="enrollDetailView" class="detailView">
                            <h2 class="mgb0">#{DeconflictionName}</h2>
                            <div class="hide4Adm">
                                <input type="button" id="editBtn" class="btn red-btn" value="Edit Alert"/>
                                <!-- input type="button" id="blockEnrollBtn" value="Block Alert"/ -->
                                <input type="button" id="deleteEnrollBtn" class="btn red-btn" value="Delete Alert"/>
                                <input type="button" id="activateEnrollBtn" class="btn red-btn" value="Activate Alert"/>
                            </div>
                            <div>&nbsp;</div>
                            <div id="FILTER_ENROLL_LABEL">
                                <label for="FILTER_ENROLL">Filter:</label>
                                <select name="FILTER_ENROLL"  id="FILTER_ENROLL">
                                    <option value="all" selected="selected">All</option>
                                    <option value="notarchive">Recent - 30 Days</option>
                                    <option value="connected">Connected</option>
                                    <option value="older">Older - 30 Days</option>
                                    <option value="nonresponsive">Non Responsive</option>
                                </select>
                            </div>
                            <ul class="mgt0">
                                #{Subject} #{ReferenceCode} #{Name} #{UniqueId} #{SSN} #{Phone10} #{DOB} #{DateAdded} #{DateChanged}
                                <li>
                                    <span class="liLbl bold">Status:</span>
                                    <span id="enrollStatus">#{Status}</span>
                                </li>
                                #{AdditionalEmail} #{Permissions}
                            </ul>
                        </div>
                        <div>
                            <span class="hide4Adm">
                                <input type="button" id="deleteBtn2" class="btn red-btn" value="Archive Selected"/>
                            </span>
                            <input type="button" id="backBtn2" class="btn darkgrey-btn" value="Back to Manager"/>
                        </div>
                        <div id="oneDetail">
                            <li>
                                <span class="liLbl bold">#{lbl}:</span>
                                <span>#{val}</span>
                            </li>
                        </div>
                    </fieldset>
                </div>
                <div id="editView">
                    <fieldset>
                        <div><legend>Edit Enrollment</legend></div>  
                        <table border="0" cellpadding="10" cellspacing="0" width="856" class="myaccountbody">
                            <tr>
                                <td>
                                    <div id="editLoaded">
                                        <div id="enrollEditBlock" class="alert_detail" width="100%"></div>
                                        <input type="button" id="refreshBtn" class="btn darkgrey-btn" value="Refresh Alert"/>
                                        <input type="button" id="historyBtn" class="btn darkgrey-btn" value="Run Deconfliction History"/>
                                        <input type="button" id="modifyBtn" class="btn darkgrey-btn" value="Save Alert"/>
                                        <!--  <input type="button" id="backBtn4" value="Back to Manager"/> -->
                                        <input type="button" id="backBtn4" class="btn darkgrey-btn" value="Back to Manager" onClick="send_event('CC/MANAGER');" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </div>
                <div id="otherView">
                    <fieldset>
                        <div><legend>Other Party Information</legend></div> 
                        <div id="otherDetailView" class="detailView">
                            <ul style="clear:both;">
                            #{Name} #{Email} #{Phone} #{Company}
                            </ul>
                        </div>
                        <input type="button" id="viewOtherBlockBtn" class="btn darkgrey-btn" value="Block Other Party"/>
                        <input type="button" id="backBtn5" class="btn darkgrey-btn" value="Back to Manager"/>
                        <input type="button" id="viewOtherUnblockBtn" class="btn darkgrey-btn" value="Unblock Other Party"/>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</div>

<TMPL_INCLUDE myaccount_footer.tpl>
<!-- end:  $RCSfile: manager.tpl,v $ -->
