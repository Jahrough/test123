    <TMPL_INCLUDE NAME="application_input_boolean_fields.tpl">
    <TMPL_IF NAME=INPUT_LAST_NAME>
        <div class="input col col-3">
            <label>
                <input type="text" id="LAST_NAME" class="form-control" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name" maxlength="35">
                <span class="tooltip">Last Name</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FIRST_NAME>
        <div class="input col col-3">
            <label>
                <input type="text" id="FIRST_NAME" class="form-control" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name" maxlength="35">
                <span class="tooltip">First Name</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_BUS_CONTACT>
        <strong class="col col-3">Business Contact:</strong>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_MI>
        <div class="input col col-3">
            <label>
                <input type="text" id="MI" name="MI" class="form-control" value="<TMPL_VAR NAME=MI>" placeholder="Middle or Initial" maxlength="35">
                <span class="tooltip">Middle or Initial</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_NAME_SUFFIX>
        <div class="input col col-3">
            <label>
                <input type="text" id="NAME_SUFFIX" class="form-control" name="NAME_SUFFIX" value="<TMPL_VAR NAME=NAME_SUFFIX>" placeholder="Suffix" maxlength="40">
                <span class="tooltip">Suffix</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_DOB>
        <div class="input col col-3">
            <label>
                <input type="text" id="DOB" class="form-control" name="DOB" value="<TMPL_VAR NAME=DOB>" placeholder="Date of Birth" maxlength="10">
                <span class="tooltip">
                    Date of Birth
                    <br />
                    <span class="font-10">(mm/dd/yyyy)</span>
                </span> 
            </label>
            <TMPL_IF NAME=EMAIL_SEARCH>
                <strong class="col col-3">OR</strong> 
            </TMPL_IF>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_FILING_NUMBER>
        <div class="input col col-3">
            <label>
                <input class="form-control" type="text" id="FILING_NUMBER" name="FILING_NUMBER" value="<TMPL_VAR NAME=FILING_NUMBER>" placeholder="<TMPL_IF FICTIOUS_SEARCH>Charter/</TMPL_IF>Filing Number" maxlength="35">
                <span class="tooltip">
                    <TMPL_IF FICTIOUS_SEARCH>Charter/</TMPL_IF>Filing Number
                </span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_SSN>
        <TMPL_IF NAME=BUS_INSTANT_ID_REPORT>
            <div class="div-text-with-hr"><span class="line-right">Authorized Representative</span></div>
        </TMPL_IF>
        <TMPL_IF NAME=BUS_INSTANT_IDFD_REPORT>
            <div class="div-text-with-hr"><span class="line-right">Authorized Representative</span></div>
        </TMPL_IF>
        <TMPL_IF NAME=SMALL_BUSINESS_RISK_SCORE_REPORT>
            <h3>Authorized Representative</h3>
        </TMPL_IF>
        <div class="input col col-3">
            <label>
                <input type="text" id="SSN" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="SSN" class="form-control" maxlength="30">
                <span class="tooltip">
                    SSN
                    <TMPL_IF NAME=PROF_LICENSE_SEARCH>
                        <span class="font-10"> (e.g. 123456789, 123-45-6789, 123 45 6789)</span>
                    <TMPL_ELSE>
                        <span class="font-10"> (e.g. 123456789, 123-45-6789, 123 45 6789, 6789)</span>
                    </TMPL_IF>
                </span> 
            </label>
            <TMPL_IF NAME=CRIM_SEARCH>
                <strong>Note: SSN not available in all records</strong>
            </TMPL_IF>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_UNIQUEID>
        <TMPL_IF NAME="FAB_SEARCH">
            <div class="input col col-3">
                <label>
                    <input type="text" id="UNIQUEID" class="form-control" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID&reg; Business" maxlength="14">
                    <span class="tooltip">LexID<sup class="sup-reg-symbol">&reg;</sup> Business</span> 
                </label>
            </div>
            <div class="additional-info btn-container">
                <button type="button" id="UNIQUEID_HELP_ICO" data-clickaway="on" data-toggle="popover" data-title='LexID<sup class="sup-reg-symbol">&reg;</sup> Information' class="btn btn-link btn-tight info-icon svg-icon-tiny">
                    <span class="sr-only">Learn more information about LexID</span>
                </button>
              <div class="popper-content hide">
                <div class="popover-lexid">
                    <p>LexisNexis<sup class="sup-reg-symbol">&reg;</sup> LexID<sup class="sup-reg-symbol">&reg;</sup> Business is powerful data linking and analysis technology that works behind the scenes to make connections between seemingly unrelated data.</p>
                    <p>After an individual&#39;s unique LexID<sup class="sup-reg-symbol">&reg;</sup> Business number is returned in your initial search, you can then initiate a new search on the LexID<sup class="sup-reg-symbol">&reg;</sup> Business number for the most comprehensive, relevant results possible.</p>
                </div>
              </div>
            </div>
        <TMPL_ELSE>
            <div class="input col col-3">
                <label>
                    <input type="text" id="UNIQUEID" class="form-control" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID&reg;" maxlength="14">
                    <span class="tooltip">LexID<sup class="sup-reg-symbol">&reg;</sup></span> 
                </label>
            </div>
            <div class="additional-info input btn-container">
                <button type="button" id="UNIQUEID_HELP_ICO" data-clickaway="on" data-toggle="popover" data-title='LexID<sup class="sup-reg-symbol">&reg;</sup> Information' class="btn btn-link btn-tight info-icon svg-icon-tiny">
                    <span class="sr-only">Learn more information about LexID</span>
                </button>
              <div class="popper-content hide">
                <div class="popover-lexid">
                    <p>LexisNexis<sup class="sup-reg-symbol">&reg;</sup> LexID<sup class="sup-reg-symbol">&reg;</sup> is powerful data linking and analysis technology that works behind the scenes to make connections between seemingly unrelated data.</p>
                    <p>After an individual&#39;s unique LexID<sup class="sup-reg-symbol">&reg;</sup> number is returned in your initial search, you can then initiate a new search on the LexID<sup class="sup-reg-symbol">&reg;</sup> number for the most comprehensive, relevant results possible.</p>
                </div>
              </div>
            </div>
        </TMPL_IF>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_DATA_TYPE>
        <div class="input col col-3">
            <label>
                <select id="DATA_TYPE" name="DATA_TYPE" class="form-control">
                    <option value="-">Select a Credit Bureau *</option>
                    <option value="ESR" >Equifax<sup class="sup-reg-symbol">&reg;</sup></option>
                    <option value="TSR" >Transunion<sup class="sup-reg-symbol">&reg;</sup></option>
                </select>
                <span class="hidden-label">Credit Bureau</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_STREET_ADDRESS>
        <div class="input col col-6">
            <label>
                <input type="text" id="STREET_ADDRESS" class="form-control" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address" maxlength="35">
                <span class="tooltip">
                    Street Address
                    <span class="font-10"> (e.g. 123 Main St Apt 1)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_STREET_ADDRESS>
        <div class="input col col-6">
            <label>
                <input type="text" id="FORCE_STREET_ADDRESS" class="form-control" name="FORCE_STREET_ADDRESS" value="<TMPL_VAR NAME=FORCE_STREET_ADDRESS>" placeholder="Street Address *" maxlength="35">
                <span class="tooltip">Street Address * <span class="font-10"> (e.g. 123 Main St Apt 1)</span></span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_STATE>
        <div class="input col col-3">
            <label>
                <select id="FORCE_STATE" name="FORCE_STATE" class="form-control">
                    <option value="-">State *</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
                <span class="hidden-label">State</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_CITY>
        <div class="input col col-3">
            <label>
                <input type="text" id="CITY" name="CITY" class="form-control" value="<TMPL_VAR NAME=CITY>" placeholder="City" maxlength="35">
                <span class="tooltip">City</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_ZIP>
        <div class="input col col-2">
            <label>
                <input type="text" id="ZIP" name="ZIP" class="form-control" value="<TMPL_VAR NAME=ZIP>" placeholder="Zip" maxlength="10">
                <span class="tooltip">Zip</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_ZIP>
        <div class="input col col-1">
            <label>
                <input type="text" id="FORCE_ZIP" name="FORCE_ZIP" class="form-control" value="<TMPL_VAR NAME=FORCE_ZIP>" placeholder="Zip *" maxlength="10">
                <span class="tooltip">Zip *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_COMPANY_NAME>
        <div class="input col <TMPL_IF NAME="NEG_NEWS_SEARCH">col-3<TMPL_ELSE>col-6</TMPL_IF>">
            <label>
                <input type="text" id="COMPANY_NAME" class="form-control" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name" maxlength="50">
                <span class="tooltip">Company Name</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_PARENT_COMPANY_NAME>
        <div class="input col <TMPL_IF NAME="NEG_NEWS_SEARCH">col-3<TMPL_ELSE>col-6</TMPL_IF>">
            <label>
                <input type="text" id="PARENT_COMPANY_NAME" class="form-control" name="PARENT_COMPANY_NAME" value="<TMPL_VAR NAME=PARENT_COMPANY_NAME>" placeholder="Parent Company Name" maxlength="50">
                <span class="tooltip">Parent Company Name</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_FORCE_COMPANY_NAME>
        <TMPL_IF NAME=SMALL_BUSINESS_RISK_SCORE_REPORT>
            <h3>Business</h3>
        </TMPL_IF>
        <TMPL_IF NAME=BUS_INSTANT_ID_REPORT>
            <div class="div-text-with-hr"><span class="line-right">Business</span></div>
        </TMPL_IF>
        <TMPL_IF NAME=BUS_INSTANT_IDFD_REPORT>
            <div class="div-text-with-hr"><span class="line-right">Business</span></div>
        </TMPL_IF>
        <div class="input col col-9">
            <label>
                <input type="text" id="FORCE_COMPANY_NAME" name="FORCE_COMPANY_NAME" value="<TMPL_VAR NAME=FORCE_COMPANY_NAME>" placeholder="Company Name *" class="form-control" maxlength="50">
                <span class="tooltip">Company Name *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_DATE_DROP>
        <TMPL_IF NAME=PORTAL_NEWS_SEARCH>
            <TMPL_INCLUDE NAME="news_topics_lists_info.tpl">
        </TMPL_IF>
        <div class="input col col-3">
            <label for="DATE_DROP">
                <select name="DATE_DROP" id="DATE_DROP" class="form-control" onchange="document.getElementById(&#39;FROM_DATE&#39;).value = '';document.getElementById(&#39;TO_DATE&#39;).value = '';javascript:toggle_custom_dates_radios();">
                <TMPL_LOOP DATE_DROP_LOOP >
                    <option <TMPL_IF DATE_DROP_SELECTED>selected="selected"</TMPL_IF> value="<TMPL_VAR NAME="DATE_DROP_VAL">"><TMPL_VAR NAME="DATE_DROP_TXT"></option>
                </TMPL_LOOP>
                </select>
                <span class="hidden-label">All Available Dates</span>
          </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="FROM_DATE" name="FROM_DATE" class="form-control hidden" value="<TMPL_VAR NAME=FROM_DATE>" placeholder="From" maxlength="10">
                <span class="tooltip">From<br>ex. 01/01/99, 01/01/1999,  1/ 1/1999</span> 
            </label>
        </div>
        <div class="col col-3">
            <label>
                <input type="text" id="TO_DATE" name="TO_DATE" class="form-control hidden" value="<TMPL_VAR NAME=TO_DATE>" placeholder="To" maxlength="10">
                <span class="tooltip">To<br>ex. 01/01/99, 01/01/1999,  1/ 1/1999</span> 
            </label>
        </div>
        <span id="DATE_HELP" class="hidden col col-1">
            <div class="additional-info">
                <a id="custom-date-help" class="svg-icon-tiny help-icon" href="javascript:void(0);"></a>
                <span class="tooltip tooltip-25">Help</span>
            </div>
        </span>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FEIN>
        <div class="input col col-3">
            <label>
                <input type="text" id="FEIN" name="FEIN" class="form-control" value="<TMPL_VAR NAME=FEIN>" maxlength="11" placeholder=<TMPL_IF NAME="FEIN_SEARCH">"FEIN"<TMPL_ELSE>"FEIN"</TMPL_IF>>
                <span class="tooltip">
                    <TMPL_IF NAME="FEIN_SEARCH">
                        FEIN (nn-nnnnnnn)
                    <TMPL_ELSE>
                        FEIN
                    </TMPL_IF>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_TIN>
        <div class="input col col-3">
            <label>
                <input type="text" id="TIN" name="TIN" class="form-control" value="<TMPL_VAR NAME=TIN>" placeholder="TIN" maxlength="11">
                <span class="tooltip">TIN</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_TAXCERT>
        <div class="input col col-3">
            <label>
                <input type="text" id="TAXCERT" name="TAXCERT" class="form-control" value="<TMPL_VAR NAME=TAXCERT>" placeholder="Tax Certificate Number" maxlength="36">
                <span class="tooltip">Tax Certificate Number</span>
            </label>
        </div>
    </TMPL_IF>


    <TMPL_IF NAME=INPUT_RADIUS>
        <div class="input col col-3">
            <label>
                <input type="text" id="RADIUS" name="RADIUS" class="form-control" value="<TMPL_VAR NAME=RADIUS>" placeholder="Radius">
                <span class="tooltip">Radius</span> 
            </label>
        </div>
    </TMPL_IF> 

    <TMPL_IF NAME=INPUT_PHONE>
        <div class="input col col-3">
            <label>
                <input type="text" id="PHONE" name="PHONE" class="form-control" value="<TMPL_VAR NAME=PHONE>" placeholder="Phone" maxlength="15">
                <span class="tooltip">
                    Phone
                    <span class="font-10">(e.g. 9375550110, 937-555-0110, (937) 555-0110)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_SIC_CODE>
        <div class="input col col-3">
            <label>
                <input type="text" id="SIC_CODE" name="SIC_CODE" class="form-control" value="<TMPL_VAR NAME=SIC_CODE>" placeholder="SIC Code" maxlength="12">
                <span class="tooltip">
                    SIC Code
                    <span class="font-10">(e.g. 4835)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_CSZ>
        <div class="input col col-6">
            <label>
                <input type="text" id="CSZ" name="CSZ" class="form-control" value="<TMPL_VAR NAME=CSZ>" placeholder="City, State, Zip" maxlength="200">
                <span class="tooltip">City, State, Zip</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_NAME_FULL>
        <div class="input col col-6">
            <label>
                <input type="text" id="NAME_FULL" class="form-control" name="NAME_FULL" value="<TMPL_VAR NAME=NAME_FULL>" placeholder="Last, First, Middle or Initial" maxlength="50">
                <span class="tooltip">Last, First, Middle or Initial</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_WITHOUT_WORDS">
        <div class="input col col-9">
            <label>
                <textarea name="WITHOUT_WORDS" class="form-control" id="WITHOUT_WORDS" placeholder="Without the Words"><TMPL_VAR NAME=WITHOUT_WORDS></textarea>
                <span class="tooltip">
                    Without the Words
                    <span class="font-10">ex. car and boat</span>
                </span> 
            </label>
        </div>
        <!-- <TMPL_IF NAME=NEG_NEWS_SEARCH>
            <div class="col col-6">
                <span>SmartIndexing</span>&nbsp;&nbsp;&nbsp;<span class="descripG"><input type="radio" id="indexing-radio-1" name="indexing-radio" checked="checked">&nbsp;Include Indexing&nbsp;&nbsp;&nbsp;<input type="radio" id="indexing-radio-2" name="indexing-radio">&nbsp;Exclude Indexing</span>
                <br><span class="descripG">None Selected</span>
            </div>
        </TMPL_IF> -->
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_ADDITIONAL_TERMS">
        <div class="input col col-9">
            <label>
                <textarea name="ADDITIONAL_TERMS" class="form-control" id="ADDITIONAL_TERMS" placeholder="Additional Terms"><TMPL_VAR NAME=ADDITIONAL_TERMS></textarea>
                <span class="tooltip">
                    Additional Terms<br/>
                    <span class="font-10">ex. car and boat</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_DOCUMENT_WORDS">
        <div class="input col col-9">
            <label>
                <textarea name="DOCUMENT_WORDS" class="form-control" id="DOCUMENT_WORDS" placeholder="Words in the Document"><TMPL_VAR NAME=DOCUMENT_WORDS></textarea>
                <span class="tooltip">
                    Words in the Document
                    <span class="font-10">ex. FDA and kids or children and nutrition</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_WITHOUT_WORDS">
        <div class="input col col-9">
            <label>
                <textarea name="WITHOUT_WORDS" class="form-control" id="WITHOUT_WORDS" placeholder="Without the Words"><TMPL_VAR NAME=WITHOUT_WORDS></textarea>
                <span class="tooltip">
                    Without the Words
                    <span class="font-10">ex. car and boat</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_ARTICLE_WORDS">
        <div class="input col col-9">
            <label>
                <textarea name="ARTICLE_WORDS" class="form-control" id="ARTICLE_WORDS" placeholder="Words in the Article"><TMPL_VAR NAME=ARTICLE_WORDS></textarea>
                <span class="tooltip">
                    Words in the Article
                    <span class="font-10">ex. FDA and kids or children and nutrition</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_SECTION_WORDS">
        <div class="input col col-9">
            <label>
                <textarea name="SECTION_WORDS" class="form-control" id="SECTION_WORDS" placeholder="Words in the Section"><TMPL_VAR NAME=SECTION_WORDS></textarea>
                <span class="tooltip">
                    Words in the Section<br/>
                    <span class="font-10">ex. FDA and kids or children and nutrition</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_INDUSTRY">
        <div class="col col-6">
            <label class="input">
                <input type="text" id="INDUSTRY" name="INDUSTRY" class="form-control" value="<TMPL_VAR NAME=INDUSTRY>" placeholder="Industry" maxlength="40">
                <span class="tooltip">Industry
                    <span class="font-10">(e.g. Finance or Investment Advisory Service)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_COMPANY_DESC">
        <div class="col col-6">
            <label class="input">
                <input type="text" id="COMPANY_DESC" name="COMPANY_DESC" class="form-control" value="<TMPL_VAR NAME=COMPANY_DESC>" placeholder="Company Description" maxlength="40">
                <span class="tooltip">Company Description
                    <span class="font-10">(e.g. Investment Advice)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_STATE>
        <div class="input col col-3">
            <label>
                <select id="STATE" name="STATE" class="form-control">
                    <TMPL_UNLESS NAME="AIRCRAFT_SEARCH">
                        <TMPL_UNLESS NAME="FORECLOSURE_SEARCH">
                            <option value="">All States</option>
                        </TMPL_UNLESS>
                    </TMPL_UNLESS>
                    <TMPL_IF NAME="AIRCRAFT_SEARCH">
                        <option value="">All Available States</option>
                    </TMPL_IF>
                    <TMPL_IF NAME=UCC_SEARCH>
                        <option value="">All Available</option>
                    </TMPL_IF>
                    <TMPL_IF NAME=FORECLOSURE_SEARCH>
                        <option value="">All Available</option>
                    </TMPL_IF>
                    <TMPL_UNLESS MARRIAGE_SEARCH>
                        <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                    </TMPL_UNLESS>
                    <TMPL_IF NAME="MARRIAGE_SEARCH">
                        <option value="AK">AK - Alaska</option>
                        <option value="AZ">AZ - Arizona</option>
                        <option value="CA">CA - California</option>
                        <option value="CO">CO - Colorado</option>
                        <option value="CT">CT - Connecticut</option>
                        <option value="FL">FL - Florida</option>
                        <option value="GA">GA - Georgia</option>
                        <option value="KY">KY - Kentucky</option>
                        <option value="ME">ME - Maine</option>
                        <option value="MI">MI - Michigan</option>
                        <option value="NV">NV - Nevada</option>
                        <option value="NC">NC - North Carolina</option>
                        <option value="OH">OH - Ohio</option>
                        <option value="OK">OK - Oklahoma</option>
                        <option value="PA">PA - Pennsylvania</option>
                        <option value="RI">RI - Rhode Island</option>
                        <option value="TX">TX - Texas</option>
                        <option value="UT">UT - Utah</option>
                        <option value="VA">VA - Virginia</option>
                    </TMPL_IF>
                </select>
                <span class="hidden-label">State</span>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_DL_LICENSE_STATE_DROP>
        <div class="input col col-3">
            <label>
                <select id="LICENSE_STATE" name="LICENSE_STATE" class="form-control">
                    <option value="">License State</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
                <span class="hidden-label">State</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_JURY_STATE>
        <div class="input col col-3">
            <label>
                <select id="STATE" name="STATE" class="form-control">
                    <option value="">All States</option>
                    <option value="AL">AL - Alabama</option>
                    <option value="AK">AK - Alaska</option>
                    <option value="AZ">AZ - Arizona</option>
                    <option value="AR">AR - Arkansas</option>
                    <option value="CT">CT - Connecticut</option>
                    <option value="DC">DC - DC Metro</option>
                    <option value="FL">FL - Florida</option>
                    <option value="GA">GA - Georgia</option>
                    <option value="ID">ID - Idaho</option>
                    <option value="IN">IN - Indiana</option>
                    <option value="KY">KY - Kentucky</option>
                    <option value="LA">LA - Louisiana</option>
                    <option value="ME">ME - Maine</option>
                    <option value="MD">MD - Maryland</option>
                    <option value="MA">MA - Massachusetts</option>
                    <option value="MI">MI - Michigan</option>
                    <option value="MN">MN - Minnesota</option>
                    <option value="MS">MS - Mississippi</option>
                    <option value="MO">MO - Missouri and Southwestern Illinois</option>
                    <option value="NH">NH - New Hampshire</option>
                    <option value="NJ">NJ - New Jersey</option>
                    <option value="NY">NY - New York</option>
                    <option value="OH">OH - Ohio</option>
                    <option value="OR">OR - Oregon</option>
                    <option value="PA">PA - Pennsylvania</option>
                    <option value="RI">RI - Rhode Island</option>
                    <option value="TN">TN - Tennessee</option>
                    <option value="TX">TX - Texas</option>
                    <option value="UT">UT - Utah</option>
                    <option value="VT">VT - Vermont</option>
                    <option value="VA">VA - Virginia</option>
                    <option value="WA">WA - Washington</option>
                    <option value="WI">WI - Wisconsin</option>
                </select>
                <span class="hidden-label">State</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_GENERATION>
        <div class="input col col-3">
            <label>
                <select id="GENERATION" name="GENERATION" class="form-control">
                    <option value="-">Generation</option>
                    <option value="I">I - First</option>
                    <option value="II">II - Second</option>
                    <option value="III">III - Third</option>
                    <option value="IV">IV - Fourth</option>
                    <option value="V">V - Fifth</option>
                    <option value="VI">VI - Sixth</option>
                    <option value="VII">VII - Seventh</option>
                    <option value="VIII">VIII - Eigth</option>
                    <option value="IX">IX - Ninth</option>
                    <option value="JR">JR - Junior</option>
                    <option value="SR">SR - Senior</option>
                </select>
                <span class="hidden-label">Generation</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_SUFFIX>
        <div class="input col col-3">
            <label>
                <select id="SUFFIX" name="SUFFIX" class="form-control">
                    <option value="-">Suffix</option>
                    <option value="DD">DD - Doctor of Divinity</option>
                    <option value="DDS">DDS - Doctor of Dental Science</option>
                    <option value="DMD">DMD - Doctor of Medical Dentistry</option>
                    <option value="DO">DO - Doctor of Osteopathy</option>
                    <option value="DVM">DVM - Doctor of Veterinary Medicine</option>
                    <option value="MD">MD - Medical Doctor</option>
                    <option value="ML">ML - Military</option>
                    <option value="OD">OD - Orthopedic Doctor</option>
                    <option value="PHD">PHD - Doctorate Degree</option>
                    <option value="RN">RN - Registered Nurse</option>
                </select>
                <span class="hidden-label">Suffix</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_STATE_CRIMINAL_STATE>
        <div class="input col col-3">
            <label>
                <select id="STATE_CRIMINAL_STATE" name="STATE_CRIMINAL_STATE" class="form-control">
                    <option value="">All States</option>
                    <option value="AK">AK - Alaska</option>
                    <option value="CA">CA - California</option>
                    <option value="CO">CO - Colorado</option>
                    <option value="CT">CT - Connecticut</option>
                    <option value="DE">DE - Delaware</option>
                    <option value="FL">FL - Florida</option>
                    <option value="GA">GA - Georgia</option>
                    <option value="IL">IL - Illinois</option>
                    <option value="LA">LA - Louisiana</option>
                    <option value="ME">ME - Maine</option>
                    <option value="MD">MD - Maryland</option>
                    <option value="MA">MA - Massachusetts</option>
                    <option value="NJ">NJ - New Jersey</option>
                    <option value="NY">NY - New York</option>
                    <option value="OH">OH - Ohio</option>
                    <option value="OR">OR - Oregon</option>
                    <option value="PA">PA - Pennsylvania</option>
                    <option value="TN">TN - Tennessee</option>
                    <option value="TX">TX - Texas</option>
                    <option value="VA">VA - Virginia</option>
                    <option value="WA">WA - Washington</option>
                </select>
                <span class="hidden-label">State</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF INPUT_DOB_OR_AGE>
        <div class="input col col-0_25">
            <label>
                <input name="DOB_OR_AGE" checked="checked" type="radio" id="DOB_RADIO" onchange="dob_age_enable_disable()">
                <span class="hidden-label">Date of Birth</span>
            </label>
        </div>

        <div class="input col col-2_75">
            <label>
                <input type="text" id="DOB" name="DOB" value="<TMPL_VAR NAME=DOB>" class="form-control" placeholder="Date of Birth" maxlength="10">
                <span class="tooltip">Date of Birth</span> 
            </label>
        </div>

        <div class="input col col-0_25">
            <label>
                <input name="DOB_OR_AGE" type="radio" id="AGE_RADIO" onchange="dob_age_enable_disable()">
                <span class="hidden-label">Age</span>
            </label>
        </div>

        <div class="input col col-2_75">
            <label>
                <select id="AGE" name="AGE" class="form-control" disabled="disabled">
                    <option value="">All Ages</option>
                    <option value="18-20">18-20</option>
                    <option value="21-25">21-25</option>
                    <option value="26-30">26-30</option>
                    <option value="31-35">31-35</option>
                    <option value="36-40">36-40</option>
                    <option value="41-45">41-45</option>
                    <option value="46-50">46-50</option>
                    <option value="51-55">51-55</option>
                    <option value="56-60">56-60</option>
                    <option value="61-65">61-65</option>
                    <option value="66-200">66 and Over</option>                    
                </select> 
                <span class="hidden-label">Age</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_ACCIDENT_NUMBER>
        <div class="input col col-3">
            <label>
                <input type="text" id="ACCIDENT_NUMBER" class="form-control" name="ACCIDENT_NUMBER" value="<TMPL_VAR NAME=ACCIDENT_NUMBER>" placeholder="Accident Number" maxlength="35">
                <span class="tooltip">Accident Number</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_VIN>
        <div class="input col col-3">
            <label>
                <input type="text" id="VIN" name="VIN" class="form-control" value="<TMPL_VAR NAME=VIN>" placeholder="VIN" maxlength="17">
                <span class="tooltip">VIN</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_LICENSE_PLATE>
        <div class="input col col-3">
            <label>
                <input type="text" id="LICENSE_PLATE" class="form-control" name="LICENSE_PLATE" value="<TMPL_VAR NAME=LICENSE_PLATE>" placeholder="Plate/Tag" maxlength="35">
                <span class="tooltip">Plate/Tag</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FILING_JURISDICTION>
        <div class="input col col-3">
            <label>
                <select id="FILING_JURISDICTION" class="form-control" name="FILING_JURISDICTION">
                    <option value="">Filing Jurisdiction</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
                <span class="hidden-label">Filing Jurisdiction</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_LICENSE_NUMBER>
        <div class="input col col-3">
            <label>
                <input autocomplete="off" type="text" id="LICENSE_NUMBER" class="form-control" name="LICENSE_NUMBER" value="<TMPL_VAR NAME=LICENSE_NUMBER>" placeholder="License Number" maxlength="35">
                <span class="tooltip">License Number</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_CASE_NAME>
        <div class="input col col-6">
            <label>
                <input type="text" id="CASE_NAME" name="CASE_NAME" class="form-control" value="<TMPL_VAR NAME=CASE_NAME>" placeholder="Case Name" maxlength="85">
                <span class="tooltip">Case Name</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_CASE_NUMBER>
        <div class="input col col-3">
            <label>
                <input type="text" id="CASE_NUMBER" name="CASE_NUMBER" class="form-control" value="<TMPL_VAR NAME=CASE_NUMBER>" placeholder="<TMPL_IF BLJ_SEARCH>Filing/<TMPL_ELSE><TMPL_IF BANKRUPTCY_SEARCH>Filing/<TMPL_ELSE><TMPL_IF LIEN_SEARCH>Filing/</TMPL_IF></TMPL_IF></TMPL_IF>Case Number" maxlength="35">
                <span class="tooltip"><TMPL_IF BLJ_SEARCH>Filing/<TMPL_ELSE><TMPL_IF BANKRUPTCY_SEARCH>Filing/<TMPL_ELSE><TMPL_IF LIEN_SEARCH>Filing/</TMPL_IF></TMPL_IF></TMPL_IF>Case Number</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_DOC_NUMBER>
        <div class="input col col-3">
            <label>
                <input type="text" id="DOC_NUMBER" name="DOC_NUMBER" class="form-control" value="<TMPL_VAR NAME=DOC_NUMBER>" placeholder="DOC Number" maxlength="20">
                <span class="tooltip">DOC Number</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_COUNTY>
        <div class="input col col-3">
            <label>
                <input type="text" id="COUNTY" name="COUNTY" class="form-control" value="<TMPL_VAR NAME=COUNTY>" placeholder="County" maxlength="50">
                <span class="tooltip">County</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_TRADE_NAME>
        <div class="input col col-6">
            <label>
                <input type="text" id="TRADER_NAME" name="TRADE_NAME" class="form-control" value="<TMPL_VAR NAME=TRADE_NAME>" placeholder="Trade Name">
                <span class="tooltip">Trade Name</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_ZIP4>
        <div class="input col col-1_25">
            <label>
                <input type="text" id="ZIP4" name="ZIP4" class="form-control" value="<TMPL_VAR NAME=ZIP4>" placeholder="Zip4">
                <span class="tooltip">Zip4</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_BLJ_SOURCE>
        <div class="input col col-4">
            <label>
                <span class="form-control-label">Source:</span>
                <select name="BLJ_SOURCE" class="form-control inline-display col-8 pull-right" id="BLJ_SOURCE">
                    <option <TMPL_IF BLJ_DROP_0>selected="selected"</TMPL_IF> value="BKLJ">Bankruptcies, Judgments &amp; Liens</option>
                    <option <TMPL_IF BLJ_DROP_1>selected="selected"</TMPL_IF> value="BRs">Bankruptcies Only</option>
                    <option <TMPL_IF BLJ_DROP_2>selected="selected"</TMPL_IF> value="JandL">Judgments &amp; Liens Only</option>
                </select>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_PARCEL_ID>
        <div class="input col col-3">
            <label>
                <input type="text" id="PARCEL_ID" class="form-control" name="PARCEL_ID" value="<TMPL_VAR NAME=PARCEL_ID>" placeholder="Parcel Number" maxlength="55">
                <span class="tooltip">Parcel Number</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_OFAC_NAME">
        <div class="input col col-6">
            <label>
                <input type="text" id="OFAC_NAME" class="form-control" name="OFAC_NAME" value="<TMPL_VAR NAME=OFAC_NAME>" placeholder="Person's Name, Company Name, or a Vessel Name" maxlength="150">
                <span class="tooltip">Name</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_OFAC_SEARCHTYPE">
        <div class="input col col-3">
            <label>
                <select id="OFAC_SEARCHTYPE" name="OFAC_SEARCHTYPE" class="form-control">
                    <option value="I">Individual</option>
                    <option value="N">Non-Individual</option>
                    <option value="B">Both</option>
                </select>
                <span class="hidden-label">OFAC Search Type</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_COUNTRY">
        <div class="input col col-3">
            <label>
                <select id="COUNTRY" name="COUNTRY" class="form-control">
                    <option value="">All Countries</option>
                    <TMPL_INCLUDE NAME="all_countries_options_list.tpl">
                </select>
                <span class="hidden-label">Country</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_OFAC_WATCHLISTS">
        <div class="input col col-3">
            <label>
                <input type="radio" name="OFAC_WATCHLISTS" checked="checked" value="OFAC">
                <span>OFAC</span>
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="radio" name="OFAC_WATCHLISTS" value="ALL">
                <span>OFAC and Other Watchlists</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_OFAC_HELP_ICON">
        <div class="additional-info">
            <a id="OFAC_WATCHLIST_HELP_ICO" class="help-search help-icon svg-icon-tiny" href="#">
                <span class="tooltip centered">OFAC Help</span>
            </a>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_OFAC_THRESHOLD">
        <div class="input col col-3">
            <label>
                <span class="form-control-label">Name Threshold</span>
                <select id="OFAC_THRESHOLD" name="OFAC_THRESHOLD" class="form-control col-5 inline-display pull-right">
                    <option value="1">100%</option>
                    <option value="0.98">98%</option>
                    <option value="0.96">96%</option>
                    <option value="0.94">94%</option>
                    <option value="0.92">92%</option>
                    <option value="0.90">90%</option>
                    <option value="0.88">88%</option>
                    <option value="0.86">86%</option>
                    <option selected="selected" value="0.84">84%</option>
                    <option value="0.82">82%</option>
                    <option value="0.80">80%</option>
                    <option value="0.75">75%</option>
                    <option value="0.70">70%</option>
                </select>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_REG_NUMBER>
        <div class="input col col-3">
            <label>
                <input type="text" id="REG_NUMBER" class="form-control" name="REG_NUMBER" value="<TMPL_VAR NAME=REG_NUMBER>" placeholder="Registration Number">
                <span class="tooltip">Registration Number</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_EMAIL>
        <div class="input col col-3">
            <label>
                <input type="text" id="EMAIL" name="EMAIL" class="form-control" value="<TMPL_VAR NAME=EMAIL>" placeholder="Email" maxlength="55">
                <span class="tooltip">Email</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_AIRCRAFT_NUMBER>
        <div class="input col col-3">
            <label>
                <input type="text" id="AIRCRAFT_NUMBER" class="form-control" name="AIRCRAFT_NUMBER" value="<TMPL_VAR NAME=AIRCRAFT_NUMBER>" placeholder="Aircraft Number" maxlength="10">
                <span class="tooltip">Aircraft Number</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_COUNTRY_REF>
        <div class="input col col-3">
            <label>
                <select id="COUNTRY_REF" name="COUNTRY_REF" class="form-control" onchange="javascript:toggle_address_fields(1,1);">
                    <option selected="selected" value="">Select a Country *</option>
                    <option value="AU">Australia</option>
                    <option value="AT">Austria</option>
                    <option value="BR">Brazil</option>
                    <option value="CA">Canada</option>
                    <option value="CN">China (excluding Hong Kong)</option>
                    <option value="DE">Germany</option>
                    <option value="HK">Hong Kong</option>
                    <option value="IE">Ireland</option>
                    <option value="JP">Japan</option>
                    <option value="LU">Luxembourg</option>
                    <option value="MX">Mexico</option>
                    <option value="NL">Netherlands</option>
                    <option value="NZ">New Zealand</option>
                    <option value="SG">Singapore</option>
                    <option value="ZA">South Africa</option>
                    <option value="CH">Switzerland</option>
                    <option value="GB">United Kingdom</option>
                </select>
                <span class="hidden-label">Country</span>
            </label>
        </div>
        <span class="hidden" id="iidi-multi">Multi-Source Verified</span>
        <span class="hidden" id="iidi-single">Single-Source Verified</span>
        <div class="additional-info">
            <a href="#" id='iiid_verification_guide' class="info-icon svg-icon-tiny" aria-labelledby="iidi-help"></a>
            <span class="tooltip tooltip-25 hover">Help</span>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_GENDER_DROPDOWN>
        <div class="input">
            <label>
                <span class="col col-1">Gender: </span>
                <select name="GENDER" id="GENDER" class="col col-2 form-control">
                    <option <TMPL_IF GENDER_DROPDOWN_X>selected="selected"</TMPL_IF> value="X">Not Specified</option>
                    <option <TMPL_IF GENDER_DROPDOWN_F>selected="selected"</TMPL_IF> value="F">Female</option>
                    <option <TMPL_IF GENDER_DROPDOWN_M>selected="selected"</TMPL_IF> value="M">Male</option>
                </select>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_MACHINE_READONE>
        <TMPL_IF NAME=PASSPORT_SEARCH>
            <div class="input col col-6">
                <label>
                    <input type="text" id="MACHINE_READONE" class="form-control" name="MACHINE_READONE" value="<TMPL_VAR NAME=MACHINE_READONE>" placeholder="* (Upper Line) " maxlength="44">
                    <span class="tooltip">Passport (Upper Line)</span>
                </label>
            </div>
        </TMPL_IF>
        
        <TMPL_UNLESS NAME=PASSPORT_SEARCH>
            <script type="text/javascript">
                $(function() {
                    $('#passportsorvisa').click();
                    $('#passportsorvisa').click(function () {
                        if($('#passportorvisa_more').hasClass('hidden')) {
                            $('#passportorvisa_more').removeClass('hidden');
                            $('#passportsorvisa').removeClass('collapsed');
                        } else {
                            $('#passportorvisa_more').addClass('hidden');
                            $('#passportsorvisa').addClass('collapsed');
                        }
                    });
                });
            </script>
            <div id='passportorvisa-info'>
                <div class="col col-9">
                    <button type="button" id="passportsorvisa" class="btn btn-link">
                        <strong>Format Validation: <span id='passportorvisa-selected'>Passport</span></strong>
                        <span class="show-hidden-data-icon"></span>
                    </button>
                </div>

                <div id="passportorvisa_more" class="clear col col-9 collapse in">
                    <div class="row padding-left-10">
                        <div class="input col col-6">
                            <label>
                            <input type="text" id="MACHINE_READONE" name="MACHINE_READONE" value="<TMPL_VAR NAME=MACHINE_READONE>" placeholder="Passport upper line (Format validation only)" class="form-control">
                                <span class="tooltip">
                                    Passport upper line (Format validated only)
                                    <span class="font-10">(P&lt;UTOERIKSSON&lt;&lt;ANNA&lt;MARIA&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;)</span>
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="row padding-left-10">
                        <div class="input col col-6">
                            <label>
                                <input type="text" id="MACHINE_READTWO" name="MACHINE_READTWO" value="<TMPL_VAR NAME=MACHINE_READTWO>" placeholder="Passport lower line (Format validation only)" class="form-control">
                                <span class="tooltip">
                                    Passport lower line (Format validated only)
                                    <span class="font-10">(L898902C&lt;3UTO6908061F9406236ZE184226B&lt;&lt;&lt;&lt;&lt;14)</span>
                                </span>
                            </label>
                        </div>
                    </div>
                    <TMPL_UNLESS NAME=SHOW_INTL_INSTANTID>
                        <div class="row padding-left-10">
                            <div class="input col col-2" >
                                <label>
                                    <select name="PASSPORT_GENDER" id="PASSPORT_GENDER" class="form-control">
                                        <option value="">Select Gender</option>
                                        <option <TMPL_IF PASSPORT_GENDER_DROPDOWN_F>selected="selected"</TMPL_IF> value="F">Female</option>
                                        <option <TMPL_IF PASSPORT_GENDER_DROPDOWN_M>selected="selected"</TMPL_IF> value="M">Male</option>
                                        <option <TMPL_IF PASSPORT_GENDER_DROPDOWN_X>selected="selected"</TMPL_IF> value="X">Not Specified</option>
                                    </select>
                                </label>
                            </div>
                            <div class="col col-6">
                                <span class="font-10">(For passport validation, passport upper and lower lines, DOB, and Gender are required.)</span>
                            </div>
                        </div>
                    </TMPL_UNLESS>

                    <TMPL_IF NAME="SHOW_INTL_INSTANTID">
                        <div class="row padding-left-10">
                            <div class="input col col-6">
                                <label>
                                    <input type="text" id="VISA_MACHINE_READONE" name="VISA_MACHINE_READONE" value="<TMPL_VAR NAME=VISA_MACHINE_READONE>" placeholder="VISA upper line (Format validation only)" class="form-control">
                                    <span class="tooltip">
                                        VISA upper line (Format validated only)
                                        <span class="font-10">(V&lt;UTOERIKSSON&lt;&lt;ANNA&lt;MARIA&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;)</span>
                                    </span>
                                </label>
                            </div>
                        </div>
                       <div class="row padding-left-10">
                            <div class="input col col-6">
                                <label>
                                    <input type="text" id="VISA_MACHINE_READTWO" name="VISA_MACHINE_READTWO" value="<TMPL_VAR NAME=VISA_MACHINE_READTWO>" placeholder="VISA lower line (Format validation only)" class="form-control">
                                    <b class="tooltip">
                                        VISA lower line (Format validated only)
                                        <span class="font-10">(L898902C&lt;3UTO6908061F9406236ZE184226B&lt;&lt;&lt;&lt;&lt;14)</span>
                                    </b>
                                </label>
                            </div>
                        </div>
                    </TMPL_IF>
                </div>
            </div>
        </TMPL_UNLESS>
    </TMPL_IF>

    <TMPL_IF NAME=PASSPORT_SEARCH>
        <TMPL_IF NAME=INPUT_MACHINE_READTWO>
            <div class="input col col-6">
                <label>
                    <input type="text" id="MACHINE_READTWO" class="form-control" name="MACHINE_READTWO" value="<TMPL_VAR NAME=MACHINE_READTWO>" placeholder="* Passport (Lower Line) " maxlength="44">
                    <span class="tooltip">Passport (Lower Line)</span>
                </label>
            </div>
        </TMPL_IF>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_DOB_D>
        <div class="input col col-1">
            <label>
                <input type="text" id="DOB_D" class="form-control" name="DOB_D" value="<TMPL_VAR NAME=DOB_D>" placeholder="DOB: DD" onkeyup="show_or_hide_birth_range()" maxlength="2">
                <span class="tooltip">DOB: DD</span>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_DOB_M>
        <TMPL_IF NAME=PASSPORT_SEARCH>
            <span class="col col-1_25">Birth Information:</span>
            <div class="input col col-1">
                <label>
                    <input type="text" class="form-control" id="DOB_M" name="DOB_M" value="<TMPL_VAR NAME=DOB_M>" placeholder="DOB: MM" maxlength="2">
                    <span class="tooltip">DOB: MM</span>
                </label>
            </div>
        <TMPL_ELSE>
            <div class="input col col-1">
                <label>
                    <input type="text" id="DOB_M" class="form-control" name="DOB_M" value="<TMPL_VAR NAME=DOB_M>" placeholder="DOB: MM" maxlength="2" onkeyup="show_or_hide_birth_range()">
                    <span class="tooltip">DOB: MM</span>
                </label>
            </div>
        </TMPL_IF>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_DOB_Y>
        <div class="input col col-1">
            <label>
                <input type="text" id="DOB_Y" class="form-control" name="DOB_Y" value="<TMPL_VAR NAME=DOB_Y>" placeholder="DOB: YYYY" maxlength="4" onkeyup="show_or_hide_birth_range()">
                <span class="tooltip">DOB: YYYY</span>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_GENDER>
        <div class="input col col-1_75">
            <label for="GENDER">
                <select name="GENDER" id="GENDER" class="form-control">
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
                <span class="hidden-label">Gender</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_APT_NUM>
        <div class="input col col-1_5">
            <label>
                <input type="text" id="APT_NUM" class="form-control" name="APT_NUM" value="<TMPL_VAR NAME=APT_NUM>" placeholder="Unit #" maxlength="20">
                <span class="tooltip">Unit #</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_SW_APT_NUM>
        <div class="input col col-1_5">
            <label>
                <input type="text" id="SW_APT_NUM" class="form-control" name="SW_APT_NUM" value="<TMPL_VAR NAME=SW_APT_NUM>" placeholder="Unit #" maxlength="20">
                <span class="tooltip">Unit #</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_CIVIC_NUM>
        <div class="input col col-1_5">
            <label>
                <input type="text" id="CIVIC_NUM" class="form-control" name="CIVIC_NUM" value="<TMPL_VAR NAME=CIVIC_NUM>" placeholder="Civic #" maxlength="10">
                <span class="tooltip">Civic #</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FLOOR_NUM>
        <div class="input col col-1_5">
            <label>
                <input type="text" id="FLOOR_NUM" class="form-control" name="FLOOR_NUM" value="<TMPL_VAR NAME=FLOOR_NUM>" placeholder="Floor #" maxlength="10">
                <span class="tooltip">Floor #</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_STREETNUM>
        <div class="input col col-1_5">
            <label>
                <input type="text" id="STREETNUM" class="form-control" name="STREETNUM" value="<TMPL_VAR NAME=STREETNUM>" placeholder="Street #" maxlength="30">
                <span class="tooltip">Street #</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_STREET_NAME>
        <div class="input col col-6">
            <label>
                <input type="text" id="STREET_NAME" class="form-control" name="STREET_NAME" value="<TMPL_VAR NAME=STREET_NAME>" placeholder="Street Name" maxlength="50">
                <span class="tooltip">Street Name</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_SSN>
        <div class="input col col-3">
            <label>
                <input type="text" id="SSN" class="form-control" name="FORCE_SSN" value="<TMPL_VAR NAME=FORCE_SSN>" placeholder="SSN *" maxlength="30">
                <span class="tooltip">
                    SSN<br/>
                    <span class="font-10">(Examples: 123456789, 123-45-6789)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_STREET_NAME>
        <div class="input col col-3">
            <label>
                <input type="text" id="FORCE_STREET_NAME" class="form-control" name="FORCE_STREET_NAME" value="<TMPL_VAR NAME=FORCE_STREET_NAME>" placeholder="Street Name *" maxlength="50">
                <span class="tooltip">Street Name *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_CITY>
        <div class="input col col-3">
            <label>
                <input type="text" id="FORCE_CITY" class="form-control" name="FORCE_CITY" value="<TMPL_VAR NAME=FORCE_CITY>" placeholder="City *" maxlength="35">
                <span class="tooltip">City *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_SA_FORCE_CITY>
        <div class="input col col-3">
            <label>
                <input type="text" id="SA_FORCE_CITY" class="form-control" name="SA_FORCE_CITY" value="<TMPL_VAR NAME=SA_FORCE_CITY>" placeholder="City *" maxlength="35">
                <span class="tooltip">City *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_ADDRESS1>
        <div class="input col col-6">
            <label>
                <input type="text" id="ADDRESS1" name="ADDRESS1" class="form-control" value="<TMPL_VAR NAME=ADDRESS1>" placeholder="Address1" maxlength="200">
                <span class="tooltip">Address1</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_ADDRESS1>
        <div class="input col col-4">
            <label>
                <input type="text" id="FORCE_ADDRESS1" name="FORCE_ADDRESS1" class="form-control" value="<TMPL_VAR NAME=FORCE_ADDRESS1>" placeholder="Address1 *" maxlength="200">
                <span class="tooltip">Address1 *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_STREET_TYPE>
        <div class="input col col-3">
            <label>
                <input type="text" id="STREET_TYPE" name="STREET_TYPE" class="form-control" value="<TMPL_VAR NAME=STREET_TYPE>" placeholder="Street Type" maxlength="15">
                <span class="tooltip">Street Type</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_SUBRUB>
        <div class="input col col-3">
            <label>
                <input type="text" id="SUBRUB" name="SUBRUB" class="form-control" value="<TMPL_VAR NAME=SUBRUB>" placeholder="Suburb" maxlength="45">
                <span class="tooltip">Suburb</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_SUBRUB>
        <div class="input col col-3">
            <label>
                <input type="text" id="FORCE_SUBRUB" name="FORCE_SUBRUB" class="form-control" value="<TMPL_VAR NAME=FORCE_SUBRUB>" placeholder="Suburb *" maxlength="45">
                <span class="tooltip">Suburb *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_INT_STATE>
        <div class="input col col-3">
            <label>
                <input type="text" id="INT_STATE" name="INT_STATE" class="form-control" value="<TMPL_VAR NAME=INT_STATE>" placeholder="State" maxlength="50">
                <span class="tooltip">State</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_POSTAL_CODE>
        <div class="input col col-3">
            <label>
                <input type="text" id="FORCE_POSTAL_CODE" name="FORCE_POSTAL_CODE" class="form-control" value="<TMPL_VAR NAME=FORCE_POSTAL_CODE>" placeholder="Postal Code *" maxlength="10">
                <span class="tooltip">Postal Code *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_JP_FORCE_POSTAL_CODE>
        <div class="input col col-3">
            <label>
                <input type="text" id="JP_FORCE_POSTAL_CODE" name="JP_FORCE_POSTAL_CODE" class="form-control" value="<TMPL_VAR NAME=JP_FORCE_POSTAL_CODE>" placeholder="Postal Code *" maxlength="10">
                <span class="tooltip">Postal Code *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_LAST>
        <div class="input col col-3">
            <label>
                <input type="text" id="FORCE_LAST" name="FORCE_LAST" class="form-control" value="<TMPL_VAR NAME=FORCE_LAST>" placeholder="Last Name *" maxlength="35">
                <span class="tooltip">Last Name *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_FIRST>
        <div class="input col col-3">
            <label>
                <input type="text" id="FORCE_FIRST" name="FORCE_FIRST" class="form-control" value="<TMPL_VAR NAME=FORCE_FIRST>" placeholder="First Name *" maxlength="35">
                <span class="tooltip">First Name *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_POSTAL_CODE>
        <div class="input col col-3">
            <label>
                <input type="text" id="POSTAL_CODE" name="POSTAL_CODE" class="form-control" value="<TMPL_VAR NAME=POSTAL_CODE>" placeholder="Postal Code" maxlength="10">
                <span class="tooltip">Postal Code</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_HOUSE_NUM>
        <div class="input col col-3">
            <label>
                <input type="text" id="HOUSE_NUM" name="HOUSE_NUM" class="form-control" value="<TMPL_VAR NAME=HOUSE_NUM>" placeholder="House #" maxlength="30">
                <span class="tooltip">House #</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_HOUSE_EXTENSION>
        <div class="input col col-3">
            <label>
                <input type="text" id="HOUSE_EXTENSION" name="HOUSE_EXTENSION" class="form-control" value="<TMPL_VAR NAME=HOUSE_EXTENSION>" placeholder="House Extention" maxlength="10">
                <span class="tooltip">House Extention</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_LICENSE_STATE>
        <div class="input col col-3">
            <TMPL_IF NAME=SHOW_INTL_INSTANTID>
                <label>
                    <input type="text" id="LICENSE_STATE" name="LICENSE_STATE" class="form-control" value="<TMPL_VAR NAME=LICENSE_STATE>" placeholder="State" maxlength="50">
                    <span class="tooltip">State</span> 
                </label>
            <TMPL_ELSE>
                <label>
                    <select id="LICENSE_STATE" name="LICENSE_STATE" class="form-control">
                        <option value="">Select a State...</option>
                        <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                    </select>
                </label>
            </TMPL_IF>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_LICENSE_EXPIRY_DATE>
        <div class="input col col-3">
            <label>
                <input type="text" id="LICENSE_EXPIRY_DATE" name="LICENSE_EXPIRY_DATE" class="form-control" value="<TMPL_VAR NAME=LICENSE_EXPIRY_DATE>" placeholder="Date of Expiry (MM/DD/YYYY)" maxlength="10">
                <span class="tooltip">Date of Expiry (MM/DD/YYYY)</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_NAT_ID>
        <div class="input col col-3">
            <label>
                <input type="text" id="NAT_ID" name="NAT_ID" class="form-control" value="<TMPL_VAR NAME=NAT_ID>" placeholder="National ID *" maxlength="50">
                <span class="tooltip">National ID *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_ISSUE_CITY>
        <div class="input col col-3">
            <label>
                <input type="text" id="ISSUE_CITY" name="ISSUE_CITY" class="form-control" value="<TMPL_VAR NAME=ISSUE_CITY>" placeholder="City of Issue" maxlength="35">
                <span class="tooltip">City of Issue</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_ISSUE_DISTRICT>
        <div class="input col col-3">
            <label>
                <input type="text" id="ISSUE_DISTRICT" name="ISSUE_DISTRICT" class="form-control" value="<TMPL_VAR NAME=ISSUE_DISTRICT>" placeholder="District of Issue" maxlength="45">
                <span class="tooltip">District of Issue</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_ISSUE_COUNTY>
        <div class="input col col-3">
            <label>
                <input type="text" id="ISSUE_COUNTY" name="ISSUE_COUNTY" class="form-control" value="<TMPL_VAR NAME=ISSUE_COUNTY>" placeholder="County of Issue" maxlength="50">
                <span class="tooltip">County of Issue</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_ISSUE_PROVINCE>
        <div class="input col col-3">
            <label>
                <input type="text" id="ISSUE_PROVINCE" name="ISSUE_PROVINCE" class="form-control" value="<TMPL_VAR NAME=ISSUE_PROVINCE>" placeholder="Province of Issue" maxlength="45">
                <span class="tooltip">Province of Issue</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_MUNICIPALITY>
        <div class="input col col-3">
            <label>
                <input type="text" id="MUNICIPALITY" name="MUNICIPALITY" class="form-control" value="<TMPL_VAR NAME=MUNICIPALITY>" placeholder="Municipality" maxlength="45">
                <span class="tooltip">Municipality</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_JP_MUNICIPALITY>
        <div class="input col col-3">
            <label>
                <input type="text" id="JP_MUNICIPALITY" name="JP_MUNICIPALITY" class="form-control" value="<TMPL_VAR NAME=JP_MUNICIPALITY>" placeholder="Municipality" maxlength="45">
                <span class="tooltip">Municipality</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_PROVINCE>
        <div class="input col col-3">
            <label for="PROVINCE">
                <select name="PROVINCE" id="PROVINCE" class="form-control">
                    <option selected="selected" value="">Select a Province</option>
                    <option value="AB">Alberta (AB)</option>
                    <option value="BC">British Columbia (BC)</option>
                    <option value="MB">Manitoba (MB)</option>
                    <option value="NB">New Brunswick (NB)</option>
                    <option value="NL">Newfoundland and Labrador (NL)</option>
                    <option value="NT">Northwest Territories (NT)</option>
                    <option value="NS">Nova Scotia (NS)</option>
                    <option value="NU">Nunavut (NU)</option>
                    <option value="PE">Prince Edward Island (PE)</option>
                    <option value="SK">Saskatchewan (SK)</option>
                    <option value="ON">Ontario (ON)</option>
                    <option value="QC">Quebec (QC)</option>
                    <option value="YT">Yukon (YT)</option>
                </select>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_ROOM_NUMBER>
        <div class="input col col-3">
            <label>
                <input type="text" id="ROOM_NUMBER" name="ROOM_NUMBER" class="form-control" value="<TMPL_VAR NAME=ROOM_NUMBER>" placeholder="Room #" maxlength="10">
                <span class="tooltip">Room #</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_BUILDING_NAME>
        <div class="input col col-3">
            <label>
                <input type="text" id="BUILDING_NAME" name="BUILDING_NAME" class="form-control" value="<TMPL_VAR NAME=BUILDING_NAME>" placeholder="Building Name" maxlength="30">
                <span class="tooltip">Building Name</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_JP_BUILDING_NAME>
        <div class="input col col-3">
            <label>
                <input type="text" id="JP_BUILDING_NAME" name="JP_BUILDING_NAME" class="form-control" value="<TMPL_VAR NAME=JP_BUILDING_NAME>" placeholder="Building Name" maxlength="30">
                <span class="tooltip">Building Name</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_SG_BUILDING_NAME>
        <div class="input col col-3">
            <label>
                <input type="text" id="SG_BUILDING_NAME" name="SG_BUILDING_NAME" class="form-control" value="<TMPL_VAR NAME=SG_BUILDING_NAME>" placeholder="Building Name" maxlength="30">
                <span class="tooltip">Building Name</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_BLDG_NUM>
        <div class="input col col-1_5">
            <label>
                <input type="text" id="BLDG_NUM" name="BLDG_NUM" class="form-control" value="<TMPL_VAR NAME=BLDG_NUM>" placeholder="Building #" maxlength="10">
                <span class="tooltip">Building #</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_BLDG_NUM>
        <div class="input col col-3">
            <label>
                <input type="text" id="FORCE_BLDG_NUM" class="form-control" name="FORCE_BLDG_NUM" value="<TMPL_VAR NAME=FORCE_BLDG_NUM>" placeholder="Building Number *" maxlength="10">
                <span class="tooltip">Building Number *</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_DISTRICT>
        <div class="input col col-3">
            <label>
                <input type="text" id="DISTRICT" class="form-control" name="DISTRICT" value="<TMPL_VAR NAME=DISTRICT>" placeholder="District" maxlength="45">
                <span class="tooltip">District</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_DISTRICT>
        <div class="input col col-3">
            <label>
                <input type="text" id="FORCE_DISTRICT" class="form-control" name="FORCE_DISTRICT" value="<TMPL_VAR NAME=FORCE_DISTRICT>" placeholder="District *" maxlength="45">
                <span class="tooltip">District *</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_COUNTY>
        <div class="input col col-3">
            <label>
                <input type="text" id="FORCE_COUNTY" class="form-control" name="FORCE_COUNTY" value="<TMPL_VAR NAME=FORCE_COUNTY>" placeholder="County *" maxlength="50">
                <span class="tooltip">County *</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_PROVINCE_TEXT>
        <div class="input col col-3">
            <label>
                <input type="text" id="PROVINCE_TEXT" class="form-control" name="PROVINCE_TEXT" value="<TMPL_VAR NAME=PROVINCE_TEXT>" placeholder="Province" maxlength="45">
                <span class="tooltip">Province</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_SURNAME>
        <div class="input col col-3">
            <label>
                <input type="text" id="SURNAME" class="form-control" name="SURNAME" value="<TMPL_VAR NAME=SURNAME>" placeholder="Surname *" maxlength="35">
                <span class="tooltip">Surname *</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FORCE_GIVEN_NAMES>
        <div class="input col col-2">
            <label>
                <input type="text" id="FORCE_GIVEN_NAMES" name="FORCE_GIVEN_NAMES" class="form-control" value="<TMPL_VAR NAME=FORCE_GIVEN_NAMES>" placeholder="Given Names *" maxlength="35">
                <span class="tooltip">Given Names *</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_GIVEN_NAMES>
        <div class="input col col-3">
            <label>
                <input type="text" id="GIVEN_NAMES" name="GIVEN_NAMES" class="form-control" value="<TMPL_VAR NAME=GIVEN_NAMES>" placeholder="Given Names" maxlength="35">
                <span class="tooltip">Given Names</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_CHINESE_FULL_NAME>
        <div class="input col col-4">
            <label>
                <input type="text" id="CHINESE_FULL_NAME" name="CHINESE_FULL_NAME" class="form-control" value="<TMPL_VAR NAME=CHINESE_FULL_NAME>" placeholder="Full Name (Chinese Personal Name)" onblur="split_chinese_full_name()" maxlength="50">
                <span class="tooltip">Full Name (Chinese Personal Name)</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_PREFECTURE>
        <div class="input col col-3">
            <label>
                <input type="text" id="PREFECTURE" name="PREFECTURE" class="form-control" value="<TMPL_VAR NAME=PREFECTURE>" placeholder="Prefecture" maxlength="30">
                <span class="tooltip">Prefecture</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_AZA>
        <div class="input col col-3">
            <label>
                <input type="text" id="AZA" name="AZA" class="form-control" value="<TMPL_VAR NAME=AZA>" placeholder="AZA" maxlength="45">
                <span class="tooltip">AZA</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_AREA_NUMBER>
        <div class="input col col-3">
            <label>
                <input type="text" id="AREA_NUMBER" name="AREA_NUMBER" class="form-control" value="<TMPL_VAR NAME=AREA_NUMBER>" placeholder="Area Number" maxlength="45">
                <span class="tooltip">Area Number</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_BLOCK_NUM>
        <div class="input col col-3">
            <label>
                <input type="text" id="BLOCK_NUM" name="BLOCK_NUM" class="form-control" value="<TMPL_VAR NAME=BLOCK_NUM>" placeholder="Block #" maxlength="10">
                <span class="tooltip">Block #</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_SOCIAL_INSURANCE>
        <div class="input col col-3">
            <label>
                <input type="text" id="SOCIAL_INSURANCE" name="SOCIAL_INSURANCE" class="form-control" value="<TMPL_VAR NAME=SOCIAL_INSURANCE>" placeholder="Social Insurance #" maxlength="50">
                <span class="tooltip">Social Insurance #</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_HKNG_ID_NUMBER>
        <div class="input col col-3">
            <label>
                <input type="text" id="HKNG_ID_NUMBER" name="HKNG_ID_NUMBER" class="form-control" value="<TMPL_VAR NAME=HKNG_ID_NUMBER>" placeholder="Hong Kong ID Number" maxlength="50">
                <span class="tooltip">Hong Kong ID Number</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_PUBLIC_SERVICE_NUMBER>
        <div class="input col col-3">
            <label>
                <input type="text" id="PUBLIC_SERVICE_NUMBER" name="PUBLIC_SERVICE_NUMBER" class="form-control" value="<TMPL_VAR NAME=PUBLIC_SERVICE_NUMBER>" placeholder="Personal Public Service Number" maxlength="50">
                <span class="tooltip">
                    Personal Public Service Number
                    <span class="font-10">(Format validated only)</span>
                </span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_CURP_ID_NUMBER>
        <div class="input col col-3">
            <label>
                <input type="text" id="CURP_ID_NUMBER" name="CURP_ID_NUMBER" class="form-control" value="<TMPL_VAR NAME=CURP_ID_NUMBER>" placeholder="CURP ID Number" maxlength="50">
                <span class="tooltip">CURP ID Number</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_STATE_OF_BIRTH>
        <div class="input col col-4">
            <label>
                <input type="text" id="STATE_OF_BIRTH" name="STATE_OF_BIRTH" class="form-control" value="<TMPL_VAR NAME=STATE_OF_BIRTH>" placeholder="State Of Birth" maxlength="50">
                <span class="tooltip">State Of Birth</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FIRST_SURNAME>
        <div class="input col col-3">
            <label>
                <input type="text" id="FIRST_SURNAME" name="FIRST_SURNAME" class="form-control" value="<TMPL_VAR NAME=FIRST_SURNAME>" placeholder="First Surname *" maxlength="35">
                <span class="tooltip">First Surname *</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_SECOND_SURNAME>
        <div class="input col col-3">
            <label>
                <input type="text" id="SECOND_SURNAME" name="SECOND_SURNAME" class="form-control" value="<TMPL_VAR NAME=SECOND_SURNAME>" placeholder="Second Surname" maxlength="35">
                <span class="tooltip">Second Surname</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_NRIC_NUMBER>
        <div class="input col col-6">
            <label>
                <input type="text" id="NRIC_NUMBER" name="NRIC_NUMBER" class="form-control" value="<TMPL_VAR NAME=NRIC_NUMBER>" placeholder="NRIC Number (Format validated only)" maxlength="50">
                <span class="tooltip">NRIC Number (Format validated only)</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_ADDRESS2>
        <div class="input col col-5">
            <label>
                <input type="text" id="ADDRESS2" name="ADDRESS2" class="form-control" value="<TMPL_VAR NAME=ADDRESS2>" placeholder="Address2" maxlength="200">
                <span class="tooltip">Address2</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_HOME_PHONE>
        <div class="input col col-3">
            <label>
                <input type="text" id="HOME_PHONE" name="HOME_PHONE" class="form-control" value="<TMPL_VAR NAME=HOME_PHONE>" placeholder="Home" maxlength="15">
                <span class="tooltip">Home Phone</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_PORTAL_WORK_PHONE>
        <div class="input col col-3">
            <label>
                <input type="text" id="PORTAL_WORK_PHONE" name="PORTAL_WORK_PHONE" class="form-control" value="<TMPL_VAR NAME=PORTAL_WORK_PHONE>" placeholder="Work" maxlength="15">
                <span class="tooltip">Work Phone</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_CELL_PHONE>
        <div class="input col col-3">
            <label>
                <input type="text" id="CELL_PHONE" name="CELL_PHONE" class="form-control" value="<TMPL_VAR NAME=CELL_PHONE>" placeholder="Cell" maxlength="15">
                <span class="tooltip">Cell Phone</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_MILITARY_SERVICE_BRANCH>
        <div class="input col col-3">
            <label>
                <select name="MILITARY_SERVICE_BRANCH" id="MILITARY_SERVICE_BRANCH" class="form-control">
                    <option selected="selected" value="">All Available</option>
                    <option value="Army">US Army</option>
                    <option value="Air Force">US Air Force</option>
                    <option value="Marines">US Marines</option>
                    <option value="Navy">US Navy</option>
                </select>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_PASSPORT_NUMBER>
        <div class="input col col-3">
            <label>
                <input type="text" id="PASSPORT_NUMBER" name="PASSPORT_NUMBER" class="form-control" value="<TMPL_VAR NAME=PASSPORT_NUMBER>" placeholder="Passport Number" maxlength="9">
                <span class="tooltip">Passport Number</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_COUNTRY_OF_BIRTH>
        <div class="input col col-3">
            <label>
                <input type="text" id="COUNTRY_OF_BIRTH" name="COUNTRY_OF_BIRTH" class="form-control" value="<TMPL_VAR NAME=COUNTRY_OF_BIRTH>" placeholder="Country of Birth" maxlength="35">
                <span class="tooltip">Country of Birth</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_PLACE_OF_BIRTH>
        <div class="input col col-3">
            <label>
                <input type="text" id="PLACE_OF_BIRTH" name="PLACE_OF_BIRTH" class="form-control" value="<TMPL_VAR NAME=PLACE_OF_BIRTH>" placeholder="Place of Birth" maxlength="35">
                <span class="tooltip">Place of Birth</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FAMILYNAME_AT_BIRTH>
        <div class="input col col-3">
            <label>
                <input type="text" id="FAMILYNAME_AT_BIRTH" name="FAMILYNAME_AT_BIRTH" class="form-control" value="<TMPL_VAR NAME=PLACE_OF_BIRTH>" placeholder="Family Name at Birth" maxlength="35">
                <span class="tooltip">Family Name at Birth</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_LICENSE_VERSION_NUM>
        <div class="input col col-3">
            <label>
                <input type="text" id="LICENSE_VERSION_NUM" name="LICENSE_VERSION_NUM" class="form-control" value="<TMPL_VAR NAME=LICENSE_VERSION_NUM>" placeholder="License Version Number" maxlength="35">
                <span class="tooltip">License Version Number</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_IP_ADD>
        <div class="input col col-3">
            <label>
                <input type="text" id="IP_ADD" name="IP_ADD" value="<TMPL_VAR NAME=IP_ADD>" class="form-control" placeholder="IP Address" maxlength="35">
                <span class="tooltip">
                    IP Address
                    <span class="font-10">(ex: 00.000.000.00)</span>
                </span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_FILING_DATE>
        <div class="input col col-3">
            <label>
                <input type="text" id="FILING_DATE" name="FILING_DATE" class="form-control" value="<TMPL_VAR NAME=FILING_DATE>" placeholder="Filing Date" maxlength="50">
                <span class="tooltip">Filing Date</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_TICKER>
        <div class="input col col-3">
            <label>
                <input type="text" id="TICKER" name="TICKER" class="form-control" value="<TMPL_VAR NAME=TICKER>" placeholder="Ticker" maxlength="10">
                <span class="tooltip">Ticker</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_COUNTRY_TEXT>
        <div class="input col col-6">
            <label>
                <input type="text" id="COUNTRY_TEXT" name="COUNTRY_TEXT" class="form-control" value="<TMPL_VAR NAME=COUNTRY_TEXT>" placeholder="Country" maxlength="35">
                <span class="tooltip">Country</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_EXEC_LAST_NAME>
        <div class="input col col-3">
            <label>
                <input type="text" id="EXEC_LAST_NAME" name="EXEC_LAST_NAME" class="form-control" value="<TMPL_VAR NAME=EXEC_LAST_NAME>" placeholder="Executive Last Name" maxlength="35">
                <span class="tooltip">Executive Last Name</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_EXEC_FIRST_NAME>
        <div class="input col col-3">
            <label>
                <input type="text" id="EXEC_FIRST_NAME" name="EXEC_FIRST_NAME" class="form-control" value="<TMPL_VAR NAME=EXEC_FIRST_NAME>" placeholder="Executive First Name" maxlength="35">
                <span class="tooltip">Executive First Name</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_KEY_COMPETITOR>
        <div class="input col col-6">
            <label>
                <input type="text" id="KEY_COMPETITOR" name="KEY_COMPETITOR" class="form-control" value="<TMPL_VAR NAME=KEY_COMPETITOR>" placeholder="Key Competitors" maxlength="50">
                <span class="tooltip">Key Competitors</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_HOOVER_NUMBER>
        <div class="input col col-3">
            <label>
                <input type="text" id="HOOVER_NUMBER" name="HOOVER_NUMBER" class="form-control" value="<TMPL_VAR NAME=HOOVER_NUMBER>" placeholder="Hoover Number" maxlength="8">
                <span class="tooltip">Hoover Number</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_DBA>
        <div class="col col-4">
            <label class="input">
                <input type="text" id="DBA" name="DBA" class="form-control" value="<TMPL_VAR NAME=DBA>" placeholder="DBA" maxlength="50">
                <span class="tooltip">
                     
                    DBA</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_TAX_ID>
        <div class="col col-4">
            <label class="input">
                <input type="text" id="TAX_ID" name="TAX_ID" class="form-control" value="<TMPL_VAR NAME=TAX_ID>" placeholder="Tax ID" maxlength="10">
                <span class="tooltip">
                     
                    Tax ID</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_TAX_ID2>
        <div class="col col-4">
            <label class="input">
                <input type="text" id="TAX_ID" name="TAX_ID" class="form-control" value="<TMPL_VAR NAME=TAX_ID>" placeholder="Tax Certificate Number" maxlength="10">
                <span class="tooltip">
                     
                    Tax Certificate Number</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_WORK_PHONE>
        <table style="width:100%">
            <tbody>
                <tr>
                    <td style="padding-left: 0px;">
                        <div class="col col-3">
                            <label class="input">
                                <input type="text" id="WORK_PHONE" name="WORK_PHONE" class="form-control" value="<TMPL_VAR NAME=WORK_PHONE>" placeholder="Work Phone" maxlength="15">
                                    <span class="tooltip">
                                         
                                        Work Phone<br /> (ex: 9375550110, 937-555-0110, (937) 555-0110)</span> 
                            </label>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_STREET_ADDRESS2>
        <div class="col col-6">
            <label class="input">
                <input type="text" id="STREET_ADDRESS2" class="form-control" name="STREET_ADDRESS2" value="<TMPL_VAR NAME=STREET_ADDRESS2>" placeholder="Street Address" maxlength="35">
                <span class="tooltip">
                     
                    Street Address</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_CITY2>
        <div class="col col-3">
            <label class="input">
                <input type="text" id="CITY2" name="CITY2" class="form-control" value="<TMPL_VAR NAME=CITY2>" placeholder="City" maxlength="35">
                <span class="tooltip">
                     
                    City</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_ZIP2>
        <div class="col col-1_5">
            <label class="input">
                <input type="text" id="ZIP2" name="ZIP2" class="form-control" value="<TMPL_VAR NAME=ZIP2>" placeholder="Zip" maxlength="10">
                <span class="tooltip">
                     
                    Zip</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_STATE2">
        <div class="col col-3">
            <label class="select">
                <select id="STATE2" name="STATE2" class="form-control">
                    <option value="">All States</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_HULL_ID> 
        <div class="col col-3">
            <label class="input">
                <input type="text" id="HULL_ID" name="HULL_ID" class="form-control" value="<TMPL_VAR NAME=HULL_ID>" placeholder="Hull ID Number (HIN)" maxlength="40">
                <span class="tooltip">
                     
                    Hull ID Number (HIN)
                </span> 
            </label>
        </div>      
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_VESSEL_NAME>
        <div class="col col-3">
            <label class="input">
                <input type="text" id="VESSEL_NAME" name="VESSEL_NAME" class="form-control" value="<TMPL_VAR NAME=VESSEL_NAME>" placeholder="Vessel Name" maxlength="50">
                <span class="tooltip">
                     
                    Vessel Name
                </span> 
            </label>
        </div>      
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_COMPANY_TYPE">
        <div>
        <label id="label1" style="padding-left: 15px;" for="COMPANY_TYPE">
            <span style="color:#CC0033;font-weight: bold;">
            Transactional Fees of $35 will apply. Charges will not count toward minimum monthly commitment.
            </span>
        </label><br />
        <div class="col col-9">
            <label class="select">
            <select id="COMPANY_TYPE" name="COMPANY_TYPE" class="form-control">
                <option value="All">All (Delaware Companies, Previous Name and Name Reservation)</option>
                <option value="Delaware Comp">Delaware Companies (Active and Inactive)</option>
                <option value="Previous Name">Previous Company Names</option>
                <option value="Name Reservation">Name Reservation</option>
            </select>
            </label>
        </div>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_PHONELOOKUP_STATE>
        <div class="input col col-3">
            <label class="select">
                <select id="PHONELOOKUP_STATE" name="PHONELOOKUP_STATE" class="form-control">
                    <option value="">All States</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_ASOFDATE>
        <div class="input col col-3">
            <label>
                <input type="text" id="ASOFDATE" name="ASOFDATE" class="form-control" value="<TMPL_VAR NAME=ASOFDATE>" placeholder="As Of Date" maxlength="10">
                <span class="tooltip">
                    As of Date<br />(mm/dd/yyyy)</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_DUNS_NUMBER>
        <div class="input col col-3">
            <label>
                <input class="form-control" type="text" id="DUNS_NUMBER" name="DUNS_NUMBER" value="<TMPL_VAR NAME=DUNS_NUMBER>" placeholder="DUNS Number" maxlength="11">
                <span class="tooltip">
                    DUNS Number
                    <span class="font-10">ex. 12-345-6789 or 123456789</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_BANK_NAME>
        <div class="input col col-3">
            <label>
                <input type="text" id="BANK_NAME" name="BANK_NAME" class="form-control" value="<TMPL_VAR NAME=BANK_NAME>" placeholder="Bank Name" maxlength="35">
                <span class="tooltip">Bank Name</span> 
            </label>
        </div>
    </TMPL_IF>    
       
    <TMPL_IF NAME="INPUT_DBGLOBAL_COUNTRY_DROP">
        <div class="input col col-5">
            <label class="select">
                <select id="DBGLOBAL_COUNTRY" class="form-control" name="DBGLOBAL_COUNTRY" onchange="javascript:toggle_address_fields(1);">
                    <option selected="selected" value="">All Countries</option>
                    <option value="AFGHANISTAN">AFGHANISTAN</option>
                    <option value="ALBANIA">ALBANIA</option>
                    <option value="ALGERIA">ALGERIA</option>
                    <option value="ANDORRA">ANDORRA</option>
                    <option value="ANGOLA">ANGOLA</option>
                    <option value="ANGUILLA">ANGUILLA</option>
                    <option value="ANTIGUA &amp; BARBUDA">ANTIGUA OR BARBUDA</option>
                    <option value="ARGENTINA">ARGENTINA</option>
                    <option value="ARMENIA">ARMENIA</option>
                    <option value="ARUBA">ARUBA</option>
                    <option value="AUSTRALIA">AUSTRALIA</option>
                    <option value="AUSTRIA">AUSTRIA</option>
                    <option value="AZERBAIJAN">AZERBAIJAN</option>
                    <option value="BAHAMAS">BAHAMAS</option>
                    <option value="BAHRAIN">BAHRAIN</option>
                    <option value="BANGLADESH">BANGLADESH</option>
                    <option value="BARBADOS">BARBADOS</option>
                    <option value="BELARUS">BELARUS</option>
                    <option value="BELGIUM">BELGIUM</option>
                    <option value="BELIZE">BELIZE</option>
                    <option value="BENIN">BENIN</option>
                    <option value="BERMUDA">BERMUDA</option>
                    <option value="BHUTAN">BHUTAN</option>
                    <option value="BOLIVIA">BOLIVIA</option>
                    <option value="BOSNIA AND HERZEGOVINA">BOSNIA OR HERZEGOVINA</option>
                    <option value="BOTSWANA">BOTSWANA</option>
                    <option value="BOUVET ISLAND">BOUVET ISLAND</option>
                    <option value="BRAZIL">BRAZIL</option>
                    <option value="BRUNEI">BRUNEI</option>
                    <option value="BULGARIA">BULGARIA</option>
                    <option value="BURKINA FASO">BURKINA FASO</option>
                    <option value="BURMA (MYANMAR)">BURMA OR MYANMAR</option>
                    <option value="BURUNDI">BURUNDI</option>
                    <option value="CAMEROON">CAMEROON</option>
                    <option value="CANADA">CANADA</option>
                    <option value="CAPE VERDE">CAPE VERDE</option>
                    <option value="CAYMAN ISLANDS">CAYMAN ISLANDS</option>
                    <option value="CENTRAL AFRICA REPUBLIC">CENTRAL AFRICA REPUBLIC</option>
                    <option value="CHAD">CHAD</option>
                    <option value="CHILE">CHILE</option>
                    <option value="CHINA, PEOPLES REPUBLIC OF">CHINA, PEOPLES REPUBLIC OF</option>
                    <option value="CHRISTMAS ISLAND">CHRISTMAS ISLAND</option>
                    <option value="COLOMBIA">COLOMBIA</option>
                    <option value="COMOROS REPUBLIC">COMOROS REPUBLIC</option>
                    <option value="CONGO">CONGO</option>
                    <option value="COOK ISLANDS">COOK ISLANDS</option>
                    <option value="COSTA RICA">COSTA RICA</option>
                    <option value="CROATIA">CROATIA</option>
                    <option value="CYPRUS">CYPRUS</option>
                    <option value="CZECH REPUBLIC">CZECH REPUBLIC</option>
                    <option value="DENMARK">DENMARK</option>
                    <option value="DJIBOUTI">DJIBOUTI</option>
                    <option value="DOMINICA">DOMINICA</option>
                    <option value="DOMINICAN REPUBLIC">DOMINICAN REPUBLIC</option>
                    <option value="ECUADOR">ECUADOR</option>
                    <option value="EGYPT">EGYPT</option>
                    <option value="EL SALVADOR">EL SALVADOR</option>
                    <option value="EQUATORIAL GUINEA">EQUATORIAL GUINEA</option>
                    <option value="ERITREA">ERITREA</option>
                    <option value="ESTONIA">ESTONIA</option>
                    <option value="ETHIOPIA">ETHIOPIA</option>
                    <option value="FAERO ISLANDS">FAERO ISLANDS</option>
                    <option value="FALKLAND ISLANDS">FALKLAND ISLANDS</option>
                    <option value="FIJI">FIJI</option>
                    <option value="FINLAND">FINLAND</option>
                    <option value="FRANCE">FRANCE</option>
                    <option value="FRENCH GUIANA">FRENCH GUIANA</option>
                    <option value="FRENCH POLYNESIA/TAHITI">FRENCH POLYNESIA OR TAHITI</option>
                    <option value="GABON">GABON</option>
                    <option value="GAMBIA">GAMBIA</option>
                    <option value="GEORGIA">GEORGIA</option>
                    <option value="GERMANY">GERMANY</option>
                    <option value="GHANA">GHANA</option>
                    <option value="GIBRALTAR">GIBRALTAR</option>
                    <option value="GREECE">GREECE</option>
                    <option value="GREENLAND">GREENLAND</option>
                    <option value="GRENADA">GRENADA</option>
                    <option value="GUADELOUPE">GUADELOUPE</option>
                    <option value="GUAM">GUAM</option>
                    <option value="GUATEMALA">GUATEMALA</option>
                    <option value="GUINEA BISSAU">GUINEA BISSAU</option>
                    <option value="GUINEA">GUINEA</option>
                    <option value="GUYANA">GUYANA</option>
                    <option value="HAITI">HAITI</option>
                    <option value="HONDURAS">HONDURAS</option>
                    <option value="HONG KONG">HONG KONG</option>
                    <option value="HUNGARY">HUNGARY</option>
                    <option value="ICELAND">ICELAND</option>
                    <option value="INDIA">INDIA</option>
                    <option value="INDONESIA">INDONESIA</option>
                    <option value="IRELAND">IRELAND</option>
                    <option value="ISRAEL">ISRAEL</option>
                    <option value="ITALY">ITALY</option>
                    <option value="IVORY COAST/COTE D'IVOIRE">IVORY COAST OR COTE D'IVOIRE</option>
                    <option value="JAMAICA">JAMAICA</option>
                    <option value="JAPAN">JAPAN</option>
                    <option value="JORDAN">JORDAN</option>
                    <option value="KAMPUCHEA">KAMPUCHEA</option>
                    <option value="KAZAKHSTAN">KAZAKHSTAN</option>
                    <option value="KENYA">KENYA</option>
                    <option value="KIRIBATI">KIRIBATI</option>
                    <option value="KOREA">KOREA</option>
                    <option value="KUWAIT">KUWAIT</option>
                    <option value="KYRGYZSTAN">KYRGYZSTAN</option>
                    <option value="LAOS">LAOS</option>
                    <option value="LATVIA">LATVIA</option>
                    <option value="LEBANON">LEBANON</option>
                    <option value="LESOTHO">LESOTHO</option>
                    <option value="LIBERIA">LIBERIA</option>
                    <option value="LIECHTENSTEIN">LIECHTENSTEIN</option>
                    <option value="LITHUANIA">LITHUANIA</option>
                    <option value="LUXEMBOURG">LUXEMBOURG</option>
                    <option value="MACAU">MACAU</option>
                    <option value="MADAGASGAR">MADAGASGAR</option>
                    <option value="MALAWI">MALAWI</option>
                    <option value="MALAYSIA">MALAYSIA</option>
                    <option value="MALDIVES">MALDIVES</option>
                    <option value="MALI">MALI</option>
                    <option value="MALTA">MALTA</option>
                    <option value="MARIANAS ISLANDS">MARIANAS ISLANDS</option>
                    <option value="MARSHALL ISLANDS">MARSHALL ISLANDS</option>
                    <option value="MARTINIQUE">MARTINIQUE</option>
                    <option value="MAURITANIA">MAURITANIA</option>
                    <option value="MAURITIUS">MAURITIUS</option>
                    <option value="MAYOTTE">MAYOTTE</option>
                    <option value="MEXICO">MEXICO</option>
                    <option value="MOLDOVA">MOLDOVA</option>
                    <option value="MONACO">MONACO</option>
                    <option value="MONGOLIA">MONGOLIA</option>
                    <option value="MONTSERRAT">MONTSERRAT</option>
                    <option value="MOROCCO">MOROCCO</option>
                    <option value="MOZAMBIQUE">MOZAMBIQUE</option>
                    <option value="NAMIBIA">NAMIBIA</option>
                    <option value="NAURU">NAURU</option>
                    <option value="NEPAL">NEPAL</option>
                    <option value="NETHERLANDS">NETHERLANDS</option>
                    <option value="NETHERLANDS ANTILLES">NETHERLANDS ANTILLES</option>
                    <option value="NEW CALEDONIA">NEW CALEDONIA</option>
                    <option value="NEW ZEALAND">NEW ZEALAND</option>
                    <option value="NICARAGUA">NICARAGUA</option>
                    <option value="NIGER">NIGER</option>
                    <option value="NIGERIA">NIGERIA</option>
                    <option value="NORFOLK ISLAND">NORFOLK ISLAND</option>
                    <option value="NORTHERN IRELAND">NORTHERN IRELAND</option>
                    <option value="NORWAY">NORWAY</option>
                    <option value="OMAN">OMAN</option>
                    <option value="PAKISTAN">PAKISTAN</option>
                    <option value="PANAMA">PANAMA</option>
                    <option value="PAPUA NEW GUINEA">PAPUA NEW GUINEA</option>
                    <option value="PARAGUAY">PARAGUAY</option>
                    <option value="PERU">PERU</option>
                    <option value="PHILIPPINES">PHILIPPINES</option>
                    <option value="POLAND">POLAND</option>
                    <option value="PORTUGAL">PORTUGAL</option>
                    <option value="QATAR">QATAR</option>
                    <option value="REUNION ISLAND">REUNION ISLAND</option>
                    <option value="ROMANIA">ROMANIA</option>
                    <option value="RUSSIAN FEDERATION">RUSSIAN FEDERATION</option>
                    <option value="RWANDA">RWANDA</option>
                    <option value="SAINT HELENA">SAINT HELENA</option>
                    <option value="SAINT KITTS &amp; NEVIS">SAINT KITTS OR NEVIS</option>
                    <option value="SAINT LUCIA">SAINT LUCIA</option>
                    <option value="SAINT PIERRE ET MIQUELON">SAINT PIERRE ET MIQUELON</option>
                    <option value="SAINT VINCENT">SAINT VINCENT</option>
                    <option value="SAMOA">SAMOA</option>
                    <option value="SAN MARINO">SAN MARINO</option>
                    <option value="SAO TOME &amp; PRINCIPE">SAO TOME OR PRINCIPE</option>
                    <option value="SAUDI ARABIA">SAUDI ARABIA</option>
                    <option value="SCOTLAND">SCOTLAND</option>
                    <option value="SENEGAL">SENEGAL</option>
                    <option value="SEYCHELLES">SEYCHELLES</option>
                    <option value="SIERRA LEONE">SIERRA LEONE</option>
                    <option value="SINGAPORE">SINGAPORE</option>
                    <option value="SLOVAKIA">SLOVAKIA</option>
                    <option value="SLOVENIA">SLOVENIA</option>
                    <option value="SOLOMON ISLANDS">SOLOMON ISLANDS</option>
                    <option value="SOMALIA">SOMALIA</option>
                    <option value="SOUTH AFRICA">SOUTH AFRICA</option>
                    <option value="SPAIN">SPAIN</option>
                    <option value="SRI LANKA">SRI LANKA</option>
                    <option value="SURINAME">SURINAME</option>
                    <option value="SWAZILAND">SWAZILAND</option>
                    <option value="SWEDEN">SWEDEN</option>
                    <option value="SWITZERLAND">SWITZERLAND</option>
                    <option value="SYRIA">SYRIA</option>
                    <option value="TAIWAN (REPUBLIC OF CHINA)">TAIWAN</option>
                    <option value="TAJHIKSTAN">TAJHIKSTAN</option>
                    <option value="TANZANIA">TANZANIA</option>
                    <option value="THAILAND">THAILAND</option>
                    <option value="TOGO">TOGO</option>
                    <option value="TOKELAU ISLANDS">TOKELAU ISLANDS</option>
                    <option value="TONGA">TONGA</option>
                    <option value="TRINIDAD AND TOBAGO">TRINIDAD OR TOBAGO</option>
                    <option value="TUNISIA">TUNISIA</option>
                    <option value="TURKEY">TURKEY</option>
                    <option value="TURKMENISTAN">TURKMENISTAN</option>
                    <option value="TURKS AND CAICOS">TURKS OR CAICOS</option>
                    <option value="TUVALU">TUVALU</option>
                    <option value="UGANDA">UGANDA</option>
                    <option value="UKRAINE">UKRAINE</option>
                    <option value="UNITED ARAB EMIRATES">UNITED ARAB EMIRATES</option>
                    <option value="UNITED KINGDOM">UNITED KINGDOM</option>
                    <option value="UNITED STATES OF AMERICA">USA</option>
                    <option value="URUGUAY">URUGUAY</option>
                    <option value="UZBEKISTAN">UZBEKISTAN</option>
                    <option value="VANUATU">VANUATU</option>
                    <option value="VENEZUELA">VENEZUELA</option>
                    <option value="VIETNAM">VIETNAM</option>
                    <option value="VIRGIN ISLANDS">VIRGIN ISLANDS</option>
                    <option value="WALES">WALES</option>
                    <option value="WALLIS &amp; FUTUNA ISLANDS">WALLIS OR FUTUNA ISLANDS</option>
                    <option value="WESTERN SAMOA">WESTERN SAMOA</option>
                    <option value="YEMEN">YEMEN</option>
                    <option value="YUGOSLAVIA">YUGOSLAVIA</option>
                    <option value="ZAIRE">ZAIRE</option>
                    <option value="ZAMBIA">ZAMBIA</option>
                    <option value="ZIMBABWE">ZIMBABWE</option>            
                </select>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_COURT_DROP>
        <div class="input col col-3">
            <label>
                <select id="COURT_DROP" name="COURT_DROP" class="form-control">
                    <option <TMPL_IF COURT_DROP_0>selected="selected"</TMPL_IF> value="">Select a court...</option>
                    <option <TMPL_IF COURT_DROP_1>selected="selected"</TMPL_IF> value="All">All</option>
                    <option <TMPL_IF COURT_DROP_2>selected="selected"</TMPL_IF> value="United States">United States</option>
                    <option <TMPL_IF COURT_DROP_3>selected="selected"</TMPL_IF> value="Alabama">Alabama</option>
                    <option <TMPL_IF COURT_DROP_4>selected="selected"</TMPL_IF> value="Alaska">Alaska</option>
                    <option <TMPL_IF COURT_DROP_5>selected="selected"</TMPL_IF> value="American Samoa">American Samoa</option>
                    <option <TMPL_IF COURT_DROP_6>selected="selected"</TMPL_IF> value="Arizona">Arizona</option>
                    <option <TMPL_IF COURT_DROP_7>selected="selected"</TMPL_IF> value="Arkansas">Arkansas</option>
                    <option <TMPL_IF COURT_DROP_8>selected="selected"</TMPL_IF> value="California">California</option>
                    <option <TMPL_IF COURT_DROP_9>selected="selected"</TMPL_IF> value="Colorado">Colorado</option>
                    <option <TMPL_IF COURT_DROP_10>selected="selected"</TMPL_IF> value="Connecticut">Connecticut</option>
                    <option <TMPL_IF COURT_DROP_11>selected="selected"</TMPL_IF> value="Delaware">Delaware</option>
                    <option <TMPL_IF COURT_DROP_12>selected="selected"</TMPL_IF> value="District of Columbia">District of Columbia</option>
                    <option <TMPL_IF COURT_DROP_13>selected="selected"</TMPL_IF> value="Florida">Florida</option>
                    <option <TMPL_IF COURT_DROP_14>selected="selected"</TMPL_IF> value="Georgia">Georgia</option>
                    <option <TMPL_IF COURT_DROP_15>selected="selected"</TMPL_IF> value="Guam">Guam</option>
                    <option <TMPL_IF COURT_DROP_16>selected="selected"</TMPL_IF> value="Hawaii">Hawaii</option>
                    <option <TMPL_IF COURT_DROP_17>selected="selected"</TMPL_IF> value="Idaho">Idaho</option>
                    <option <TMPL_IF COURT_DROP_18>selected="selected"</TMPL_IF> value="Illinois">Illinois</option>
                    <option <TMPL_IF COURT_DROP_19>selected="selected"</TMPL_IF> value="Indiana">Indiana</option>
                    <option <TMPL_IF COURT_DROP_20>selected="selected"</TMPL_IF> value="Iowa">Iowa</option>
                    <option <TMPL_IF COURT_DROP_21>selected="selected"</TMPL_IF> value="Kansas">Kansas</option>
                    <option <TMPL_IF COURT_DROP_22>selected="selected"</TMPL_IF> value="Kentucky">Kentucky</option>
                    <option <TMPL_IF COURT_DROP_23>selected="selected"</TMPL_IF> value="Louisiana">Louisiana</option>
                    <option <TMPL_IF COURT_DROP_24>selected="selected"</TMPL_IF> value="Maine">Maine</option>
                    <option <TMPL_IF COURT_DROP_25>selected="selected"</TMPL_IF> value="Maryland">Maryland</option>
                    <option <TMPL_IF COURT_DROP_26>selected="selected"</TMPL_IF> value="Massachusetts">Massachusetts</option>
                    <option <TMPL_IF COURT_DROP_27>selected="selected"</TMPL_IF> value="Michigan">Michigan</option>
                    <option <TMPL_IF COURT_DROP_28>selected="selected"</TMPL_IF> value="Minnesota">Minnesota</option>
                    <option <TMPL_IF COURT_DROP_29>selected="selected"</TMPL_IF> value="Mississippi">Mississippi</option>
                    <option <TMPL_IF COURT_DROP_30>selected="selected"</TMPL_IF> value="Missouri">Missouri</option>
                    <option <TMPL_IF COURT_DROP_31>selected="selected"</TMPL_IF> value="Montana">Montana</option>
                    <option <TMPL_IF COURT_DROP_32>selected="selected"</TMPL_IF> value="Nebraska">Nebraska</option>
                    <option <TMPL_IF COURT_DROP_33>selected="selected"</TMPL_IF> value="Nevada">Nevada</option>
                    <option <TMPL_IF COURT_DROP_34>selected="selected"</TMPL_IF> value="New Hampshire">New Hampshire</option>
                    <option <TMPL_IF COURT_DROP_35>selected="selected"</TMPL_IF> value="New Jersey">New Jersey</option>
                    <option <TMPL_IF COURT_DROP_36>selected="selected"</TMPL_IF> value="New Mexico">New Mexico</option>
                    <option <TMPL_IF COURT_DROP_37>selected="selected"</TMPL_IF> value="New York">New York</option>
                    <option <TMPL_IF COURT_DROP_38>selected="selected"</TMPL_IF> value="North Carolina">North Carolina</option>
                    <option <TMPL_IF COURT_DROP_39>selected="selected"</TMPL_IF> value="North Dakota">North Dakota</option>
                    <option <TMPL_IF COURT_DROP_40>selected="selected"</TMPL_IF> value="Ohio">Ohio</option>
                    <option <TMPL_IF COURT_DROP_41>selected="selected"</TMPL_IF> value="Oklahoma">Oklahoma</option>
                    <option <TMPL_IF COURT_DROP_42>selected="selected"</TMPL_IF> value="Oregon">Oregon</option>
                    <option <TMPL_IF COURT_DROP_43>selected="selected"</TMPL_IF> value="Pennsylvania">Pennsylvania</option>
                    <option <TMPL_IF COURT_DROP_44>selected="selected"</TMPL_IF> value="Puerto Rico">Puerto Rico</option>
                    <option <TMPL_IF COURT_DROP_45>selected="selected"</TMPL_IF> value="Rhode Island">Rhode Island</option>
                    <option <TMPL_IF COURT_DROP_46>selected="selected"</TMPL_IF> value="South Carolina">South Carolina</option>
                    <option <TMPL_IF COURT_DROP_47>selected="selected"</TMPL_IF> value="South Dakota">South Dakota</option>
                    <option <TMPL_IF COURT_DROP_48>selected="selected"</TMPL_IF> value="Tennessee">Tennessee</option>
                    <option <TMPL_IF COURT_DROP_49>selected="selected"</TMPL_IF> value="Texas">Texas</option>
                    <option <TMPL_IF COURT_DROP_50>selected="selected"</TMPL_IF> value="Utah">Utah</option>
                    <option <TMPL_IF COURT_DROP_51>selected="selected"</TMPL_IF> value="Vermont">Vermont</option>
                    <option <TMPL_IF COURT_DROP_52>selected="selected"</TMPL_IF> value="Virgin Islands">Virgin Islands</option>
                    <option <TMPL_IF COURT_DROP_53>selected="selected"</TMPL_IF> value="Virginia">Virginia</option>
                    <option <TMPL_IF COURT_DROP_54>selected="selected"</TMPL_IF> value="Washington">Washington</option>
                    <option <TMPL_IF COURT_DROP_55>selected="selected"</TMPL_IF> value="West Virginia">West Virginia</option>
                    <option <TMPL_IF COURT_DROP_56>selected="selected"</TMPL_IF> value="Wisconsin">Wisconsin</option>
                    <option <TMPL_IF COURT_DROP_57>selected="selected"</TMPL_IF> value="Wyoming">Wyoming</option>
                </select>
                <span class="tooltip">Court</span>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_AO_COURT_DROP>
        <div class="input col col-3">
            <label>
                <select id="AO_COURT_DROP" name="AO_COURT_DROP" class="form-control">
                    <option <TMPL_IF COURT_DROP_0>selected="selected"</TMPL_IF> value="">Select a state...</option>
                    <option <TMPL_IF COURT_DROP_1>selected="selected"</TMPL_IF> value="All">All</option>
                    <option <TMPL_IF COURT_DROP_3>selected="selected"</TMPL_IF> value="Alabama">Alabama</option>
                    <option <TMPL_IF COURT_DROP_4>selected="selected"</TMPL_IF> value="Alaska">Alaska</option>
                    <option <TMPL_IF COURT_DROP_5>selected="selected"</TMPL_IF> value="American Samoa">American Samoa</option>
                    <option <TMPL_IF COURT_DROP_6>selected="selected"</TMPL_IF> value="Arizona">Arizona</option>
                    <option <TMPL_IF COURT_DROP_7>selected="selected"</TMPL_IF> value="Arkansas">Arkansas</option>
                    <option <TMPL_IF COURT_DROP_8>selected="selected"</TMPL_IF> value="California">California</option>
                    <option <TMPL_IF COURT_DROP_9>selected="selected"</TMPL_IF> value="Colorado">Colorado</option>
                    <option <TMPL_IF COURT_DROP_10>selected="selected"</TMPL_IF> value="Connecticut">Connecticut</option>
                    <option <TMPL_IF COURT_DROP_11>selected="selected"</TMPL_IF> value="Delaware">Delaware</option>
                    <option <TMPL_IF COURT_DROP_12>selected="selected"</TMPL_IF> value="District of Columbia">District of Columbia</option>
                    <option <TMPL_IF COURT_DROP_13>selected="selected"</TMPL_IF> value="Florida">Florida</option>
                    <option <TMPL_IF COURT_DROP_14>selected="selected"</TMPL_IF> value="Georgia">Georgia</option>
                    <option <TMPL_IF COURT_DROP_15>selected="selected"</TMPL_IF> value="Guam">Guam</option>
                    <option <TMPL_IF COURT_DROP_16>selected="selected"</TMPL_IF> value="Hawaii">Hawaii</option>
                    <option <TMPL_IF COURT_DROP_17>selected="selected"</TMPL_IF> value="Idaho">Idaho</option>
                    <option <TMPL_IF COURT_DROP_18>selected="selected"</TMPL_IF> value="Illinois">Illinois</option>
                    <option <TMPL_IF COURT_DROP_19>selected="selected"</TMPL_IF> value="Indiana">Indiana</option>
                    <option <TMPL_IF COURT_DROP_20>selected="selected"</TMPL_IF> value="Iowa">Iowa</option>
                    <option <TMPL_IF COURT_DROP_21>selected="selected"</TMPL_IF> value="Kansas">Kansas</option>
                    <option <TMPL_IF COURT_DROP_22>selected="selected"</TMPL_IF> value="Kentucky">Kentucky</option>
                    <option <TMPL_IF COURT_DROP_23>selected="selected"</TMPL_IF> value="Louisiana">Louisiana</option>
                    <option <TMPL_IF COURT_DROP_24>selected="selected"</TMPL_IF> value="Maine">Maine</option>
                    <option <TMPL_IF COURT_DROP_25>selected="selected"</TMPL_IF> value="Maryland">Maryland</option>
                    <option <TMPL_IF COURT_DROP_26>selected="selected"</TMPL_IF> value="Massachusetts">Massachusetts</option>
                    <option <TMPL_IF COURT_DROP_27>selected="selected"</TMPL_IF> value="Michigan">Michigan</option>
                    <option <TMPL_IF COURT_DROP_28>selected="selected"</TMPL_IF> value="Minnesota">Minnesota</option>
                    <option <TMPL_IF COURT_DROP_29>selected="selected"</TMPL_IF> value="Mississippi">Mississippi</option>
                    <option <TMPL_IF COURT_DROP_30>selected="selected"</TMPL_IF> value="Missouri">Missouri</option>
                    <option <TMPL_IF COURT_DROP_31>selected="selected"</TMPL_IF> value="Montana">Montana</option>
                    <option <TMPL_IF COURT_DROP_32>selected="selected"</TMPL_IF> value="Nebraska">Nebraska</option>
                    <option <TMPL_IF COURT_DROP_33>selected="selected"</TMPL_IF> value="Nevada">Nevada</option>
                    <option <TMPL_IF COURT_DROP_34>selected="selected"</TMPL_IF> value="New Hampshire">New Hampshire</option>
                    <option <TMPL_IF COURT_DROP_35>selected="selected"</TMPL_IF> value="New Jersey">New Jersey</option>
                    <option <TMPL_IF COURT_DROP_36>selected="selected"</TMPL_IF> value="New Mexico">New Mexico</option>
                    <option <TMPL_IF COURT_DROP_37>selected="selected"</TMPL_IF> value="New York">New York</option>
                    <option <TMPL_IF COURT_DROP_38>selected="selected"</TMPL_IF> value="North Carolina">North Carolina</option>
                    <option <TMPL_IF COURT_DROP_39>selected="selected"</TMPL_IF> value="North Dakota">North Dakota</option>
                    <option <TMPL_IF COURT_DROP_40>selected="selected"</TMPL_IF> value="Ohio">Ohio</option>
                    <option <TMPL_IF COURT_DROP_41>selected="selected"</TMPL_IF> value="Oklahoma">Oklahoma</option>
                    <option <TMPL_IF COURT_DROP_42>selected="selected"</TMPL_IF> value="Oregon">Oregon</option>
                    <option <TMPL_IF COURT_DROP_43>selected="selected"</TMPL_IF> value="Pennsylvania">Pennsylvania</option>
                    <option <TMPL_IF COURT_DROP_44>selected="selected"</TMPL_IF> value="Puerto Rico">Puerto Rico</option>
                    <option <TMPL_IF COURT_DROP_45>selected="selected"</TMPL_IF> value="Rhode Island">Rhode Island</option>
                    <option <TMPL_IF COURT_DROP_46>selected="selected"</TMPL_IF> value="South Carolina">South Carolina</option>
                    <option <TMPL_IF COURT_DROP_47>selected="selected"</TMPL_IF> value="South Dakota">South Dakota</option>
                    <option <TMPL_IF COURT_DROP_48>selected="selected"</TMPL_IF> value="Tennessee">Tennessee</option>
                    <option <TMPL_IF COURT_DROP_49>selected="selected"</TMPL_IF> value="Texas">Texas</option>
                    <option <TMPL_IF COURT_DROP_50>selected="selected"</TMPL_IF> value="Utah">Utah</option>
                    <option <TMPL_IF COURT_DROP_51>selected="selected"</TMPL_IF> value="Vermont">Vermont</option>
                    <option <TMPL_IF COURT_DROP_52>selected="selected"</TMPL_IF> value="Virgin Islands">Virgin Islands</option>
                    <option <TMPL_IF COURT_DROP_53>selected="selected"</TMPL_IF> value="Virginia">Virginia</option>
                    <option <TMPL_IF COURT_DROP_54>selected="selected"</TMPL_IF> value="Washington">Washington</option>
                    <option <TMPL_IF COURT_DROP_55>selected="selected"</TMPL_IF> value="West Virginia">West Virginia</option>
                    <option <TMPL_IF COURT_DROP_56>selected="selected"</TMPL_IF> value="Wisconsin">Wisconsin</option>
                    <option <TMPL_IF COURT_DROP_57>selected="selected"</TMPL_IF> value="Wyoming">Wyoming</option>
                </select>
                <span class="tooltip">State</span>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_AO_SOURCE_DROP>
        <div class="input col col-3">
            <label>
                <select id="AO_SOURCE_DROP" name="AO_SOURCE_DROP" class="form-control">
                    <option <TMPL_IF AO_SOURCE_DROP_0>selected="selected"</TMPL_IF> value="">Select a source ...</option>
                    <option <TMPL_IF AO_SOURCE_DROP_1>selected="selected"</TMPL_IF> value="AgencyOpinionsSTSEC">State SEC Opinions</option>
                    <option <TMPL_IF AO_SOURCE_DROP_2>selected="selected"</TMPL_IF> value="AgencyOpinionsTAXCTR">State Tax Opinions</option>
                </select>
                <span class="tooltip">Source</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_DMV_SEARCH_PURPOSE> 
        <div id="dmv-search-purpose" class="input <TMPL_UNLESS NAME=SHOW_DMV_SEARCH_PURPOSE> hidden</TMPL_UNLESS>"> 
            <div class="input col col-3">
                <label> 
                <select id="DMV_SEARCH_PURPOSE" name="DMV_SEARCH_PURPOSE" class="form-control"> 
                    <option value="">Please select Search Purpose</option> 
                    <option value="LawEnforcement">Law Enforcement</option> 
                    <option value="Government">Government</option> 
                    <option value="Parking">Parking</option> 
                </select> 
                <span class="hidden-label">Search Purpose</span> 
                </label> 
            </div>
            <div class="additional-info"> 
                <a href="#" id='dmv_search_purpose_guide' class="info-icon svg-icon-tiny" aria-labelledby=""></a> 
                <span class="tooltip tooltip-25 info-text">Help</span> 
            </div> 
        </div> 
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_COUNTRY_DROP>
        <div class="input col col-3">
            <label>
                <select id="COUNTRY_DROP" name="COUNTRY_DROP" class="form-control">
                    <option <TMPL_IF COUNTRY_DROP_0>selected="selected"</TMPL_IF> value="">Select a country...</option>
                    <option <TMPL_IF COUNTRY_DROP_1>selected="selected"</TMPL_IF> value="Algeria">Algeria</option>
                    <option <TMPL_IF COUNTRY_DROP_2>selected="selected"</TMPL_IF> value="Argentina">Argentina</option>
                    <option <TMPL_IF COUNTRY_DROP_3>selected="selected"</TMPL_IF> value="Australia">Australia</option>
                    <option <TMPL_IF COUNTRY_DROP_4>selected="selected"</TMPL_IF> value="Austria">Austria</option>
                    <option <TMPL_IF COUNTRY_DROP_5>selected="selected"</TMPL_IF> value="Belgium">Belgium</option>
                    <option <TMPL_IF COUNTRY_DROP_6>selected="selected"</TMPL_IF> value="Brazil">Brazil</option>
                    <option <TMPL_IF COUNTRY_DROP_7>selected="selected"</TMPL_IF> value="Bulgaria">Bulgaria</option>
                    <option <TMPL_IF COUNTRY_DROP_8>selected="selected"</TMPL_IF> value="Canada">Canada</option>
                    <option <TMPL_IF COUNTRY_DROP_9>selected="selected"</TMPL_IF> value="Chile">Chile</option>
                    <option <TMPL_IF COUNTRY_DROP_10>selected="selected"</TMPL_IF> value="China">China</option>
                    <option <TMPL_IF COUNTRY_DROP_11>selected="selected"</TMPL_IF> value="Colombia">Colombia</option>
                    <option <TMPL_IF COUNTRY_DROP_12>selected="selected"</TMPL_IF> value="Czech Republic">Czech Republic</option>
                    <option <TMPL_IF COUNTRY_DROP_13>selected="selected"</TMPL_IF> value="Denmark">Denmark</option>
                    <option <TMPL_IF COUNTRY_DROP_14>selected="selected"</TMPL_IF> value="Egypt">Egypt</option>
                    <option <TMPL_IF COUNTRY_DROP_15>selected="selected"</TMPL_IF> value="Finland">Finland</option>
                    <option <TMPL_IF COUNTRY_DROP_16>selected="selected"</TMPL_IF> value="France">France</option>
                    <option <TMPL_IF COUNTRY_DROP_17>selected="selected"</TMPL_IF> value="Germany">Germany</option>
                    <option <TMPL_IF COUNTRY_DROP_18>selected="selected"</TMPL_IF> value="Greece">Greece</option>
                    <option <TMPL_IF COUNTRY_DROP_19>selected="selected"</TMPL_IF> value="Hong Kong">Hong Kong</option>
                    <option <TMPL_IF COUNTRY_DROP_20>selected="selected"</TMPL_IF> value="Hungary">Hungary</option>
                    <option <TMPL_IF COUNTRY_DROP_21>selected="selected"</TMPL_IF> value="India">India</option>
                    <option <TMPL_IF COUNTRY_DROP_22>selected="selected"</TMPL_IF> value="Indonesia">Indonesia</option>
                    <option <TMPL_IF COUNTRY_DROP_23>selected="selected"</TMPL_IF> value="Iran">Iran</option>
                    <option <TMPL_IF COUNTRY_DROP_24>selected="selected"</TMPL_IF> value="Iraq">Iraq</option>
                    <option <TMPL_IF COUNTRY_DROP_25>selected="selected"</TMPL_IF> value="Ireland">Ireland</option>
                    <option <TMPL_IF COUNTRY_DROP_26>selected="selected"</TMPL_IF> value="Israel">Israel</option>
                    <option <TMPL_IF COUNTRY_DROP_27>selected="selected"</TMPL_IF> value="Italy">Italy</option>
                    <option <TMPL_IF COUNTRY_DROP_28>selected="selected"</TMPL_IF> value="Japan">Japan</option>
                    <option <TMPL_IF COUNTRY_DROP_29>selected="selected"</TMPL_IF> value="Kuwait">Kuwait</option>
                    <option <TMPL_IF COUNTRY_DROP_30>selected="selected"</TMPL_IF> value="Malaysia">Malaysia</option>
                    <option <TMPL_IF COUNTRY_DROP_31>selected="selected"</TMPL_IF> value="Mexico">Mexico</option>
                    <option <TMPL_IF COUNTRY_DROP_32>selected="selected"</TMPL_IF> value="Morocco">Morocco</option>
                    <option <TMPL_IF COUNTRY_DROP_33>selected="selected"</TMPL_IF> value="Netherlands">Netherlands</option>
                    <option <TMPL_IF COUNTRY_DROP_34>selected="selected"</TMPL_IF> value="New Zealand">New Zealand</option>
                    <option <TMPL_IF COUNTRY_DROP_35>selected="selected"</TMPL_IF> value="Nigeria">Nigeria</option>
                    <option <TMPL_IF COUNTRY_DROP_36>selected="selected"</TMPL_IF> value="Norway">Norway</option>
                    <option <TMPL_IF COUNTRY_DROP_37>selected="selected"</TMPL_IF> value="Pakistan">Pakistan</option>
                    <option <TMPL_IF COUNTRY_DROP_38>selected="selected"</TMPL_IF> value="Peru">Peru</option>
                    <option <TMPL_IF COUNTRY_DROP_39>selected="selected"</TMPL_IF> value="Poland">Poland</option>
                    <option <TMPL_IF COUNTRY_DROP_40>selected="selected"</TMPL_IF> value="Portugal">Portugal</option>
                    <option <TMPL_IF COUNTRY_DROP_41>selected="selected"</TMPL_IF> value="Russia">Russia</option>
                    <option <TMPL_IF COUNTRY_DROP_42>selected="selected"</TMPL_IF> value="Saudi Arabia">Saudi Arabia</option>
                    <option <TMPL_IF COUNTRY_DROP_43>selected="selected"</TMPL_IF> value="Singapore">Singapore</option>
                    <option <TMPL_IF COUNTRY_DROP_44>selected="selected"</TMPL_IF> value="South Africa">South Africa</option>
                    <option <TMPL_IF COUNTRY_DROP_45>selected="selected"</TMPL_IF> value="South Korea">South Korea</option>
                    <option <TMPL_IF COUNTRY_DROP_46>selected="selected"</TMPL_IF> value="Spain">Spain</option>
                    <option <TMPL_IF COUNTRY_DROP_47>selected="selected"</TMPL_IF> value="Sri Lanka">Sri Lanka</option>
                    <option <TMPL_IF COUNTRY_DROP_48>selected="selected"</TMPL_IF> value="Sweden">Sweden</option>
                    <option <TMPL_IF COUNTRY_DROP_49>selected="selected"</TMPL_IF> value="Switzerland">Switzerland</option>
                    <option <TMPL_IF COUNTRY_DROP_50>selected="selected"</TMPL_IF> value="Syria">Syria</option>
                    <option <TMPL_IF COUNTRY_DROP_51>selected="selected"</TMPL_IF> value="Taiwan">Taiwan</option>
                    <option <TMPL_IF COUNTRY_DROP_52>selected="selected"</TMPL_IF> value="Tanzania">Tanzania</option>
                    <option <TMPL_IF COUNTRY_DROP_53>selected="selected"</TMPL_IF> value="Thailand">Thailand</option>
                    <option <TMPL_IF COUNTRY_DROP_54>selected="selected"</TMPL_IF> value="Tunisia">Tunisia</option>
                    <option <TMPL_IF COUNTRY_DROP_55>selected="selected"</TMPL_IF> value="Turkey">Turkey</option>
                    <option <TMPL_IF COUNTRY_DROP_56>selected="selected"</TMPL_IF> value="United Kingdom">United Kingdom</option>
                    <option <TMPL_IF COUNTRY_DROP_57>selected="selected"</TMPL_IF> value="United States">United States</option>
                    <option <TMPL_IF COUNTRY_DROP_58>selected="selected"</TMPL_IF> value="Venezuela">Venezuela</option>
                    <option <TMPL_IF COUNTRY_DROP_59>selected="selected"</TMPL_IF> value="Vietnam">Vietnam</option>
                    <option <TMPL_IF COUNTRY_DROP_60>selected="selected"</TMPL_IF> value="Zimbabwe">Zimbabwe</option>
                </select>
                <span class="tooltip">Country</span>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME=INPUT_BIO_SOURCES_DROP>
        <div class="input col col-3">
            <label>
                <select id="BIO_SOURCES_DROP" name="BIO_SOURCES_DROP" class="form-control">
                    <option <TMPL_IF BIO_SOURCES_DROP_0>selected="selected"</TMPL_IF> value="">Select a source ...</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_1>selected="selected"</TMPL_IF> value="BiographiesBRDMIN">Boardroom Insiders</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_2>selected="selected"</TMPL_IF> value="BiographiesAMPOL">COMPLETE FILE: The Almanac of American Politics</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_3>selected="selected"</TMPL_IF> value="BiographiesCONTNT">Content5 Persons (English and German)</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_4>selected="selected"</TMPL_IF> value="BiographiesGALBIO">Gale Biographies</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_5>selected="selected"</TMPL_IF> value="BiographiesINFODI">Infolegale - Dirigeants</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_6>selected="selected"</TMPL_IF> value="BiographiesLAGEFI">L'AGEFI - Biographies</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_7>selected="selected"</TMPL_IF> value="BiographiesCONPRE">London Stock Exchange - Board Membership</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_8>selected="selected"</TMPL_IF> value="BiographiesDRSIRS">McGregor BFA CIPC Bios</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_9>selected="selected"</TMPL_IF> value="BiographiesSPBIO">S&P Corporate Register of Directors & Executives</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_10>selected="selected"</TMPL_IF> value="BiographiesAPBIO">The Associated Press Candidate Biographies</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_11>selected="selected"</TMPL_IF> value="BiographiesITWCIO">The CIO Directory</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_12>selected="selected"</TMPL_IF> value="BiographiesTPMGTP">Top Management Biographies</option>
                    <option <TMPL_IF BIO_SOURCES_DROP_13>selected="selected"</TMPL_IF> value="BiographiesUSEXCP">U.S. Executive Compensation Database - Executive Biographies</option>
                </select>
                <span class="tooltip">Source</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=INPUT_SUB1_SSN>
        <TMPL_INCLUDE name="mortgage_frud_report_input_fields_header.tpl" > 
        <div class="input col col-3">
            <label>
                <input type="text" id="SUB1_SSN" class="form-control" name="SUB1_SSN" value="<TMPL_VAR NAME=SUB1_SSN>" maxlength="30" placeholder="SSN *">
                <span class="tooltip">
                    SSN
                    <span class="font-10"> (e.g. 123456789, 123-45-6789, 123 45 6789, 6789)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_SUB1_LAST_NAME">
        <div class="input col col-3">
            <label>
            <input type="text" id="SUB1_LAST_NAME" name="SUB1_LAST_NAME" value="<TMPL_VAR NAME=SUB1_LAST_NAME>" placeholder="Last Name *" class="form-control" maxlength="35">
                <span class="tooltip">Last Name *</span> 
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_SUB1_FIRST_NAME">
        <div class="input col col-3">
            <label>
            <input type="text" id="SUB1_FIRST_NAME" name="SUB1_FIRST_NAME" value="<TMPL_VAR NAME=SUB1_FIRST_NAME>" placeholder="First Name *" class="form-control" maxlength="35">
                <span class="tooltip">First Name *</span> 
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_SUB1_MI">
        <div class="input col col-3">
            <label>
                <input type="text" id="SUB1_MI" name="SUB1_MI" value="<TMPL_VAR NAME=SUB1_MI>" placeholder="Middle or Initial" class="form-control" maxlength="35">
                <span class="tooltip">Middle or Initial</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_STREET_ADDRESS">
        <div class="input col col-6">
            <label>
                <input type="text" id="SUB1_STREET_ADDRESS" name="SUB1_STREET_ADDRESS" value="<TMPL_VAR NAME=SUB1_STREET_ADDRESS>" placeholder="Street Address *" class="form-control" maxlength="35">
                <span class="tooltip">Street Address *</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_CITY">
        <div class="input col col-3">
            <label>
                <input type="text" id="SUB1_CITY" name="SUB1_CITY" value="<TMPL_VAR NAME=SUB1_CITY>" placeholder="City *" class="form-control" maxlength="35">
                <span class="tooltip">City  *</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_STATE">
        <div class="input col col-3">
            <label>
                <select id="SUB1_STATE" name="SUB1_STATE" class="form-control">
                    <option value="">All States *</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
            </label>
        </div>    
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_ZIP">
        <div class="input col col-1">
            <label>
                <input type="text" id="SUB1_ZIP" name="SUB1_ZIP" value="<TMPL_VAR NAME=SUB1_ZIP>" placeholder="Zip *" maxlength="10" class="form-control">
                <span class="tooltip">Zip *</span>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_PHONE">
        <div class="input col col-3">
            <label>
                <input type="text" id="SUB1_PHONE" name="SUB1_PHONE" value="<TMPL_VAR NAME=SUB1_PHONE>" placeholder="Phone" class="form-control" maxlength="15">
                <span class="tooltip">
                    Phone
                    <span class="font-10">(e.g. 9375550110, 937-555-0110, (937) 555-0110)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_DOB">
        <div class="input col col-3">
            <label class="">
                <input type="text" id="SUB1_DOB" name="SUB1_DOB" value="<TMPL_VAR NAME=SUB1_DOB>" placeholder="Date Of Birth" class="form-control" maxlength="10">
                <span class="tooltip">
                    Date Of Birth<br><span class="font-10">(mm/dd/yyyy)</span>
                </span>
            </label>
        </div>    
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_WATCH_LIST_OPT">
        <div style="padding-left: 5px">
            <table style="width:50%">
                <thead style="display: none">
                    <tr>
                        <th aria-label="SUB1_OFAC" id="sub1_ofac">&nbsp;</th>
                        <th aria-label="SUB1_OFACANDOTHER" id="sub1_ofacandother">&nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td headers="sub1_ofac">
                            <input name="SUB1_WATCH_LIST_OPT" id="SUB1_WATCH_LIST_OFAC" checked="checked" value="1" type="radio">&nbsp;Search OFAC
                        </td>
                        <td headers="sub1_ofacandother">
                            <input name="SUB1_WATCH_LIST_OPT" id="SUB1_WATCH_LIST_OFAC_OTHER" value="2" type="radio">&nbsp;Search OFAC &amp; <a href="javascript:launchwin('https://risk.nexis.com/AMLSolutions/help/Portal_Help.htm#Other_Watchlists.htm', 'help', 'width=680,height=500,left=25,top=25,scrollbars=yes,menubar=no,resizable=yes,toolbar=yes');">Other Watchlists</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <span class="font-14"><strong><br>Employer Validation</strong></span> <span class="font-12">(Subject 1)<br></span>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_EMP_COMPANY_NAME">
        <div class="input col col-9">
            <label>
                <input type="text" id="SUB1_EMP_COMPANY_NAME" name="SUB1_EMP_COMPANY_NAME" value="<TMPL_VAR NAME=SUB1_EMP_COMPANY_NAME>" placeholder="Company Name" class="form-control" maxlength="50">
                <span class="tooltip">Company Name</span>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_EMP_STREET_ADDRESS">
        <div class="input col col-6">
            <label>
                <input type="text" id="SUB1_EMP_STREET_ADDRESS" name="SUB1_EMP_STREET_ADDRESS" value="<TMPL_VAR NAME=SUB1_EMP_STREET_ADDRESS>" placeholder="Street Address *" class="form-control" maxlength="35">
                <span class="tooltip">Street Address *</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_EMP_CITY">
        <div class="input col col-3">
            <label class="input">
                <input type="text" id="SUB1_EMP_CITY" name="SUB1_EMP_CITY" value="<TMPL_VAR NAME=SUB1_EMP_CITY>" placeholder="City *" class="form-control" maxlength="35">
                <span class="tooltip">City  *</span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_EMP_STATE">
        <div class="input col col-3">
            <label>
                <select id="SUB1_EMP_STATE" name="SUB1_EMP_STATE" class="form-control">
                    <option value="">All States *</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_EMP_ZIP">
        <div class="input col col-2">
            <label>
                <input type="text" id="SUB1_EMP_ZIP" name="SUB1_EMP_ZIP" value="<TMPL_VAR NAME=SUB1_EMP_ZIP>" placeholder="Zip *" maxlength="10" class="form-control">
                <span class="tooltip">Zip *</span>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_EMP_PHONE">
        <div class="input col col-3">
            <label class="input">
                <input type="text" id="SUB1_EMP_PHONE" name="SUB1_EMP_PHONE" value="<TMPL_VAR NAME=SUB1_EMP_PHONE>" placeholder="Phone" class="form-control" maxlength="15">
                <span class="tooltip wide-tooltip">
                    Phone
                    <span class="font-10">(e.g. 9375550110, 937-555-0110, (937) 555-0110)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB1_EMP_WATCH_LIST_OPT">
        <div style="padding-left:5px;">
            <table style="width:50%">
                <thead style="display: none">
                    <tr>
                        <th aria-label="SUB1_EMP_OFAC" id="sub1_emp_ofac">&nbsp;</th>
                        <th aria-label="SUB1_EMP_OFACANDOTHER" id="sub1_emp_ofacandother">&nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td headers="sub1_emp_ofac">
                            <input name="sub1_emp_watch_list_opt" id="SUB1_EMP_WATCH_LIST_OFAC" checked="checked" value="1" type="radio">&nbsp;Search OFAC
                        </td>
                        <td headers="sub1_emp_ofacandother">
                            <input name="sub1_emp_watch_list_opt" id="SUB1_EMP_WATCH_LIST_OFAC_OTHER" value="2" type="radio">&nbsp;Search OFAC &amp; <a href="javascript:launchwin('https://risk.nexis.com/AMLSolutions/help/Portal_Help.htm#Other_Watchlists.htm', 'help', 'width=680,height=500,left=25,top=25,scrollbars=yes,menubar=no,resizable=yes,toolbar=yes');">Other Watchlists</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br /><span class="textRed font-12"><strong>SUBJECT 2</strong></span> <span class="font-12">(Example: Seller or Appraiser)<br/></span>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB2_SSN">
        <div class="input col col-3">
            <label>
                <input type="text" id="SUB2_SSN" name="SUB2_SSN" value="" placeholder="SSN *" class="form-control" maxlength="30">
                <span class="tooltip">
                    SSN *
                    <span class="font-10"> (e.g. 123456789, 123-45-6789, 123 45 6789, 6789)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_SUB2_LAST_NAME">
        <div class="input col col-3">
            <label>
            <input type="text" id="SUB2_LAST_NAME" name="SUB2_LAST_NAME" value="<TMPL_VAR NAME=SUB2_LAST_NAME>" placeholder="Last Name *" class="form-control" maxlength="35">
                <span class="tooltip">Last Name *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_SUB2_FIRST_NAME">
        <div class="input col col-3">
            <label>
            <input type="text" id="SUB2_FIRST_NAME" name="SUB2_FIRST_NAME" value="<TMPL_VAR NAME=SUB2_FIRST_NAME>" placeholder="First Name *" class="form-control" maxlength="35">
                <span class="tooltip">First Name *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_SUB2_MI">
        <div class="input col col-3">
            <label>
                <input type="text" id="SUB2_MI" name="SUB2_MI" value="<TMPL_VAR NAME=SUB2_MI>" placeholder="Middle or Initial" class="form-control" maxlength="35">
                <span class="tooltip">Middle or Initial</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_SUB2_STREET_ADDRESS">
        <div class="input col col-6">
            <label>
                <input type="text" id="SUB2_STREET_ADDRESS" name="SUB2_STREET_ADDRESS" value="<TMPL_VAR NAME=SUB2_STREET_ADDRESS>" placeholder="Street Address *" class="form-control" maxlength="35">
                <span class="tooltip">Street Address *</span> 
            </label>
        </div>
        <div class="col col-3">
            <label id="Subject2AddressCopyLabel" style="color: rgb(205, 205, 205);">
                <a class="mortgage-anchor" id="Subject2AddressCopyLink" href="javascript:CopyAddressAndPhone('Subject2AddressCopyLink');">Copy address and phone from Subject 1</a>
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_SUB2_CITY">
        <div class="input col col-3">
            <label>
                <input type="text" id="SUB2_CITY" name="SUB2_CITY" value="<TMPL_VAR NAME=SUB2_CITY>" placeholder="City *" class="form-control" maxlength="35">
                <span class="tooltip">City  *</span> 
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_SUB2_STATE">
        <div class="input col col-3">
            <label>
                <select id="SUB2_STATE" name="SUB2_STATE" class="form-control">
                    <option value="">All States *</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_SUB2_ZIP">
        <div class="input col col-2">
            <label>
                <input type="text" id="SUB2_ZIP" name="SUB2_ZIP" value="<TMPL_VAR NAME=SUB2_ZIP>" placeholder="Zip *" maxlength="10" class="form-control">
                <span class="tooltip">Zip *</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_SUB2_PHONE">
        <div class="input col col-3">
            <label>
                <input type="text" id="SUB2_PHONE" name="SUB2_PHONE" value="<TMPL_VAR NAME=SUB2_PHONE>" placeholder="Phone" class="form-control" maxlength="15">
                <span class="tooltip wide-tooltip">
                    Phone
                    <span class="font-10">(e.g. 9375550110, 937-555-0110, (937) 555-0110)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_SUB2_DOB">
        <div class="input col col-3">
            <label>
                <input type="text" id="SUB2_DOB" name="SUB2_DOB" value="<TMPL_VAR NAME=SUB2_DOB>" placeholder="Date Of Birth" class="form-control" maxlength="10">
                <span class="tooltip">
                    Date Of Birth<br><span class="font-10">(mm/dd/yyyy)</span>
                </span>            
            </label>
        </div>
        <table style="width:50%">
            <thead style="display: none">
                <tr>
                    <th aria-label="SUB2_OFAC" id="sub2_ofac">&nbsp;</th>
                    <th aria-label="SUB2_OFACANDOTHER" id="sub2_ofacandother">&nbsp;</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td headers="sub2_ofac">
                        <input name="sub2_watch_list_opt" id="SUB2_WATCH_LIST_OFAC" checked="checked" value="1" type="radio">&nbsp;Search OFAC
                    </td>
                    <td headers="sub2_ofacandother">
                        <input name="sub2_watch_list_opt" id="SUB2_WATCH_LIST_OFAC_OTHER" value="2" type="radio">&nbsp;Search OFAC &amp; <a href="javascript:launchwin('https://risk.nexis.com/AMLSolutions/help/Portal_Help.htm#Other_Watchlists.htm', 'help', 'width=680,height=500,left=25,top=25,scrollbars=yes,menubar=no,resizable=yes,toolbar=yes');">Other Watchlists</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_SUB2_EMP_COMPANY_NAME">
        <span class="mortgagefraudFont"><strong><br><br>Employer Validation</strong></span> (Subject 2)<br>
        <div class="input col col-9">
            <label>
                <input type="text" id="SUB2_EMP_COMPANY_NAME" name="SUB2_EMP_COMPANY_NAME" value="<TMPL_VAR NAME=SUB2_EMP_COMPANY_NAME>" placeholder="Company Name" class="form-control" maxlength="50">
                <span class="tooltip">Company Name</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_SUB2_EMP_STREET_ADDRESS">
        <div class="input col col-6">
            <label>
                <input type="text" id="SUB2_EMP_STREET_ADDRESS" name="SUB2_EMP_STREET_ADDRESS" value="<TMPL_VAR NAME=SUB2_EMP_STREET_ADDRESS>" placeholder="Street Address *" class="form-control" maxlength="35">
                <span class="tooltip">Street Address *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_SUB2_EMP_CITY">
        <div class="input col col-3">
            <label>
                <input type="text" id="SUB2_EMP_CITY" name="SUB2_EMP_CITY" value="<TMPL_VAR NAME=SUB2_EMP_CITY>" placeholder="City *" class="form-control" maxlength="35">
                <span class="tooltip">City  *</span> 
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_SUB2_EMP_STATE">
        <div class="input col col-3">
            <label>
                <select id="SUB2_EMP_STATE" name="SUB2_EMP_STATE" class="form-control">
                    <option value="">All States *</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_SUB2_EMP_ZIP">
        <div class="input col col-2">
            <label>
                <input type="text" id="SUB2_EMP_ZIP" name="SUB2_EMP_ZIP" value="<TMPL_VAR NAME=SUB2_EMP_ZIP>" placeholder="Zip *" maxlength="10" class="form-control">
                <span class="tooltip">Zip *</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_SUB2_EMP_PHONE">
        <div class="input col col-3">
            <label>
                <input type="text" id="SUB2_EMP_PHONE" name="SUB2_EMP_PHONE" value="<TMPL_VAR NAME=SUB2_EMP_PHONE>" placeholder="Phone" class="form-control" maxlength="15">
                <span class="tooltip wide-tooltip">
                    Phone
                    <span class="font-10">(e.g. 9375550110, 937-555-0110, (937) 555-0110)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_SUB2_EMP_WATCH_LIST_OPT">
        <div style="padding-left:5px;">
            <table style="width:50%">
                <thead style="display: none">
                    <tr>
                        <th aria-label="SUB2_EMP_OFAC" id="SUB2_emp_ofac">&nbsp;</th>
                        <th aria-label="SUB2_EMP_OFACANDOTHER" id="SUB2_emp_ofacandother">&nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td headers="SUB2_emp_ofac">
                            <input name="SUB2_emp_watch_list_opt" id="SUB2_EMP_WATCH_LIST_OFAC" checked="checked" value="1" type="radio">&nbsp;Search OFAC
                        </td>
                        <td headers="SUB2_emp_ofacandother">
                            <label class="radio">
                                <input name="SUB2_emp_watch_list_opt" id="SUB2_EMP_WATCH_LIST_OFAC_OTHER" value="2" type="radio">&nbsp;Search OFAC &amp; <a href="javascript:launchwin('https://risk.nexis.com/AMLSolutions/help/Portal_Help.htm#Other_Watchlists.htm', 'help', 'width=680,height=500,left=25,top=25,scrollbars=yes,menubar=no,resizable=yes,toolbar=yes');">Other Watchlists</a>
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_PROP_STREET_ADDRESS">
        <span class="font-12 textRed"><strong>PROPERTY HISTORY</strong></span> <span class="font-12">(Requires complete address OR a valid APN)<br></span>

        <div class="input col col-6">
            <label>
                <input type="text" id="PROP_STREET_ADDRESS" name="PROP_STREET_ADDRESS" value="<TMPL_VAR NAME=PROP_STREET_ADDRESS>" placeholder="Street Address *" class="form-control" maxlength="35">
                <span class="tooltip">Street Address *</span> 
            </label>
        </div>
        <div class="col col-3">
            <label id="PropAddressCopyLabel" style="color: rgb(0, 0, 0);">
                Copy Address from <a class="mortgage-anchor" id="PropAddressCopyLinkSubject1" href="javascript:CopyAddressAndPhone('PropAddressCopyLinkSubject1');">Subject 1</a> or <a class="mortgage-anchor" id="PropAddressCopyLinkSubject2" href="javascript:CopyAddressAndPhone('PropAddressCopyLinkSubject2');">Subject 2</a>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_PROP_CITY">
        <div class="input col col-3">
            <label>
                <input type="text" id="PROP_CITY" name="PROP_CITY" value="<TMPL_VAR NAME=PROP_CITY>" placeholder="City *" class="form-control" maxlength="35">
                <span class="tooltip">City  *</span> 
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_PROP_STATE">
        <div class="select col col-3">
            <label>
                <select id="PROP_STATE" name="PROP_STATE" class="form-control">
                    <option value="">All States *</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_PROP_ZIP">
        <div class="input col col-2">
            <label>
                <input type="text" id="PROP_ZIP" name="PROP_ZIP" value="<TMPL_VAR NAME=PROP_ZIP>" placeholder="Zip *" maxlength="10" class="form-control">
                <span class="tooltip">Zip *</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_PROP_PARCEL_NUMBER">
        <strong>OR</strong><br />
        <div class="input col col-6">
            <label>
                <input type="text" id="PROP_PARCEL_NUMBER" name="PROP_PARCEL_NUMBER" value="<TMPL_VAR NAME=PROP_PARCEL_NUMBER>" placeholder="Assessor Parcel Number*" maxlength="55" class="form-control">
                <span class="tooltip">Assessor Parcel Number*</span>
            </label>
        </div>
        <TMPL_INCLUDE NAME="mortgage_frud_report_input_fields.tpl">
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_FORCE_PARCEL">
        <div class="input col col-3">
            <label>
                <input type="text" id="FORCE_PARCEL" name="FORCE_PARCEL" value="<TMPL_VAR NAME=FORCE_PARCEL>" placeholder="Parcel Number *" class="form-control" maxlength="55">
                <span class="tooltip">Parcel Number *</span>
            </label>
        </div>     
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_WATCH_LIST_OPT">
        <div id="watchListInfo">
            <div class="col col-1">
                <strong>Watchlists</strong>
            </div>

            <div class="input col col-1">
                <label class="radio">
                    <input name="WATCH_LIST_OPT" type="radio" id="WATCH_LIST_OFAC" onclick="toggle_watchlist(1)" value="1" />
                    <span>OFAC</span>
                </label>
            </div>
            <div class="input col col-2_5">
                <label class="radio">
                    <input name="WATCH_LIST_OPT" type="radio" id="WATCH_LIST_OFAC_GLOB" onclick="toggle_watchlist(2)" value="2" />
                    <span>OFAC &amp; Global Sanctions Lists</span>
                </label>
            </div>
            <div class="input col col-1_5">
                <label class="radio">
                    <input name="WATCH_LIST_OPT" type="radio" id="WATCH_LIST_FARA" onclick="toggle_watchlist(3)" value="3" />
                    <span>FARA &amp; PEP</span>
                </label>
            </div>
            <div class="input col col-1">
                <label class="radio">
                    <input name="WATCH_LIST_OPT" type="radio" id="WATCH_LIST_NONE" onclick="toggle_watchlist(4)" value="4" />
                    <span>None</span>
                </label>
            </div>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_LBY_RADIUS_REF">
        <div id="instantid_birthdate">
            <div class="col col-1 hidden">
                <span>Birth year range:</span>
            </div>
            <div class="col col-1_5 hidden">
                <label for="LBY_RADIUS_REF">
                    <select id="LBY_RADIUS_REF" name="LBY_RADIUS_REF" class="form-control">
                        <option value="" <TMPL_IF NAME="SHOW_INTL_INSTANTID">selected="selected"</TMPL_IF>>Exact Year</option>
                        <option value="1">+/- 1 year</option>
                        <option value="2" <TMPL_UNLESS NAME="SHOW_INTL_INSTANTID"> selected="selected"</TMPL_UNLESS>>+/- 2 years</option>
                        <option value="3">+/- 3 years</option>
                        <option value="4">+/- 4 years</option>
                        <option value="5">+/- 5 years</option>
                    </select>
                </label>
            </div>
            <div class="additional-info hidden">
                <a class="info-icon svg-icon-tiny" href="#" onClick="javascript:window.open('https://risk.nexis.com/AMLSolutions/help/Portal_Help.htm#Year_Of_Birth_Radius.htm', 'help', 'width=800,height=600,left=25,top=25,scrollbars=yes,menubar=no,resizable=yes'); return false;"></a>
                <span class="tooltip hover tooltip-25">Help</span>
            </div>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_WATCHLISTS_SECTION">
        <script type="text/javascript">
            $(function() {
                $('#watchlists_global').click();
                $('#watchlists_global').click(function () {
                    if($('#watchlists_global_more').hasClass('hidden')) {
                        $('#watchlists_global_more').removeClass('hidden');
                        $('#watchlists_global').removeClass('collapsed');
                    } else {
                        $('#watchlists_global_more').addClass('hidden');
                        $('#watchlists_global').addClass('collapsed');
                    }
                });

                $('#farapep-watchlists').click();
                $('#farapep-watchlists').click(function () {
                    if($('#watchlist_fara_more').hasClass('hidden')) {
                        $('#watchlist_fara_more').removeClass('hidden');
                        $('#farapep-watchlists').removeClass('collapsed');
                    } else {
                        $('#watchlist_fara_more').addClass('hidden');
                        $('#farapep-watchlists').addClass('collapsed');
                    }
                });
                
                $('#GLOB_ALLSACTIONS').change(function() {
                    if($(this).is(':checked')){
                        $('#watchlist_global').find(':checkbox').prop('checked', true);
                    } else {
                        $('#watchlist_global').find(':checkbox').removeAttr('checked');
                    }
                });
            });
        </script>
        <div class="hidden" id="watchlists_container">
            <div id='watchlists-info'>
                <div id="watchlists_more" class="clear col col-9 collapse in">
                    <div id="watchlist_fara" class="clear col col-9 collapse in hidden">
                        <div class="col col-9">
                            <button type="button" id="farapep-watchlists" class="btn btn-link">
                            <strong><span>FARA &amp; PEP</span></strong>
                            <span class="show-hidden-data-icon"></span>
                            </button><br />
                        </div>
                        <div id="watchlist_fara_more" class="clear col col-9 collapse in hidden">
                            <ul class="unmarked_list">
                                <li>
                                    <label for="FAR_CHECK" class="check">
                                        <input type="checkbox" name="far_check" id="FAR_CHECK" checked="checked"><span>Foreign Agent Registrations</span>
                                    </label>
                                </li>
                                <li>
                                    <label for="PEP_CHECK" class="check">
                                        <input type="checkbox" name="pep_check" id="PEP_CHECK" checked="checked"><span>Politically Exposed Persons</span>
                                    </label>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div id="watchlist_global" class="hidden">
                        <div class="col col-9">
                            <button type="button" id="watchlists_global" class="btn btn-link">
                                <strong><span>OFAC &amp; Global Sanctions Watchlists: All</span></strong>
                                <span class="show-hidden-data-icon"></span>
                            </button>
                        </div>
                        <div id="watchlists_global_more" class="clear col col-9 collapse in hidden">
                            <ul class="unmarked_list">
                                <li>
                                    <label for="GLOB_ALLSACTIONS" class="check">
                                        <input type="checkbox" name="glob_allsactions" id="GLOB_ALLSACTIONS" checked="checked">
                                        <span>All</span>
                                    </label>
                                </li>
                                <TMPL_UNLESS NAME=SHOW_INTL_INSTANTID>
                                    <li class="padding-left-15">
                                    <label for="GLOB_OFAC" class="check">
                                        <input type="checkbox" name="glob_ofac" id="GLOB_OFAC" checked="checked">
                                        <span>OFAC - Office of Foreign Assets Control</span>
                                    </label>
                                    </li>
                                </TMPL_UNLESS>
                                <li class="padding-left-15">
                                    <label for="GLOB_COMMO" class="check">
                                        <input type="checkbox" name="glob_commo" id="GLOB_COMMO" checked="checked">
                                        <span>Commodity Futures Trading Commission List of Regulatory &amp; Self-Regulatory Authorities</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_DTC" class="check">
                                        <input type="checkbox" name="glob_dtc" id="GLOB_DTC" checked="checked">
                                        <span>Defense Trade Controls (DTC) Debarred Parties</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_EUDT" class="check">
                                        <input type="checkbox" name="glob_eudt" id="GLOB_EUDT" checked="checked">
                                        <span>European Union Designated Terrorists</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_FBI" class="check">
                                        <input type="checkbox" name="glob_fbi" id="GLOB_FBI" checked="checked">
                                        <span>Federal Bureau of Investigations (FBI) Lists</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_FCEN" class="check">
                                        <input type="checkbox" name="glob_fcen" id="GLOB_FCEN" checked="checked">
                                        <span>Financial Crimes Enforcement Network Special Alert List <TMPL_IF NAME=SHOW_INTL_INSTANTID>(FCEN)</TMPL_IF></span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_MAJESTY" class="check">
                                        <input type="checkbox" name="glob_majesty" id="GLOB_MAJESTY" checked="checked">
                                        <span>Her Majesty's Treasury's Consolidated List of Financial Sanctions Targets<TMPL_IF NAME=SHOW_INTL_INSTANTID> (formerly known as Bank of England Consolidated Sanctions)</TMPL_IF></span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_MOST_WANTED" class="check">
                                        <input type="checkbox" name="glob_most_wanted" id="GLOB_MOST_WANTED" checked="checked">
                                        <span>International Police Most Wanted and Red Alerts</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_CONTROLLER" class="check">
                                        <input type="checkbox" name="glob_controller" id="GLOB_CONTROLLER" checked="checked">
                                        <span>Office of Controller of Currency - Unauthorized Banks</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_OSFI" class="check">
                                        <input type="checkbox" name="glob_osfi" id="GLOB_OSFI" checked="checked">
                                        <span>OSFI - Canada</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_PEP" class="check">
                                        <input type="checkbox" name="glob_pep" id="GLOB_PEP" checked="checked">
                                        <span>Politically Exposed Persons</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_TERROR" class="check">
                                        <input type="checkbox" name="glob_terror" id="GLOB_TERROR" checked="checked">
                                        <span>State Department Terrorist Exclusions</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_UNNT" class="check">
                                        <input type="checkbox" name="glob_unnt" id="GLOB_UNNT" checked="checked">
                                        <span>United Nations Named Terrorists</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_USIS" class="check">
                                        <input type="checkbox" name="glob_usis" id="GLOB_USIS" checked="checked">
                                        <span>US Bureau of Industry &amp; Security<TMPL_UNLESS NAME=SHOW_INTL_INSTANTID> - Unverified Entities, Denied Entities and Denied Persons
                                        List</TMPL_UNLESS></span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_FIRMS" class="check">
                                        <input type="checkbox" name="glob_firms" id="GLOB_FIRMS" checked="checked">
                                        <span>World Bank Ineligible Firms</span>
                                    </label>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_HID_WATCH_LIST_OPT">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="HID_WATCH_LIST_OPT" name="HID_WATCH_LIST_OPT" value="<TMPL_VAR NAME=HID_WATCH_LIST_OPT>" class="form-control">
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_HID_SELECTED_OPTS">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="HID_SELECTED_OPTS" name="HID_SELECTED_OPTS" value="<TMPL_VAR NAME=HID_SELECTED_OPTS>" class="form-control">
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_HID_COUNTRY_REF">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="HID_COUNTRY_REF" name="HID_COUNTRY_REF" value="<TMPL_VAR NAME=HID_COUNTRY_REF>" class="form-control">
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME=INPUT_DATE_OPTIONS>
        <div class="input col col-3">
            <label for="DATE_OPTIONS">
                <select name="DATE_OPTIONS" id="DATE_OPTIONS" class="form-control">
                    <option value="Today">Today</option>
                    <option value="Previous Week">Previous Week</option>
                    <option value="Previous Month">Previous Month</option>
                    <option value="Previous 60 Days">Previous 60 Days</option>
                    <option value="Previous 90 Days">Previous 90 Days</option>
                </select>
            </label>
        </div> 
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_SEARCH_NEWS">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="SEARCH_NEWS" name="SEARCH_NEWS" value="<TMPL_VAR NAME=SEARCH_NEWS>" class="form-control">
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_SEARCH_INDUSTRIES">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="SEARCH_INDUSTRIES" name="SEARCH_INDUSTRIES" value="<TMPL_VAR NAME=SEARCH_INDUSTRIES>" class="form-control">
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_SEARCH_GEOGRAPHY">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="SEARCH_GEOGRAPHY" name="SEARCH_GEOGRAPHY" value="<TMPL_VAR NAME=SEARCH_GEOGRAPHY>" class="form-control">
            </label>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME="INPUT_SEARCH_STATES">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="SEARCH_STATES" name="SEARCH_STATES" value="<TMPL_VAR NAME=SEARCH_STATES>" class="form-control">
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_FORCE_STREET_ADDRESS1">
        <div class="input col col-6">
            <label>                
                <input type="text" id="FORCE_STREET_ADDRESS1" name="FORCE_STREET_ADDRESS1" value="<TMPL_VAR NAME=FORCE_STREET_ADDRESS1>" placeholder="Current Street Address *" class="form-control" maxlength="35">
                <span class="tooltip">
                    Current Street Address *
                    <span class="font-10"> (e.g. 123 Main St Apt 1)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_FORCE_STREET_ADDRESS2">
        <div class="input col col-6">
            <label>                
                <input type="text" id="FORCE_STREET_ADDRESS2" name="FORCE_STREET_ADDRESS2" value="<TMPL_VAR NAME=FORCE_STREET_ADDRESS2>" placeholder="Previous Street Address *" class="form-control" maxlength="35">
                <span class="tooltip">
                    Previous Street Address *
                    <span class="font-10"> (e.g. 123 Main St Apt 1)</span>
                </span> 
            </label>
        </div>
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_FORCE_STATE1">
        <div class="input col col-3">
            <label>
                <select id="FORCE_STATE1" name="FORCE_STATE1" class="form-control">
                    <option value="">State *</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
            </label>
        </div>    
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_FORCE_STATE2">
        <div class="input col col-3">
            <label>
                <select id="FORCE_STATE2" name="FORCE_STATE2" class="form-control">
                    <option value="">State *</option>
                    <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                </select>
            </label>
        </div>    
    </TMPL_IF>
    
    <TMPL_IF NAME="INPUT_FORCE_ZIP1">
        <div class="input col col-1">
            <label>
                <input type="text" id="FORCE_ZIP1" name="FORCE_ZIP1" value="<TMPL_VAR NAME=FORCE_ZIP1>" placeholder="Zip *" maxlength="10" class="form-control">
                <span class="tooltip">Zip *</span>
            </label>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="INPUT_FORCE_ZIP2">
        <div class="input col col-1">
            <label>
                <input type="text" id="FORCE_ZIP2" name="FORCE_ZIP2" value="<TMPL_VAR NAME=FORCE_ZIP2>" placeholder="Zip *" maxlength="10" class="form-control">
                <span class="tooltip">Zip *</span>
            </label>
        </div>
    </TMPL_IF>
