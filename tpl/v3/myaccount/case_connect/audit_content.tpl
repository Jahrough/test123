<!-- begin audit_content.tpl -->
</form>
<div id="H1" class="myaccount-section-title">Case Audit Management</div>
<div class="admin_box section-row" style="padding:15px;padding-top:0">
    <TMPL_IF SA_DISABLED>
        <div class="warningmessage">
            <h1 class="myaccounttitle" id="H1"><br>Please Note!</h1>
            <TMPL_IF NAME="SA_DISABLED_REASON_OTP_ROAMING">
                <span>
                    Your administrator privileges have been temporarily revoked because you bypassed the Secure Token
                    Authentication.
                </span>
                <TMPL_ELSE>
                    <span>
                        Your administrator privileges have been temporarily revoked because you are accessing our system
                        from a location not in the list of approved locations.
                        <br>
                        If you want to add this location, please contact Customer Support.
                    </span>
            </TMPL_IF>
            <p class="unifont1" style="text-align: left; margin-left: 2cm;">
                Thank you for your cooperation in making our systems secure.</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
    <TMPL_ELSE>
        <form id="AUDIT_FORM" action="<TMPL_VAR ACTION>" method="post">
            <fieldset>
                <div id="H2"><legend>User Activity Search</legend></div>
                <div id="TOP_FORM1">
                    <TMPL_INCLUDE NAME="common_hidden_input.tpl">                                        
                    <input type="hidden" name="EVENT"/>
                    <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR SKIN_TYPE>"/>
                    <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR APPLICATION_TYPE>"/>
                    <div id="TOP_FORM" style="padding:30px 15px 15px 15px;">
                        <div>
                            <span class="input">
                                <label for="COMPANYID" class="left_label bold">Company:</label>
                            </span>
                            <span class="input">
                                <TMPL_IF HAS_CHILD>
                                    <select name="COMPANYID" id="COMPANYID">
                                        <TMPL_LOOP COMPANY>             
                                            <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> selected="selected"</TMPL_IF>><TMPL_VAR LABEL></option>
                                        </TMPL_LOOP>
                                    </select>
                                    <TMPL_ELSE>
                                        <input type="hidden" name="COMPANYID" id="COMPANYID" value="<TMPL_VAR COMPANYID>"/>
                                        <label for="COMPANYID"><TMPL_VAR COMPANYNAME></label>
                                </TMPL_IF>
                            </span>
                        </div>
                        <div class="mgt6">
                            <span class="input">
                                <label for="STATUS_ALL" class="left_label bold">User Status:</label>
                            </span>
                            <span class="input">
                                <input value="1" id="STATUS_ACTIVE" type="radio" name="USER_STATUS" checked="checked"/>
                                <label for="STATUS_ACTIVE">Active Users</label>
                                <input value="0" id="STATUS_INACTIVE" type="radio" name="USER_STATUS"/>
                                <label for="STATUS_INACTIVE">Inactive Users</label>
                                <input  value="2" id="STATUS_ALL" type="radio" name="USER_STATUS"/>
                                <label for="STATUS_ALL">All</label>
                            </span>
                        </div>
                        <div class="mgt6">
                            <span class="input">
                                <label for="LOGINID" class="left_label bold">User ID:</label>
                            </span>
                            <span class="input">
                                <select name="LOGINID" id="LOGINID">
                                    <option>loading...</option>
                                </select>
                            </span>
                        </div>
                        <div class="mgt6">
                            <span class="input">
                                <label for="DATE_FROM" class="left_label bold">Date Range:</label>
                            </span>
                            <span class="dateinput">
                                <input onClick="displayDatePicker('DATE_FROM', 'below');" id="DATE_FROM" name="DATE_FROM" type="text" value="<TMPL_VAR DATE_FROM>" size="10"/>
                                <label for="DATE_TO" style="margin-top:7px;display:inline-block">to</label>
                                <input onClick="displayDatePicker('DATE_TO', 'below');" id="DATE_TO" name="DATE_TO" value="<TMPL_VAR DATE_TO>" type="text" size="10"/>
                                <input id="DATE_ALL" type="checkbox" name="DATE_ALL" value="1" <TMPL_IF DATE_ALL>checked="checked" </TMPL_IF>/>
                                <label for="DATE_ALL" style="margin-top:7px;display:inline-block">All</label>
                            </span>
                        </div>
                        <div class="mgt6">
                            <span class="input">
                                <span style="font-style:italic;">Searches are limited to 2 years from the prior date</span>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="section-row">
                    <div id="HID_CRIT" style="height:40px;">
                        <a href="javascript:void(0);" id="SHO_LNK" class="btn blue-btn bold mgb15 left">
                            Show Additional Search Criteria
                        </a>
                    </div>
                    <div id="SHO_CRIT" style="text-align:left;">
                        <div style="width:100%;height:40px;">
                            <a href="javascript:void(0);" id="HID_LNK" class="btn blue-btn bold mgb15 left">
                                Hide Additional Search Criteria
                            </a>
                        </div>
                        <div style="text-align: left;" class="mgb10">
                            <span class="input in1">
                                <label for="LAST_NAME" style="display: none">Dummy</label>
                                <input id="LAST_NAME" placeholder="Last Name" name="LAST_NAME" value="<TMPL_VAR LAST_NAME>" type="text" size="30"/>
                            </span>
                            <span class="input in2">
                                <label for="FIRST_NAME" style="display: none">Dummy</label>
                                <input id="FIRST_NAME" placeholder="First Name" name="FIRST_NAME" value="<TMPL_VAR FIRST_NAME>" type="text" size="25"/>
                            </span>
                            <span class="input in6">
                                <label for="MIDDLE_NAME" style="display: none">Dummy</label>
                                <input id="MIDDLE_NAME" placeholder="Middle Initial" name="MIDDLE_NAME" value="<TMPL_VAR MIDDLE_NAME>" type="text" size="10" maxlength="1"/>
                            </span>
                            <span class="input in4">
                                <input id="PHONETICS" name="PHONETICS" value="1" type="checkbox"/>
                                <label id="PHONTCS_LABEL" for="PHONETICS">Include Similar Sounding Names</label>
                                <a class="helpQtnIcon no-float" href="javascript:new_modal('Include similar sounding names','Check this box to search for a person whose last name sounds like the last name entered. This is a more inclusive search and will return more results.');">&nbsp;</a>
                            </span>
                        </div>
                        <div style="text-align: left;" class="mgb10">
                            <span class="input in1">
                                <label for="SSN" style="display: none">Dummy</label>
                                <input id="SSN" placeholder="SSN" name="SSN" value="<TMPL_VAR SSN>" type="text" size="15" autocomplete="off"/>
                            </span>
                            <span class="input in2">
                                <label for="DOB" style="display: none">Dummy</label>
                                <input id="DOB" placeholder="DOB" name="DOB" value="<TMPL_VAR DOB>" type="text" size="20"/>
                            </span>
                            <span class="input in3">
                                <label for="LICENSE" style="display: none">Dummy</label>
                                <input id="LICENSE" placeholder="Driver License Number" name="LICENSE" value="<TMPL_VAR LICENSE>" type="text" size="20" autocomplete="off"/>
                            </span>
                            <span class="input in4">
                                <label for="LINK_ID" style="display: none">Dummy</label>
                                <input id="LINK_ID" placeholder="LexID" name="LINK_ID" value="<TMPL_VAR LINK_ID>" type="text" size="20"/>
                            </span>
                        </div>
                        <div style="text-align: left;" class="mgb10">
                            <span class="input in1">
                                <label for="COMPANY_NAME" style="display: none">Dummy</label>
                                <input id="COMPANY_NAME" placeholder="Company Name" name="COMPANY_NAME" value="<TMPL_VAR COMPANY_NAME>" type="text" size="30"/>
                            </span>
                            <span class="input in5">
                                <label for="FEIN" style="display: none">Dummy</label>
                                <input id="FEIN" placeholder="FEIN / Charter Number / UCC Original Filing Number" name="FEIN" value="<TMPL_VAR FEIN>" type="text" size="45"/>
                            </span>
                        </div>
                        <div style="text-align: left;" class="mgb10">
                            <span class="input in1">
                                <label for="STREET_ADDRESS" style="display: none">Dummy</label>
                                <input id="STREET_ADDRESS" placeholder="Street Address" name="STREET_ADDRESS" value="<TMPL_VAR STREET_ADDRESS>" type="text" size="30"/>
                            </span>
                            <span class="input in2">
                                <label for="CITY" style="display: none">Dummy</label>
                                <input id="CITY" placeholder="City" name="CITY" value="<TMPL_VAR CITY>" type="text" size="25"/>
                            </span>
                            <span class="input in3">
                                <label for="STATE" style="display: none">Dummy</label>
                                <input id="STATE" placeholder="State" name="STATE" value="<TMPL_VAR STATE>" type="text" size="3"/>
                            </span>
                            <span class="input in3">
                                <label for="ZIP" style="display: none">Dummy</label>
                                <input id="ZIP" placeholder="Zip" name="ZIP" value="<TMPL_VAR ZIP>" type="text" size="15"/>
                            </span>
                        </div>
                        <div style="text-align: left;" class="mgb10">
                            <span class="input in1">
                                <label for="PHONE" style="display: none">Dummy</label>
                                <input id="PHONE" placeholder="Phone" name="PHONE" value="<TMPL_VAR PHONE>" type="text" size="20"/>
                            </span>
                            <span class="input in5">
                                <label for="DOMAIN_NAME" style="display: none">Dummy</label>
                                <input id="DOMAIN_NAME" placeholder="Domain Name" name="DOMAIN_NAME" value="<TMPL_VAR DOMAIN_NAME>" type="text" size="45"/>
                            </span>
                        </div>
                    </div>
                </div>
                <div id="BTN_BAR" class="section-row">
                    <label for="COUNT" style="display: inline-block;">Per Page</label>
                    <select name="COUNT" id="COUNT">
                        <option value="25" selected="selected">25</option>
                        <option value="50">50</option>
                        <option value="75">75</option>
                    </select>
                    <a class="button btn red-btn" id="SEARCH_BTN" alt="search">Search</a>
                    <a class="button btn darkgrey-btn" id="CLEAR_BTN" alt="clear">Clear</a>
                </div>
            </fieldset>
        </form>
        <div id="ERROR"></div>
        <div id="RESULTS_DIV">
            <form id="AUDIT_FORM2" action="<TMPL_VAR ACTION_DOWNLOAD>" method="get">
                <div><span><i>Use Scroll Bar To View All Columns</i></span></div>
                <div id="PAGE_BAR">
                    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
                    <input type="hidden" name="SKIN_TYPE"/>
                    <input type="hidden" name="APPLICATION_TYPE"/>
                    <input type="hidden" id="EVENT" name="EVENT" value="SEARCH_DOWNLOAD2/AUDIT_SEARCH"/>
                    <input type="hidden" name="COMPANYID"/>
                    <input type="hidden" name="USER_STATUS"/>
                    <input type="hidden" name="LOGINID"/>
                    <input type="hidden" id="COUNT2" name="COUNT"/>
                    <input type="hidden" name="DATE_FROM"/>
                    <input type="hidden" name="DATE_TO"/>
                    <input type="hidden" name="LAST_NAME"/>
                    <input type="hidden" name="FIRST_NAME"/>
                    <input type="hidden" name="MIDDLE_NAME"/>
                    <input type="hidden" name="PHONETICS"/>
                    <input type="hidden" name="SSN"/>
                    <input type="hidden" name="DOB"/>
                    <input type="hidden" name="LICENSE"/>
                    <input type="hidden" name="LINK_ID"/>
                    <input type="hidden" name="COMPANY_NAME"/>
                    <input type="hidden" name="FEIN"/>
                    <input type="hidden" name="STREET_ADDRESS"/>
                    <input type="hidden" name="CITY"/>
                    <input type="hidden" name="STATE"/>
                    <input type="hidden" name="ZIP"/>
                    <input type="hidden" name="PHONE"/>
                    <input type="hidden" name="DOMAIN_NAME"/>
                    <input type="hidden" id="START" name="START"/>
                    <span id="COUNT_PANEL">
                        <span id="ROW_COUNT"></span>
                        <a id="EXPORT_BTN" class="btn blue-btn" href="javascript:void(0);">
                            Export to CSV
                        </a>
                    </span>
                    <span class="input in5">&nbsp;</span>
                    <span id="PAGE_PANEL">
                        <a id="REW_BTN" class="btn darkgrey-btn" href="javascript:void(0);">
                            First Page
                        </a>
                        <a id="PREV_BTN" class="btn darkgrey-btn" href="javascript:void(0);" onClick="if(!validate()){return false;}">
                            Previous Page
                        </a>
                        <span id="PAGE_COUNT"></span>
                        <a id="FW_BTN" class="btn darkgrey-btn" href="javascript:void(0);">
                            Next Page
                        </a>
                        <a id="FF_BTN" class="btn darkgrey-btn" href="javascript:void(0);" onClick="if(!validate()){return false;}">
                            Last Page
                        </a>
                    </span>
                </div>
                <div id="INFRAME">
                    <div id="V_SPACE"><TMPL_VAR RESULTS></div>
                </div>
                <div><span><i>Use Scroll Bar To View All Columns</i></span></div>
                <div id="PAGE_BAR2">
                    <span id="COUNT_PANEL2">
                        <span id="ROW_COUNT2"></span>
                        <a id="EXPORT_BTN2" class="btn blue-btn" href="javascript:void(0);">
                            Export to CSV
                        </a>
                    </span>
                    <span class="input in5">&nbsp;</span>
                    <span id="PAGE_PANEL2">
                        <a id="REW_BTN2" class="btn darkgrey-btn" href="javascript:void(0);">
                            First Page
                        </a>
                        <a id="PREV_BTN2" class="btn darkgrey-btn" href="javascript:void(0);" onClick="if(!validate()){return false;}">
                            Previous Page
                        </a>
                        <span id="PAGE_COUNT2"></span>
                        <a id="FW_BTN2" class="btn darkgrey-btn" href="javascript:void(0);">
                            Next Page
                        </a>
                        <a id="FF_BTN2" class="btn darkgrey-btn" href="javascript:void(0);" onClick="if(!validate()){return false;}">
                            Last Page
                        </a>
                    </span>
                </div>
            </form>
        </div>
    </TMPL_IF>
</div>
<!-- end audit_content.tpl -->

