<script>
    var input_group_arr = [
        ['STREET_ADDRESS', 'CITY', 'STATE', 'ZIP'],
        ['PARCEL']
    ];

    $(function() {
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
    <fieldset class="row">
        <legend class="sr-only">Change search type</legend>
        <p>* Entry Required. For Optimal results Address, Zip OR Address, City, State OR APN should be populated. <a onclick="javascript:window.open('https://risk.nexis.com/AMLSolutions/help/Fees_Apply.htm', 'help', 'width=800,height=600,left=25,top=25,scrollbars=yes,menubar=no,resizable=yes'); return false;" href="#">$ Additional Fees Apply</a>.</p>
        <label class="col col-3">
            <input type="radio" id="input-group-1" name="input-group" <TMPL_IF NAME="FORM_SEARCH">checked="checked"</TMPL_IF> onclick="refresh_input_group()" data-idx="1" value="FORM_SEARCH">
            <span>Find by Address</span>
        </label>
        <label class="col col-6">
            <input type="radio" id="input-group-2" name="input-group" <TMPL_UNLESS NAME="FORM_SEARCH">checked="checked"</TMPL_UNLESS> onclick="refresh_input_group()" data-idx="2" value="NOT_FORM_SEARCH">
            <span>Find by Assessor Parcel Number (APN)</span>
        </label>
    </fieldset>
    <div class="row">
        <div class="input col col-6">
            <label>
                <input type="text" id="STREET_ADDRESS" class="form-control" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address *" maxlength="35">
                <span class="tooltip">Street Address * <span class="font-10"> (e.g. 123 Main St Apt 1)</span></span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input type="text" id="CITY" class="form-control" name="CITY" value="<TMPL_VAR NAME=CITY>" placeholder="City" maxlength="35">
                <span class="tooltip">City</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <select id="STATE" name="STATE" class="form-control" data-value="<TMPL_VAR NAME=STATE>">
                    <option value="">State</option>
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
                <span class="hidden-label">State</span>
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
                <input type="text" id="PARCEL" name="PARCEL" value="<TMPL_VAR NAME=PARCEL>" placeholder="Assessor Parcel Number *" class="form-control" maxlength="55">
                <span class="tooltip">Assessor Parcel Number *</span>
            </label>
        </div>     
    </div>    
    <div id="mapDiv" class="row">
        <div class="input col">
        <input type="hidden" name="INCLUDE_MAPS_SAVED" value="no"/>
        <br/>
        <label>
            <input type="checkbox" value="yes" name="INCLUDE_MAPS" id="INCLUDE_MAPS" onclick="javascript:confirmMap();">
            By accessing the mapping feature, you agree to abide by the terms and conditions of the <a onclick="javascript:window.open('https://risk.nexis.com/AMLSolutions/mapping/map_license_text.htm', 'help', 'width=800,height=600,left=25,top=25,scrollbars=yes,menubar=no,resizable=yes'); return false;" href="#">license agreement</a>. Important - Read carefully before accessing this product feature. The mapping services are provided by a third party, and are not created, owned or controlled by LexisNexis&reg; Risk Solutions Florida. Your inputs into the mapping service will be redirected to a third party external site. You may cease use of the mapping service at any time. Be advised that LexisNexis&reg; Risk Solutions Florida does not control, screen, alter or modify the content of the mapping services and cannot control the availability or functionality of the mapping service. The mapping service is provided &quot;as is, as available.&quot;
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
</div>
