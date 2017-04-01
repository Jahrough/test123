<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/occcr.css">
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/business_assurance_search.js"></script>

<!-- ============= Top Tabs ============= -->
<div id="StepOneArea">
    <div id="pgtitle">
        <div style="color: #666666; line-height: 1.2em; padding: 1px 0 1px 5px;" align="left">
            * Entry Required.
            <font color="#ff0000">$ Additional Fees Apply.</font>
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
                        Order by: <input name="BUSINESS_OR_PRINCIPAL" checked="checked" type="radio" id="PRINCIPAL_RADIO" value="1">&nbsp;<strong>Principal</strong>
                    </td>
                    <td headers="prop_business">
                        <input name="BUSINESS_OR_PRINCIPAL" type="radio" id="BUSINESS_RADIO" value="2">&nbsp;<strong>Business</strong>
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
                            Select Report: <input name="BASE_OR_COMPREHENSIVE" checked="checked" type="radio" id="BASE_RADIO" value="1">&nbsp;Base Business Principal
                        </td>
                        <td headers="comprehensive_principal">
                            <input name="BASE_OR_COMPREHENSIVE" type="radio" id="COMPREHENSIVE_RADIO" value="2">&nbsp;Comprehensive Business Principal
                        </td>
                    </tr>
                </tbody>
            </table>
            <br/>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="SSN" class="form-control" name="FORCE_SSN" value="<TMPL_VAR NAME=FORCE_SSN>" placeholder="SSN *" maxlength="11">
                <span class="tooltip">
                    SSN<br/>
                    <span class="font-10">(Examples: 123456789, 123-45-6789)</span>
                </span> 
            </label>
        </div>
        <div class="input col col-3">
            <label class="">
                <input type="text" id="FORCE_DOB" name="FORCE_DOB" value="<TMPL_VAR NAME=FORCE_DOB>" placeholder="Date Of Birth *" class="form-control" maxlength="10">
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
        <div id="displaycounties" class="input col col-3">
            <label>
                <select id="COUNTY" name="COUNTY" class="form-control" disabled>
                    <option id="noCounty" value="">County</option>
                </select>
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
                            <input name="BUSINESS_REPORT_TYPE" checked="checked" type="radio" id="BASE_RADIO" value="1">&nbsp;Base Business
                        </td>
                        <td headers="business_type_2">
                            <input name="BUSINESS_REPORT_TYPE" type="radio" id="REAL_ESTATE_RADIO" value="2">&nbsp;Commercial Real Estate
                        </td>
                        <td headers="business_type_3">
                            <input name="BUSINESS_REPORT_TYPE" type="radio" id="LEASING_RADIO" value="3">&nbsp;Commercial Leasing
                        </td>
                    </tr>
                    <tr>
                        <td headers="business_type_0">
                            &nbsp;
                        </td>
                        <td headers="business_type_1">
                            <input name="BUSINESS_REPORT_TYPE" type="radio" id="LENDING_RADIO" value="4">&nbsp;Commercial Lending
                        </td>
                        <td headers="business_type_2">
                            <input name="BUSINESS_REPORT_TYPE" type="radio" id="PARTNER_RADIO" value="5">&nbsp;Partner/Vendor
                        </td>
                        <td headers="business_type_3">
                            <input name="BUSINESS_REPORT_TYPE" type="radio" id="SMALL_BUSINESS_RADIO" value="6">&nbsp;Small Business
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
                <input type="text" id="BUSINESS_ADDRESS1" name="BUSINESS_ADDRESS1" class="form-control" value="<TMPL_VAR NAME=BUSINESS_ADDRESS1>" placeholder="Street - line 1 *" maxlength="200">
                <span class="tooltip">Street - line 1 *</span> 
            </label>
        </div>
        <div class="form-row">
        </div>
        <div class="input col col-9">
            <label>
                <input type="text" id="BUSINESS_ADDRESS2" name="BUSINESS_ADDRESS2" class="form-control" value="<TMPL_VAR NAME=BUSINESS_ADDRESS2>" placeholder="Street - line 2" maxlength="200">
                <span class="tooltip">Street - line 2</span> 
            </label>
        </div>
        <div class="form-row">
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="BUSINESS_CITY" name="BUSINESS_CITY" value="<TMPL_VAR NAME=BUSINESS_CITY>" placeholder="City *" class="form-control" maxlength="45">
                <span class="tooltip">City *</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <select id="BUSINESS_STATE" name="BUSINESS_STATE" class="form-control">
                    <option value="">All States *</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
            </label>
        </div>    
        <div class="input col col-1">
            <label>
                <input type="text" id="BUSINESS_ZIP" name="BUSINESS_ZIP" value="<TMPL_VAR NAME=BUSINESS_ZIP>" placeholder="Zip *" maxlength="10" class="form-control">
                <span class="tooltip">Zip *</span>
            </label>
        </div>
        <div class="form-row">
        </div>
        <div id="businesscounties" class="input col col-3">
            <label>
                <select id="BUSINESS_COUNTY" name="BUSINESS_COUNTY" class="form-control" disabled>
                    <option id="noCounty" value="">County</option>
                </select>
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="BUSINESS_WORK_PHONE" name="BUSINESS_WORK_PHONE" class="form-control" value="<TMPL_VAR NAME=BUSINESS_WORK_PHONE>" placeholder="Work Phone" maxlength="35">
                <span class="tooltip">Work Phone</span> 
            </label>
        </div>
        <div class="input col col-1">
            <label>
                <input type="text" id="BUSINESS_EXTENSION" name="BUSINESS_EXTENSION" class="form-control" value="<TMPL_VAR NAME=BUSINESS_EXTENSION>" placeholder="Ext." maxlength="10">
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
        <button type="button" id="BusinessContinue" class="continue-btn" >Continue</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button type="button" id="SubjectReset" class="reset-btn" >Reset Form</button>&nbsp;
    </div>
