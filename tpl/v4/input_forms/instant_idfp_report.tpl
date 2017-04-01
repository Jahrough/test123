<div id="search-form-fields" class="col col-<TMPL_IF WEB20_START_PAGE>8<TMPL_ELSE>7</TMPL_IF>">
    <div class="instant_id_options_text clearafter">
        <div class="pull-left">
            * Entry Required - 
        </div>
        <div class="pull-left">
            <span class="font-12">
                <ul class="padding-left-5" style="list-style-type:none">
                    <li>Option 1: Last Name, First Name, Street, Zip  (preferred)</li>
                    <li>Option 2: SSN, Last Name, First Name</li>
                </ul>
            </span>
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
        <div class="input col col-1_<TMPL_IF WEB20_START_PAGE>25<TMPL_ELSE>1</TMPL_IF>">
            <label>
                <input type="text" id="DOB_M" class="form-control" name="DOB_M" value="<TMPL_VAR NAME=DOB_M>" placeholder="DOB:MM" maxlength="2" onkeyup="show_or_hide_birth_range()">
                <span class="tooltip">DOB:MM</span>
            </label>
        </div>
        <div class="input col col-1_<TMPL_IF WEB20_START_PAGE>25<TMPL_ELSE>1</TMPL_IF>">
            <label>
                <input type="text" id="DOB_D" class="form-control" name="DOB_D" value="<TMPL_VAR NAME=DOB_D>" placeholder="DOB:DD" onkeyup="show_or_hide_birth_range()" maxlength="2">
                <span class="tooltip">DOB:DD</span>
            </label>
        </div>
        <div class="input col col-1_<TMPL_IF WEB20_START_PAGE>5<TMPL_ELSE>25</TMPL_IF>">
            <label>
                <input type="text" id="DOB_Y" class="form-control" name="DOB_Y" value="<TMPL_VAR NAME=DOB_Y>" placeholder="DOB:YYYY" maxlength="4" onkeyup="show_or_hide_birth_range()">
                <span class="tooltip">DOB:YYYY</span>
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
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input type="text" id="NAME_SUFFIX" class="form-control" name="NAME_SUFFIX" value="<TMPL_VAR NAME=NAME_SUFFIX>" placeholder="Suffix" maxlength="40">
                <span class="tooltip">Suffix</span> 
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
        <div class="input col col-3">
            <label>
                <input type="text" id="IP_ADD" name="IP_ADD" value="<TMPL_VAR NAME=IP_ADD>" class="form-control" placeholder="IP Address" maxlength="35">
                <span class="tooltip">
                    IP Address
                    <span class="font-10">(ex: 00.000.000.00)</span>
                </span>
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
        <div class="input col col-3">
            <label>
                <span class="sr-only">License State</span>
                <select id="LICENSE_STATE" name="LICENSE_STATE" data-value="<TMPL_VAR NAME=LICENSE_STATE>" class="form-control">
                    <option value="">Select License State</option>
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
    <fieldset class="radiogroup" id="watchListInfo">
        <legend>
            <span aria-hidden="true">Watch Lists</span>
            <span class="sr-only">Select a watch list type</span>
        </legend>
        <input name="WATCH_LIST_OPT" type="radio" id="WATCH_LIST_OFAC" onclick="toggle_watchlist(1)" value="1" />
        <label class="radio-inline" for="WATCH_LIST_OFAC">OFAC</label>
        <input name="WATCH_LIST_OPT" type="radio" id="WATCH_LIST_OFAC_GLOB" onclick="toggle_watchlist(2)" value="2" />
        <label class="radio-inline" for="WATCH_LIST_OFAC_GLOB">OFAC &amp; Global Sanctions Lists</label>
        <input name="WATCH_LIST_OPT" type="radio" id="WATCH_LIST_FARA" onclick="toggle_watchlist(3)" value="3" />
        <label class="radio-inline" for="WATCH_LIST_FARA">FARA &amp; PEP</label>
        <input name="WATCH_LIST_OPT" type="radio" id="WATCH_LIST_NONE" onclick="toggle_watchlist(4)" value="4" />
        <label class="radio-inline" for="WATCH_LIST_NONE">None</label>
    </fieldset>  
    <div class="row">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="HID_WATCH_LIST_OPT" name="HID_WATCH_LIST_OPT" value="<TMPL_VAR NAME=WATCH_LIST_OPT>" class="form-control">
            </label>
        </div>
    </div>
    <div class="row">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="HID_SELECTED_OPTS" name="HID_SELECTED_OPTS" value="<TMPL_IF NAME=GLOB_ALLSACTIONS>GLOB_ALLSACTIONS|</TMPL_IF><TMPL_IF NAME=GLOB_OFAC>GLOB_OFAC|</TMPL_IF><TMPL_IF NAME=GLOB_COMMO>GLOB_COMMO|</TMPL_IF><TMPL_IF NAME=GLOB_DTC>GLOB_DTC|</TMPL_IF><TMPL_IF NAME=GLOB_EUDT>GLOB_EUDT|</TMPL_IF><TMPL_IF NAME=GLOB_FBI>GLOB_FBI|</TMPL_IF><TMPL_IF NAME=GLOB_FAR2>GLOB_FAR2|</TMPL_IF><TMPL_IF NAME=GLOB_FCEN>GLOB_FCEN|</TMPL_IF><TMPL_IF NAME=GLOB_MAJESTY>GLOB_MAJESTY|</TMPL_IF><TMPL_IF NAME=GLOB_MOST_WANTED>GLOB_MOST_WANTED|</TMPL_IF><TMPL_IF NAME=GLOB_CONTROLLER>GLOB_CONTROLLER|</TMPL_IF><TMPL_IF NAME=GLOB_OSFI>GLOB_OSFI|</TMPL_IF><TMPL_IF NAME=GLOB_PEP>GLOB_PEP|</TMPL_IF><TMPL_IF NAME=GLOB_TERROR>GLOB_TERROR|</TMPL_IF><TMPL_IF NAME=GLOB_UNNT>GLOB_UNNT|</TMPL_IF><TMPL_IF NAME=GLOB_USIS>GLOB_USIS|</TMPL_IF><TMPL_IF NAME=GLOB_FIRMS>GLOB_FIRMS|</TMPL_IF><TMPL_IF NAME=FAR_CHECK>FAR_CHECK|</TMPL_IF><TMPL_IF NAME=PEP_CHECK>PEP_CHECK|</TMPL_IF>" class="form-control">
            </label>
        </div>
    </div>    
    <div class="row">
        <div id="instantid_birthdate" class="col col-6 pull-left">
            <div class="additional-info hidden">
                <span>Birth year range:</span>
            </div>
            <div class="additional-info hidden">
                <label for="LBY_RADIUS_REF">
                    <span class="sr-only">Birth year range</span>
                    <select id="LBY_RADIUS_REF" name="LBY_RADIUS_REF" class="form-control" data-value="<TMPL_VAR NAME=LBY_RADIUS_REF>">
                        <option value="" >Exact Year</option>
                        <option value="1">+/- 1 year</option>
                        <option value="2" selected="selected">+/- 2 years</option>
                        <option value="3">+/- 3 years</option>
                        <option value="4">+/- 4 years</option>
                        <option value="5">+/- 5 years</option>
                    </select>
                </label>
            </div>
            <div class="additional-info input btn-container">
                <button type="button" id="BIRTH_RADIUS_HELP_ICO" data-clickaway="on" data-toggle="popover" data-title='Year of Birth Radius Help' class="btn btn-link btn-tight info-icon svg-icon-tiny">
                    <span class="sr-only">Description</span>
                </button>
                <div class="popper-content hide">
                    <div class="popover-lexid">
                        <p>Activating this option will allow you to reduce false positives on the OFAC list and other interdiction lists by including a year of birth range in the input.</p>
                        <p>For example, if the input date of birth is within +/- 3 years of the date of birth on the OFAC file, it will be considered a hit; otherwise it will be considered a miss.</p>
                        <p>Activating this option does NOT affect InstantID&reg; results.  It is only used to reduce false positives on interdiction list searches.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>    
    <div class="row">
        <script type="text/javascript">
            $(function () {
                $('#watchlists_global').click();
                $('#watchlists_global').click(function () {
                    if ($('#watchlists_global_more').hasClass('hidden')) {
                        $('#watchlists_global_more').removeClass('hidden');
                        $('#watchlists_global').removeClass('collapsed');
                    } else {
                        $('#watchlists_global_more').addClass('hidden');
                        $('#watchlists_global').addClass('collapsed');
                    }
                });

                $('#farapep-watchlists').click();
                $('#farapep-watchlists').click(function () {
                    if ($('#watchlist_fara_more').hasClass('hidden')) {
                        $('#watchlist_fara_more').removeClass('hidden');
                        $('#farapep-watchlists').removeClass('collapsed');
                    } else {
                        $('#watchlist_fara_more').addClass('hidden');
                        $('#farapep-watchlists').addClass('collapsed');
                    }
                });
                $('#GLOB_ALLSACTIONS').change(function () {
                    if ($(this).is(':checked')) {
                        $('#watchlist_global').find(':checkbox').prop('checked', true);
                    } else {
                        $('#watchlist_global').find(':checkbox').removeAttr('checked');
                    }
                });
                $('#watchlists_global_more :checkbox').not('#watchlists_global_more #GLOB_ALLSACTIONS').click(function(){
                    if ($('#watchlists_global_more').find(":checkbox:checked").not('#watchlists_global_more #GLOB_ALLSACTIONS').length == 15){
                        $('#GLOB_ALLSACTIONS').prop('checked', true);
                    } else {
                        if ($('#GLOB_ALLSACTIONS').is(':checked')) {
                            $('#GLOB_ALLSACTIONS').removeAttr('checked');
                        }
                    }
                });
            });
        </script>
        <div class="hidden" id="watchlists_container">
            <div id='watchlists-info'>
                <div id="watchlists_more" class="clear col col-9 collapse in">
                    <div id="watchlist_fara" class="clear col col-9 collapse in hidden">
                        <div class="col col-9">
                            <button type="button" id="farapep-watchlists" class="btn btn-link">
                                <strong><span>FARA &amp; PEP</span></strong>
                                <span class="show-hidden-data-icon"></span>
                            </button><br />
                        </div>
                        <div id="watchlist_fara_more" class="clear col col-9 collapse in hidden">
                            <ul class="unmarked_list">
                                <li>
                                    <label for="FAR_CHECK" class="check">
                                        <input type="checkbox" name="FAR_CHECK" id="FAR_CHECK" checked="checked"><span>Foreign Agent Registrations</span>
                                    </label>
                                </li>
                                <li>
                                    <label for="PEP_CHECK" class="check">
                                        <input type="checkbox" name="PEP_CHECK" id="PEP_CHECK" checked="checked"><span>Politically Exposed Persons</span>
                                    </label>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div id="watchlist_global" class="hidden">
                        <div class="col col-9">
                            <button type="button" id="watchlists_global" class="btn btn-link">
                                <strong><span>OFAC &amp; Global Sanctions Watch Lists: All</span></strong>
                                <span class="show-hidden-data-icon"></span>
                            </button>
                        </div>
                        <div id="watchlists_global_more" class="clear col col-9 collapse in hidden">
                            <ul class="unmarked_list">
                                <li>
                                    <label for="GLOB_ALLSACTIONS" class="check">
                                        <input type="checkbox" name="GLOB_ALLSACTIONS" id="GLOB_ALLSACTIONS" checked="checked">
                                        <span>All</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_OFAC" class="check">
                                        <input type="checkbox" name="GLOB_OFAC" id="GLOB_OFAC" checked="checked">
                                        <span>OFAC - Office of Foreign Assets Control</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_COMMO" class="check">
                                        <input type="checkbox" name="GLOB_COMMO" id="GLOB_COMMO" checked="checked">
                                        <span>Commodity Futures Trading Commission List of Regulatory &amp; Self-Regulatory Authorities</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_DTC" class="check">
                                        <input type="checkbox" name="GLOB_DTC" id="GLOB_DTC" checked="checked">
                                        <span>Defense Trade Controls (DTC) Debarred Parties</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_EUDT" class="check">
                                        <input type="checkbox" name="GLOB_EUDT" id="GLOB_EUDT" checked="checked">
                                        <span>European Union Designated Terrorists</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_FBI" class="check">
                                        <input type="checkbox" name="GLOB_FBI" id="GLOB_FBI" checked="checked">
                                        <span>Federal Bureau of Investigations (FBI) Lists</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_FAR2" class="check">
                                        <input type="checkbox" name="GLOB_FAR2" id="GLOB_FAR2" checked="checked">
                                        <span>Foreign Agent Registrations Act</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_FCEN" class="check">
                                        <input type="checkbox" name="GLOB_FCEN" id="GLOB_FCEN" checked="checked">
                                        <span>Financial Crimes Enforcement Network Special Alert List </span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_MAJESTY" class="check">
                                        <input type="checkbox" name="GLOB_MAJESTY" id="GLOB_MAJESTY" checked="checked">
                                        <span>Her Majesty's Treasury's Consolidated List of Financial Sanctions Targets</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_MOST_WANTED" class="check">
                                        <input type="checkbox" name="GLOB_MOST_WANTED" id="GLOB_MOST_WANTED" checked="checked">
                                        <span>International Police Most Wanted and Red Alerts</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_CONTROLLER" class="check">
                                        <input type="checkbox" name="GLOB_CONTROLLER" id="GLOB_CONTROLLER" checked="checked">
                                        <span>Office of Controller of Currency - Unauthorized Banks</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_OSFI" class="check">
                                        <input type="checkbox" name="GLOB_OSFI" id="GLOB_OSFI" checked="checked">
                                        <span>OSFI - Canada</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_PEP" class="check">
                                        <input type="checkbox" name="GLOB_PEP" id="GLOB_PEP" checked="checked">
                                        <span>Politically Exposed Persons</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_TERROR" class="check">
                                        <input type="checkbox" name="GLOB_TERROR" id="GLOB_TERROR" checked="checked">
                                        <span>State Department Terrorist Exclusions</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_UNNT" class="check">
                                        <input type="checkbox" name="GLOB_UNNT" id="GLOB_UNNT" checked="checked">
                                        <span>United Nations Named Terrorists</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_USIS" class="check">
                                        <input type="checkbox" name="GLOB_USIS" id="GLOB_USIS" checked="checked">
                                        <span>US Bureau of Industry &amp; Security - Unverified Entities, Denied Entities and Denied Persons
                                            List</span>
                                    </label>
                                </li>
                                <li class="padding-left-15">
                                    <label for="GLOB_FIRMS" class="check">
                                        <input type="checkbox" name="GLOB_FIRMS" id="GLOB_FIRMS" checked="checked">
                                        <span>World Bank Ineligible Firms</span>
                                    </label>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    
    <div class="row">
        <script type="text/javascript">
            $(function () {
                $('#passportsorvisa').click();
                $('#passportsorvisa').click(function () {
                    if ($('#passportorvisa_more').hasClass('hidden')) {
                        $('#passportorvisa_more').removeClass('hidden');
                        $('#passportsorvisa').removeClass('collapsed');
                    } else {
                        $('#passportorvisa_more').addClass('hidden');
                        $('#passportsorvisa').addClass('collapsed');
                    }
                });
            });
        </script>
        <div id='passportorvisa-info'>
            <div class="col col-9">
                <button type="button" id="passportsorvisa" class="btn btn-link">
                    <strong>Format Validation: <span id='passportorvisa-selected'>Passport</span></strong>
                    <span class="show-hidden-data-icon"></span>
                </button>
            </div>

            <div id="passportorvisa_more" class="clear col col-9 collapse in">
                <div class="row padding-left-10">
                    <div class="input col col-6">
                        <label>
                            <input type="text" id="MACHINE_READONE" name="MACHINE_READONE" value="<TMPL_VAR NAME=MACHINE_READONE>" placeholder="Passport upper line (Format validation only)" class="form-control">
                            <span class="tooltip">
                                Passport upper line (Format validated only)
                                <span class="font-10">(P&lt;UTOERIKSSON&lt;&lt;ANNA&lt;MARIA&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;)</span>
                            </span>
                        </label>
                    </div>
                </div>

                <div class="row padding-left-10">
                    <div class="input col col-6">
                        <label>
                            <input type="text" id="MACHINE_READTWO" name="MACHINE_READTWO" value="<TMPL_VAR NAME=MACHINE_READTWO>" placeholder="Passport lower line (Format validation only)" class="form-control">
                            <span class="tooltip">
                                Passport lower line (Format validated only)
                                <span class="font-10">(L898902C&lt;3UTO6908061F9406236ZE184226B&lt;&lt;&lt;&lt;&lt;14)</span>
                            </span>
                        </label>
                    </div>
                </div>
                <div class="row padding-left-10">
                    <div class="input col col-2" >
                        <label>
                            <span class="sr-only">Gender</span>
                            <select name="PASSPORT_GENDER" id="PASSPORT_GENDER" data-value="<TMPL_VAR NAME=PASSPORT_GENDER>" class="form-control">
                                <option value="">Select Gender</option>
                                <option value="Female">Female</option>
                                <option value="Male">Male</option>
                                <option value="Not Specified">Not Specified</option>
                            </select>
                        </label>
                    </div>
                    <div class="col col-6">
                        <span class="font-10">(For passport validation, passport upper and lower lines, DOB, and Gender are required.)</span>
                    </div>
                </div>
            </div>
        </div>
    </div>    
    <div class="row">
    </div>    
    <div class="row">
    </div>    
</div>
<div class="col col-<TMPL_IF WEB20_START_PAGE>2<TMPL_ELSE>3</TMPL_IF>" id="search-options">
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
    <div id="instandidextlink" class="instand-ext-link">
        <a target="_blank" href="http://www.aba.com/default.htm">
            <img id="show_aba_image" name="show_aba_image" border="0" alt="Endorsed by the American Bankers Association" src="<TMPL_VAR NAME=IMGPATH>/logo_sponsor_ABA.gif" />
        </a>
    </div>
</div>
