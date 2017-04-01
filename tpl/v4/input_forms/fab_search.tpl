<script type="text/javascript">
/* Init City Autocompletes here*/
$(function() {
    $('#CITY').autocomplete({
        source: function (request, response) {
            if (request.term.match(/[^'A-Za-z \.\-\&]/)) {
                $('#CITY').valid();
                return false;
            }
            if (request.term.length >= this.option('minLength')) {
                var _dataObj = {
                    EVENT: 'SEARCH2/AUTO_COMPLETE_CITY',
                    CITY_INIT:  request.term,  
                    SESSION_ID: LN.misc.getSessionId(),
                    CSRF_TOKEN: LN.misc.getCSRFToken()
                };
                $.ajax({
                    url: get_action('MISC'),
                    type: "POST",
                    data: _dataObj,
                    success:function(resp) {
                        console.log("CITY_AUTO_COMPLETE success: " + resp.message);
                        var cities = resp.message.split(",");
                        response(cities);                         
                    },
                    error: function (jqXHR,textStatus,errorThrown) {
                        console.log("CCITY_AUTO_COMPLETE Error: " + errorThrown);
                    }
                });
            }
        },
        minLength: 1
    });
});
</script>

<div id="search-form-fields" class="col col-7">
    <div class="row">
        <div class="input col col-6">
            <label>
                <input type="text" id="COMPANY_NAME" class="form-control" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name" maxlength="50">
                <span class="tooltip">Company Name</span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input type="text" id="TIN" name="TIN" class="form-control" value="<TMPL_VAR NAME=TIN>" placeholder="TIN" maxlength="11">
                <span class="tooltip">TIN</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="UNIQUEID" class="form-control" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID&reg; Business" maxlength="14">
                <span class="tooltip">LexID<sup class="sup-reg-symbol">&reg;</sup> Business</span> 
            </label>
        </div>
        <div class="additional-info input btn-container">
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
                <select id="STATE" data-value="<TMPL_VAR NAME=STATE>" name="STATE" class="form-control">
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
    <div class="row">
        <strong class="col col-3">Business Contact:</strong>
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
                <input type="text" id="NAME_FULL" class="form-control" name="NAME_FULL" value="<TMPL_VAR NAME=NAME_FULL>" placeholder="Last, First, Middle or Initial" maxlength="50">
                <span class="tooltip">Last, First, Middle or Initial</span> 
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
    <h3>Form Settings</h3>
    <label class="input block-display">
        <span class="form-control-label">Search Radius</span>
        <select id="RADIUS" data-default-value="<TMPL_VAR NAME="RADIUS_DEFAULT_VALUE">" data-value="<TMPL_VAR NAME="RADIUS_VALUE">" name="RADIUS" class="form-control pull-right col-4">
            <option value=""></option>
            <option value="5">5 Miles</option>
            <option value="10">10 Miles</option>
            <option selected="selected" value="15">15 Miles</option>
            <option value="20">20 Miles</option>
            <option value="30">30 Miles</option>
            <option value="40">40 Miles</option>
            <option value="50">50 Miles</option>
        </select>
    </label>
    <label class="checkbox-toggle input" for="EXACT_PHONE_MATCH">
        <span class="checkbox-text">Only Include Exact Phone Matches</span>
        <input class="only_one_field" type="checkbox" id="EXACT_PHONE_MATCH" name="EXACT_PHONE_MATCH" <TMPL_IF NAME=EXACT_PHONE_MATCH_CHECKED>checked="checked"</TMPL_IF>>
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


