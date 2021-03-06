<div id="search-form-fields" class="col col-7">
    <div class="row">
        <div class="input col col-3">
            <label>
                <input autocomplete="off" type="text" id="SSN" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="SSN" class="form-control" maxlength="30" aria-label="Social Security Number">
                <span class="tooltip">
                    SSN
                    <span class="font-10"> (e.g. 123456789, 123-45-6789, 123 45 6789, 6789)</span>
                </span> 
            </label>
        </div>
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
    </div>    
    <fieldset class="row">
        <legend class="sr-only">Search by name</legend>
        <div class="input col col-3">
            <label>
                <input type="text" id="LAST_NAME" class="form-control" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name" maxlength="35">
                <span class="tooltip">Last Name</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="FIRST_NAME" class="form-control" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name" maxlength="35">
                <span class="tooltip">First Name</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="MI" name="MI" class="form-control" value="<TMPL_VAR NAME=MI>" placeholder="Middle or Initial" maxlength="35">
                <span class="tooltip">Middle or Initial</span> 
            </label>
        </div>
    </fieldset>    
    <div class="row">
        <div class="input col col-6">
            <label>
                <input type="text" id="NAME_FULL" class="form-control" name="NAME_FULL" value="<TMPL_VAR NAME=NAME_FULL>" placeholder="Last, First, Middle or Initial" maxlength="50">
                <span class="tooltip">Last, First, Middle or Initial</span> 
            </label>
        </div>
    </div>
    <fieldset>
        <legend class="sr-only">Search by location</legend>
        <div class="row">
            <div class="input col col-6">
                <label>
                    <input type="text" id="STREET_ADDRESS" class="form-control" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address" maxlength="35">
                    <span class="tooltip">
                        Street Address
                        <span class="font-10"> (e.g. 123 Main St Apt 1)</span>
                    </span> 
                </label>
            </div>
        </div>    
        <div class="row">
            <div class="input col col-3">
                <label>
                    <input type="text" id="CITY" name="CITY" class="form-control" value="<TMPL_VAR NAME=CITY>" placeholder="City" maxlength="35">
                    <span class="tooltip">City</span> 
                </label>
            </div>
            <div class="input col col-3">
                <label>
                    <span class="sr-only">State</span>
                    <select id="STATE" name="STATE" data-value="<TMPL_VAR NAME=STATE>" class="form-control">
                        <option value="">All States</option>
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
                    <input type="text" id="ZIP" name="ZIP" class="form-control" value="<TMPL_VAR NAME=ZIP>" placeholder="Zip Code" maxlength="10">
                    <span class="tooltip">Zip Code</span>
                </label>
            </div>
        </div>    
    </fieldset>
    <div class="row">
        <div class="input col col-6">
            <label>
                <input type="text" id="CSZ" name="CSZ" class="form-control" value="<TMPL_VAR NAME=CSZ>" placeholder="City, State, Zip Code" maxlength="200">
                <span class="tooltip">City, State, Zip Code</span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input type="text" id="PHONE" name="PHONE" class="form-control" value="<TMPL_VAR NAME=PHONE>" placeholder="Phone" maxlength="15">
                <span class="tooltip">
                    Phone
                    <span class="font-10">(e.g. 9375550110, 937-555-0110, (937) 555-0110)</span>
                </span> 
            </label>
        </div>
    </div>    
    <fieldset class="row">
        <legend class="sr-only">Search by date of birth or age</legend>
        <div class="input col col-0_25">
            <label>
                <span class="sr-only">search by date</span>
                <input name="DOB_OR_AGE"<TMPL_UNLESS NAME=DOB_OR_AGE> checked="checked"</TMPL_UNLESS> type="radio" id="DOB_RADIO" value="" onchange="dob_age_enable_disable()">
            </label>
        </div>

        <div class="input col col-2_75">
            <label>
                <input type="text" id="DOB" name="DOB" value="<TMPL_VAR NAME=DOB>" class="form-control" placeholder="Date of Birth" maxlength="10"<TMPL_IF NAME=DOB_OR_AGE> disabled="disabled"</TMPL_IF>>
                <span class="tooltip">
                    Date of Birth
                    <span class="font-10"> (e.g. mm, yyyy, mm/yyyy, mm/dd/yyyy)</span>
                </span> 
            </label>
        </div>

        <div class="input col col-0_25">
            <label>
                <span class="sr-only">search by age range</span>
                <input name="DOB_OR_AGE"<TMPL_IF NAME=DOB_OR_AGE> checked="checked"</TMPL_IF> type="radio" id="AGE_RADIO" value="On" onchange="dob_age_enable_disable()">
            </label>
        </div>

        <div class="input col col-2_75">
            <label>
                <span class="sr-only">Age</span>
                <select id="AGE" name="AGE" data-value="<TMPL_IF NAME=AGE><TMPL_VAR NAME=AGE><TMPL_ELSE></TMPL_IF>" data-default-value="" class="form-control"<TMPL_UNLESS NAME=DOB_OR_AGE> disabled="disabled"</TMPL_UNLESS>>
                    <option value="" selected="selected">All Ages</option>
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
            </label>
        </div>
    </fieldset>    
    <div class="row">
        <button type="button" id="fap-more-options" class="btn btn-link<TMPL_UNLESS NAME=EXPAND_MORE_SEARCH_OPTIONS> collapsed</TMPL_UNLESS>" data-toggle="collapse">
            <strong><TMPL_IF NAME=EXPAND_MORE_SEARCH_OPTIONS>Less<TMPL_ELSE>More</TMPL_IF> Options</strong> 
            <span class="show-hidden-data-icon"></span>
        </button>
        <INPUT type="hidden" NAME="EXPAND_MORE_SEARCH_OPTIONS" value="<TMPL_IF NAME=EXPAND_MORE_SEARCH_OPTIONS>yes<TMPL_ELSE>no</TMPL_IF>">
    </div>
    <div class="row more-inputs<TMPL_UNLESS NAME=EXPAND_MORE_SEARCH_OPTIONS> hidden</TMPL_UNLESS>">
        <label class="col col-3">
            <input id="OTHER_LAST_NAME" name="OTHER_LAST_NAME" class="form-control" value="" placeholder="Other Last Name" type="text">
            <span class="tooltip">Other Last Name</span> 
        </label>
        <label class="col col-3">
            <input id="RELATIVE_FIRST_NAME" name="RELATIVE_FIRST_NAME" class="form-control" value="" placeholder="Relative First Name" type="text">
            <span class="tooltip">Relative First Name</span> 
        </label> 
        <label class="col col-3">
            <input id="RELATIVE_FIRST_NAME2" name="RELATIVE_FIRST_NAME2" class="form-control" value="" placeholder="Other Relative First Name" type="text">
            <span class="tooltip">Other Relative First Name</span> 
        </label>
    </div>
    <div class="row more-inputs<TMPL_UNLESS NAME=EXPAND_MORE_SEARCH_OPTIONS> hidden</TMPL_UNLESS>">
        <label class="col col-3">
            <input id="OTHER_CITY" name="OTHER_CITY" class="form-control" value="" placeholder="Other City" type="text">
            <span class="tooltip">Other City</span> 
        </label> 
        <label class="col col-3">
            <span class="sr-only">Previous States</span>
            <select id="OTHER_STATE" class="form-control" name="OTHER_STATE">
                <option value="">All Previous States</option>
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
        <label class="col col-3">
            <span class="sr-only">Other Previous States</span>
            <select id="OTHER_STATE2" class="form-control" name="OTHER_STATE2">
                <option value="">All Other Previous States</option>
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
</div>
<div class="col col-3" id="search-options">
    <div class="row">
        <div class="input col col-10">
            <label>
                <input type="text" id="REFERENCE_CODE" class="form-control" name="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>" maxlength="32"  placeholder="Reference ID">
                <span class="tooltip">Reference ID </span> 
            </label>
        </div>
        <div id="REFERENCE_CODE_CRITERIA" class="col col-10">
            <span id="ref_code_criteria" class="textGray hidden">The Reference ID must contain only valid characters.</span>
        </div>
    </div>
    <hr>
    <TMPL_IF SHOW_BANKRUPTCY_CHECK>
    <h3>Additional Content</h3>
    <TMPL_IF INCLUDE_BANKRUPTCY_CHECK>
        <span>(Bankruptcy search will be included)</span>
        <input type=hidden name="USE_BANKRUPTCIES" value="on">
    <TMPL_ELSE>
    <label class="checkbox-toggle input" for="USE_BANKRUPTCIES">
        <span>Include Bankruptcies</span>
        <input type="checkbox" name="USE_BANKRUPTCIES" <TMPL_IF NAME=USE_BANKRUPTCIES>checked="checked"<TMPL_ELSE><TMPL_IF NAME=USE_BANKRUPTCIES_CHECKED>checked="checked"</TMPL_IF></TMPL_IF> id="USE_BANKRUPTCIES">
        <span class="toggle pull-right" aria-hidden="true">
            <span class="toggle-on">ON</span>
            <span class="toggle-switch"></span>
            <span class="toggle-off">OFF</span>
        </span>
    </label>
    </TMPL_IF>
    </TMPL_IF>
    <h3>Form Settings</h3>
    <label class="checkbox-toggle input" for="PHONETICS">
        <span class="checkbox-text">Include Similar-Sounding Last Names</span>
        <input type="checkbox" name="PHONETICS" <TMPL_IF NAME=PHONETICS_CHECKED>checked="checked"</TMPL_IF> id="PHONETICS">
        <span class="toggle pull-right" aria-hidden="true">
            <span class="toggle-on">ON</span>
            <span class="toggle-switch"></span>
            <span class="toggle-off">OFF</span>
        </span>
    </label>
    <label class="checkbox-toggle input" for="NICKNAMES">
        <span class="checkbox-text">Include Nicknames of First Name</span>    
        <input type="checkbox" name="NICKNAMES" <TMPL_IF NAME=NICKNAMES_CHECKED>checked="checked"</TMPL_IF> id="NICKNAMES">
        <span class="toggle pull-right" aria-hidden="true">
            <span class="toggle-on">ON</span>
            <span class="toggle-switch"></span>
            <span class="toggle-off">OFF</span>
        </span>
    </label>
    <label class="checkbox-toggle input" for="SINGLE_NAME">
        <span class="checkbox-text">Single Name Entry Fields</span>
        <input class="only_one_field" type="checkbox" name="SINGLE_NAME" <TMPL_IF NAME=SINGLE_NAME_CHECKED>checked="checked"</TMPL_IF> id="SINGLE_NAME"  data-inputfield="NAME_FULL" data-altinputfield="LAST_NAME">
        <span class="toggle pull-right" aria-hidden="true">
            <span class="toggle-on">ON</span>
            <span class="toggle-switch"></span>
            <span class="toggle-off">OFF</span>
        </span>
    </label>
    <label class="checkbox-toggle input" for="SINGLE_CSZ">
        <span class="checkbox-text">Single City, State, Zip Code Fields</span>
        <input class="only_one_field" type="checkbox" name="SINGLE_CSZ" <TMPL_IF NAME=SINGLE_CSZ_CHECKED>checked="checked"</TMPL_IF> id="SINGLE_CSZ"  data-inputfield="CSZ" data-altinputfield="CITY">    
        <span class="toggle pull-right" aria-hidden="true">
            <span class="toggle-on">ON</span>
            <span class="toggle-switch"></span>
            <span class="toggle-off">OFF</span>
        </span>
    </label>
</div>
