<script type="text/javascript">
    // Set required property for all inputs that should be required
    $(function() {
        $('#search-form-fields select, #search-form-fields input[placeholder$="*"]').filter(':enabled').prop('required', true);
        $('#propPlusMapDiv').addClass('hidden');
        if(window.sessionStorage) { 
            if (sessionStorage.getItem('map_disclaimer_confirmed') == 'yes') {
                $("#mapDiv").addClass('hidden');
                $('input[name="INCLUDE_MAPS_SAVED"]').val('yes');
            }
        }
    });

    function confirmMap() {
        if(window.sessionStorage) { 
            if (sessionStorage.getItem('map_disclaimer_confirmed') != 'yes')
                sessionStorage.setItem("map_disclaimer_confirmed", 'yes');
            else
                sessionStorage.setItem("map_disclaimer_confirmed", 'no');
        }
    }            
</script>
<div id="search-form-fields" class="col col-7">
    <div class="row padding-right-25">
        <div class="font-12 col-9_9">Combine a number of powerful searches into one easy-to-use report. Features of the report include an InstantID® identity verification search, an <abbreviation title="Office of Foreign Asset Control">OFAC</abbreviation> search, an employer validation, an address history search, and a history of the subject property.</div>
        <div class="top-spacing-10">
            <b>Select checkboxes for searches to complete</b><br />
            <div class="line-height-1_0">
              <span class="font-9_5">Information can be searched for up to two subjects. For example: Buyer and Seller, Buyer and Appraiser, etc. Property history can be entered for one property.</span>
            </div>
        </div>
        <div class="top-spacing-10">
            <input type="checkbox" name="SearchAllCbox" id="SearchAllCbox" onclick="javascript:EnableDisable(this, false);">&nbsp;<strong>Search all report options</strong><br />
        </div>

        <div class="row padding-right-25">
            <div class="col col-1 nowrap mortage-fraud-col-1">&nbsp;</div>
            <div class="col col-1 nowrap mortage-fraud-col-1">
                <b>Subject 1</b>
            </div>
            <div class="col col-2 nowrap">
                <input type="checkbox" name="IncludeInstantIDCbox_1" id="IncludeInstantIDCbox_1" onclick="javascript:EnableDisable(this, false);" checked="checked">&nbsp;InstantID<sup class="sup-reg-symbol">&reg;</sup><br />
                <input type="checkbox" name="IncludeCompanyInstantIDCbox_1" id="IncludeCompanyInstantIDCbox_1" onclick="javascript:EnableDisable(this, false);">&nbsp;Employer Validation<br />
                <input type="checkbox" name="IncludeAddressHistoryCbox_1" id="IncludeAddressHistoryCbox_1" checked="checked" onclick="javascript:EnableDisable(this, false);">&nbsp;Address History<br />
            </div>
            <div class="col col-1 nowrap mortage-fraud-col-1">
                <b>Subject 2</b>
            </div>
            <div class="col col-2 nowrap">
                <input type="checkbox" name="IncludeInstantIDCbox_2" id="IncludeInstantIDCbox_2" onclick="javascript:EnableDisable(this, false);">&nbsp;InstantID<sup class="sup-reg-symbol">&reg;</sup><br />
                <input type="checkbox" name="IncludeCompanyInstantIDCbox_2" id="IncludeCompanyInstantIDCbox_2" onclick="javascript:EnableDisable(this, false);">&nbsp;Employer Validation<br />
                <input type="checkbox" name="IncludeAddressHistoryCbox_2" id="IncludeAddressHistoryCbox_2" onclick="javascript:EnableDisable(this, false);">&nbsp;Address History<br />
            </div>
            <TMPL_UNLESS DELETE_PROPHIST_PLUS>
                <div class="col col-1 nowrap mortage-fraud-col-1">
                    &nbsp;<b>Property</b>
                </div>
            <TMPL_ELSE>
                <TMPL_UNLESS DELETE_PROPHIST_SEARCH_INDEX>
                    <div class="col col-1 nowrap mortage-fraud-col-1">
                        &nbsp;<b>Property</b>
                    </div>
                </TMPL_UNLESS>
            </TMPL_UNLESS>
            <div class="col col-2 nowrap">
                <TMPL_UNLESS DELETE_PROPHIST_PLUS>
                    <input type="checkbox" name="IncludePropertyPlusCbox" id="IncludePropertyPlusCbox" onclick="javascript:EnableDisable(this, false);">&nbsp;Property History Plus<br />
                </TMPL_UNLESS>
                <TMPL_UNLESS DELETE_PROPHIST_SEARCH_INDEX>
                    <input type="checkbox" name="IncludePropertyChronologyCbox" id="IncludePropertyChronologyCbox" onclick="javascript:EnableDisable(this, false);" checked="checked">&nbsp;Property History<br />
                </TMPL_UNLESS>
            </div>
        </div>

        <div>
            <span class="font-10"><strong class="textRed">*</strong> Entry Required</span><br />
            <span class="textRed font-12"><strong>SUBJECT 1</strong></span> <span class="font-12">(Example: Buyer)</span>
        </div>
        <div class="input col col-3">
            <label for="SSN">
                <input autocomplete="off" type="text" id="SSN" class="form-control" name="SSN" value="<TMPL_VAR NAME=SSN>" maxlength="30" placeholder="SSN *">
                <span class="tooltip">
                    SSN
                    <span class="font-10"> (e.g. 123456789, 123-45-6789, 123 45 6789)</span>
                </span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label for="LAST_NAME">
                <input type="text" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name *" class="form-control" maxlength="35">
                <span class="tooltip">Last Name *</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label for="FIRST_NAME">
                <input type="text" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name *" class="form-control" maxlength="35">
                <span class="tooltip">First Name *</span>
            </label>
        </div>
        <div class="input col col-3">
            <label for="MI">
                <input type="text" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle or Initial" class="form-control" maxlength="35">
                <span class="tooltip">Middle or Initial</span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-6">
            <label for="STREET_ADDRESS">
                <input type="text" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address *" class="form-control" maxlength="35">
                <span class="tooltip">Street Address *</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label for="CITY">
                <input type="text" id="CITY" name="CITY" value="<TMPL_VAR NAME=CITY>" placeholder="City *" class="form-control" maxlength="35">
                <span class="tooltip">City  *</span>
            </label>
        </div>
        <div class="input col col-3">
            <label for="STATE">
                <span class="sr-only">State</span>
                <select id="STATE" name="STATE" data-value="<TMPL_VAR NAME=STATE>" class="form-control">
                    <option value="">All States *</option>
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
            <label for="ZIP">
                <input type="text" id="ZIP" name="ZIP" value="<TMPL_VAR NAME=ZIP>" placeholder="Zip Code *" maxlength="10" class="form-control">
                <span class="tooltip">Zip Code *</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label for="PHONE">
                <input type="text" id="PHONE" name="PHONE" value="<TMPL_VAR NAME=PHONE>" placeholder="Phone" class="form-control" maxlength="15">
                <span class="tooltip">
                    Phone
                    <span class="font-10">(e.g. 9375550110, 937-555-0110, (937) 555-0110)</span>
                </span>
            </label>
        </div>
        <div class="input col col-3">
            <label for="DOB">
                <input type="text" id="DOB" name="DOB" value="<TMPL_VAR NAME=DOB>" placeholder="Date Of Birth" class="form-control" maxlength="10">
                <span class="tooltip">
                    Date Of Birth<br><span class="font-10">(mm/dd/yyyy)</span>
                </span>
            </label>
        </div>
    </div>    
    
    <div class="row"> 
        <div class="padding-left-5 nowrap"> 
             <table class="col-5"> 
                 <thead class="hidden"> 
                     <tr> 
                         <th aria-label="SUB1_OFAC" id="SUB1_OFAC">&nbsp;</th> 
                         <th aria-label="SUB1_OFACANDOTHER" id="SUB1_OFACANDOTHER">&nbsp;</th> 
                     </tr> 
                 </thead> 
                 <tbody> 
                     <tr> 
                         <td headers="SUB1_OFAC"> 
                             <input name="SUB1_WATCH_LIST_OPT" id="SUB1_WATCH_LIST_OFAC" checked="checked" value="1" type="radio">&nbsp;Search OFAC 
                         </td> 
                         <td headers="SUB1_OFACANDOTHER" class="padding-left-10"> 
                             <input name="SUB1_WATCH_LIST_OPT" id="SUB1_WATCH_LIST_OFAC_OTHER" value="2" type="radio">&nbsp;Search OFAC &amp; <a href="javascript:void(0);" data-helpid = "OFAC_OTHER_HELP">Other Watch Lists</a> 
                         </td> 
                     </tr> 
                 </tbody> 
             </table> 
        </div>    
    </div>
    <div class="row">
        <strong><br>Employer Validation</strong> (Subject 1)
        <div class="input col col-9">
            <label for="COMPANY_NAME">
                <input type="text" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name" class="form-control" maxlength="50">
                <span class="tooltip">Company Name</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-6">
            <label for="SUB1_EMP_STREET_ADDRESS">
                <input type="text" id="SUB1_EMP_STREET_ADDRESS" name="SUB1_EMP_STREET_ADDRESS" value="<TMPL_VAR NAME=SUB1_EMP_STREET_ADDRESS>" placeholder="Street Address *" class="form-control" maxlength="35">
                <span class="tooltip">Street Address *</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label for="SUB1_EMP_CITY">
                <input type="text" id="SUB1_EMP_CITY" name="SUB1_EMP_CITY" value="<TMPL_VAR NAME=SUB1_EMP_CITY>" placeholder="City *" class="form-control" maxlength="35">
                <span class="tooltip">City *</span>
            </label>
        </div>
        <div class="input col col-3">
            <label for="SUB1_EMP_STATE">
                <span class="sr-only">State</span>
                <select id="SUB1_EMP_STATE" name="SUB1_EMP_STATE" data-value="<TMPL_VAR NAME=SUB1_EMP_STATE>" class="form-control">
                    <option value="">All States *</option>
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
            <label for="SUB1_EMP_ZIP">
                <input type="text" id="SUB1_EMP_ZIP" name="SUB1_EMP_ZIP" value="<TMPL_VAR NAME=SUB1_EMP_ZIP>" placeholder="Zip Code *" maxlength="10" class="form-control">
                <span class="tooltip">Zip Code *</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label for="SUB1_EMP_PHONE">
                <input type="text" id="SUB1_EMP_PHONE" name="SUB1_EMP_PHONE" value="<TMPL_VAR NAME=SUB1_EMP_PHONE>" placeholder="Phone" class="form-control" maxlength="15">
                <span class="tooltip wide-tooltip">
                    Phone
                    <span class="font-10">(e.g. 9375550110, 937-555-0110, (937) 555-0110)</span>
                </span>
            </label>
        </div>
    </div>    
    <div class="row"> 
         <div class="padding-left-5 nowrap"> 
             <table class="col-5"> 
                 <thead class="hidden"> 
                     <tr> 
                         <th aria-label="SUB1_EMP_OFAC" id="SUB1_EMP_OFAC">&nbsp;</th> 
                         <th aria-label="SUB1_EMP_OFACANDOTHER" id="SUB1_EMP_OFACANDOTHER">&nbsp;</th> 
                     </tr> 
                 </thead> 
                 <tbody> 
                     <tr> 
                         <td headers="SUB1_EMP_OFAC"> 
                             <input name="SUB1_EMP_WATCH_LIST_OPT" id="SUB1_EMP_WATCH_LIST_OFAC" checked="checked" value="1" type="radio">&nbsp;Search OFAC 
                         </td> 
                         <td headers="SUB1_EMP_OFACANDOTHER" class="padding-left-10"> 
                             <input name="SUB1_EMP_WATCH_LIST_OPT" id="SUB1_EMP_WATCH_LIST_OFAC_OTHER" value="2" type="radio">&nbsp;Search OFAC &amp; <a href="javascript:void(0);" data-helpid = "OFAC_OTHER_HELP">Other Watch Lists</a>
                         </td> 
                     </tr> 
                 </tbody> 
             </table> 
         </div>
    </div>
    <div class="row">
        <div class="input col col-3 nowrap">
            <span class="textRed font-12"><strong>SUBJECT 2</strong></span> <span class="font-12">(Example: Seller or Appraiser)</span>
            <label for="SUB2_SSN">
                <input autocomplete="off" type="text" id="SUB2_SSN" name="SUB2_SSN" value="<TMPL_VAR NAME=SUB2_SSN>" placeholder="SSN *" class="form-control" maxlength="30">
                <span class="tooltip">
                    SSN *
                    <span class="font-10"> (e.g. 123456789, 123-45-6789, 123 45 6789)</span>
                </span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label for="SUB2_LAST_NAME">
                <input type="text" id="SUB2_LAST_NAME" name="SUB2_LAST_NAME" value="<TMPL_VAR NAME=SUB2_LAST_NAME>" placeholder="Last Name *" class="form-control" maxlength="35">
                <span class="tooltip">Last Name *</span>
            </label>
        </div>
        <div class="input col col-3">
            <label for="SUB2_FIRST_NAME">
                <input type="text" id="SUB2_FIRST_NAME" name="SUB2_FIRST_NAME" value="<TMPL_VAR NAME=SUB2_FIRST_NAME>" placeholder="First Name *" class="form-control" maxlength="35">
                <span class="tooltip">First Name *</span>
            </label>
        </div>
        <div class="input col col-3">
            <label for="SUB2_MI">
                <input type="text" id="SUB2_MI" name="SUB2_MI" value="<TMPL_VAR NAME=SUB2_MI>" placeholder="Middle or Initial" class="form-control" maxlength="35">
                <span class="tooltip">Middle or Initial</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-6">
            <label for="SUB2_STREET_ADDRESS">
                <input type="text" id="SUB2_STREET_ADDRESS" name="SUB2_STREET_ADDRESS" value="<TMPL_VAR NAME=SUB2_STREET_ADDRESS>" placeholder="Street Address *" class="form-control" maxlength="35">
                <span class="tooltip">Street Address *</span>
            </label>
        </div>
        <div class="col col-4">
            <label for="Subject2AddressCopyLink" class="hidden">Copy address and phone from Subject 1</label>
            <a class="mortgage-anchor" id="Subject2AddressCopyLink" href="javascript:CopyAddressAndPhone('Subject2AddressCopyLink');">Copy address and phone from Subject 1</a>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label for="SUB2_CITY">
                <input type="text" id="SUB2_CITY" name="SUB2_CITY" value="<TMPL_VAR NAME=SUB2_CITY>" placeholder="City *" class="form-control" maxlength="35">
                <span class="tooltip">City  *</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label for="SUB2_STATE">
                <span class="sr-only">State</span>
                <select id="SUB2_STATE" name="SUB2_STATE" data-value="<TMPL_VAR NAME=SUB2_STATE>" class="form-control">
                    <option value="">All States *</option>
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
            <label for="SUB2_ZIP">
                <input type="text" id="SUB2_ZIP" name="SUB2_ZIP" value="<TMPL_VAR NAME=SUB2_ZIP>" placeholder="Zip Code *" maxlength="10" class="form-control">
                <span class="tooltip">Zip Code *</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label for="SUB2_PHONE">
                <input type="text" id="SUB2_PHONE" name="SUB2_PHONE" value="<TMPL_VAR NAME=SUB2_PHONE>" placeholder="Phone" class="form-control" maxlength="15">
                <span class="tooltip wide-tooltip">
                    Phone
                    <span class="font-10">(e.g. 9375550110, 937-555-0110, (937) 555-0110)</span>
                </span>
            </label>
        </div>
        <div class="input col col-3">
            <label for="SUB2_DOB">
                <input type="text" id="SUB2_DOB" name="SUB2_DOB" value="<TMPL_VAR NAME=SUB2_DOB>" placeholder="Date Of Birth" class="form-control" maxlength="10">
                <span class="tooltip">
                    Date Of Birth<br><span class="font-10">(mm/dd/yyyy)</span>
                </span>
            </label>
        </div>
    </div>

    <div class="row">
        <div class="padding-left-5 nowrap">
            <table class="col-5">
                <thead class="hidden">
                    <tr>
                        <th aria-label="SUB2_OFAC" id="SUB2_OFAC">&nbsp;</th>
                        <th aria-label="SUB2_OFACANDOTHER" id="SUB2_OFACANDOTHER">&nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td headers="SUB2_OFAC">
                            <input name="SUB2_WATCH_LIST_OPT" id="SUB2_WATCH_LIST_OFAC" checked="checked" value="1" type="radio">&nbsp;Search OFAC
                        </td>
                        <td headers="sub2_ofacandother" class="padding-left-10">
                            <input name="SUB2_WATCH_LIST_OPT" id="SUB2_WATCH_LIST_OFAC_OTHER" value="2" type="radio">&nbsp;Search OFAC &amp; <a href="javascript:void(0);" data-helpid = "OFAC_OTHER_HELP">Other Watch Lists</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <strong><br>Employer Validation</strong> (Subject 2)
        <div class="input col col-9">
            <label for="SUB2_EMP_COMPANY_NAME">
                <input type="text" id="SUB2_EMP_COMPANY_NAME" name="SUB2_EMP_COMPANY_NAME" value="<TMPL_VAR NAME=SUB2_EMP_COMPANY_NAME>" placeholder="Company Name" class="form-control" maxlength="50">
                <span class="tooltip">Company Name</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-6">
            <label for="SUB2_EMP_STREET_ADDRESS">
                <input type="text" id="SUB2_EMP_STREET_ADDRESS" name="SUB2_EMP_STREET_ADDRESS" value="<TMPL_VAR NAME=SUB2_EMP_STREET_ADDRESS>" placeholder="Street Address *" class="form-control" maxlength="35">
                <span class="tooltip">Street Address *</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label for="SUB2_EMP_CITY">
                <input type="text" id="SUB2_EMP_CITY" name="SUB2_EMP_CITY" value="<TMPL_VAR NAME=SUB2_EMP_CITY>" placeholder="City *" class="form-control" maxlength="35">
                <span class="tooltip">City  *</span>
            </label>
        </div>
        <div class="input col col-3">
            <label for="SUB2_EMP_STATE">
                <span class="sr-only">State</span>
                <select id="SUB2_EMP_STATE" name="SUB2_EMP_STATE" data-value="<TMPL_VAR NAME=SUB2_EMP_STATE>" class="form-control">
                    <option value="">All States *</option>
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
            <label for="SUB2_EMP_ZIP">
                <input type="text" id="SUB2_EMP_ZIP" name="SUB2_EMP_ZIP" value="<TMPL_VAR NAME=SUB2_EMP_ZIP>" placeholder="Zip Code *" maxlength="10" class="form-control">
                <span class="tooltip">Zip Code *</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label for="SUB2_EMP_PHONE">
                <input type="text" id="SUB2_EMP_PHONE" name="SUB2_EMP_PHONE" value="<TMPL_VAR NAME=SUB2_EMP_PHONE>" placeholder="Phone" class="form-control" maxlength="15">
                <span class="tooltip wide-tooltip">
                    Phone
                    <span class="font-10">(e.g. 9375550110, 937-555-0110, (937) 555-0110)</span>
                </span>
            </label>
        </div>
    </div>
    <div class="row">
        <div class="padding-left-5 nowrap">
            <table class="col-5">
                <thead class="hidden"> 
                    <tr> 
                        <th aria-label="SUB2_EMP_OFAC" id="SUB2_EMP_OFAC">&nbsp;</th> 
                        <th aria-label="SUB2_EMP_OFACANDOTHER" id="SUB2_EMP_OFACANDOTHER">&nbsp;</th> 
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td headers="SUB2_EMP_OFAC"> 
                            <input name="SUB2_EMP_WATCH_LIST_OPT" id="SUB2_EMP_WATCH_LIST_OFAC" checked="checked" value="1" type="radio">&nbsp;Search OFAC 
                        </td> 
                        <td headers="SUB2_emp_ofacandother" class="padding-left-10">  
                            <input name="SUB2_EMP_WATCH_LIST_OPT" id="SUB2_EMP_WATCH_LIST_OFAC_OTHER" value="2" type="radio">&nbsp;Search OFAC &amp;  <a href="javascript:void(0);" data-helpid = "OFAC_OTHER_HELP">Other Watch Lists</a>
                        </td> 
                    </tr> 
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="HID_SELECTED_SEARCHES" name="HID_SELECTED_SEARCHES" value="<TMPL_IF NAME=SEARCHALLCBOX>SearchAllCbox#</TMPL_IF><TMPL_IF NAME=INCLUDEINSTANTIDCBOX_1>IncludeInstantIDCbox_1#</TMPL_IF><TMPL_IF NAME=IncludeCompanyInstantIDCbox_1>IncludeCompanyInstantIDCbox_1#</TMPL_IF><TMPL_IF NAME=IncludeAddressHistoryCbox_1>IncludeAddressHistoryCbox_1#</TMPL_IF><TMPL_IF NAME=IncludeInstantIDCbox_2>IncludeInstantIDCbox_2#</TMPL_IF><TMPL_IF NAME=IncludeCompanyInstantIDCbox_2>IncludeCompanyInstantIDCbox_2#</TMPL_IF><TMPL_IF NAME=IncludeAddressHistoryCbox_2>IncludeAddressHistoryCbox_2#</TMPL_IF><TMPL_IF NAME=IncludePropertyPlusCbox>IncludePropertyPlusCbox#</TMPL_IF><TMPL_IF NAME=IncludePropertyChronologyCbox>IncludePropertyChronologyCbox#</TMPL_IF><TMPL_IF NAME=SUB1_WATCH_LIST_OPT>SUB1_WATCH_LIST_OPT-<TMPL_VAR NAME=SUB1_WATCH_LIST_OPT>#</TMPL_IF><TMPL_IF NAME=SUB1_EMP_WATCH_LIST_OPT>SUB1_EMP_WATCH_LIST_OPT-<TMPL_VAR NAME=SUB1_EMP_WATCH_LIST_OPT>#</TMPL_IF><TMPL_IF NAME=SUB2_WATCH_LIST_OPT>SUB2_WATCH_LIST_OPT-<TMPL_VAR NAME=SUB2_WATCH_LIST_OPT>#</TMPL_IF><TMPL_IF NAME=SUB2_EMP_WATCH_LIST_OPT>SUB2_EMP_WATCH_LIST_OPT-<TMPL_VAR NAME=SUB2_EMP_WATCH_LIST_OPT>#</TMPL_IF>" class="form-control">
            </label>
        </div>
    </div>
    <TMPL_IF DELETE_PROPHIST_SEARCH_INDEX>
        <TMPL_UNLESS DELETE_PROPHIST_PLUS>
            <TMPL_INCLUDE NAME="mortgage_fraud_report_property_fields.tpl">    
        </TMPL_UNLESS>
    <TMPL_ELSE>
        <TMPL_INCLUDE NAME="mortgage_fraud_report_property_fields.tpl">    
    </TMPL_IF>
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
