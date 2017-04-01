<div id="search-form-fields" class="col col-7">
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME=CSSPATH>/occcr.css">
    <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/occcr_search.js"></script>
    
    <!-- ============= Step One Area ============= -->
    <div class="stepform" id="StepOneArea">
        <div class="occcr_entry_header">
            * Entry Required.
            <strong>$ Additional Fees Apply.</strong>
            Please see
            <a href="javascript:void(0);" data-helpid = "OCCCR_FEES"><u>Fee Notice</u></a>
        </div>
        <fieldset>
            <legend class="section">Subject Information</legend>        
            <div class="row">
                <div class="input col col-3">
                    <label>
                        <input autocomplete="off" type="text" name="SSN" id="SSN" maxlength="11" placeholder="SSN *" value="<TMPL_VAR NAME=SSN>" class="form-control">
                        <span class="tooltip">
                            SSN *<span class="font-10"> (e.g. 123456789, 123-45-6789, 123 45 6789)</span>
                        </span> 
                    </label>
                </div>
            </div>
            <fieldset class="row">
                <legend class="sr-only">Search by name</legend>
                <div class="input col col-3">
                    <label>
                        <input type="text" id="LAST_NAME" name="LAST_NAME" maxlength="35" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name *" class="form-control">
                        <span class="tooltip">Last Name *</span> 
                    </label>
                </div>
                <div class="input col col-3">
                    <label>
                        <input type="text" id="FIRST_NAME" name="FIRST_NAME" maxlength="35" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name *" class="form-control">
                        <span class="tooltip">First Name *</span> 
                    </label>
                </div>
                <div class="input col col-3">
                    <label>
                        <input type="text" id="MI" name="MI" maxlength="35" value="<TMPL_VAR NAME=MI>" placeholder="Middle or Initial" class="form-control">
                        <span class="tooltip">Middle or Initial</span> 
                    </label>
                </div>
            </fieldset>
            <fieldset>
                <legend class="sr-only">Search by location</legend>
                <div class="row">
                    <div class="input col col-6">
                        <label>
                            <input type="text" id="STREET_ADDRESS" name="STREET_ADDRESS" maxlength="35" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address *" class="form-control">
                            <span class="tooltip">
                                Street Address *
                                <span class="font-10"> (e.g. 123 Main St Apt 1)</span>
                            </span>                           
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="input col col-3">
                        <label>
                            <input type="text" id="CITY" name="CITY" maxlength="35" value="<TMPL_VAR NAME=CITY>" placeholder="City *" class="form-control">
                            <span class="tooltip">City *</span> 
                        </label>
                    </div>
                    <div class="input col col-3">
                        <label>
                            <select id="STATE" name="STATE" data-value="<TMPL_VAR NAME=STATE>" class="form-control">
                                <option id="emptystates1" />
                            </select>
                        </label>
                    </div>
                    <div class="input col col-2">
                        <label>
                            <input type="text" id="ZIP" name="ZIP" maxlength="10" value="<TMPL_VAR NAME=ZIP>" class="form-control" placeholder="Zip Code *">
                            <span class="tooltip">Zip Code *</span>
                        </label>
                    </div>
                </div>
            </fieldset>
            <div class="row">
                <div class="input col col-3">
                    <label>
                        <input type="text" id="DOB" name="DOB" maxlength="10" value="<TMPL_VAR NAME=DOB>" placeholder="Date of Birth *" class="form-control">
                        <span class="tooltip">
                            Date of Birth * 
                            <br />
                            <span class="font-10">(mm/dd/yyyy)</span>
                        </span> 
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="input col col-3">
                    <label>
                        <select name="daterange" id="daterange1" class="form-control">
                            <option value="7" selected="selected">Previous Seven Years</option>
                            <option value="10">Previous Ten Years $$</option>
                        </select>
                    </label>
                </div>
            </div>
        </fieldset>
    </div>

    <!-- ============= Step Two Area ============= -->
    <div class="stepform hidden" id="StepTwoArea">
        <div class="occcr_entry_header">
            * Entry Required.
            <strong>$ Additional Fees Apply.</strong>
            Please see
            <a href="javascript:void(0);" data-helpid = "OCCCR_FEES"><u>Fee Notice</u></a>
        </div>
        <fieldset class="displayarea">
            <legend class="section">Counties and Search Types</legend>
            <label>
                <input id="select-by-cityandstate" type="radio" checked="checked" name="Search-Type" onclick="javascript:ShowSearchInputs(1);">
                Search for counties using City and State
            </label>
            <label>
                <input id="select-by-state" type="radio" name="Search-Type" onclick="javascript:ShowSearchInputs(2);">
                Search for counties by State
            </label>
            <label>
                <input id="select-by-zip" type="radio" name="Search-Type" onclick="javascript:ShowSearchInputs(3);">
                Search for counties using Zip Code
            </label>
        </fieldset>
        <fieldset class="displayarea">
            <legend class="sr-only">Enter search information</legend>
            <div id="searchbycitystate" class="row">
                <div class="input col col-3">
                    <label>
                        <input type="text" id="city2" name="city2" maxlength="35" placeholder="City *" class="form-control subvalidated">
                        <span class="tooltip">City *</span> 
                    </label>
                </div>
                <div class="input col col-3">
                    <label>
                        <select id="state2" name="state2" class="form-control subvalidated">
                            <option id="emptystates2" />
                        </select>
                    </label>
                </div>
                <div class="input col col-1">
                    <button type="button" id="LookupCityState" class="btn btn-clear">Add for Search</button>
                </div>
            </div>
            <div id="searchbystate" class="row nodisplay">
                <div class="input col col-3">
                    <label>
                        <select id="state3" name="state3" class="form-control subvalidated">
                            <option id="emptystates3" />
                        </select>
                    </label>
                </div>
				<div id="displaycounties" class="input col col-3">
                    <label>
                        <select id="county3" name="county3" class="form-control" disabled>
                            <option value="" aria-label="You must first select a state before you can select a county">County</option>
                        </select>
                    </label>
                </div>
                <div class="input col col-1">
                    <button type="button" id="LookupCountyState" class="btn btn-clear">Add for Search</button>
                </div>
            </div>
            <div id="searchbyzip" class="row nodisplay">
                <div class="input col col-3">
                    <label>
                        <input type="text" id="zip2" name="zip2" placeholder="Zip Code *" class="form-control subvalidated">
                        <span class="tooltip">Zip Code *</span> 
                    </label>
                </div>
                <div class="input col col-3">
                    <button type="button" id="LookupZip" class="btn btn-clear">Add for Search</button>
                </div>
            </div>
        </fieldset>
        <div class="row">
            <table class="countyresults" id="searchselection">
                <caption class="sr-only">County search results</caption>
                <thead>
                    <tr>
                        <th scope="col">County</th>
                        <th scope="col">State</th>
                        <th scope="col">Civil Upper</th>
                        <th scope="col">Civil Lower</th>
                        <th scope="col">Criminal</th>
                    </tr>
                </thead>
            </table>
            <div id="loading"> 
                <img src="<TMPL_VAR NAME=IMGPATH>/loader.gif" alt=""/><span class="sr-only">Results are currently</span> Loading...
            </div>
        </div>
    </div>

    <!-- ============= Step Three Area ============= -->
    <div class="stepform hidden" id="StepThreeArea">
        <div class="occcr_entry_header">
            * Entry Required.
            <strong>$ Additional Fees Apply.</strong>
            Please see
            <a href="javascript:void(0);" data-helpid = "OCCCR_FEES"><u>Fee Notice</u></a>
        </div>
        <fieldset class="displayarea">
            <legend class="section">Contact Information</legend>
            <p class="row step3notice">
                Enter your contact information below. When the status of your order changes, notifications will be sent
                to the email address you enter below. Your phone number is required and can be useful if we need to
                contact you regarding the order, such as if additional information is required.
            </p>
            <div class="row">
                <div class="input col col-6">
                    <label>
                        <input type="text" id="email1" name="email1" maxlength="35" placeholder="*E-mail Address" class="form-control">
                        <span class="tooltip">*E-mail Address</span> 
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="input col col-6">
                    <label>
                        <input type="text" id="email2" name="email2" maxlength="35" placeholder="*Verify E-mail Address" class="form-control">
                        <span class="tooltip">*Verify E-mail Address</span> 
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="input col col-6">
                    <label>
                        <input type="text" id="phone" name="phone" maxlength="35" placeholder="*Phone Number" class="form-control">
                        <span class="tooltip">*Phone Number</span> 
                    </label>
                </div>
            </div>
        </fieldset>
    </div>

    <!-- ============= Step Four Area ============= -->
    <div class="stepform hidden" id="StepFourArea">
        <div class="occcr_entry_header">
            * Entry Required.
            <strong>$ Additional Fees Apply.</strong>
            Please see
            <a href="javascript:void(0);" data-helpid = "OCCCR_FEES"><u>Fee Notice</u></a>
        </div>
        <br />
        <h3>Confirm Order Details and Submit Order</h3>
        <div class="reviewsection">
            <h4>Subject Information</strong> (<a href="#" id="SubjectInfoEdit">Edit</a>)</h4>
            <dl class="termtable">
                <div>
                    <dt>SSN</dt>
                    <dd id="ssntd"></dd>
                </div>
                <div>
                    <dt>Name</dt>
                    <dd id="nametd"></dd>
                </div>
                <div>
                    <dt>Address</dt>
                    <dd>
                        <span id="addr1td"></span><br/>
                        <span id="addr2td"></span><br/>
                    </dd>
                </div>
                <div>
                    <dt>DOB</dt>
                    <dd id="dobtd"></dd>
                </div>
                <div>
                    <dt>Date Range</dt>
                    <dd id="daterangetd"></dd>
                </div>
                <div>
                    <dt>Reference ID</dt>
                    <dd id="refidtd"></dd>
                </div>                
            </dl>
        </div>
        <div class="reviewsection">
            <h4>Counties and Search Types</strong>&nbsp;(<a href="#" id="CountyInfoEdit">Edit</a>)</h4>
            <table class="countyresults" id="countyfees">
                <caption class="sr-only">Fee schedule</caption>
                <thead>
                    <tr>
                        <th class="col_county" scope="col">County</th>
                        <th class="col_state" scope="col">State</th>
                        <th class="col_type" scope="col">Search Type</th>
                        <th class="col_est" scope="col">Estimated Completion</th>
                        <th class="col_fee" scope="col">Fee</th>
                    </tr>
                </thead>
                <tbody></body>
            </table>
        </div>
        <div class="reviewsection">
            <h4>Contact Information</strong>&nbsp;(<a href="#" id="ContactInfoEdit">Edit</a>)</h4>
            <dl class="termtable">
                <div>
                    <dt>Email Address</dt>
                    <dd id="emailtd"></dd>
                </div>
                <div>
                    <dt>Phone</dt>
                    <dd id="phonetd"></dd>
                </div>             
            </dl>            
        </div>
    </div>
    <div class="stepform hidden" id="StepFiveArea">
        <div class="occcr_entry_header">
            * Entry Required.
            <strong>$ Additional Fees Apply.</strong>
            Please see
            <a href="javascript:void(0);" data-helpid = "OCCCR_FEES"><u>Fee Notice</u></a>
        </div>
        <h3>Order Successfully Created</h3>
        <div id="loading1"> 
            <img src="<TMPL_VAR NAME=IMGPATH>/loader.gif" alt=""/> <strong>Please wait while your order is saved ...</strong>
        </div>
        <p>Order <span id="order_num_list"></span> have/has been created successfully.</p>
        <p>Please visit the <a href="javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR_RESULTS');" id="OfflineResult">Offline Results</a> page to view a list of all submitted and processed requests</p>
    </div>
