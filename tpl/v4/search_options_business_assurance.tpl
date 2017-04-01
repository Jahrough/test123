        <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/occcr.css">
        <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/business_assurance_search.js"></script>

        <!-- ============= Top Tabs ============= -->
        <div class="row" style="padding-left: 10px;">
            <div class="input col col-3">
                <button type="button" id="request_btn" class="top-tab-active" >New Order</button>&nbsp; 
            </div>
            <div class="input col col-3" id="old_results" style="display: none;">
                <button type="button" id="request_btn" class="top-tab-inactive" >
                <a id="occcr_result" href="javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR_RESULT');">Offline Results</a>
                </button>&nbsp;
            </div>
            <div class="input col col-3" id="new_results" style="display: block;">
                <button type="button" id="request_btn" class="top-tab-inactive" >
                <a id="occcr_result" href="javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR_RESULT');">New Offline Results</a>
                </button>&nbsp;
            </div>
            <div class="input col col-3">
                <button type="button" id="request_btn" class="top-tab-inactive" >Return to searches</button>&nbsp;
            </div>
        </div>

        <div id="pgtitle">
            <div style="color: #666666; line-height: 1.2em; padding: 1px 0 1px 5px;" align="left">
                * Entry Required.
                <font color="#CC0033">$ Additional Fees Apply.</font>
                Please see
                <a onclick="javascript:window.open('/RiskManagement/help/Portal_Help.htm#business_assurance_fees.htm?_nc_wn=help', 'help', 'width=800,height=600,left=25,top=25,scrollbars=yes,menubar=no,resizable=yes'); return false;" href="#">Fee Notice</a>.
            </div>
        </div>
        <br/>
        <div style="padding-left: 5px">
            <table style="width:50%">
                <thead style="display: none">
                    <tr>
                        <th aria-label="PRINCIPAL" id="prop_principal">&nbsp;</th>
                        <th aria-label="BUSINESS" id="prop_business">&nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td headers="prop_principal">
                            Order by: <input name="BUSINESS_OR_PRINCIPAL" checked="checked" type="radio" id="PRINCIPAL_RADIO">&nbsp;<strong>Principal</strong>
                        </td>
                        <td headers="prop_business">
                            <input name="BUSINESS_OR_PRINCIPAL" type="radio" id="BUSINESS_RADIO">&nbsp;<strong>Business</strong>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <hr>
        <div id="principal_div" class="collapse in">
            <div style="padding-left: 5px">
                <table style="width:70%">
                    <thead style="display: none">
                        <tr>
                            <th aria-label="BASE_PRINCIPAL" id="base_principal">&nbsp;</th>
                            <th aria-label="COMPREHENSIVE_PRINCIPAL" id="comprehensive_principal">&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td headers="base_principal">
                                Select Report: <input name="BASE_OR_COMPREHENSIVE" checked="checked" type="radio" id="BASE_RADIO">&nbsp;Base Business Principal
                            </td>
                            <td headers="comprehensive_principal">
                                <input name="BASE_OR_COMPREHENSIVE" type="radio" id="COMPREHENSIVE_RADIO">&nbsp;Comprehensive Business Principal
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br/>
            </div>
            <div class="input col col-3">
                <label>
                    <input autocomplete="off" type="text" id="SSN" class="form-control" name="FORCE_SSN" value="<TMPL_VAR NAME=FORCE_SSN>" placeholder="SSN *" maxlength="30">
                    <span class="tooltip">
                        SSN<br/>
                        <span class="font-10">(Examples: 123456789, 123-45-6789)</span>
                    </span> 
                </label>
            </div>
            <div class="input col col-3">
                <label class="">
                    <input type="text" id="SUB1_DOB" name="FORCE_DOB" value="<TMPL_VAR NAME=SUB1_DOB>" placeholder="Date Of Birth *" class="form-control" maxlength="10">
                    <span class="tooltip">
                        Date Of Birth<br><span class="font-10">(mm/dd/yyyy)</span>
                    </span>
                </label>
            </div>    
            <div class="form-row">
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="FORCE_LAST" name="FORCE_LAST" class="form-control" value="<TMPL_VAR NAME=FORCE_LAST>" placeholder="Last Name *" maxlength="90">
                    <span class="tooltip">Last Name *</span> 
                </label>
            </div>

            <div class="input col col-3">
                <label>
                    <input type="text" id="FORCE_FIRST" name="FORCE_FIRST" class="form-control" value="<TMPL_VAR NAME=FORCE_FIRST>" placeholder="First Name *" maxlength="40">
                    <span class="tooltip">First Name *</span> 
                </label>
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle or Initial" class="form-control" maxlength="40">
                    <span class="tooltip">Middle or Initial</span> 
                </label>
            </div>
            <div class="form-row">
            </div>
            <div class="input col col-9">
                <label>
                    <input type="text" id="FORCE_ADDRESS1" name="FORCE_ADDRESS1" class="form-control" value="<TMPL_VAR NAME=FORCE_ADDRESS1>" placeholder="Street - line 1 *" maxlength="200">
                    <span class="tooltip">Street - line 1 *</span> 
                </label>
            </div>
            <div class="form-row">
            </div>
            <div class="input col col-9">
                <label>
                    <input type="text" id="ADDRESS2" name="ADDRESS2" class="form-control" value="<TMPL_VAR NAME=ADDRESS2>" placeholder="Street - line 2" maxlength="200">
                    <span class="tooltip">Street - line 2</span> 
                </label>
            </div>
            <div class="form-row">
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="FORCE_CITY" name="FORCE_CITY" value="<TMPL_VAR NAME=FORCE_CITY>" placeholder="City *" class="form-control" maxlength="45">
                    <span class="tooltip">City *</span> 
                </label>
            </div>
            <div class="input col col-3">
                <label>
                    <select id="FORCE_STATE" name="FORCE_STATE" class="form-control">
                        <option value="">All States *</option>
                        <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                    </select>
                </label>
            </div>    
            <div class="input col col-1">
                <label>
                    <input type="text" id="FORCE_ZIP" name="FORCE_ZIP" value="<TMPL_VAR NAME=FORCE_ZIP>" placeholder="Zip *" maxlength="10" class="form-control">
                    <span class="tooltip">Zip *</span>
                </label>
            </div>
            <div class="form-row">
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="COUNTY" name="COUNTY" class="form-control" value="<TMPL_VAR NAME=COUNTY>" placeholder="County" maxlength="50">
                    <span class="tooltip">County</span> 
                </label>
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="HOME_PHONE" name="HOME_PHONE" class="form-control" value="<TMPL_VAR NAME=HOME_PHONE>" placeholder="Home Phone" maxlength="35">
                    <span class="tooltip">Home Phone</span> 
                </label>
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="WORK_PHONE" name="WORK_PHONE" class="form-control" value="<TMPL_VAR NAME=WORK_PHONE>" placeholder="Work Phone" maxlength="35">
                    <span class="tooltip">Work Phone</span> 
                </label>
            </div>
            <div class="input col col-1">
                <label>
                    <input type="text" id="EXTENSION" name="EXTENSION" class="form-control" value="<TMPL_VAR NAME=EXTENSION>" placeholder="Ext." maxlength="10">
                    <span class="tooltip">Extension</span> 
                </label>
            </div>
            <div class="form-row">
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="OTHER_LAST" name="OTHER_LAST" class="form-control" value="<TMPL_VAR NAME=OTHER_LAST>" placeholder="Other Last Name" maxlength="90">
                    <span class="tooltip">Other Last Name</span> 
                </label>
            </div>

            <div class="input col col-3">
                <label>
                    <input type="text" id="OTHER_FIRST" name="OTHER_FIRST" class="form-control" value="<TMPL_VAR NAME=OTHER_FIRST>" placeholder="Other First Name" maxlength="40">
                    <span class="tooltip">Other First Name</span> 
                </label>
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="OTHER_MI" name="OTHER_MI" value="<TMPL_VAR NAME=OTHER_MI>" placeholder="Other Middle or Initial" class="form-control" maxlength="40">
                    <span class="tooltip">Other Middle or Initial</span> 
                </label>
            </div>
        </div>
        <div id="business_div" class="collapse in">
            <div style="padding-left: 5px">
                <table style="width:70%">
                    <thead style="display: none">
                        <tr>
                            <th aria-label="BUSINESS_TYPE_0" id="business_type_0">&nbsp;</th>
                            <th aria-label="BUSINESS_TYPE_1" id="business_type_1">&nbsp;</th>
                            <th aria-label="BUSINESS_TYPE_2" id="business_type_2">&nbsp;</th>
                            <th aria-label="BUSINESS_TYPE_3" id="business_type_3">&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td headers="business_type_0">
                                Select Report:
                            </td>
                            <td headers="business_type_1">
                                <input name="BUSINESS_REPORT_TYPE" checked="checked" type="radio" id="BASE_RADIO">&nbsp;Base Business
                            </td>
                            <td headers="business_type_2">
                                <input name="BUSINESS_REPORT_TYPE" type="radio" id="REAL_ESTATE_RADIO">&nbsp;Commercial Real Estate
                            </td>
                            <td headers="business_type_3">
                                <input name="BUSINESS_REPORT_TYPE" type="radio" id="LEASING_RADIO">&nbsp;Commercial Leasing
                            </td>
                        </tr>
                        <tr>
                            <td headers="business_type_0">
                                &nbsp;
                            </td>
                            <td headers="business_type_1">
                                <input name="BUSINESS_REPORT_TYPE" type="radio" id="LENDING_RADIO">&nbsp;Commercial Lending
                            </td>
                            <td headers="business_type_2">
                                <input name="BUSINESS_REPORT_TYPE" checked="checked" type="radio" id="PARTNER_RADIO">&nbsp;Partner/Vendor
                            </td>
                            <td headers="business_type_3">
                                <input name="BUSINESS_REPORT_TYPE" type="radio" id="SMALL_BUSINESS_RADIO">&nbsp;Small Business
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br/>
            </div>
            <div class="input col col-6">
                <label>
                    <input type="text" id="FORCE_COMPANY_NAME" name="FORCE_COMPANY_NAME" value="<TMPL_VAR NAME=FORCE_COMPANY_NAME>" placeholder="Company Name *" class="form-control" maxlength="50">
                    <span class="tooltip">Company Name</span>
                </label>
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="FEIN" name="FEIN" class="form-control" value="<TMPL_VAR NAME=FEIN>" maxlength="11" placeholder="FEIN (nn-nnnnnnn)">
                    <span class="tooltip">FEIN (nn-nnnnnnn)</span> 
                </label>
            </div>
            <div class="form-row">
            </div>
            <div class="input col col-9">
                <label>
                    <input type="text" id="FORCE_ADDRESS1" name="FORCE_ADDRESS1" class="form-control" value="<TMPL_VAR NAME=FORCE_ADDRESS1>" placeholder="Street - line 1 *" maxlength="200">
                    <span class="tooltip">Street - line 1 *</span> 
                </label>
            </div>
            <div class="form-row">
            </div>
            <div class="input col col-9">
                <label>
                    <input type="text" id="ADDRESS2" name="ADDRESS2" class="form-control" value="<TMPL_VAR NAME=ADDRESS2>" placeholder="Street - line 2" maxlength="200">
                    <span class="tooltip">Street - line 2</span> 
                </label>
            </div>
            <div class="form-row">
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="FORCE_CITY" name="FORCE_CITY" value="<TMPL_VAR NAME=FORCE_CITY>" placeholder="City *" class="form-control" maxlength="45">
                    <span class="tooltip">City *</span> 
                </label>
            </div>
            <div class="input col col-3">
                <label>
                    <select id="FORCE_STATE" name="FORCE_STATE" class="form-control">
                        <option value="">All States *</option>
                        <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                    </select>
                </label>
            </div>    
            <div class="input col col-1">
                <label>
                    <input type="text" id="FORCE_ZIP" name="FORCE_ZIP" value="<TMPL_VAR NAME=FORCE_ZIP>" placeholder="Zip *" maxlength="10" class="form-control">
                    <span class="tooltip">Zip *</span>
                </label>
            </div>
            <div class="form-row">
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="COUNTY" name="COUNTY" class="form-control" value="<TMPL_VAR NAME=COUNTY>" placeholder="County" maxlength="50">
                    <span class="tooltip">County</span> 
                </label>
            </div>
            <div class="input col col-3">
                <label>
                    <input type="text" id="WORK_PHONE" name="WORK_PHONE" class="form-control" value="<TMPL_VAR NAME=WORK_PHONE>" placeholder="Work Phone" maxlength="35">
                    <span class="tooltip">Work Phone</span> 
                </label>
            </div>
            <div class="input col col-1">
                <label>
                    <input type="text" id="EXTENSION" name="EXTENSION" class="form-control" value="<TMPL_VAR NAME=EXTENSION>" placeholder="Ext." maxlength="10">
                    <span class="tooltip">Extension</span> 
                </label>
            </div>
            <div class="form-row">
            </div>
            <div class="input col col-6">
                <label>
                    <input type="text" id="BUSINESS_AS" name="BUSINESS_AS" value="<TMPL_VAR NAME=BUSINESS_AS>" placeholder="Doing Business As" class="form-control" maxlength="150">
                    <span class="tooltip">Business Name</span>
                </label>
            </div>
        </div>
        <br/>
        <br/>        
        <br/>
        <div class="row" style="text-align: right; padding-right: 20px;">
            <button type="button" id="SubjectContinue" class="continue-btn" >Continue</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" id="SubjectReset" class="reset-btn" >Reset Form</button>&nbsp;
        </div>
