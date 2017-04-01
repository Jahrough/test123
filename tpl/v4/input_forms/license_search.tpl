<div id="search-form-fields" class="col col-7">
    <fieldset class="row">
        <legend class="sr-only">Change search type</legend>
        <script>
            var input_group_arr = [
                ['SSN', 'UNIQUEID-DNH', 'LAST_NAME', 'FIRST_NAME', 'LICENSE_NUMBER', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'DOB', 'NICKNAMES', 'PHONETICS'],
                ['BOOL_SSN', 'UNIQUEID-DNH', 'BOOL_NAME_FULL', 'BOOL_LICENSE_NUMBER', 'BOOL_ADDRESS', 'ADDITIONAL_TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
            ];
            var segment_arr = [
                ['DL Number', 'dl-number()'],
                ['DOB: Equals', 'dob(is )'],
                ['DOB: After', 'dob(aft )'],
                ['DOB: Before', 'dob(bef )'],
                ['DOB: Between', 'dob(btw and )'],
                ['License Class', 'license-class()'],
                ['License State', 'license-state()'],
                ['Restrictions', 'restrictions()']
            ];
        </script>
        <label class="col col-1_5">
            <input type="radio" id="FORM_SEARCH" name="input-group" <TMPL_IF NAME="FORM_SEARCH">checked="checked"</TMPL_IF> onclick="refresh_input_group()" data-idx="1" value="FORM_SEARCH">
            <span aria-hidden="true">Form Search</span>
            <span class="sr-only">Search by filling out a standard form. The LexisNexis search engine will return the most relevant information. Multiple fields increase precision.</span>
        </label>
        <label class="col col-3">
            <input type="radio" id="BOOLEAN_SEARCH" name="input-group" <TMPL_UNLESS NAME="FORM_SEARCH">checked="checked"</TMPL_UNLESS> onclick="refresh_input_group()" data-idx="2" value="NOT_FORM_SEARCH">
            <span aria-hidden="true">Terms &amp; Connectors Search</span>
            <span class="sr-only">Search using terms and connectors. for example, "car and boat", "car or auto".</span>
        </label>
        <div class="col col-10">
            <div id="input-group-1-subtext" class="input-group-subtext" aria-hidden="true">The LexisNexis search engine will return the most relevant information. Multiple fields increase precision.</div>
            <div id="input-group-2-subtext" class="input-group-subtext hidden">
                <span aria-hidden="true">Modify your search using connectors: "car and boat", "car or auto" - </span>
                <a href="javascript:void(0);" id="search-connector-examples" aria-label="Listen to more terms and connectors examples">More Examples</a>
            </div>
        </div>
    </fieldset>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input autocomplete="off" type="text" id="SSN" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="SSN" class="form-control" maxlength="30">
                <span class="tooltip">
                    SSN
                    <span class="font-10"> (e.g. 123456789, 123-45-6789, 123 45 6789)</span>
                </span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input autocomplete="off" type="text" id="BOOL_SSN" name="BOOL_SSN" value="<TMPL_VAR NAME=BOOL_SSN>" placeholder="SSN" class="form-control" maxlength="30">
                <span class="tooltip">
                    SSN<br/>
                    <span class="font-10">(Examples: 123456789, 123-45-6789, 123 45 6789)</span>
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
    <div class="row">
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
    </div>
    <div class="row">
        <div class="input col col-9">
            <label>
                <input type="text" id="BOOL_NAME_FULL" class="form-control" name="BOOL_NAME_FULL" value="<TMPL_VAR NAME=BOOL_NAME_FULL>" placeholder="Full Name" maxlength="50">
                <span class="tooltip">Full Name</span> 
            </label>
        </div>
    </div>
    <div class="row">
        <div class="input col col-3">
            <label>
                <input autocomplete="off" type="text" id="LICENSE_NUMBER" class="form-control" name="LICENSE_NUMBER" value="<TMPL_VAR NAME=LICENSE_NUMBER>" placeholder="Driver License Number" maxlength="35">
                <span class="tooltip">Driver License Number</span> 
            </label>
        </div>
    </div>
    <div class="row">
        <div class="input col col-3">
            <label>
                <input autocomplete="off" type="text" id="BOOL_LICENSE_NUMBER" class="form-control" name="BOOL_LICENSE_NUMBER" value="<TMPL_VAR NAME=BOOL_LICENSE_NUMBER>" placeholder="Driver License Number" maxlength="35">
                <span class="tooltip">Driver License Number</span> 
            </label>
        </div>
    </div>
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
        <div class="input col col-9">
            <label>
                <input type="text" id="BOOL_ADDRESS" name="BOOL_ADDRESS" class="form-control" value="<TMPL_VAR NAME=BOOL_ADDRESS>" placeholder="Address" maxlength="200">
                <span class="tooltip">Address</span> 
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
    <div class="row">
        <div class="input col col-3">
            <label>
                <span class="sr-only">Segment</span>
                <select id="TERMS_SEGMENTS" name="TERMS_SEGMENTS" class="form-control">
                    <option value="">Add Segments</option>
                </select>
            </label>
        </div>
        <div class="btn-container col col-1">
            <button type="button" onclick="javascript:add_segment(TERMS_SEGMENTS)" class="btn btn-default form-control" id="TERMS_SEGMENTS_ADD">Add</button>
        </div>
    </div>
    <div class="row">
        <div class="input col col-9">
            <label>
                <textarea name="ADDITIONAL_TERMS" class="form-control" id="ADDITIONAL_TERMS" placeholder="Additional Terms"><TMPL_VAR NAME=ADDITIONAL_TERMS></textarea>
                <span class="tooltip">
                    Additional Terms<br/>
                    <span class="font-10">Example: car and boat</span>
                </span> 
            </label>
        </div>
    </div>
    <div class="row">
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
    </div>
</div>
<div id="search-options" class="col col-3">
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
    <hr>
    <div class="row">
        <div id="search-options-container" class="col-sm-12">
            <h3>Form Settings</h3>
            <label class="checkbox-toggle input" for="NON_GOVERNMENTAL">
                <span class="checkbox-text">Include Non-Governmental Sources</span>
                <input type="checkbox" id="NON_GOVERNMENTAL" name="NON_GOVERNMENTAL" data-default-value="<TMPL_VAR NAME="NON_GOVERNMENTAL_DEFAULT_VALUE">" data-value="<TMPL_VAR NAME="NON_GOVERNMENTAL_VALUE">" <TMPL_IF NAME=NON_GOVERNMENTAL_CHECKED>checked="checked"</TMPL_IF>>    
                <span class="toggle pull-right" aria-hidden="true">
                    <span class="toggle-on">ON</span>
                    <span class="toggle-switch"></span>
                    <span class="toggle-off">OFF</span>
                </span>
            </label>
            <label class="checkbox-toggle input" for="PHONETICS">
                <span class="checkbox-text">Include Similar-Sounding Last Names</span>
                <input type="checkbox" name="PHONETICS" id="PHONETICS" <TMPL_IF NAME=PHONETICS_CHECKED>checked="checked"</TMPL_IF>>
                <span class="toggle pull-right" aria-hidden="true">
                    <span class="toggle-on">ON</span>
                    <span class="toggle-switch"></span>
                    <span class="toggle-off">OFF</span>
                </span>
            </label>
            <label class="checkbox-toggle input" for="NICKNAMES">
                <span class="checkbox-text">Include Nicknames of First Name</span>    
                <input type="checkbox" name="NICKNAMES" id="NICKNAMES" <TMPL_IF NAME=NICKNAMES_CHECKED>checked="checked"</TMPL_IF>>
                <span class="toggle pull-right" aria-hidden="true">
                    <span class="toggle-on">ON</span>
                    <span class="toggle-switch"></span>
                    <span class="toggle-off">OFF</span>
                </span>
            </label>
        </div>
    </div>
</div>
