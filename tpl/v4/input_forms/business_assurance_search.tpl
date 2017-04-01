<div id="search-form-fields" class="col col-7">
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME=CSSPATH>/occcr.css">
    <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/business_assurance_search.js"></script>

    <div id="bus_StepOneArea">
        <div class="occcr_entry_header" id="pgtitle">
            * Entry Required.
            <strong>$ Additional Fees Apply.</strong>
            Please see
            <a href="javascript:void(0);" data-helpid = "BUSINESS_ASSURANCE_FEES"><u>Fee Notice</u></a>
        </div>
        <fieldset class="optlist orderby">
            <legend class="minimal">Order By:</legend>
            <div>
                <label>
                    <input name="BUSINESS_OR_PRINCIPAL" checked="checked" type="radio" id="PRINCIPAL_RADIO" value="1">
                    Principal
                </label>
                <label>
                    <input name="BUSINESS_OR_PRINCIPAL" type="radio" id="BUSINESS_RADIO" value="2">
                    Business
                </label>
            </div>
        </fieldset>
        <div id="principal_div" class="ordertype collapse in">
            <fieldset class="optlist">
                <legend class="minimal">
                    <span aria-hidden="true">Select Report:</span>
                    <span class="sr-only">Select a principal report</span>
                </legend>
                <div>
                    <label>
                        <input name="BASE_OR_COMPREHENSIVE" checked="checked" type="radio" id="BASE_RADIO" value="1">
                        Base Business Principal
                    </label>
                    <label>
                        <input name="BASE_OR_COMPREHENSIVE" type="radio" id="COMPREHENSIVE_RADIO" value="2">
                        Comprehensive Business Principal
                    </label>
                </div>
            </fieldset>
            <div class="row">
                <div class="input col col-3">
                    <label>
                        <input autocomplete="off" type="text" id="SSN" class="form-control" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="SSN *" maxlength="30">
                        <span class="tooltip">
                            SSN<br/>
                            <span class="font-10">(Examples: 123456789, 123-45-6789)</span>
                        </span> 
                    </label>
                </div>
                <div class="input col col-3">
                    <label class="">
                        <input type="text" id="DOB" name="DOB" value="<TMPL_VAR NAME=DOB>" placeholder="Date Of Birth *" class="form-control" maxlength="10">
                        <span class="tooltip">
                            Date Of Birth<br><span class="font-10">(mm/dd/yyyy)</span>
                        </span>
                    </label>
                </div>    
            </div>
            <fieldset>
                <legend class="sr-only">Search by name</legend>
                <div class="row">
                    <div class="input col col-3">
                        <label>
                            <input type="text" id="LAST_NAME" name="LAST_NAME" class="form-control" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name *" maxlength="35">
                            <span class="tooltip">Last Name *</span> 
                        </label>
                    </div>
                    <div class="input col col-3">
                        <label>
                            <input type="text" id="FIRST_NAME" name="FIRST_NAME" class="form-control" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name *" maxlength="35">
                            <span class="tooltip">First Name *</span> 
                        </label>
                    </div>
                    <div class="input col col-3">
                        <label>
                            <input type="text" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle or Initial" class="form-control" maxlength="35">
                            <span class="tooltip">Middle or Initial</span> 
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="input col col-3">
                        <label>
                            <input type="text" id="PREFIX" name="PREFIX" value="<TMPL_VAR NAME=PREFIX>" placeholder="Prefix" class="form-control" maxlength="40">
                            <span class="tooltip">Prefix</span> 
                        </label>
                    </div>
                    <div class="input col col-3">
                        <label>
                            <input type="text" id="SUFFIX" name="SUFFIX" value="<TMPL_VAR NAME=SUFFIX>" placeholder="Suffix" class="form-control" maxlength="40">
                            <span class="tooltip">Suffix</span> 
                        </label>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend class="sr-only">Search by location</legend>
                <div class="row">
                    <div class="input col col-9">
                        <label>
                            <input type="text" id="STREET_ADDRESS" name="STREET_ADDRESS" class="form-control" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street - line 1 *" maxlength="200">
                            <span class="tooltip">Street - line 1 *</span> 
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="input col col-9">
                        <label>
                            <input type="text" id="ADDRESS2" name="ADDRESS2" class="form-control" value="<TMPL_VAR NAME=ADDRESS2>" placeholder="Street - line 2" maxlength="200">
                            <span class="tooltip">Street - line 2</span> 
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="input col col-3">
                        <label>
                            <input type="text" id="CITY" name="CITY" value="<TMPL_VAR NAME=CITY>" placeholder="City *" class="form-control" maxlength="35">
                            <span class="tooltip">City *</span> 
                        </label>
                    </div>
                    <div class="input col col-3">
                        <label>
                            <span class="sr-only">State</span>
                            <select id="STATE" name="STATE" data-value="<TMPL_VAR NAME=STATE>" class="form-control">
                                <option value="">All States *</option>
                                <option value="AL">AL - Alabama</option>
                                <option value="AK">AK - Alaska</option>
                                <option value="AZ">AZ - Arizona</option>
                                <option value="AR">AR - Arkansas</option>
                                <option value="CA">CA - California</option>
                                <option value="CO">CO - Colorado</option>
                                <option value="CT">CT - Connecticut</option>
                                <option value="DE">DE - Delaware</option>
                                <option value="DC">DC - District Of Columbia</option>
                                <option value="FL">FL - Florida</option>
                                <option value="GA">GA - Georgia</option>
                                <option value="GU">GU - Guam</option>
                                <option value="HI">HI - Hawaii</option>
                                <option value="ID">ID - Idaho</option>
                                <option value="IL">IL - Illinois</option>
                                <option value="IN">IN - Indiana</option>
                                <option value="IA">IA - Iowa</option>
                                <option value="KS">KS - Kansas</option>
                                <option value="KY">KY - Kentucky</option>
                                <option value="LA">LA - Louisiana</option>
                                <option value="ME">ME - Maine</option>
                                <option value="MD">MD - Maryland</option>
                                <option value="MA">MA - Massachusetts</option>
                                <option value="MI">MI - Michigan</option>
                                <option value="MN">MN - Minnesota</option>
                                <option value="MS">MS - Mississippi</option>
                                <option value="MO">MO - Missouri</option>
                                <option value="MT">MT - Montana</option>
                                <option value="NE">NE - Nebraska</option>
                                <option value="NV">NV - Nevada</option>
                                <option value="NH">NH - New Hampshire</option>
                                <option value="NJ">NJ - New Jersey</option>
                                <option value="NM">NM - New Mexico</option>
                                <option value="NY">NY - New York</option>
                                <option value="NC">NC - North Carolina</option>
                                <option value="ND">ND - North Dakota</option>
                                <option value="OH">OH - Ohio</option>
                                <option value="OK">OK - Oklahoma</option>
                                <option value="OR">OR - Oregon</option>
                                <option value="PA">PA - Pennsylvania</option>
                                <option value="PR">PR - Puerto Rico</option>
                                <option value="RI">RI - Rhode Island</option>
                                <option value="SC">SC - South Carolina</option>
                                <option value="SD">SD - South Dakota</option>
                                <option value="TN">TN - Tennessee</option>
                                <option value="TX">TX - Texas</option>
                                <option value="UT">UT - Utah</option>
                                <option value="VT">VT - Vermont</option>
                                <option value="VA">VA - Virginia</option>
                                <option value="VI">VI - Virgin Islands</option>
                                <option value="WA">WA - Washington</option>
                                <option value="WV">WV - West Virginia</option>
                                <option value="WI">WI - Wisconsin</option>
                                <option value="WY">WY - Wyoming</option>
                            </select>
                        </label>
                    </div>    
                    <div class="input col col-2">
                        <label>
                            <input type="text" id="ZIP" name="ZIP" value="<TMPL_VAR NAME=ZIP>" placeholder="Zip Code *" maxlength="10" class="form-control">
                            <span class="tooltip">Zip Code *</span>
                        </label>
                    </div>
                </div>
            </fieldset>
            <div class="row">
                <div id="displaycounties" class="input col col-3">
                    <label>
                        <span class="sr-only">Select a County</span>
                        <select id="COUNTY" name="COUNTY" class="form-control" disabled>
                            <option value="" aria-label="You must first select a state before you can select a county">County</option>
                        </select>
                    </label>
                </div>
                <div class="input col col-3">
                    <label>
                        <input type="text" id="HOME_PHONE" name="HOME_PHONE" class="form-control" value="<TMPL_VAR NAME=HOME_PHONE>" placeholder="Home Phone" maxlength="14">
                        <span class="tooltip">Home Phone</span> 
                    </label>
                </div>
                <div class="input col col-3">
                    <label>
                        <input type="text" id="WORK_PHONE" name="WORK_PHONE" class="form-control" value="<TMPL_VAR NAME=WORK_PHONE>" placeholder="Work Phone" maxlength="14">
                        <span class="tooltip">Work Phone</span> 
                    </label>
                </div>
                <div class="input col col-1">
                    <label>
                        <input type="text" id="EXTENSION" name="EXTENSION" class="form-control" value="<TMPL_VAR NAME=EXTENSION>" placeholder="Ext." maxlength="10">
                        <span class="tooltip">Extension</span> 
                    </label>
                </div>
            </div>
            <fieldset class="row">
                <legend class="sr-only">Search by other name</legend>
                <div class="input col col-3">
                    <label>
                        <input type="text" id="OTHER_LAST" name="OTHER_LAST" class="form-control" value="<TMPL_VAR NAME=OTHER_LAST>" placeholder="Other Last Name" maxlength="35">
                        <span class="tooltip">Other Last Name</span> 
                    </label>
                </div>
                <div class="input col col-3">
                    <label>
                        <input type="text" id="OTHER_FIRST" name="OTHER_FIRST" class="form-control" value="<TMPL_VAR NAME=OTHER_FIRST>" placeholder="Other First Name" maxlength="35">
                        <span class="tooltip">Other First Name</span> 
                    </label>
                </div>
                <div class="input col col-3">
                    <label>
                        <input type="text" id="OTHER_MI" name="OTHER_MI" value="<TMPL_VAR NAME=OTHER_MI>" placeholder="Other Middle or Initial" class="form-control" maxlength="35">
                        <span class="tooltip">Other Middle or Initial</span> 
                    </label>
                </div>
            </fieldset>
        </div>
        <div id="business_div" class="ordertype collapse in">
            <fieldset class="optlist">
                <legend class="minimal">
                    <span aria-hidden="true">Select Report:</span>
                    <span class="sr-only">Select a business report</span>
                </legend>
                <div>
                    <label>
                        <input name="BUSINESS_REPORT_TYPE" checked="checked" type="radio" id="BASE_RADIO" value="1"/>
                        Base Business
                    </label>
                    <label>
                        <input name="BUSINESS_REPORT_TYPE" type="radio" id="REAL_ESTATE_RADIO" value="2"/>
                        Commercial Real Estate
                    </label>
                    <label>
                        <input name="BUSINESS_REPORT_TYPE" type="radio" id="LEASING_RADIO" value="3"/>
                        Commercial Leasing
                    </label>
                    <label>
                        <input name="BUSINESS_REPORT_TYPE" type="radio" id="LENDING_RADIO" value="4"/>
                        Commercial Lending
                    </label>
                    <label>
                        <input name="BUSINESS_REPORT_TYPE" type="radio" id="PARTNER_RADIO" value="5"/>
                        Partner/Vendor
                    </label>
                    <label>
                        <input name="BUSINESS_REPORT_TYPE" type="radio" id="SMALL_BUSINESS_RADIO" value="6"/>
                        Small Business
                    </label>
                </div>
            </fieldset>
            <div class="row">
                <div class="input col col-6">
                    <label>
                        <input type="text" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name *" class="form-control" maxlength="50">
                        <span class="tooltip">Company Name</span>
                    </label>
                </div>
                <div class="input col col-3">
                    <label>
                        <input type="text" id="FEIN" name="FEIN" class="form-control" value="<TMPL_VAR NAME=FEIN>" maxlength="11" placeholder="FEIN">
                        <span class="tooltip">FEIN</span> 
                    </label>
                </div>
            </div>
            <fieldset>
                <legend class="sr-only">Search by location</legend>
                <div class="row">
                    <div class="input col col-9">
                        <label>
                            <input type="text" id="BUSINESS_ADDRESS1" name="BUSINESS_ADDRESS1" class="form-control" value="<TMPL_VAR NAME=BUSINESS_ADDRESS1>" placeholder="Street - line 1 *" maxlength="200">
                            <span class="tooltip">Street - line 1 *</span> 
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="input col col-9">
                        <label>
                            <input type="text" id="BUSINESS_ADDRESS2" name="BUSINESS_ADDRESS2" class="form-control" value="<TMPL_VAR NAME=BUSINESS_ADDRESS2>" placeholder="Street - line 2" maxlength="200">
                            <span class="tooltip">Street - line 2</span> 
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="input col col-3">
                        <label>
                            <input type="text" id="BUSINESS_CITY" name="BUSINESS_CITY" value="<TMPL_VAR NAME=BUSINESS_CITY>" placeholder="City *" class="form-control" maxlength="35">
                            <span class="tooltip">City *</span> 
                        </label>
                    </div>
                    <div class="input col col-3">
                        <label>
                            <span class="sr-only">State</span>
                            <select id="BUSINESS_STATE" name="BUSINESS_STATE" class="form-control">
                                <option value="">All States *</option>
                                <option value="AL">AL - Alabama</option>
                                <option value="AK">AK - Alaska</option>
                                <option value="AZ">AZ - Arizona</option>
                                <option value="AR">AR - Arkansas</option>
                                <option value="CA">CA - California</option>
                                <option value="CO">CO - Colorado</option>
                                <option value="CT">CT - Connecticut</option>
                                <option value="DE">DE - Delaware</option>
                                <option value="DC">DC - District Of Columbia</option>
                                <option value="FL">FL - Florida</option>
                                <option value="GA">GA - Georgia</option>
                                <option value="GU">GU - Guam</option>
                                <option value="HI">HI - Hawaii</option>
                                <option value="ID">ID - Idaho</option>
                                <option value="IL">IL - Illinois</option>
                                <option value="IN">IN - Indiana</option>
                                <option value="IA">IA - Iowa</option>
                                <option value="KS">KS - Kansas</option>
                                <option value="KY">KY - Kentucky</option>
                                <option value="LA">LA - Louisiana</option>
                                <option value="ME">ME - Maine</option>
                                <option value="MD">MD - Maryland</option>
                                <option value="MA">MA - Massachusetts</option>
                                <option value="MI">MI - Michigan</option>
                                <option value="MN">MN - Minnesota</option>
                                <option value="MS">MS - Mississippi</option>
                                <option value="MO">MO - Missouri</option>
                                <option value="MT">MT - Montana</option>
                                <option value="NE">NE - Nebraska</option>
                                <option value="NV">NV - Nevada</option>
                                <option value="NH">NH - New Hampshire</option>
                                <option value="NJ">NJ - New Jersey</option>
                                <option value="NM">NM - New Mexico</option>
                                <option value="NY">NY - New York</option>
                                <option value="NC">NC - North Carolina</option>
                                <option value="ND">ND - North Dakota</option>
                                <option value="OH">OH - Ohio</option>
                                <option value="OK">OK - Oklahoma</option>
                                <option value="OR">OR - Oregon</option>
                                <option value="PA">PA - Pennsylvania</option>
                                <option value="PR">PR - Puerto Rico</option>
                                <option value="RI">RI - Rhode Island</option>
                                <option value="SC">SC - South Carolina</option>
                                <option value="SD">SD - South Dakota</option>
                                <option value="TN">TN - Tennessee</option>
                                <option value="TX">TX - Texas</option>
                                <option value="UT">UT - Utah</option>
                                <option value="VT">VT - Vermont</option>
                                <option value="VA">VA - Virginia</option>
                                <option value="VI">VI - Virgin Islands</option>
                                <option value="WA">WA - Washington</option>
                                <option value="WV">WV - West Virginia</option>
                                <option value="WI">WI - Wisconsin</option>
                                <option value="WY">WY - Wyoming</option>
                            </select>
                        </label>
                    </div>    
                    <div class="input col col-2">
                        <label>
                            <input type="text" id="BUSINESS_ZIP" name="BUSINESS_ZIP" value="<TMPL_VAR NAME=BUSINESS_ZIP>" placeholder="Zip Code *" maxlength="10" class="form-control">
                            <span class="tooltip">Zip Code *</span>
                        </label>
                    </div>
                </div>
            </fieldset>
            <div class="row">
            
                <div id="businesscounties" class="input col col-3">
                    <label>
                        <span class="sr-only">Select a County</span>
                        <select id="BUSINESS_COUNTY" name="BUSINESS_COUNTY" class="form-control" disabled>
                            <option value="" aria-label="You must first select a state before you can select a county">County</option>
                        </select>
                    </label>
                </div>
                <div class="input col col-3">
                    <label>
                        <input type="text" id="BUSINESS_WORK_PHONE" name="BUSINESS_WORK_PHONE" class="form-control" value="<TMPL_VAR NAME=BUSINESS_WORK_PHONE>" placeholder="Work Phone" maxlength="15">
                        <span class="tooltip">Work Phone</span> 
                    </label>
                </div>
                <div class="input col col-1">
                    <label>
                        <input type="text" id="BUSINESS_EXTENSION" name="BUSINESS_EXTENSION" class="form-control" value="<TMPL_VAR NAME=BUSINESS_EXTENSION>" placeholder="Ext." maxlength="10">
                        <span class="tooltip">Extension</span> 
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="input col col-6">
                    <label>
                        <input type="text" id="BUSINESS_AS" name="BUSINESS_AS" value="<TMPL_VAR NAME=BUSINESS_AS>" placeholder="Doing Business As" class="form-control" maxlength="150">
                        <span class="tooltip">Business Name</span>
                    </label>
                </div>
            </div>
        </div>
    </div>
    <div id="bus_StepTwoArea">
        <div class="occcr_entry_header" id="pgtitle">
            * Entry Required.
            <strong>$ Additional Fees Apply.</strong>
            Please see
            <a href="javascript:void(0);" data-helpid = "BUSINESS_ASSURANCE_FEES"><u>Fee Notice</u></a>
        </div>
        <div class="row orderdetails">
            <p class="paired"><strong>Order Details - Estimated Fee: $<span id="price"></span></strong></p>
            <p><strong><span id="reportSelected"></span></strong></p>
            <p>Records Requested:&nbsp;<span id="records"></span></p>
            <p>
                <label class="indented">
                    <span>
                        <input type="checkbox" value="yes" name="INCLUDE_COPIES" id="INCLUDE_COPIES">
                    </span>
                    <span>
                        Request copies for all records. Additional access and copy charges may apply.<br/>
                        Please see <a href="javascript:void(0);" data-helpid = "BUSINESS_ASSURANCE_FEES"><u>Fee Notice</u></a>
                    </span>
                </label>
            </p>
            <h3><span id="searchType"></span> Information:</h3>
            <p id="searchTerms"></p>
            <p class="paired">The estimated total fee includes the standard package price.</p>
            <p>The turn-around time varies by jurisdiction.  On average, reports are returned in 5 to 7 business days.</p>
        </div>
        <div class="row orderform">
            <h3>Order Contact Information</h3>
            <p>When the status of your order changes, notifications will be sent to the email address you enter below. Your phone number is not required but can be useful if we need to contact you regarding the order, such as if additional information is required.</p>
            <div class="row">
                <div class="input col col-3">
                    <label>
                        <input type="text" id="FORCE_EMAIL" name="FORCE_EMAIL" class="form-control" value="<TMPL_VAR NAME=FORCE_EMAIL>" placeholder="Email Address *" maxlength="55">
                        <span class="tooltip">Email Address</span> 
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="input col col-3">
                    <label>
                        <input type="text" id="FORCE_VERIFY" name="FORCE_VERIFY" class="form-control" value="<TMPL_VAR NAME=FORCE_VERIFY>" placeholder="Verify Email Address *" maxlength="55">
                        <span class="tooltip">Verify Email Address</span> 
                    </label>
                </div>
                <div class="input col col-3">
                    <label>
                        <input type="text" id="CONTACT_PHONE" name="CONTACT_PHONE" class="form-control" value="<TMPL_VAR NAME=CONTACT_PHONE>" placeholder="Contact Phone *" maxlength="14">
                        <span class="tooltip">Contact Phone</span> 
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="input col col-9">
                    <label>
                        <textarea name="OTHER_COMMENTS" class="form-control" id="OTHER_COMMENTS" placeholder="Other Comments"><TMPL_VAR NAME=OTHER_COMMENTS></textarea>
                        <span class="tooltip">Other Comments</span> 
                    </label>
                </div>
            </div>
        </div>
    </div>
    <div id="bus_StepThreeArea">
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
                <a href="javascript:void(0);" class="help-search help-icon svg-icon-tiny relative"><span class="tooltip centered">Help</span></a>
            <br/>
            <br/>
            Your Order has been placed. The turn-around time varies by jurisdiction. On average, reports are returned in 5 to 7 business days.
            <br/>
            <br/>
            Please visit the <a href="javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR_RESULTS');" id="OfflineResult">Offline Results</a> page to view a list of all submitted and processed requests
        </div>
    </div>
