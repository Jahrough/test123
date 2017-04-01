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
                <label for="PROVINCE">
                    <select name="PROVINCE" id="PROVINCE" class="form-control" data-value="<TMPL_VAR NAME=PROVINCE>">
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
            <div class="input col col-3">
                <label>
                    <input type="text" id="POSTAL_CODE" name="POSTAL_CODE" class="form-control" value="<TMPL_VAR NAME=POSTAL_CODE>" placeholder="Postal Code" maxlength="10">
                    <span class="tooltip">Postal Code</span> 
                </label>
            </div>
        </div>
    </fieldset>
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
    <div class="row">
        <div id="search-options-container" class="col-sm-12">
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
</div>