<div id="search-form-fields" class="col col-7">
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['PHONE', 'PHONE_OPTIONS-DNH'],
                    ['UNIQUEID', 'SSN', 'LAST_NAME', 'FIRST_NAME', 'MI', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'UNIQUEID_HELP_ICO', 'OPTIONS', 'PHONE_OPTIONS-DNH']
                ];
            </script>
            <label class="col col-1_5">
                <input type="radio" id="FORM_SEARCH" name="input-group" <TMPL_IF NAME="FORM_SEARCH">checked="checked"</TMPL_IF> onclick="refresh_input_group()" data-idx="1" value="FORM_SEARCH">
                <span aria-hidden="true">Find by Phone</span>
            </label>
            <label class="col col-3">
                <input type="radio" id="BOOLEAN_SEARCH" name="input-group" <TMPL_UNLESS NAME="FORM_SEARCH">checked="checked"</TMPL_UNLESS> onclick="refresh_input_group()" data-idx="2" value="NOT_FORM_SEARCH">
                <span aria-hidden="true">Find by Name / Address / SSN</span>
            </label>
            <div class="col col-10">
                <div id="input-group-1-subtext" class="input-group-subtext">View information on a phone number.</div>
                <div id="input-group-2-subtext" class="input-group-subtext hidden">View phones associated with a subject.</div>
            </div>
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
        <div class="input col col-3">
            <label>
                <input type="text" id="MI" name="MI" class="form-control" value="<TMPL_VAR NAME=MI>" placeholder="Middle or Initial" maxlength="35">
                <span class="tooltip">Middle or Initial</span> 
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
    <hr>
    <div id="PHONE_OPTIONS">

            <h3 class="inline-block-display">Phone Content</h3>
            <div class="additional-info input btn-container">
                <button type="button" id="UNIQUEID_HELP_ICO" data-clickaway="on" data-toggle="popover" data-title='Phone Search Information' class="btn btn-link btn-tight info-icon svg-icon-tiny">
                    <span class="sr-only">Learn more information about Phone Searches</span>
                </button>
                <div class="popper-content hide">
                  <div class="popover-lexid">
                    <p><strong>Basic Search:</strong> searches in-house LexisNexis<sup class="sup-reg-symbol">&reg;</sup> content based on input phone, or identity and displays associated phones.  Also includes porting meta data associated to primary phone.</p>
                    <p><strong>Premium Search:</strong> uses same data points associated to Basic Search and adds one additional real-time phones gateway.  Also it offers additional meta data points and a &quot;Phone Risk Indicator&quot; based on these points.</p>
                    <p><strong>Ultimate Search:</strong> uses same data points associated to Premium Search and adds two additional third party phones gateways.  Also it offers additional meta data points that are included within the &quot;Phone Risk Indicator.&quot;</p>     
                  </div>
                </div>
        </div>
        <TMPL_IF ALLOW_PHONE_FINDER_BASIC>
        <label class="radio">
            <input type="radio" id="PHONE_FINDER_TYPE_B" name="PHONE_FINDER_TYPE" <TMPL_IF PHONE_FINDER_OPTION_BASIC>checked="checked"</TMPL_IF> value="Basic"/>
            <span>Basic</span>
        </label>
        </TMPL_IF>
        <TMPL_IF ALLOW_PHONE_FINDER_PREMIUM>
        <label class="radio">
            <input type="radio" id="PHONE_FINDER_TYPE_P" name="PHONE_FINDER_TYPE"<TMPL_IF PHONE_FINDER_OPTION_PREMIUM> checked="checked"</TMPL_IF> value="Premium"/>
            <span>Premium</span>
        </label>
        </TMPL_IF>
        <TMPL_IF ALLOW_PHONE_FINDER_ULTIMATE>
        <label class="radio">
            <input type="radio" id="PHONE_FINDER_TYPE_U" name="PHONE_FINDER_TYPE" <TMPL_IF PHONE_FINDER_OPTION_ULTIMATE>checked="checked"</TMPL_IF> value="Ultimate"/>
            <span>Ultimate</span>
        </label>
        </TMPL_IF>
    </div>
    <div id="OPTIONS" class="input">
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
    </div>
</div>
