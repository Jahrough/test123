<INPUT type=hidden NAME="LOCAL_ONLY" VALUE="0">
<div id="search-form-fields" class="col col-7">
    <fieldset class="row">
        <legend class="sr-only">Change search type</legend>
        <script>
            var input_group_arr = [
               ['DMV_SEARCH_PURPOSE', 'dl_search_help', 'SSN','LAST_NAME','FIRST_NAME','MI','STREET_ADDRESS','CITY','STATE','ZIP','VIN','LICENSE_PLATE','MAKE','MODEL','YEAR_MAKE','TITLE_NUMBER','COMPANY_NAME','LICENSE_NUMBER','dmv-license-number','NICKNAMES','PHONETICS'],
               ['BOOL_NAME_FULL','BOOL_ADDRESS','BOOL_VIN','BOOL_LICENSE_PLATE','BOOL_MAKE','BOOL_MODEL','BOOL_YEAR_MAKE','BOOL_TITLE_NUMBER','TERMS_SEGMENTS','TERMS_SEGMENTS_ADD','ADDITIONAL_TERMS']
            ];
            var segment_arr = [
               ['Color', 'color()'],
               ['Jurisdiction', 'jurisdiction()'],
               ['Lienholder', 'lienholder()'],
               ['Manufacturer', 'manufacturer()'],
               ['Model', 'model()'],
               ['Model Year', 'model-year()'],
               ['Name', 'name()'],
               ['Plate Number', 'plate-number()'],
               ['Plate State', 'plate-state()'],
               ['Plate Type', 'plate-type()'],
               ['VIN', 'vin()']
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
        <div class="col col-9">
            <div id="input-group-1-subtext" class="input-group-subtext" aria-hidden="true">For optimal results enter one of the following: SSN, VIN, Last Name & Street/Zip Code, Last Name & Street/City/State, or State and Plate/TagNumber.</div>
            <div id="input-group-2-subtext" class="input-group-subtext hidden">
                <span aria-hidden="true">Modify your search using connectors: "car and boat", "car or auto" - </span>
                <a href="javascript:void(0);" id="search-connector-examples" aria-label="Listen to more terms and connectors examples">More Examples</a>
            </div>
        </div>        
    </fieldset>
    <div class="row">
        <div id="dmv-search-purpose" class="input <TMPL_UNLESS NAME=SHOW_DMV_SEARCH_PURPOSE> hidden</TMPL_UNLESS>">
            <div class="input col col-3">
                <label> 
                    <span class="sr-only">Search Purpose</span> 
                    <select id="DMV_SEARCH_PURPOSE" name="DMV_SEARCH_PURPOSE" data-value="<TMPL_VAR NAME=DMV_SEARCH_PURPOSE>" data-default-value="<TMPL_VAR NAME=DMV_SEARCH_PURPOSE>" class="form-control"> 
                        <option value="">Select Search Purpose</option> 
                        <option value="LAW">Law Enforcement</option> 
                        <option value="GOV">Government</option> 
                        <option value="PAR">Parking</option> 
                    </select> 
                </label> 
            </div>
            <div class="additional-info input btn-container" id="dl_search_help">
                <button type="button" id="SEARCH_PURPOSE_HELP_ICO" data-clickaway="on" data-toggle="popover" data-title='Search Purpose' class="btn btn-link btn-tight info-icon svg-icon-tiny">
                    <span class="sr-only">Description</span>
                </button>
                <div class="popper-content hide">
                    <div class="popover-lexid">
                        <p>In certain circumstances, depending on the DPPA permissible use selection that you've established, you may be required to identify a specific search purpose in order to access motor vehicle registration records.</p>
                        <p>In those circumstances, you will be asked to make the appropriate selection from the following options:</p>
                        <ul>
                            <li>Law Enforcement</li>
                            <li>Government (carrying out non-law enforcement functions)</li>
                            <li>Parking Tickets</li>
                        </ul>
                    </div>
                </div>
            </div>
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
        <div class="input col col-6">
            <label>
                <input type="text" id="BOOL_ADDRESS" name="BOOL_ADDRESS" class="form-control" value="<TMPL_VAR NAME=BOOL_ADDRESS>" placeholder="Address" maxlength="35">
                <span class="tooltip">Address</span> 
            </label>
        </div> 
    </div>
    <div class="row">
        <div class="input col col-6">
            <label>
                <input type="text" id="COMPANY_NAME" class="form-control" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name" maxlength="50">
                <span class="tooltip">Company Name</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="BOOL_VIN" name="BOOL_VIN" class="form-control" value="<TMPL_VAR NAME=BOOL_VIN>" placeholder="VIN" maxlength="17">
                <span class="tooltip">VIN</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="BOOL_LICENSE_PLATE" class="form-control" name="BOOL_LICENSE_PLATE" value="<TMPL_VAR NAME=BOOL_LICENSE_PLATE>" placeholder="Plate/Tag Number" maxlength="12">
                <span class="tooltip">Plate/Tag Number</span> 
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
        <div class="input col col-3">
            <label>
                <input type="text" id="BOOL_MAKE" class="form-control" name="BOOL_MAKE" value="<TMPL_VAR NAME=BOOL_MAKE>" placeholder="Make" maxlength="35">
                <span class="tooltip">Make</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="BOOL_MODEL" class="form-control" name="BOOL_MODEL" value="<TMPL_VAR NAME=BOOL_MODEL>" placeholder="Model" maxlength="35">
                <span class="tooltip">Model</span> 
            </label>
        </div>
        <div class="input col col-1">
            <label>
                <input type="text" id="BOOL_YEAR_MAKE" class="form-control" name="BOOL_YEAR_MAKE" value="<TMPL_VAR NAME=BOOL_YEAR_MAKE>" placeholder="Year" maxlength="4">
                <span class="tooltip">Year</span> 
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
                    <option value=""   data-ln="1">All States</option>
                    <option value="AL" data-ln="1">AL - Alabama</option>
                    <option value="AK" data-ln="1">AK - Alaska</option>
                    <option value="AZ" data-ln="1">AZ - Arizona</option>
                    <option value="AR" data-ln="1">AR - Arkansas</option>
                    <option value="CA" data-ln="1">CA - California</option>
                    <option value="CO" data-ln="0">CO - Colorado</option>
                    <option value="CT" data-ln="1">CT - Connecticut</option>
                    <option value="DE" data-ln="1">DE - Delaware</option>
                    <option value="DC" data-ln="0">DC - District Of Columbia</option>
                    <option value="FL" data-ln="0">FL - Florida</option>
                    <option value="GA" data-ln="1">GA - Georgia</option>
                    <option value="GU" data-ln="1">GU - Guam</option>
                    <option value="HI" data-ln="1">HI - Hawaii</option>
                    <option value="ID" data-ln="1">ID - Idaho</option>
                    <option value="IL" data-ln="0">IL - Illinois</option>
                    <option value="IN" data-ln="1">IN - Indiana</option>
                    <option value="IA" data-ln="1">IA - Iowa</option>
                    <option value="KS" data-ln="1">KS - Kansas</option>
                    <option value="KY" data-ln="0">KY - Kentucky</option>
                    <option value="LA" data-ln="0">LA - Louisiana</option>
                    <option value="ME" data-ln="0">ME - Maine</option>
                    <option value="MD" data-ln="1">MD - Maryland</option>
                    <option value="MA" data-ln="0">MA - Massachusetts</option>
                    <option value="MI" data-ln="0">MI - Michigan</option>
                    <option value="MN" data-ln="0">MN - Minnesota</option>
                    <option value="MS" data-ln="0">MS - Mississippi</option>
                    <option value="MO" data-ln="0">MO - Missouri</option>
                    <option value="MT" data-ln="0">MT - Montana</option>
                    <option value="NE" data-ln="0">NE - Nebraska</option>
                    <option value="NV" data-ln="0">NV - Nevada</option>
                    <option value="NH" data-ln="1">NH - New Hampshire</option>
                    <option value="NJ" data-ln="1">NJ - New Jersey</option>
                    <option value="NM" data-ln="1">NM - New Mexico</option>
                    <option value="NY" data-ln="0">NY - New York</option>
                    <option value="NC" data-ln="0">NC - North Carolina</option>
                    <option value="ND" data-ln="0">ND - North Dakota</option>
                    <option value="OH" data-ln="0">OH - Ohio</option>
                    <option value="OK" data-ln="1">OK - Oklahoma</option>
                    <option value="OR" data-ln="1">OR - Oregon</option>
                    <option value="PA" data-ln="1">PA - Pennsylvania</option>
                    <option value="PR" data-ln="1">PR - Puerto Rico</option>
                    <option value="RI" data-ln="1">RI - Rhode Island</option>
                    <option value="SC" data-ln="1">SC - South Carolina</option>
                    <option value="SD" data-ln="1">SD - South Dakota</option>
                    <option value="TN" data-ln="0">TN - Tennessee</option>
                    <option value="TX" data-ln="0">TX - Texas</option>
                    <option value="UT" data-ln="1">UT - Utah</option>
                    <option value="VT" data-ln="1">VT - Vermont</option>
                    <option value="VA" data-ln="1">VA - Virginia</option>
                    <option value="VI" data-ln="1">VI - Virgin Islands</option>
                    <option value="WA" data-ln="1">WA - Washington</option>
                    <option value="WV" data-ln="1">WV - West Virginia</option>
                    <option value="WI" data-ln="0">WI - Wisconsin</option>
                    <option value="WY" data-ln="0">WY - Wyoming</option>
                </select>
            </label>
        </div>
        <div class="input col col-2">
            <label>
                <input type="text" id="ZIP" name="ZIP" class="form-control" value="<TMPL_VAR NAME=ZIP>" placeholder="Zip Code" maxlength="10">
                <span class="tooltip">Zip Code</span>
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="BOOL_TITLE_NUMBER" class="form-control" name="BOOL_TITLE_NUMBER" value="<TMPL_VAR NAME=BOOL_TITLE_NUMBER>" placeholder="Title Number" maxlength="35">
                <span class="tooltip">Title Number</span> 
            </label>
        </div>
    </div>
    <div class="row">
        <div class="input col col-3">
            <label>
                <input type="text" id="VIN" name="VIN" class="form-control" value="<TMPL_VAR NAME=VIN>" placeholder="VIN" maxlength="17">
                <span class="tooltip">VIN</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="LICENSE_PLATE" class="form-control" name="LICENSE_PLATE" value="<TMPL_VAR NAME=LICENSE_PLATE>" placeholder="Plate/Tag Number" maxlength="12">
                <span class="tooltip">Plate/Tag Number</span> 
            </label>
        </div>
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
        <div class="input col col-3">
            <label>
                <input type="text" id="MAKE" class="form-control" name="MAKE" value="<TMPL_VAR NAME=MAKE>" placeholder="Make" maxlength="35">
                <span class="tooltip">Make</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="MODEL" class="form-control" name="MODEL" value="<TMPL_VAR NAME=MODEL>" placeholder="Model" maxlength="35">
                <span class="tooltip">Model</span> 
            </label>
        </div>
        <div class="input col col-1">
            <label>
                <input type="text" id="YEAR_MAKE" class="form-control" name="YEAR_MAKE" value="<TMPL_VAR NAME=YEAR_MAKE>" placeholder="Year" maxlength="4">
                <span class="tooltip">Year</span> 
            </label>
        </div>
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
                <input type="text" id="TITLE_NUMBER" class="form-control" name="TITLE_NUMBER" value="<TMPL_VAR NAME=TITLE_NUMBER>" placeholder="Title Number" maxlength="35">
                <span class="tooltip">Title Number</span> 
            </label>
        </div>
    </div>
    <div class="row">
        <div class="col col-3">
            <label>
                <input autocomplete="off" type="text" id="LICENSE_NUMBER" class="form-control" name="LICENSE_NUMBER" value="<TMPL_VAR NAME=LICENSE_NUMBER>" placeholder="Driver License Number" maxlength="35">
                <span class="tooltip">Driver License Number</span> 
                <span class="sr-only">Licenses limited to available states</span>
            </label>
        </div>
        <div class="additional-info input btn-container" id="dl-driver-license-help">
            <button type="button" id="DRIVER_LICENSE_HELP_ICO" data-clickaway="on" data-toggle="popover" data-title='Driver License Number' class="btn btn-link btn-tight info-icon svg-icon-tiny">
                <span class="sr-only">Driver License Number</span>
            </button>
            <div class="popper-content hide"> 
                <div class="popover-lexid"> 
                    <p>Licenses limited to available states</p> 
                </div>
            </div>
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
    <div id="search-options-container" class="col-sm-12">
        <div class="row">
            <h3>Additional Content</h3>
            <label class="checkbox-toggle input" for="NON_GOVERNMENTAL">
                <span class="checkbox-text">Include Non-Governmental Sources</span>
                <input type="checkbox" id="NON_GOVERNMENTAL" name="NON_GOVERNMENTAL" data-default-value="<TMPL_VAR NAME="NON_GOVERNMENTAL_DEFAULT_VALUE">" data-value="<TMPL_VAR NAME="NON_GOVERNMENTAL_VALUE">" <TMPL_IF NAME=NON_GOVERNMENTAL_CHECKED>checked="checked"</TMPL_IF>>    
                <span class="toggle pull-right" aria-hidden="true">
                    <span class="toggle-on">ON</span>
                    <span class="toggle-switch"></span>
                    <span class="toggle-off">OFF</span>
                </span>
            </label>
        </div>
        <div class="row for-radio-group for-radio-group-1">
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
</div>
<div class="modal fade" id="mvr_search_issue" aria-live="polite" role="dialog" aria-hidden="true" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="modal-title">MVR Search Issue</h4>
            </div>
            <div class="modal-body">
                <p>Your search includes one or more states which require specific additional fields.</p>
                <p>For optimal results, please enter your search term in one of the following combinations:</p>
                <ol>
                    <li>SSN</li>
                    <li>VIN</li>
                    <li>Last Name &amp; Street/Zip Code</li>
                    <li>Last Name &amp; Street/City/State</li>
                    <li>State &amp; Plate/Tag Number</li>
                </ol>
                <p>Please <a style="cursor:pointer" href="javascript:$('#mvr_search_issue').modal('hide');void(0)">edit your search terms</a>, 
                or <a style="cursor:pointer" href="javascript:mvr_continue_search();">continue with your original search</a>*.</p>
                <p>*Continuing with your original search may exclude current results from certain states.</p>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function(){
        if(dppa_value == 'Litigation' || dppa_value == 'Debt Recovery/Fraud' || dppa_value == 'Insurer' || dppa_value == 'Motor Vehicle or Driver Safety' || dppa_value == 'No Permissible Use'){
            $('#dmv-search-purpose').addClass('hidden');
        }
    });
    
    function mvr_continue_search()
    {
        $('#mvr_search_issue').modal('hide');
        show_loading();
        $('input[name="LOCAL_ONLY"]').val(1);
        send_ajax_event('SEARCH2/SEARCH_DL_REG','<TMPL_VAR NAME=ACTION_MISC>');
    };
</script>
