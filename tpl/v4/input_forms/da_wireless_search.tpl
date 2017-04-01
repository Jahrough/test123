<div id="search-form-fields" class="col col-7">
    <fieldset class="row">
        <legend class="sr-only">Change search type</legend>
        <script>
            var input_group_arr = [
                ['PHONE'],
                ['UNIQUEID', 'LAST_NAME', 'FIRST_NAME', 'MI', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'ZIP4', 'COUNTY', 'UNIQUEID_HELP_ICO']
            ];
        </script>
        <label class="col col-1_<TMPL_IF WEB20_START_PAGE>75<TMPL_ELSE>5</TMPL_IF>">
            <input type="radio" id="input-group-1" name="input-group"<TMPL_IF NAME="FORM_SEARCH"> checked="checked"</TMPL_IF> onclick="refresh_input_group()" data-idx="1" value="FORM_SEARCH">
            <span aria-hidden="true">Find by Phone</span>
            <span class="sr-only">Find information on a specific phone number</span>
        </label>
        <label class="col col-3">
            <input type="radio" id="input-group-2" name="input-group"<TMPL_UNLESS NAME="FORM_SEARCH"> checked="checked"</TMPL_UNLESS> onclick="refresh_input_group()" data-idx="2" value="NOT_FORM_SEARCH">
            <span aria-hidden="true">Find by Name / Address</span>
            <span class="sr-only">Find phones by name or address</span>
        </label>
        <div class="col col-10" aria-hidden="true">
            <div id="input-group-1-subtext" class="input-group-subtext">View information on a phone number.</div>
            <div id="input-group-2-subtext" class="input-group-subtext hidden">View phones associated with a subject.</div>
        </div>
    </fieldset>
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
    <h3>Phone Content</h3>
    <label class="checkbox-toggle input" for="INCLUDE_VERIFIED">
        <span>Include Directory Assistance Listings</span>
        <input type="checkbox" id="INCLUDE_VERIFIED" name="INCLUDE_VERIFIED" <TMPL_IF INCLUDE_VERIFIED_CHECKED>checked="checked"</TMPL_IF> <TMPL_IF NAME=INCLUDE_VERIFIED_DISABLED> disabled="disabled"</TMPL_IF>>
        <span class="toggle pull-right" aria-hidden="true">
            <span class="toggle-on">ON</span>
            <span class="toggle-switch"></span>
            <span class="toggle-off">OFF</span>
        </span>
    </label>
<TMPL_IF SHOW_RT_PHONE>
  <TMPL_UNLESS DISABLE_RT_PHONE>    
    <label class="checkbox-toggle input relative" for="INCLUDE_REALTIME">
        <span>Include Real-Time Phones</span><br/>
        <span class="font-10">(Additional fees will apply)</span>
        <input type="checkbox" id="INCLUDE_REALTIME" name="INCLUDE_REALTIME" <TMPL_IF NAME=INCLUDE_REALTIME_CHECKED>checked="checked"</TMPL_IF><TMPL_IF NAME=INCLUDE_REALTIME_DISABLED> disabled="disabled"</TMPL_IF>>
        <span class="toggle pull-right" aria-hidden="true">
            <span class="toggle-on">ON</span>
            <span class="toggle-switch"></span>
            <span class="toggle-off">OFF</span>
        </span>
    </label>
  </TMPL_UNLESS>    
</TMPL_IF>    
    <h3 class="for-radio-group for-radio-group-2">Form Settings</h3>
    <label class="checkbox-toggle input for-radio-group for-radio-group-2" for="PHONETICS">
        <span class="checkbox-text">Include Similar-Sounding Last Names</span>
        <input type="checkbox" id="PHONETICS" name="PHONETICS" <TMPL_IF NAME=PHONETICS_CHECKED>checked="checked"</TMPL_IF>>
        <span class="toggle pull-right" aria-hidden="true">
            <span class="toggle-on">ON</span>
            <span class="toggle-switch"></span>
            <span class="toggle-off">OFF</span>
        </span>
    </label>
</div>