</div>
<div class="col col-3" id="search-options">
    <div class="row">
        <div class="input col col-10" style="padding:0;">
            <label>
                <input type="text" id="REFERENCE_CODE" class="form-control" name="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>" maxlength="32"  placeholder="Reference ID">
                <span class="tooltip">Reference ID </span> 
            </label>
        </div>
        <div id="REFERENCE_CODE_CRITERIA" class="col col-10">
            <span id="ref_code_criteria" class="textGray hidden">The Reference ID must contain only valid characters. </span>
        </div>
    </div>
    <h3>Order Steps:</h3>
    <ul class="steps">
        <li id="principalRow" class="visited selected active" aria-selected="true">
            <button type="button" id="step0_btn">
                <span class="badge">
                    <span class="sr-only">step</span> 1
                </span>
                Principal Information
            </button>
        </li>
        <li id="businessRow" class="visited selected active" aria-selected="true" style="display: none;">
            <button type="button" id="step1_btn">
                <span class="badge">
                    <span class="sr-only">step</span> 1
                </span>
                Business Information
            </button>
        </li>
        <li id="confirmRow">
            <button type="button" id="step2_btn">
                <span class="badge">
                    <span class="sr-only">step</span> 2
                </span>
                Confirm &amp; Submit Order
            </button>
        </li>
        <li id="fullPriceRow" style="display: none;">
            <button type="button" id="step2b_btn">
                <span class="badge">
                    <span class="sr-only">step</span> 2
                </span>
                Confirm &amp; Submit Order
            </button>
            <p><strong>Estimated Fee: $<span id="sidePrice"></span></strong></p>
            <p>The estimated total fee includes the standard package price.</p>
            <p>Additional access and copy charges may apply.</p>
        </li>
        <li id="completeRow" class="last">
            <button type="button" id="step3_btn">
                <span class="badge">
                    <span class="sr-only">step</span> 3
                </span>
                Process Order
            </button>
            <p>The turn-around time varies by jurisdiction. On average, reports are returned in 5 to 7 business days.</p>
        </li>
    </ul>
</div>
<div class="col col-7" id="occcr-search-buttons">
    <div class="pull-right">
        <div class="stepcontrols" id="bus_StepOneControls">
            <button type="button" id="SubjectContinue" class="btn btn-danger">Continue</button>
            <button type="button" id="BusinessContinue" class="btn btn-danger">Continue</button>
            <button type="button" id="SubjectReset" class="btn btn-clear" >Reset Form</button>
        </div>
        <div class="stepcontrols" id="bus_StepTwoControls">
            <button type="button" id="SubmitOrder" class="btn btn-danger">Submit Order</button>
            <button type="button" id="EditOrder" class="btn btn-clear">Edit Order</button>
            <button type="button" id="BusinessEditOrder" class="btn btn-clear">Edit Order</button>
        </div>
        <div class="stepcontrols" id="bus_StepThreeControls">
            <button type="button" id="OrderDone" class="btn btn-danger">New Order</button>
        </div>
    </div>
</div>
