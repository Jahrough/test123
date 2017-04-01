<div class="row">
    <br />
    <span class="font-12 textRed"><strong id="mortgage-prop-hist" name="mortgage-prop-hist"> PROPERTY HISTORY<TMPL_IF DELETE_PROPHIST_SEARCH_INDEX><TMPL_UNLESS DELETE_PROPHIST_PLUS> PLUS</TMPL_UNLESS></TMPL_IF></strong></span> <span class="font-12">(Requires complete address OR a valid APN)<br></span>

    <div class="input col col-6">
        <label for="MPH_STREET_ADDRESS">
            <input type="text" id="MPH_STREET_ADDRESS" name="MPH_STREET_ADDRESS" value="<TMPL_VAR NAME=MPH_STREET_ADDRESS>" placeholder="Street Address *" class="form-control" maxlength="35">
            <span class="tooltip">Street Address *</span>
        </label>
    </div>
    <div class="col col-4">
        <label class="hidden" for="PropAddressCopyLinkSubject1">Copy Address from Subject 1 or Subject 2</label>
        Copy Address from <a class="mortgage-anchor nowrap" id="PropAddressCopyLinkSubject1" href="javascript:CopyAddressAndPhone('PropAddressCopyLinkSubject1');">Subject 1</a> or <a class="mortgage-anchor nowrap" id="PropAddressCopyLinkSubject2" href="javascript:CopyAddressAndPhone('PropAddressCopyLinkSubject2');">Subject 2</a>
    </div>
</div>
<div class="row">
    <div class="input col col-3">
        <label for="MPH_CITY">
            <input type="text" id="MPH_CITY" name="MPH_CITY" value="<TMPL_VAR NAME=MPH_CITY>" placeholder="City *" class="form-control" maxlength="35">
            <span class="tooltip">City  *</span>
        </label>
    </div>
    <div class="select col col-3">
        <label for="MPH_STATE">
            <select id="MPH_STATE" name="MPH_STATE" class="form-control" data-value="<TMPL_VAR NAME=MPH_STATE>">
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
        <label for="MPH_ZIP">
            <input type="text" id="MPH_ZIP" name="MPH_ZIP" value="<TMPL_VAR NAME=MPH_ZIP>" placeholder="Zip Code *" maxlength="10" class="form-control">
            <span class="tooltip">Zip Code *</span>
        </label>
    </div>
</div>
<div class="row">
    <strong>OR</strong><br />
    <div class="input col col-6">
        <label for="PARCEL">
            <input type="text" id="PARCEL" name="PARCEL" value="<TMPL_VAR NAME=PARCEL>" placeholder="Assessor Parcel Number*" maxlength="55" class="form-control">
            <span class="tooltip">Assessor Parcel Number *</span>
        </label>
    </div>
</div>
<div id="propPlusMapDiv">
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
