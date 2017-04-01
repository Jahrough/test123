<div id="search-form-fields" class="col col-7">
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
                <input type="text" id="COMPANY_NAME" class="form-control" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name" maxlength="50">
                <span class="tooltip">Company Name</span> 
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
                        <option value="">All Available States</option>
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
        <div class="input col col-3">
            <label>
                <input type="text" id="ACCIDENT_NUMBER" class="form-control" name="ACCIDENT_NUMBER" value="<TMPL_VAR NAME=ACCIDENT_NUMBER>" placeholder="Accident Number" maxlength="35">
                <span class="tooltip">Accident Number</span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input autocomplete="off" type="text" id="LICENSE_NUMBER" class="form-control" name="LICENSE_NUMBER" value="<TMPL_VAR NAME=LICENSE_NUMBER>" placeholder="License Number" maxlength="35">
                <span class="tooltip">License Number</span> 
            </label>
        </div>
    </div>
    <fieldset class="row">
        <legend class="sr-only">Search by vehicle</legend>
        <div class="input col col-3">
            <label>
                <input type="text" id="VIN" name="VIN" class="form-control" value="<TMPL_VAR NAME=VIN>" placeholder="VIN" maxlength="35">
                <span class="tooltip">VIN</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="LICENSE_PLATE" class="form-control" name="LICENSE_PLATE" value="<TMPL_VAR NAME=LICENSE_PLATE>" placeholder="Plate/Tag" maxlength="35">
                <span class="tooltip">Plate/Tag</span> 
            </label>
        </div>
    </fieldset>
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
</div>
