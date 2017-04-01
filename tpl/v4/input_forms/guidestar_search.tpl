<div id="search-form-fields" class="col col-7">
    <div class="input-group-subtext input-group-pulltop">Terms &amp; Connectors: Modify your search using connectors: "car and boat", "car or auto", "car w/5 accident" - <a href="javascript:void(0);" id="search-connector-examples">More Examples</a></div>
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
                <input type="text" id="LAST_NAME" name="LAST_NAME" class="form-control" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Executive Last Name" maxlength="35">
                <span class="tooltip">Executive Last Name</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="FIRST_NAME" name="FIRST_NAME" class="form-control" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="Executive First Name" maxlength="35">
                <span class="tooltip">Executive First Name</span> 
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
        <div class="input col col-9">
            <label>
                <textarea name="ARTICLE_WORDS" class="form-control" id="ARTICLE_WORDS" placeholder="Words in the Article"><TMPL_VAR NAME=ARTICLE_WORDS></textarea>
                <span class="tooltip">
                    Words in the Article
                    <span class="font-10">ex. FDA and kids or children and nutrition</span>
                </span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-9">
            <label>
                <textarea name="WITHOUT_WORDS" class="form-control" id="WITHOUT_WORDS" placeholder="Without the Words"><TMPL_VAR NAME=WITHOUT_WORDS></textarea>
                <span class="tooltip">
                    Without the Words
                    <span class="font-10">ex. car and boat</span>
                </span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <span class="sr-only">Search by a date range</span>
                <select name="DATE_DROP" id="DATE_DROP" class="form-control" onchange="$('#FROM_DATE, #TO_DATE').val(''); toggle_custom_dates_radios();" data-value="<TMPL_VAR NAME="DATE_DROP_VALUE">" data-default-value="<TMPL_VAR NAME="DATE_DROP_DEFAULT_VALUE">" >
                    <TMPL_VAR DATE_DROP_CONTENTS_OPTIONS>
                </select>
            </label>
        </div>
        <fieldset>
            <legend class="sr-only">Enter custom date range</legend>
            <div class="input col col-3">
                <label>
                    <span class="sr-only">date start</span>
                    <input type="text" id="FROM_DATE" name="FROM_DATE" class="form-control hidden" value="<TMPL_VAR NAME=FROM_DATE>" placeholder="From" maxlength="10">
                    <span class="tooltip" aria-hidden="true">From<br>ex. 01/01/99, 01/01/1999,  1/ 1/1999</span> 
                </label>
            </div>
            <div class="col col-3">
                <label>
                    <span class="sr-only">date end</span>
                    <input type="text" id="TO_DATE" name="TO_DATE" class="form-control hidden" value="<TMPL_VAR NAME=TO_DATE>" placeholder="To" maxlength="10">
                    <span class="tooltip" aria-hidden="true">To<br>ex. 01/01/99, 01/01/1999,  1/ 1/1999</span> 
                </label>
            </div>
            <span id="DATE_HELP" class="hidden col col-1">
                <div class="additional-info">
                    <a id="custom-date-help" class="svg-icon-tiny help-icon" href="#">
                        <span class="sr-only">Open help window on entering custom dates</span>
                        <span class="tooltip centered" aria-hidden="true">Help</span>
                    </a>
                </div>
            </span>
        </fieldset>
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
</div>
