<div id="search-form-fields" class="col col-7">
    <fieldset class="row">
        <legend class="sr-only">Change search type</legend>
        <script>
            var input_group_arr = [
                ['UNIQUEID-DNH', 'LAST_NAME', 'FIRST_NAME', 'MI', 'STATE', 'COUNTY', 'FILING_NUMBER', 'OPTIONS', 'NAME_FULL'],
                ['UNIQUEID-DNH', 'BOOL_NAME_FULL', 'BOOL_COUNTY', 'BOOL_ADDRESS', 'BOOL_FILING_NUMBER', 'ADDITIONAL_TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
            ];
            var segment_arr = [
                ['Bride Name', 'bride-name()'],
                ['County', 'county()'],
                ['Date: Equals', 'date(is )'],
                ['Date: After', 'date(aft )'],
                ['Date: Before', 'date(bef )'],
                ['Date: Between', 'date(btw  and )'],
                ['Groom Name', 'groom-name()'],
                ['Jurisdiction', 'jurisdiction()'],
                ['Marriage Date: Equals', 'marrieage-date(is )'],
                ['Marriage Date: After', 'marrieage-date(after )'],
                ['Marriage Date: Before', 'marriage-date(bef )'],
                ['Marriage Date: Between', 'marriage-date(btw  and )']
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
                <input type="text" id="BOOL_NAME_FULL" class="form-control" name="BOOL_NAME_FULL" value="<TMPL_VAR NAME=BOOL_NAME_FULL>" placeholder="Full Name" maxlength="50">
                <span class="tooltip">Full Name</span> 
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
                <span class="sr-only">State</span>
                <select id="STATE" name="STATE" data-value="<TMPL_VAR NAME=STATE>" class="form-control">
                    <option value="">All States</option>
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
                </select>
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="COUNTY" name="COUNTY" class="form-control" value="<TMPL_VAR NAME=COUNTY>" placeholder="County" maxlength="50">
                <span class="tooltip">County</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="BOOL_COUNTY" name="BOOL_COUNTY" class="form-control" value="<TMPL_VAR NAME=BOOL_COUNTY>" placeholder="County" maxlength="50">
                <span class="tooltip">County</span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input class="form-control" type="text" id="FILING_NUMBER" name="FILING_NUMBER" value="<TMPL_VAR NAME=FILING_NUMBER>" placeholder="Filing Number" maxlength="35">
                <span class="tooltip">
                    Filing Number
                </span>
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="BOOL_FILING_NUMBER" name="BOOL_FILING_NUMBER" class="form-control" value="<TMPL_VAR NAME=BOOL_FILING_NUMBER>" placeholder="Filing Number" maxlength="35">
                <span class="tooltip">Filing Number</span>
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
    <hr class="for-radio-group for-radio-group-1">
    <section class="for-radio-group for-radio-group-1">
        <div class="row" id="OPTIONS">
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
                <label class="checkbox-toggle input" for="NICKNAMES">
                    <span class="checkbox-text">Include Nicknames of First Name</span>    
                    <input type="checkbox" name="NICKNAMES" <TMPL_IF NAME=NICKNAMES_CHECKED>checked="checked"</TMPL_IF> id="NICKNAMES">
                    <span class="toggle pull-right" aria-hidden="true">
                        <span class="toggle-on">ON</span>
                        <span class="toggle-switch"></span>
                        <span class="toggle-off">OFF</span>
                    </span>
                </label>
            </div>
        </div>
    </section>
</div>
