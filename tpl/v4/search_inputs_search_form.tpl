<script>
    var isSrchEnabled = <TMPL_IF NAME=SEARCH_DISABLED>0<TMPL_ELSE>1</TMPL_IF>;
</script>
<TMPL_IF NAME="OCCCR_RESULTS_SEARCH">
<div id="search-form-fields" style="border-right: 0px;">
<TMPL_ELSE>
	<TMPL_IF NAME="OCCCR_ORDER_RESULTS_SEARCH">
	<div id="search-form-fields" style="border-right: 0px;">
	<TMPL_ELSE>
        <TMPL_IF NAME="IRS_VERIFY">
            <div id="search-form-fields" style="border-right: 0px;">
        <TMPL_ELSE>
            <TMPL_IF NAME="SSA_VERIFY">
                <div id="search-form-fields" style="border-right: 0px;">
            <TMPL_ELSE>
	           <div id="search-form-fields" class="col col-7">
            </TMPL_IF>
        </TMPL_IF>
	</TMPL_IF>
</TMPL_IF>


    <TMPL_INCLUDE NAME="application_input_radio_groups.tpl">
    <TMPL_IF NAME=INCLUDE_TERM_CONNECTORS>
        <TMPL_INCLUDE NAME="terms_connectors_desc.tpl">
    </TMPL_IF>
    <TMPL_IF NAME="DO_NEWS_SEARCH">
        <span class="font-12 textRed search-note">For Optimal results Address, City, State, Zip, Phone, SSN and DOB should be populated.</span>
        <br/>
    </TMPL_IF>
    <TMPL_IF NAME=NEWS_TRENDS_SEARCH>
        <span class="search-note">Search emerging adverse news trends by subject or industry. News Trends leverages our automated classification system that analyzes documents for relevant news subjects and industries. Apply a date and, optionally a name or company name; select a topic or topics within a given category and click Search.</span>
    </TMPL_IF>
    <TMPL_IF NAME=IDENTITY_TRACE_SEARCH>
        <span class="search-note">* Name (Last and First) and SSN required 
            <strong>or</strong><br
            &nbsp;&nbsp;Name (Last and First) and Address (Street Number, Street Name, City, State and Zip) required.
        </span>
    </TMPL_IF>
    <TMPL_IF NAME=PURSUIT_REPORT_SEARCH>
        <span class="search-note">* For Equifax, the input should be one of these: SSN only; or Name and Address only; or Name and Address, plus optional SSN.<br/>
            &nbsp;&nbsp;For TransUnion, the input should be one of these: SSN only; or Name and Address only; or Name, Address and SSN.
        </span>
    </TMPL_IF>
    <TMPL_IF NAME="SHOW_INTL_INSTANTID">
        <span class="search-note">* Entry Required. For Optimal results other fields should be populated.</span>
    </TMPL_IF>
    <TMPL_IF NAME=SEC_SEARCH>
        <span class="search-note">Modify your search using connectors: "car 
            <strong>and</strong> 
            boat", "car 
            <strong>or</strong> auto", "car 
            <strong>w/5</strong> accident" - 
            <a href="javascript:void(0);" id="search-connector-examples">More Examples</a>
        </span>
    </TMPL_IF>
    <TMPL_IF NAME=INSTANT_ID_REPORT>
        <strong>Optimal Input</strong>
        <br/>
        <span class="font-10">SSN, Last Name, First Name, Street, City, State, Zip, DOB, Phone</span></td>
    </TMPL_IF>
    <TMPL_IF NAME=INSTANT_IDRF_REPORT>
        <strong>Optimal Input</strong>
        <br/>
        <span class="font-10">SSN, Last Name, First Name, Street, City, State, Zip, DOB, Phone</span>
    </TMPL_IF>
    <TMPL_IF NAME=INSTANT_IDFP_REPORT>
        <strong class="textRed">Required Input</strong>
        <span class="font-10 textRed search-note">
            <ul>
                <li>Option 1: Last Name, First Name, Street, Zip  (preferred)</li>
                <li>Option 2: SSN, Last Name, First Name</li>
            </ul>
        </span>
    </TMPL_IF>
    <TMPL_IF NAME=INSTANT_IDRFFP_REPORT>
        <strong class="textRed">Required Input</strong>
        <span class="font-10 textRed search-note">
            <ul>
                <li>Option 1: Last Name, First Name, Street, Zip  (preferred)</li>
                <li>Option 2: SSN, Last Name, First Name</li>
            </ul>
        </span>
    </TMPL_IF>
    <TMPL_IF NAME=VERIFICATION_OF_OCCUPANCY_REPORT>
        <strong class="textRed">Required Input: </strong>Last Name, First Name, Street, City, State
        <span class="search-note">* Entry Required. For Optimal results Address, City, State, Zip, Phone, SSN and DOB should be populated.</span>
    </TMPL_IF>
    <TMPL_IF NAME=SMALL_BUSINESS_RISK_SCORE_REPORT>
        <span class="search-note">* Entry Required. For optimal results, other data fields should be populated. Also note, the SSN, Last Name, First Name, Street, City, State, and Zip are required if Authorized Representative data is entered.</span>
    </TMPL_IF>
    <TMPL_IF NAME=FRAUDPOINT_SCORE_REPORT>
        <strong class="textRed">Required Input</strong>
        <span class="font-10 textRed search-note">
            <ul>
                <li>Option 1: Last Name, First Name, Street, Zip  (preferred)</li>
                <li>Option 2: SSN, Last Name, First Name</li>
            </ul>
        </span>
        <strong>Optimal Input</strong>
        <br/>
        <span class="font-10">SSN, Last Name, First Name, Street, City, State, Zip, DOB, Phone</span></td>
    </TMPL_IF>
    <TMPL_IF NAME=FRAUDPOINT_SCORE_WITH_REDFLAGS_REPORT>
        <strong class="textRed">Required Input</strong>
        <span class="font-10 textRed search-note">
            <ul>
                <li>Option 1: Last Name, First Name, Street, Zip  (preferred)</li>
                <li>Option 2: SSN, Last Name, First Name</li>
            </ul>
        </span>
        <strong>Optimal Input</strong>
        <br/>
        <span class="font-10">SSN, Last Name, First Name, Street, City, State, Zip, DOB, Phone</span></td>
    </TMPL_IF>
    <TMPL_IF NAME=FRAUDPOINT_ATO>
        <strong class="textRed">Required Input</strong>
        <span class="font-10 textRed search-note">
            <ul>
                <li>SSN, Last Name, First Name, Address 1 (Street, State, Zip) and Address 2 (Street, State, Zip)</li>
            </ul>
        </span>
    </TMPL_IF>
    <TMPL_IF NAME=EMAIL_SEARCH>
        <span class="search-note">For optimal results SSN, Name, Address, DOB or Email Address should be populated.</span> 
    </TMPL_IF>
    <TMPL_LOOP NAME="INPUT_FIELDS_ROW">
        <div class="row">
            <TMPL_LOOP NAME="VAL">
                <TMPL_INCLUDE NAME="application_input_fields.tpl">
            </TMPL_LOOP>
        </div>    
    </TMPL_LOOP>
    <TMPL_IF NAME="FAP_SEARCH">
        <TMPL_INCLUDE NAME="search_inputs_more_fap.tpl">
    </TMPL_IF>
    <TMPL_IF NAME="PORTAL_OTP_SEARCH">
        <TMPL_INCLUDE NAME="search_portal_one_time_password.tpl">
    </TMPL_IF>
    <TMPL_IF NAME="IDM_QA"> 
        <TMPL_INCLUDE NAME="search_instantid_qa.tpl">
    </TMPL_IF>
	<TMPL_IF NAME="OCCCR_SEARCH">
        <TMPL_INCLUDE NAME="occcr_search.tpl">
    </TMPL_IF>
	<TMPL_IF NAME="OCCCR_RESULTS_SEARCH">
        <TMPL_INCLUDE NAME="occcr_results_search.tpl">
    </TMPL_IF>
	<TMPL_IF NAME="OCCCR_ORDER_RESULTS_SEARCH">
        <TMPL_INCLUDE NAME="occcr_order_results_search.tpl">
    </TMPL_IF>
    <TMPL_IF NAME="IDENTITY_TRACE_SEARCH">
        <TMPL_INCLUDE NAME="search_inputs_more_identity_trace.tpl">
    </TMPL_IF>
    <TMPL_IF NAME="BUSINESS_ASSURANCE_SEARCH">
        <TMPL_INCLUDE NAME="business_assurance.tpl">
    </TMPL_IF>