</div>
<div id="StepTwoArea">
    <div id="pgtitle">
        <div style="color: #666666; line-height: 1.2em; padding: 1px 0 1px 5px;" align="left">
            * Entry Required.
            <font color="#ff0000">$ Additional Fees Apply.</font>
            Please see
            <a onclick="javascript:window.open('/RiskManagement/help/Portal_Help.htm#business_assurance_fees.htm?_nc_wn=help', 'help', 'width=800,height=600,left=25,top=25,scrollbars=yes,menubar=no,resizable=yes'); return false;" href="#">Fee Notice</a>.
        </div>
    </div>
    <br/>

    <strong>Order Details - Estimated Fee: $<span id="price"></span></strong>
    <br/>
    <strong><span id="reportSelected"></span></strong>
    <br/>
    <br/>
    <ul>
        <li>Records Requested:&nbsp;<span id="records"></span></li>
    </ul>
    <br/>
    <input type="checkbox" value="yes" name="INCLUDE_COPIES" id="INCLUDE_COPIES"> Request copies for all records. Additional access and copy charges may apply.
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="font-10">Please see <a onclick="javascript:window.open('/RiskManagement/help/Portal_Help.htm#business_assurance_fees.htm?_nc_wn=help', 'help', 'width=800,height=600,left=25,top=25,scrollbars=yes,menubar=no,resizable=yes'); return false;" href="#">Fee Notice</a>.</span>
    <br/>
    <br/>
    <ul>
        <li><span id="searchType"></span>&nbsp;Information:
        <br/>
        <span id="searchTerms"></span></li>
    </ul>    
    <br/>
    The estimated total fee includes the standard package price.
    <br/>
    The turn-around time varies by jurisdiction.  On average, reports are returned in 5 to 7 business days.
    <br/>
    <br/>
    <hr>
    <strong>Order Contact Information</strong>
    <br/>
    <span class="font-10">When the status of your order changes, notifications will be sent to the email address you enter below. Your phone number is not required but can be useful if we need to contact you regarding the order, such as if additional information is required.</span>
    <br/>
    <br/>
    <div class="collapse in">
        <div class="input col col-3">
            <label>
                <input type="text" id="FORCE_EMAIL" name="FORCE_EMAIL" class="form-control" value="<TMPL_VAR NAME=FORCE_EMAIL>" placeholder="Email Address *" maxlength="55">
                <span class="tooltip">Email Address</span> 
            </label>
        </div>
        <div class="form-row">
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="FORCE_VERIFY" name="FORCE_VERIFY" class="form-control" value="<TMPL_VAR NAME=FORCE_VERIFY>" placeholder="Verify Email Address *" maxlength="55">
                <span class="tooltip">Verify Email Address</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="CONTACT_PHONE" name="CONTACT_PHONE" class="form-control" value="<TMPL_VAR NAME=CONTACT_PHONE>" placeholder="Contact Phone *" maxlength="35">
                <span class="tooltip">Contact Phone</span> 
            </label>
        </div>
        <div class="form-row">
        </div>
        <div class="input col col-9">
            <label>
                <textarea name="OTHER_COMMENTS" class="form-control" id="OTHER_COMMENTS" placeholder="Other Comments"><TMPL_VAR NAME=OTHER_COMMENTS></textarea>
                <span class="tooltip">Other Comments</span> 
            </label>
        </div>
    </div>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <div class="row" style="text-align: right; padding-right: 20px;">
        <button type="button" id="SubmitOrder" class="continue-btn" >Submit Order</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button type="button" id="EditOrder" class="reset-btn" >Edit Order</button>&nbsp;
        <button type="button" id="BusinessEditOrder" class="reset-btn" >Edit Order</button>&nbsp;
    </div>
</div>
<div id="StepThreeArea">
    <div id="loading1"> 
       <img src="<TMPL_VAR NAME=IMGPATH>/loader.gif" alt="In Progress Indicator"/> <strong>Please wait ...</strong>
    </div>
    <div id="confirmation"> 
        <strong><font color="#ff0000">Order Confirmation: <span id="orderNum"></span></font></strong>
        <br/>
        <strong>Search Criteria for <font color="#ff0000"><span id="submitReportSelected"></span></font></strong>
        <br/>
        <br/>
        <span id="submitTerms"></span>
        <br/>
        <br/>
        <ul>
            <li>Records:&nbsp;<span id="submitRecords"></span></li>
        </ul>
        <br/>
        <br/>
        <strong>Estimated Fee:</strong> $<span id="submitPrice"></span> + APPLICABLE JURISDITIONAL ACCESS FEE AND COPY CHARGES
        <br/>
        <br/>
        Your Order has been placed. The turn-around time varies by jurisdiction. On average, reports are returned in 5 to 7 business days.
        <br/>
        <br/>
        Please visit the <a href="#" id="OfflineResult">Offline Results</a> page to view a list of all submitted and processed requests
        <br />
        <br />
        <div id="orderdone" class="row stepXBottoms">
            <button type="button" id="OrderDone" class="continue-btn" >New Order</button>&nbsp;
        </div>
    </div>
</div>