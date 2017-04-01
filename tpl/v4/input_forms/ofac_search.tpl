<div id="search-form-fields" class="col col-7">
    <div class="row">
        <div class="input col col-5">
            <label>
                <input type="text" id="OFAC_NAME" class="form-control" name="OFAC_NAME" value="<TMPL_VAR NAME=OFAC_NAME>" placeholder="Name (Person's, Company or a Vessel Name)" maxlength="150">
                <span class="tooltip">Name</span> 
            </label>
        </div>
        <div class="input col col-2">
            <label>
                <span class="sr-only">OFAC Search Type</span>
                <select id="OFAC_SEARCHTYPE" name="OFAC_SEARCHTYPE" class="form-control" data-value="<TMPL_VAR NAME=OFAC_SEARCHTYPE>">
                    <option value="I">Individual</option>
                    <option value="N">Non-Individual</option>
                    <option value="B">Both</option>
                </select>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <span class="form-control-label">Name Threshold</span>
                <select id="OFAC_THRESHOLD" name="OFAC_THRESHOLD" class="form-control col-4 inline-display" style="margin-left: 10px;" data-value="<TMPL_VAR NAME=OFAC_THRESHOLD>">
                    <option value="1">100%</option>
                    <option value="0.98">98%</option>
                    <option value="0.96">96%</option>
                    <option value="0.94">94%</option>
                    <option value="0.92">92%</option>
                    <option value="0.90">90%</option>
                    <option value="0.88">88%</option>
                    <option value="0.86">86%</option>
                    <option value="0.84">84%</option>
                    <option value="0.82">82%</option>
                    <option value="0.80">80%</option>
                    <option value="0.75">75%</option>
                    <option value="0.70">70%</option>
                </select>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <span class="sr-only">Country</span>
                <select id="COUNTRY" name="COUNTRY" class="form-control" data-value="<TMPL_VAR NAME="COUNTRY">" style="display:inline">
                    <option value="">All Countries</option>
                    <option value="Afghanistan">Afghanistan</option>
                    <option value="Albania">Albania</option>
                    <option value="Algeria">Algeria</option>
                    <option value="Angola">Angola</option>
                    <option value="Argentina">Argentina</option>
                    <option value="Aruba">Aruba</option>
                    <option value="Austria">Austria</option>
                    <option value="Azerbaijan">Azerbaijan</option>
                    <option value="Bahamas The">Bahamas</option>
                    <option value="Bahrain">Bahrain</option>
                    <option value="Bangladesh">Bangladesh</option>
                    <option value="Barbados">Barbados</option>
                    <option value="Belgium">Belgium</option>
                    <option value="Belize">Belize</option>
                    <option value="Bolivia">Bolivia</option>
                    <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                    <option value="Brazil">Brazil</option>
                    <option value="Bulgaria">Bulgaria</option>
                    <option value="Burma">Burma</option>
                    <option value="Canada">Canada</option>
                    <option value="Cayman Islands">Cayman Islands</option>
                    <option value="Central African Republic">Central African Republic</option>
                    <option value="Chad">Chad</option>
                    <option value="Chile">Chile</option>
                    <option value="China">China</option>
                    <option value="Colombia">Colombia</option>
                    <option value="Comoros">Comoros</option>
                    <option value="Congo Democratic Republic of the">Congo, Democratic Republic of the</option>
                    <option value="Costa Rica">Costa Rica</option>
                    <option value="Croatia">Croatia</option>
                    <option value="Cuba">Cuba</option>
                    <option value="Cyprus">Cyprus</option>
                    <option value="Czech Republic">Czech Republic</option>
                    <option value="Denmark">Denmark</option>
                    <option value="Dominican Republic">Dominican Republic</option>
                    <option value="Ecuador">Ecuador</option>
                    <option value="Egypt">Egypt</option>
                    <option value="Equatorial Guinea">Equatorial Guinea</option>
                    <option value="Eritrea">Eritrea</option>
                    <option value="Ethiopia">Ethiopia</option>
                    <option value="France">France</option>
                    <option value="Gambia The">Gambia, The</option>
                    <option value="Georgia">Georgia</option>
                    <option value="Germany">Germany</option>
                    <option value="Greece">Greece</option>
                    <option value="Guatemala">Guatemala</option>
                    <option value="Guyana">Guyana</option>
                    <option value="Haiti">Haiti</option>
                    <option value="Honduras">Honduras</option>
                    <option value="Hong Kong">Hong Kong</option>
                    <option value="India">India</option>
                    <option value="Indonesia">Indonesia</option>
                    <option value="Iran">Iran</option>
                    <option value="Iraq">Iraq</option>
                    <option value="Ireland">Ireland</option>
                    <option value="Israel">Israel</option>
                    <option value="Italy">Italy</option>
                    <option value="Ivory Coast">Ivory Coast</option>
                    <option value="Jamaica">Jamaica</option>
                    <option value="Japan">Japan</option>
                    <option value="Jordan">Jordan</option>
                    <option value="Kazakhstan">Kazakhstan</option>
                    <option value="Kenya">Kenya</option>
                    <option value="Kuwait">Kuwait</option>
                    <option value="Lebanon">Lebanon</option>
                    <option value="Liberia">Liberia</option>
                    <option value="Libya">Libya</option>
                    <option value="Liechtenstein">Liechtenstein</option>
                    <option value="Malaysia">Malaysia</option>
                    <option value="Malta">Malta</option>
                    <option value="Mexico">Mexico</option>
                    <option value="Morocco">Morocco</option>
                    <option value="Moldova">Moldova</option>
                    <option value="Netherlands">Netherlands</option>
                    <option value="Nicaragua">Nicaragua</option>
                    <option value="Nigeria">Nigeria</option>
                    <option value="North Korea">North Korea</option>
                    <option value="Palestinian">Palestinian</option>
                    <option value="Pakistan">Pakistan</option>
                    <option value="Panama">Panama</option>
                    <option value="Paraguay">Paraguay</option>
                    <option value="Peru">Peru</option>
                    <option value="Poland">Poland</option>
                    <option value="Qatar">Qatar</option>
                    <option value="Russia">Russia</option>
                    <option value="Rwanda">Rwanda</option>
                    <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                    <option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
                    <option value="Saudi Arabia">Saudi Arabia</option>
                    <option value="Serbia and Montenegro">Serbia and Montenegro</option>
                    <option value="Sierra Leone">Sierra Leone</option>
                    <option value="Somalia">Somalia</option>
                    <option value="South Africa">South Africa</option>
                    <option value="Spain">Spain</option>
                    <option value="Sudan">Sudan</option>
                    <option value="Sweden">Sweden</option>
                    <option value="Switzerland">Switzerland</option>
                    <option value="Syria">Syria</option>
                    <option value="Tajikistan">Tajikistan</option>
                    <option value="Tanzania">Tanzania</option>
                    <option value="Thailand">Thailand</option>
                    <option value="Tunisia">Tunisia</option>
                    <option value="Turkey">Turkey</option>
                    <option value="Uganda">Uganda</option>
                    <option value="United Arab Emirates">United Arab Emirates</option>
                    <option value="United Kingdom">United Kingdom</option>
                    <option value="United States">United States</option>
                    <option value="Uzbekistan">Uzbekistan</option>
                    <option value="Vanuatu">Vanuatu</option>
                    <option value="Venezuela">Venezuela</option>
                    <option value="Virgin Islands British">Virgin Islands British</option>
                    <option value="West Bank">West Bank</option>
                    <option value="Yemen">Yemen</option>
                    <option value="Zimbabwe">Zimbabwe</option>
                </select>
            </label>
        </div>
        <div class="additional-info">
            <a id="OFAC_WATCHLIST_HELP_ICO" class="help-search help-icon svg-icon-tiny" href="#">
                <span class="tooltip centered">OFAC Help</span>
            </a>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-1_5">
            <label>
                <input type="text" id="DOB" class="form-control" name="DOB" value="<TMPL_VAR NAME=DOB>" placeholder="Date of Birth" maxlength="10" style="width:10em">
                <span class="tooltip">
                    Date of Birth
                    <br />
                    <span class="font-10">(mm/dd/yyyy)</span>
                </span> 
            </label>
        </div>
    </div>
    
    <div class="row">
	<div class="col col-9_5">
	    <fieldset class="radiogroup" id="watchListInfo">
		<legend>
		    <span aria-hidden="true">Watch Lists</span>
		    <span class="sr-only">Select a watch list type</span>
		</legend>
	    </fieldset>
	</div>
    </div>
    
    <div class="row">
        <div class="input col col-1_5">
            <label>
                <input type="radio" name="OFAC_WATCHLISTS" <TMPL_IF OFAC_WATCHLISTS_OFAC>checked="checked"</TMPL_IF> value="OFAC">
                <span>OFAC</span>
            </label>
        </div>
        <div class="input col col-5">
            <label style="display:inline;">
                <input type="radio" name="OFAC_WATCHLISTS" <TMPL_IF OFAC_WATCHLISTS_ALL>checked="checked"</TMPL_IF> value="ALL">
                <span>OFAC &amp; Other Watch Lists</span>
            </label>
            <div class="additional-info">
                <a id="OFAC_OTHER_HELP_ICO" class="help-search help-icon svg-icon-tiny" data-helpid="OFAC_OTHER_HELP" href="#"><span class="tooltip centered">OFAC &amp; Other Watch Lists Help</span></a>
            </div>
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