<!-- <TMPL_IF NAME="PROP_HISTORY_REPORT_SEARCH">        
        <TMPL_INCLUDE NAME="search_options_property_history.tpl">
    </TMPL_IF> -->
    <!-- <TMPL_IF NAME="PROP_HISTORY_PLUS_REPORT_SEARCH">
        <TMPL_INCLUDE NAME="search_options_property_history.tpl"> 
    </TMPL_IF> -->
    
    <TMPL_IF NAME="IRS_VERIFY">
        <TMPL_INCLUDE NAME="irs_verify.tpl">
   </TMPL_IF>
    <TMPL_IF NAME="SSA_VERIFY">
        <TMPL_INCLUDE NAME="irs_verify.tpl">
   </TMPL_IF>
</div>

<TMPL_UNLESS NAME="OCCCR_ORDER_RESULTS_SEARCH">
<TMPL_UNLESS NAME="OCCCR_RESULTS_SEARCH">
<TMPL_UNLESS NAME="IRS_VERIFY">
<TMPL_UNLESS NAME="SSA_VERIFY">
<div class="col col-3" id="search-options">
    <TMPL_INCLUDE NAME="reference_code_input_field.tpl">
    <TMPL_IF NAME="SEC_SEARCH">
	    <div class="row">
	        <div id="additional-content-container" class="col-sm-12">
              <h3>Filing</h3>
			  <label class="select">
				  <select id="FILING" name="FILING" >
				  <option value="SECAll" selected="selected">All Available SEC Filings</option>
				  <option value="SECForm8K">SEC Form 8-K Filings</option>
				  <option value="SECForm10K">SEC Form 10-K</option>			
				  <option value="SECForm10Q">SEC Form 10-Q</option>
				  <option value="SECForm20F">SEC Form 20-F</option>
				  <option value="SECAnnualRpt">SEC Annual Reports to Shareholders</option>
				  <option value="SECProxy">SEC Proxy Statements</option>
				  <option value="SECExhibits">SEC Filings, Exhibits Only</option>
				  <option value="SECProspectus">SEC Prospectuses</option>
				  <option value="SECRegStatements">SEC Registration Statements</option>
				  <option value="SECWilliamsAct">SEC Williams Act Filings</option>
				  </select>
			  </label>
	      </div>
	  </div>
        </TMPL_IF>
            
    <TMPL_IF NAME="NEG_NEWS_SEARCH">
        <h3>My Search Terms</h3>
        <label class="block-display">
            <select name="SEARCH_TERM_DROP" class="col-10 form-control" id="SEARCH_TERM_DROP">
                <option value="0">None</option>
            </select>
        </label>
        <h3>SmartIndexing</h3>
        <label>
            <span>Negative News SmartIndexing is an automated classification system that analyzes documents for relevant negative news subjects, industries, companies, organizations, people and places.<br><br>Add additional SmartIndexing categories to further refine your search.</span>
        </label>
    </TMPL_IF>
        <TMPL_IF NAME="IDENTITY_TRACE_SEARCH">
            <div class="row">       
                <div id="additional-content-container" class="col-sm-12">
                    <h3>Additional Content</h3>
                    <label class="toggle">
                        <input type="checkbox" NAME="" class="checkbox style-1 only_one_field">
                            <i data-swchon-text="ON" data-swchoff-text="OFF"></i>
                            <span>Include High Risk Fraud Alerts</span>
                    </label>
                </div>
                <div id="additional-content-container" class="col-sm-12" style="padding-left: 15px;">
                    <span class="descripG">(Additional fees apply. See below for <a href="#disclaimer">adverse action use prohibitions</a>.)</span>
                </div>
            </div>
        </TMPL_IF>
        
        <TMPL_IF INPUT_FIELDS_OPTION>
            <TMPL_IF NAME="FAP_SEARCH">
                <h3>Additional Content</h3>
                <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                <TMPL_IF NAME="OPTION_USE_BANKRUPTCIES">
                <label class="checkbox-toggle input" for="<TMPL_VAR OPTION_NAME>">
                    <span>Include Bankruptcies</span>
                    <input type="checkbox" name="<TMPL_VAR OPTION_NAME>" id="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF>>
                    <span class="toggle pull-right">
                        <span class="toggle-on">ON</span>
                        <span class="toggle-switch"></span>
                        <span class="toggle-off">OFF</span>
                    </span>
                </label>
                </TMPL_IF>
                </TMPL_LOOP>
                <h3>Form Settings</h3>
                <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                    <TMPL_INCLUDE NAME="application_input_options.tpl">
                </TMPL_LOOP>
            </TMPL_IF>
            <TMPL_IF NAME="FAB_SEARCH">
                <h3>Form Settings</h3>
                <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                    <TMPL_INCLUDE NAME="application_input_options.tpl">
                </TMPL_LOOP>
            </TMPL_IF>
            <TMPL_IF NAME="LICENSE_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>
			<TMPL_IF NAME="MERCHANT_VESSEL_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>
            <TMPL_IF NAME="MARRIAGE_SEARCH">
                <section>
                    <div class="row" id="OPTIONS" name="OPTIONS">
                        <div id="search-options-container" class="col-sm-12">
                            <h3>Form Settings</h3>
                            <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                                <TMPL_INCLUDE NAME="application_input_options.tpl">
                            </TMPL_LOOP>
                        </div>
                    </div>
                </section>
            </TMPL_IF>
            <TMPL_IF NAME="PROF_LICENSE_SEARCH">
                <section>
                    <div class="row" id="OPTIONS" name="OPTIONS">
                        <div id="search-options-container" class="col-sm-12">
                            <h3>Form Settings</h3>
                            <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                                <TMPL_INCLUDE NAME="application_input_options.tpl">
                            </TMPL_LOOP>
                        </div>
                    </div>
                </section>
            </TMPL_IF>
            <TMPL_IF NAME="PHONE_FINDER_REPORT_SEARCH">
                <div id="PHONE_OPTIONS" name="PHONE_OPTIONS">
                    <h3>Phone Content</h3>
                    <label class="radio">
                        <input type="radio" id="PHONE_FINDER_TYPE_B" name="PHONE_FINDER_TYPE" checked="checked" value="Basic"/>
                        <span>Basic</span>
                    </label>
                    <label class="radio">
                        <input type="radio" id="PHONE_FINDER_TYPE_P" name="PHONE_FINDER_TYPE" value="Premium"/>
                        <span>Premium</span>
                    </label>
                    <label class="radio">
                        <input type="radio" id="PHONE_FINDER_TYPE_U" name="PHONE_FINDER_TYPE" value="Ultimate"/>
                        <span>Ultimate</span>
                    </label>
                </div>
                <div id="OPTIONS" name="OPTIONS" class="input">
                    <h3>Form Settings</h3>
                    <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                        <TMPL_INCLUDE NAME="application_input_options.tpl">
                    </TMPL_LOOP>
                </div>
            </TMPL_IF>
            <TMPL_IF NAME="REAL_PROPERTY_SEARCH">
                <h3>Content</h3>
                <label class="block-display">
                    <span class="form-control-label">Source</span>
                    <select class="form-control pull-right col-8" id="LOOKUP_TYPE" name="LOOKUP_TYPE" onchange="javascript:disable_fields(LOOKUP_TYPE);">
                        <option value="" selected="selected">Real Property</option>
                        <option value="D">Mortgages and Property Deeds</option>
                        <option value="A">Property Assessments</option>
                    </select>
                </label>
                <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                <TMPL_IF NAME="OPTION_CURRONLY">
                <label class="checkbox-toggle input" for="CURRONLY">
                    <span>Current Records Only</span>
                    <input type="checkbox" name="CURRONLY" id="CURRONLY" <TMPL_IF CHECKED>checked="checked"</TMPL_IF>>
                    <span class="toggle pull-right">
                        <span class="toggle-on">ON</span>
                        <span class="toggle-switch"></span>
                        <span class="toggle-off">OFF</span>
                    </span>                    
                </label>
                </TMPL_IF>
                </TMPL_LOOP>
                <div class="input" id="OPTIONS" name="OPTIONS">
                    <h3>Form Settings</h3>
                    <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                        <TMPL_INCLUDE NAME="application_input_options.tpl">
                    </TMPL_LOOP>
                </div>
            </TMPL_IF>

            <TMPL_IF NAME="SEXPREDATOR_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>

            <TMPL_IF NAME="UCC_SEARCH">
                <div class="row">
                        <div id="search-options-container" class="col-sm-12">
                            <h3>Form Settings</h3>
                            <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                                <TMPL_INCLUDE NAME="application_input_options.tpl">
                            </TMPL_LOOP>
                       </div>
                    </div>
            </TMPL_IF>

            <TMPL_IF NAME="PORTAL_SANCTIONS_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>

            <TMPL_IF NAME="CANADIAN_PHONE_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>

            <TMPL_IF NAME="DA_WIRELESS_SEARCH">
                <h3>Phone Content</h3>
                <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                    <TMPL_IF NAME=OPTION_INCLUDE_VERIFIED>
                        <label class="checkbox-toggle input" for="<TMPL_VAR OPTION_NAME>">
                            <span>Include Directory Assistance Listings</span>
                            <input type="checkbox" id="<TMPL_VAR OPTION_NAME>" name="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF>>
                            <span class="toggle pull-right">
                                <span class="toggle-on">ON</span>
                                <span class="toggle-switch"></span>
                                <span class="toggle-off">OFF</span>
                            </span>
                        </label>
                    </TMPL_IF>
                    <TMPL_IF NAME=OPTION_INCLUDE_REALTIME>
                        <label class="checkbox-toggle input relative" for="<TMPL_VAR OPTION_NAME>">
                            <span>Include Real-Time Phones</span><br/>
                            <span class="font-10">(Additional fees will apply)</span>
                            <input type="checkbox" id="<TMPL_VAR OPTION_NAME>" name="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF>>
                            <span class="toggle position-top-right">
                                <span class="toggle-on">ON</span>
                                <span class="toggle-switch"></span>
                                <span class="toggle-off">OFF</span>
                            </span>
                        </label>
                     </TMPL_IF>
                </TMPL_LOOP>
                <h3>Form Settings</h3>
                <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                    <TMPL_INCLUDE NAME="application_input_options.tpl">
                </TMPL_LOOP>
            </TMPL_IF>
            
            <TMPL_IF NAME="LIEN_SEARCH">
                <div class="row">
                    <div id="additional-content-container" class="col-sm-12">
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                                <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>

            <TMPL_IF NAME="BANKRUPTCY_SEARCH">
                <h3>Form Settings</h3>
                <div class="row">
                    <div id="additional-content-container" class="col-sm-12">
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                                <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>

            <TMPL_IF NAME="BLJ_SEARCH">
                <div class="row">				
                    <div id="additional-content-container" class="col-sm-12">
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                                <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_IF NAME=OPTION_INCLUDE_BANKRUPTCIES>
                            <label class="toggle">
                                <input type="checkbox" NAME="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF> class="checkbox style-1<TMPL_IF ONLY_ONE_FIELD> only_one_field</TMPL_IF>" <TMPL_IF DATA_INPUTFIELD>data-inputfield="<TMPL_VAR NAME="DATA_INPUTFIELD">" data-altinputfield="<TMPL_VAR NAME="DATA_ALTINPUTFIELD">"</TMPL_IF>>
                                <i <TMPL_IF CHECKED>class="on" </TMPL_IF>data-swchon-text="ON" data-swchoff-text="OFF"></i>
                                <span>Include Bankruptcies</span>
                            </label>
                            </TMPL_IF>

                            <TMPL_IF NAME=OPTION_INCLUDE_LIENSJUDGMENTS>
                            <label class="toggle">
                                <input type="checkbox" NAME="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF> class="checkbox style-1<TMPL_IF ONLY_ONE_FIELD> only_one_field</TMPL_IF>" <TMPL_IF DATA_INPUTFIELD>data-inputfield="<TMPL_VAR NAME="DATA_INPUTFIELD">" data-altinputfield="<TMPL_VAR NAME="DATA_ALTINPUTFIELD">"</TMPL_IF>>
                                <i <TMPL_IF CHECKED>class="on" </TMPL_IF>data-swchon-text="ON" data-swchoff-text="OFF"></i>
                                <span>Include Liens &amp; Judgments</span>
                            </label>
                            </TMPL_IF>
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>
            
            <TMPL_IF NAME="DL_REG_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                   </div>
                </div>
            </TMPL_IF>  
            
            <TMPL_IF NAME="SOS_FILINGS_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                   </div>
                </div>
            </TMPL_IF>  
            
            <TMPL_IF NAME="EMAIL_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                   </div>
                </div>
            </TMPL_IF>  
            
            <TMPL_IF NAME="CRIM_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                   </div>
                </div>
            </TMPL_IF>  
            
            <TMPL_IF NAME="DEA_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                   </div>
                </div>
            </TMPL_IF>  
            <TMPL_IF NAME="VOTER_REGISTRATION_SEARCH">
                <div class="row input" id="OPTIONS" name="OPTIONS">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>
            <TMPL_IF NAME="MILITARY_PERSONNEL_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>
            <TMPL_IF NAME="PAW_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>
            <TMPL_IF NAME="ID_VERIFY">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Search Options</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME="SHOW_INTL_INSTANTID">
            <div id="search-options-container">
                <h3>Form Settings</h3>
                <TMPL_INCLUDE NAME="passport_options.tpl">
            </div>
        </TMPL_IF>
        <TMPL_IF NAME="INSTANT_ID_REPORT">
            <TMPL_INCLUDE NAME="show_aba_sponsor_image.tpl">
        </TMPL_IF>
        <TMPL_IF NAME="INSTANT_IDRF_REPORT">
            <TMPL_INCLUDE NAME="show_aba_sponsor_image.tpl">
        </TMPL_IF>
        <TMPL_IF NAME="INSTANT_IDFP_REPORT">
            <TMPL_INCLUDE NAME="show_aba_sponsor_image.tpl">
        </TMPL_IF>
        <TMPL_IF NAME="INSTANT_IDRFFP_REPORT">
            <TMPL_INCLUDE NAME="show_aba_sponsor_image.tpl">
        </TMPL_IF>
        <TMPL_IF NAME=BUS_INSTANT_ID_REPORT>
            <TMPL_INCLUDE NAME="show_aba_sponsor_image.tpl">
        </TMPL_IF>
        <TMPL_IF NAME=BUS_INSTANT_IDFD_REPORT>
            <TMPL_INCLUDE NAME="show_aba_sponsor_image.tpl">
        </TMPL_IF>
        <TMPL_IF NAME=PORTAL_OTP_SEARCH>
            <TMPL_INCLUDE NAME="otp_verification_status.tpl">
        </TMPL_IF>
        <TMPL_IF NAME=IDM_QA>
            <TMPL_INCLUDE NAME="iid_qa_verification_steps.tpl">
        </TMPL_IF>	
		<TMPL_IF NAME="FICTIOUS_SEARCH">
			<div class="row">
				<div id="search-options-container" class="col-sm-12">
					<h3>Form Settings</h3>
					<TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
						<TMPL_INCLUDE NAME="application_input_options.tpl">
					</TMPL_LOOP>
			   </div>
			</div>
		</TMPL_IF>

        <TMPL_IF NAME="STATEWIDE_PERSON_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>
			
		<TMPL_IF NAME="PHONE_LOOKUP_SEARCH">
			<section>
				<div class="row" id="OPTIONS" name="OPTIONS">
					<div id="search-options-container" class="col-sm-12">
						<h3>Form Settings</h3>
						<TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
							<TMPL_INCLUDE NAME="application_input_options.tpl">
						</TMPL_LOOP>
					</div>
				</div>
			</section>
		</TMPL_IF>
		<TMPL_IF NAME="STATEWIDE_BUSINESS_SEARCH">
                <div class="row">
                    <div id="search-options-container" class="col-sm-12">
                        <h3>Form Settings</h3>
                        <TMPL_LOOP NAME="INPUT_FIELDS_OPTION">
                            <TMPL_INCLUDE NAME="application_input_options.tpl">
                        </TMPL_LOOP>
                    </div>
                </div>
            </TMPL_IF>
		
    <TMPL_IF NAME=BUSINESS_ASSURANCE_SEARCH>
        <TMPL_INCLUDE NAME="business_assurance_order_steps.tpl">
    </TMPL_IF>      
			
    <TMPL_IF NAME=PORTAL_NEWS_SEARCH>
        <strong>News Content</strong><br />
        <div class="row">
            <div class="input col col-3">
                <label>
                    <select name="NEWS_SOURCE" id="NEWS_SOURCE" class="form-control">
                        <option value="News">News</option>
                        <option value="US News">US News</option>
                        <option value="Non-US News">Non-US News</option>
                        <option value="Non-English News">Non-English News</option>
                    </select>
                </label>
            </div>
        </div>
    </TMPL_IF>
</div>
</TMPL_UNLESS>
</TMPL_UNLESS>
</TMPL_UNLESS>
</TMPL_UNLESS>
