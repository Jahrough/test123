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