</div>
<div class="col col-3" id="search-options">
    <div class="row" style="margin:0;">
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
        <li id="step1" data-step="1" class="visited selected">
            <button type="button" aria-selected="true">
                <span class="badge">
                    <span class="sr-only">step</span> 1
                </span>
                Enter Subject Information
            </button>
        </li>
        <li id="step2" data-step="2">
            <button type="button">
                <span class="badge">
                    <span class="sr-only">step</span> 2
                </span>
                Enter Counties and Search Types
            </button>
        </li>
        <li id="step3" data-step="3">
            <button type="button">
                <span class="badge">
                    <span class="sr-only">step</span> 3
                </span>
                Enter Contact Information
            </button>
        </li>
        <li id="step4" data-step="4">
            <button type="button">
                <span class="badge">
                    <span class="sr-only">step</span> 4
                </span>
                Confirm Order Details and Submit Order
            </button>
        </li>
        <li id="step5" data-step="5" class="last">
            <button type="button">
                <span class="badge">
                    <span class="sr-only">step</span> 5
                </span>
                Process Order
            </button>
        </li>
    </ul>    
</div>
<div class="col col-7" id="occcr-search-buttons">
    <div class="pull-right">
        <div class="stepcontrols" id="StepOneControls">
            <button type="button" id="SubjectContinue" class="btn btn-danger">Continue</button>
            <button type="button" id="SubjectSave" class="btn btn-danger hide">Save Changes</button>
            <button type="button" id="SubjectReset" class="btn btn-clear">Clear</button>
            <button type="button" id="SubjectCancel" class="btn btn-clear hide">Cancel Changes</button>
        </div>
        <div class="stepcontrols hidden" id="StepTwoControls">
            <button type="button" id="GoPreviousStepOne" class="btn btn-clear">Previous</button>
            <button type="button" id="EnterContact" class="btn btn-danger">Continue</button>
            <button type="button" id="ClearCounties" class="btn btn-clear">Clear</button>
            <button type="button" id="SaveCounties" class="btn btn-danger hide">Save Changes</button>
            <button type="button" id="SelectCoCancel" class="btn btn-clear hide">Cancel Changes</button>
        </div>
        <div class="stepcontrols hidden" id="StepThreeControls">
            <button type="button" id="GoPreviousStepTwo" class="btn btn-clear">Previous</button>
            <button type="button" id="ReviewOrder" class="btn btn-danger">Continue</button>
            <button type="button" id="ClearContact" class="btn btn-clear">Clear</button>
            
            <button type="button" id="SaveContact" class="btn btn-danger hide">Save Changes</button>
            <button type="button" id="ContactCancel" class="btn btn-clear hide">Cancel Changes</button>
        </div>
        <div class="stepcontrols hidden" id="StepFourControls">
            <button type="button" id="SubmitOrder" class="btn btn-danger">Submit Order</button>
        </div>
        <div class="stepcontrols hidden" id="StepFiveControls">
            <button type="button" id="OrderDoneBtn" class="btn btn-danger">Done</button>
        </div>
    </div>
</div>