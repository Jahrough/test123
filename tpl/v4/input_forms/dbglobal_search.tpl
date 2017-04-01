<script type="text/javascript">
function handle_country_state_linkage(country_val){
    if (country_val !== 'USA'){
        $('#STATE option:first-child').attr('selected', 'selected');
        $('#STATE').val("");
        $('#STATE').attr('disabled', true);
    } else {
        $('#STATE').attr('disabled', false);
    }
}
$(document).ready(function(){
    $('#DBGLOBAL_COUNTRY').change(function(){
        handle_country_state_linkage($(this).val());
    });
    $('#DBGLOBAL_COUNTRY').keyup(function(){
        handle_country_state_linkage($(this).val());
    });
});
</script>
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
    <fieldset class="row">
        <legend class="sr-only">Search by executive name</legend>
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
    </fieldset>
    <div class="row">
        <div class="input col col-5">
            <label class="select">
                <span class="sr-only">Select a country</span>
                <select id="DBGLOBAL_COUNTRY" data-value="<TMPL_VAR NAME=DBGLOBAL_COUNTRY>" class="form-control" name="DBGLOBAL_COUNTRY" onchange="javascript:toggle_address_fields(1);">
                    <option selected="selected" value="">All Countries</option>                    
                    <option value="ADMIRALTY ISLAND">ADMIRALTY ISLANDS</option>
                    <option value="AFGHANISTAN">AFGHANISTAN</option>
                    <option value="AJMAN">AJMAN</option>
                    <option value="ALBANIA">ALBANIA</option>
                    <option value="ALGERIA">ALGERIA</option>
                    <option value="ANDORRA">ANDORRA</option>
                    <option value="ANGOLA">ANGOLA</option>
                    <option value="ANGUILLA">ANGUILLA</option>
                    <option value="ANTIGUA">ANTIGUA</option>
                    <option value="ARGENTINA">ARGENTINA</option>
                    <option value="ARMENIA">ARMENIA</option>
                    <option value="ARUBA">ARUBA</option>
                    <option value="AUSTRALIA">AUSTRALIA</option>
                    <option value="AUSTRIA">AUSTRIA</option>
                    <option value="AZERBAIJAN">AZERBAIJAN</option>
                    <option value="BAHAMAS">BAHAMAS</option>
                    <option value="BAHRAIN">BAHRAIN</option>
                    <option value="BANGLADESH">BANGLADESH</option>
                    <option value="BARBADOS">BARBADOS</option>
                    <option value="BELARUS">BELARUS</option>
                    <option value="BELGIUM">BELGIUM</option>
                    <option value="BELIZE">BELIZE</option>
                    <option value="BENIN">BENIN</option>
                    <option value="BERMUDA">BERMUDA</option>
                    <option value="BHUTAN">BHUTAN</option>
                    <option value="BOLIVIA">BOLIVIA</option>
                    <option value="BOSNIA OR HERZEGOVINA">BOSNIA AND HERZEGOVINA</option>
                    <option value="BOTSWANA">BOTSWANA</option>
                    <option value="BRAZIL">BRAZIL</option>
                    <option value="BRUNEI">BRUNEI</option>
                    <option value="BULGARIA">BULGARIA</option>
                    <option value="BURKINA FASO">BURKINA FASO</option>
                    <option value="BURMA OR MYANMAR">BURMA (MYANMAR)</option>
                    <option value="BURUNDI">BURUNDI</option>
                    <option value="CAMBODIA">CAMBODIA</option>
                    <option value="CAMEROON">CAMEROON</option>
                    <option value="CANADA">CANADA</option>
                    <option value="CAPE VERDE">CAPE VERDE</option>
                    <option value="CAROLINE ISLAND">CAROLINE ISLANDS</option>
                    <option value="CAYMAN ISLANDS">CAYMAN ISLANDS</option>
                    <option value="CENTRAL AFRICA">CENTRAL AFRICA REPUBLIC</option>
                    <option value="CHAD">CHAD</option>
                    <option value="CHILE">CHILE</option>
                    <option value="CHINA">CHINA</option>
                    <option value="CHRISTMAS ISLAND">CHRISTMAS ISLAND</option>
                    <option value="COLOMBIA">COLOMBIA</option>
                    <option value="COMOROS">COMOROS</option>
                    <option value="COOK ISLANDS">COOK ISLANDS</option>
                    <option value="COSTA RICA">COSTA RICA</option>
                    <option value="CROATIA">CROATIA</option>
                    <option value="CYPRUS">CYPRUS</option>
                    <option value="CZECH REPUBLIC">CZECH REPUBLIC</option>
                    <option value="CONGO">DEMOCRATIC REPUBLIC OF THE CONGO</option>
                    <option value="DENMARK">DENMARK</option>
                    <option value="DJIBOUTI">DJIBOUTI</option>
                    <option value="DOMINICA">DOMINICA</option>
                    <option value="DOMINICAN REPUBLIC">DOMINICAN REPUBLIC</option>
                    <option value="ECUADOR">ECUADOR</option>
                    <option value="EGYPT">EGYPT</option>
                    <option value="EL SALVADOR">EL SALVADOR</option>
                    <option value="ENGLAND">ENGLAND</option>
                    <option value="EQUATORIAL GUINEA">EQUATORIAL GUINEA</option>
                    <option value="ERITREA">ERITREA</option>
                    <option value="ESTONIA">ESTONIA</option>
                    <option value="ETHIOPIA">ETHIOPIA</option>
                    <option value="FAROE ISLANDS">FAROE ISLANDS</option>
                    <option value="FALKLAND ISLANDS">FALKLAND ISLANDS</option>
                    <option value="FIJI">FIJI</option>
                    <option value="FINLAND">FINLAND</option>
                    <option value="FRANCE">FRANCE</option>
                    <option value="FRENCH GUIANA">FRENCH GUIANA</option>
                    <option value="FRENCH POLYNESIA OR TAHITI">FRENCH POLYNESIA/TAHITI</option>
                    <option value="GABON">GABON</option>
                    <option value="GAMBIA">GAMBIA</option>
                    <option value="GEORGIA">GEORGIA</option>
                    <option value="GERMANY">GERMANY</option>
                    <option value="GHANA">GHANA</option>
                    <option value="GIBRALTAR">GIBRALTAR</option>
                    <option value="GREECE">GREECE</option>
                    <option value="GREENLAND">GREENLAND</option>
                    <option value="GRENADA">GRENADA</option>
                    <option value="GUADELOUPE">GUADELOUPE</option>
                    <option value="GUAM">GUAM</option>
                    <option value="GUATEMALA">GUATEMALA</option>
                    <option value="GUINEA">GUINEA</option>
                    <option value="GUINEA BISSAU">GUINEA BISSAU</option>
                    <option value="GUYANA">GUYANA</option>
                    <option value="HAITI">HAITI</option>
                    <option value="HONDURAS">HONDURAS</option>
                    <option value="HONG KONG">HONG KONG</option>
                    <option value="HUNGARY">HUNGARY</option>
                    <option value="ICELAND">ICELAND</option>
                    <option value="INDIA">INDIA</option>
                    <option value="INDONESIA">INDONESIA</option>
                    <option value="IRAN">IRAN</option>
                    <option value="IRAQ">IRAQ</option>
                    <option value="IRELAND">IRELAND</option>
                    <option value="ISRAEL">ISRAEL</option>
                    <option value="ITALY">ITALY</option>
                    <option value="IVORY COAST OR COTE D'IVOIRE">IVORY COAST/COTE D'IVOIRE</option>
                    <option value="JAMAICA">JAMAICA</option>
                    <option value="JAPAN">JAPAN</option>
                    <option value="JORDAN">JORDAN</option>
                    <option value="KAMPUCHEA">KAMPUCHEA</option>
                    <option value="KAZAKHSTAN">KAZAKHSTAN</option>
                    <option value="KENYA">KENYA</option>
                    <option value="KIRGHIZIA">KIRGHIZIA</option>
                    <option value="KIRIBATI">KIRIBATI</option>
                    <option value="KUWAIT">KUWAIT</option>
                    <option value="KYRGYZSTAN">KYRGYZSTAN</option>
                    <option value="LAOS">LAOS</option>
                    <option value="LATVIA">LATVIA</option>
                    <option value="LEBANON">LEBANON</option>
                    <option value="LESOTHO">LESOTHO</option>
                    <option value="LIBERIA">LIBERIA</option>
                    <option value="LIBYA">LIBYA</option>
                    <option value="LIECHTENSTEIN">LIECHTENSTEIN</option>
                    <option value="LITHUANIA">LITHUANIA</option>
                    <option value="LUXEMBOURG">LUXEMBOURG</option>
                    <option value="MACAO">MACAO</option>
                    <option value="MADAGASGAR">MADAGASGAR</option>
                    <option value="MALAWI">MALAWI</option>
                    <option value="MALAYSIA">MALAYSIA</option>
                    <option value="MALDIVES">MALDIVES</option>
                    <option value="MALI">MALI</option>
                    <option value="MALTA">MALTA</option>
                    <option value="MARIANA ISLANDS">MARIANAS ISLANDS</option>
                    <option value="MARSHALL ISLANDS">MARSHALL ISLANDS</option>
                    <option value="MARTINIQUE">MARTINIQUE</option>
                    <option value="MAURITANIA">MAURITANIA</option>
                    <option value="MAURITIUS">MAURITIUS</option>
                    <option value="MAYOTTE">MAYOTTE</option>
                    <option value="MEXICO">MEXICO</option>
                    <option value="MICRONESIA">MICRONESIA FED ST</option>
                    <option value="MIDWAY ISLAND">MIDWAY ISLAND</option>
                    <option value="MOLDOVA">MOLDOVA</option>
                    <option value="MONACO">MONACO</option>
                    <option value="MONGOLIA">MONGOLIA</option>
                    <option value="MONTSERRAT">MONTSERRAT</option>
                    <option value="MOROCCO">MOROCCO</option>
                    <option value="MOZAMBIQUE">MOZAMBIQUE</option>
                    <option value="NAMIBIA">NAMIBIA</option>
                    <option value="NAURU">NAURU</option>
                    <option value="NEPAL">NEPAL</option>
                    <option value="NETHERLANDS">NETHERLANDS</option>
                    <option value="NETHERLANDS OR ANTILLES">NETHERLANDS ANTILLES</option>
                    <option value="NEW CALEDONIA">NEW CALEDONIA</option>
                    <option value="NEW ZEALAND">NEW ZEALAND</option>
                    <option value="NICARAGUA">NICARAGUA</option>
                    <option value="NIGER">NIGER</option>
                    <option value="NIGERIA">NIGERIA</option>
                    <option value="NORFOLK ISLAND">NORFOLK ISLAND</option>
                    <option value="NORTHERN IRELAND">NORTHERN IRELAND</option>
                    <option value="NORTHERN MARIANA ISLANDS">NORTHERN MARIANA ISLANDS</option>
                    <option value="NORWAY">NORWAY</option>
                    <option value="OMAN">OMAN</option>
                    <option value="PAKISTAN">PAKISTAN</option>
                    <option value="PANAMA">PANAMA</option>
                    <option value="PAPUA NEW GUINEA">PAPUA NEW GUINEA</option>
                    <option value="PARAGUAY">PARAGUAY</option>
                    <option value="PERU">PERU</option>
                    <option value="PHILIPPINES">PHILIPPINES</option>
                    <option value="POLAND">POLAND</option>
                    <option value="PORTUGAL">PORTUGAL</option>
                    <option value="QATAR">QATAR</option>
                    <option value="REPUBLIC OF KOREA">REPUBLIC OF KOREA</option>
                    <option value="REUNION ISLAND">REUNION ISLAND</option>
                    <option value="ROMANIA">ROMANIA</option>
                    <option value="RUSSIAN FEDERATION">RUSSIAN FEDERATION</option>
                    <option value="RWANDA">RWANDA</option>
                    <option value="SAMOA">SAMOA</option>
                    <option value="SAN MARINO">SAN MARINO</option>
                    <option value="SAO TOME OR PRINCIPE">SAO TOME &amp; PRINCIPE</option>
                    <option value="SAUDI ARABIA">SAUDI ARABIA</option>
                    <option value="SCOTLAND">SCOTLAND</option>
                    <option value="SENEGAL">SENEGAL</option>
                    <option value="SERBIA OR MONTENEGRO">SERBIA AND MONTENEGRO</option>
                    <option value="SEYCHELLES">SEYCHELLES</option>
                    <option value="SIERRA LEONE">SIERRA LEONE</option>
                    <option value="SINGAPORE">SINGAPORE</option>
                    <option value="SLOVAKIA">SLOVAKIA</option>
                    <option value="SLOVENIA">SLOVENIA</option>
                    <option value="SOLOMON ISLANDS">SOLOMON ISLANDS</option>
                    <option value="SOMALIA">SOMALIA</option>
                    <option value="SOUTH AFRICA">SOUTH AFRICA</option>
                    <option value="SPAIN">SPAIN</option>
                    <option value="SRI LANKA">SRI LANKA</option>
                    <option value="ST HELENA">ST HELENA</option>
                    <option value="ST KITTS">ST KITTS-NEVIS</option>
                    <option value="ST LUCIA">ST LUCIA</option>
                    <option value="ST VINCENT">ST VINCENT</option>
                    <option value="SUDAN">SUDAN</option>
                    <option value="SURINAME">SURINAME</option>
                    <option value="SWAZILAND">SWAZILAND</option>
                    <option value="SWEDEN">SWEDEN</option>
                    <option value="SWITZERLAND">SWITZERLAND</option>
                    <option value="SYRIA">SYRIA</option>
                    <option value="TAIWAN">TAIWAN (REPUBLIC OF CHINA)</option>
                    <option value="TAJHIKSTAN">TAJHIKSTAN</option>
                    <option value="TANZANIA">TANZANIA</option>
                    <option value="THAILAND">THAILAND</option>
                    <option value="TOGO">TOGO</option>
                    <option value="TOKELAU">TOKELAU</option>
                    <option value="TONGA">TONGA</option>
                    <option value="TRINIDAD OR TOBAGO">TRINIDAD AND TOBAGO</option>
                    <option value="TUNISIA">TUNISIA</option>
                    <option value="TURKEY">TURKEY</option>
                    <option value="TURKISH REPUBLIC OR TURKISH REP">TURKISH REPUBLIC OF N CYPRUS</option>
                    <option value="TURKMENISTAN">TURKMENISTAN</option>
                    <option value="TURKS OR CAICOS">TURKS AND CAICOS</option>
                    <option value="TUVALU">TUVALU</option>
                    <option value="UGANDA">UGANDA</option>
                    <option value="UKRAINE">UKRAINE</option>
                    <option value="UNITED ARAB EMIRATES">UNITED ARAB EMIRATES</option>
                    <option value="UNITED KINGDOM">UNITED KINGDOM</option>
                    <option value="USA">UNITED STATES OF AMERICA</option>
                    <option value="URUGUAY">URUGUAY</option>
                    <option value="UZBEKISTAN">UZBEKISTAN</option>
                    <option value="VANUATU">VANUATU</option>
                    <option value="VENEZUELA">VENEZUELA</option>
                    <option value="VIETNAM">VIETNAM</option>
                    <option value="VIRGIN ISLANDS">VIRGIN ISLANDS</option>
                    <option value="WAKE ISLAND">WAKE ISLAND</option>
                    <option value="WALES">WALES</option>
                    <option value="FUTUNA ISLAND OR WALLIS ISLAND">WALLIS &amp; FUTUNA ISLANDS</option>
                    <option value="WESTERN SAMOA">WESTERN SAMOA</option>
                    <option value="YEMEN">YEMEN</option>
                    <option value="ZAMBIA">ZAMBIA</option>
                    <option value="ZIMBABWE">ZIMBABWE</option>
                </select>
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
                    <select id="STATE" name="STATE" data-value="<TMPL_VAR NAME=STATE>" class="form-control" <TMPL_UNLESS STATE> disabled</TMPL_UNLESS>>
                        <option value="">All States (U.S. only)</option>
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
    </fieldset>
    <div class="row">
        <div class="input col col-3">
            <label>
                <input class="form-control" type="text" id="DUNS_NUMBER" name="DUNS_NUMBER" value="<TMPL_VAR NAME="DUNS_NUMBER">" placeholder="DUNS Number" maxlength="11">
                <span class="tooltip">
                    DUNS Number
                    <span class="font-10">ex. 12-345-6789 or 123456789</span>
                </span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="SIC_CODE" name="SIC_CODE" class="form-control" value="<TMPL_VAR NAME=SIC_CODE>" placeholder="SIC Code" maxlength="12">
                <span class="tooltip">
                    SIC Code
                    <span class="font-10">(e.g. 4835)</span>
                </span> 
            </label>
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
    <hr>
</div>
