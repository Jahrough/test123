<div id="search-form-fields" class="col col-7">
    <fieldset class="row">
        <legend class="sr-only">Change search type</legend>
        <script>
            var input_group_arr = [
                ['LAST_NAME', 'FIRST_NAME', 'MI', 'NAME_FULL', 'COMPANY_NAME', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'CSZ', 'COUNTY', 'PARCEL_ID', 'OPTIONS'],
                ['BOOL_NAME_FULL', 'BOOL_COMPANY_NAME', 'BOOL_ADDRESS',
                    'BOOL_COUNTY', 'BOOL_PARCEL_ID', 'BOOL_LOAN_AMOUNT_QUAL', 'BOOL_LOAN_AMOUNT', 'BOOL_LOAN_AMOUNT_BETWEEN',
		    'BOOL_LOAN_AMOUNT_BETWEEN_AND', 'BOOL_SALES_PRICE_QUAL', 'BOOL_SALES_PRICE', 'BOOL_SALES_PRICE_BETWEEN',
		    'BOOL_SALES_PRICE_BETWEEN_AND', 'BOOL_LAND_VALUE_QUAL', 'BOOL_LAND_VALUE', 'BOOL_LAND_VALUE_BETWEEN',
		    'BOOL_LAND_VALUE_BETWEEN_AND', 'BOOL_TAX_QUAL', 'BOOL_TAX', 'BOOL_TAX_BETWEEN', 'BOOL_TAX_BETWEEN_AND',
		    'ADDITIONAL_TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
            ];
            var segment_arr = [
                ['APN', 'apn()'],
                ['Book Page', 'book-page()'],
                ['Borrower', 'borrower()'],
                ['Borrower Address', 'borrower-address()'],
                ['Brief Legal', 'brief-legal()'],
                ['Buyer', 'buyer()'],
                ['Buyer Address', 'buyer-address()'],
                ['Contract Date: Equals', 'contract-date(is )'],
                ['Contract Date: After', 'contract-date(aft )'],
                ['Contract Date: Before', 'contract-date(bef )'],
                ['Contract Date: Between', 'contract-date(btw  and )'],
                ['County', 'county()'],
                ['Deed Type', 'deed-type()'],
                ['Due Date: Equals', 'due-date(is )'],
                ['Due Date: After', 'due-date(aft )'],
                ['Due Date: Before', 'due-date(bef )'],
                ['Due Date: Between', 'due-date(btw  and )'],
                ['Land Value (Numeric)', 'land-value()'],
                ['Legal Desc', 'legal-desc()'],
                ['Lender', 'lender()'],
                ['Loan Amount (Numeric)', 'loan-amount()'],
                ['Loan Type', 'loan-type()'],
                ['Mailing Address', 'mailing-address()'],
                ['Mortgage Date: Equals', 'mortgage-date(is )'],
                ['Mortgage Date: After', 'mortgage-date(aft )'],
                ['Mortgage Date: Before', 'mortgage-date(bef )'],
                ['Mortgage Date: Between', 'mortgage-date(btw  and )'],
                ['Mortgage Type', 'mortgage-type()'],
                ['Owners', 'owners()'],
                ['Property Address', 'property-address()'],
                ['Property Use', 'property-use()'],
                ['Recorded Date: Equals', 'recorded-date(is )'],
                ['Recorded Date: After', 'recorded-date(aft )'],
                ['Recorded Date: Before', 'recorded-date(bef )'],
                ['Recorded Date: Between', 'recorded-date(btw  and )'],
                ['Sale Date: Equals', 'sale-date(is )'],
                ['Sale Date: After', 'sale-date(aft )'],
                ['Sale Date: Before', 'sale-date(bef )'],
                ['Sale Date: Between', 'sale-date(btw  and )'],
                ['Sale Price (Numeric)', 'sale-price()'],
                ['Seller', 'seller()'],
                ['Seller Address', 'seller-address()'],
                ['State', 'state()'],
                ['Tax Year', 'tax-year()'],
                ['Tot Mar Value', 'tot-mar-value()'],
                ['Type Finance', 'type-finance()'],
                ['Year Assess', 'year-assess()']
            ];
            var disable_fields_to_check = ['BOOL_LOAN_AMOUNT_QUAL', 'BOOL_LOAN_AMOUNT', 'BOOL_LOAN_AMOUNT_BETWEEN', 'BOOL_LAND_VALUE_QUAL', 'BOOL_LAND_VALUE', 'BOOL_LAND_VALUE_BETWEEN',  'BOOL_TAX_QUAL', 'BOOL_TAX', 'BOOL_TAX_BETWEEN'];
            var disable_fields_arr = [
                [],
                ['BOOL_LAND_VALUE_QUAL', 'BOOL_LAND_VALUE', 'BOOL_LAND_VALUE_BETWEEN', 'BOOL_TAX_QUAL', 'BOOL_TAX', 'BOOL_TAX_BETWEEN'],
                ['BOOL_LOAN_AMOUNT_QUAL', 'BOOL_LOAN_AMOUNT', 'BOOL_LOAN_AMOUNT_BETWEEN']
            ];
            function betweenTrigger(id, value) {
                if (value == "between")
                    $(id).removeClass("hidden");
                else
                    $(id).addClass("hidden");
            }
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
        <div class="input col col-9">
            <label>
                <input type="text" id="NAME_FULL" class="form-control" name="NAME_FULL" value="<TMPL_VAR NAME=NAME_FULL>" placeholder="Last, First, Middle or Initial" maxlength="50">
                <span class="tooltip">Last, First, Middle or Initial</span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-9">
            <label>
                <input type="text" id="BOOL_NAME_FULL" class="form-control" name="BOOL_NAME_FULL" value="<TMPL_VAR NAME=BOOL_NAME_FULL>" placeholder="Full Name" maxlength="50">
                <span class="tooltip">Full Name</span> 
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
    </div>    
    <div class="row">
        <div class="input col col-6">
            <label>
                <input type="text" id="BOOL_COMPANY_NAME" class="form-control" name="BOOL_COMPANY_NAME" value="<TMPL_VAR NAME=BOOL_COMPANY_NAME>" placeholder="Company Name" maxlength="50">
                <span class="tooltip">Company Name</span> 
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
        <div class="input col col-6">
            <label>
                <input type="text" id="CSZ" name="CSZ" class="form-control" value="<TMPL_VAR NAME=CSZ>" placeholder="City, State, Zip Code" maxlength="200">
                <span class="tooltip">City, State, Zip Code</span> 
            </label>
        </div>
    </div>       
    <div class="row">
        <div class="input col col-3">
            <label>
                <input type="text" id="COUNTY" name="COUNTY" class="form-control" value="<TMPL_VAR NAME=COUNTY>" placeholder="County" maxlength="50">
                <span class="tooltip">County</span> 
            </label>
        </div>
    </div>    
    <div class="row">
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
                <input type="text" id="PARCEL_ID" class="form-control" name="PARCEL_ID" value="<TMPL_VAR NAME=PARCEL_ID>" placeholder="Parcel Number" maxlength="55">
                <span class="tooltip">Parcel Number</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input type="text" id="BOOL_PARCEL_ID" class="form-control" name="BOOL_PARCEL_ID" value="<TMPL_VAR NAME=BOOL_PARCEL_ID>" placeholder="Parcel Number" maxlength="55">
                <span class="tooltip">Parcel Number</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-4">
            <label>
                <span class="col col-3 padding-top-7">Loan Amount</span>
                <select name="BOOL_LOAN_AMOUNT_QUAL" id="BOOL_LOAN_AMOUNT_QUAL" class="form-control col col-7" onchange="betweenTrigger('#BOOL_LOAN_AMOUNT_BETWEEN_AND',value);betweenTrigger('#BOOL_LOAN_AMOUNT_BETWEEN', value);" data-default-value="<TMPL_VAR NAME="BOOL_LOAN_AMOUNT_QUAL_DEFAULT_VALUE">">
                    <option value="=" <TMPL_IF BOOL_LOAN_AMOUNT_QUAL_1>selected="selected"</TMPL_IF>>=</option>
                    <option value="<" <TMPL_IF BOOL_LOAN_AMOUNT_QUAL_2>selected="selected"</TMPL_IF>>&lt;</option>
                    <option value=">" <TMPL_IF BOOL_LOAN_AMOUNT_QUAL_3>selected="selected"</TMPL_IF>>&gt;</option>
                    <option value="between" <TMPL_IF BOOL_LOAN_AMOUNT_QUAL_4>selected="selected"</TMPL_IF>>Between</option>			
                </select>
            </label>
        </div>
        <div class="input col col-2_25">
            <label>
                <input type="text" id="BOOL_LOAN_AMOUNT" class="form-control" name="BOOL_LOAN_AMOUNT" value="<TMPL_VAR NAME=BOOL_LOAN_AMOUNT>" data-ph="ph1" placeholder="$" maxlength="10">
                <span class="tooltip">Loan Amount</span>
            </label>
        </div>
	<div id="BOOL_LOAN_AMOUNT_BETWEEN_AND" class="<TMPL_UNLESS BOOL_LOAN_AMOUNT_QUAL_4>hidden</TMPL_UNLESS> col col-0_5 padding-top-7">&nbsp;and</div>
        <div class="input col col-2_25">
            <label>
                <input type="text" id="BOOL_LOAN_AMOUNT_BETWEEN" class="form-control <TMPL_UNLESS BOOL_LOAN_AMOUNT_QUAL_4>hidden</TMPL_UNLESS>" name="BOOL_LOAN_AMOUNT_BETWEEN" value="<TMPL_VAR NAME=BOOL_LOAN_AMOUNT_BETWEEN>" data-ph="ph2" placeholder="$" maxlength="10">
                <span class="tooltip">Loan Amount</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-4">
            <label>
                <span class="col col-3 padding-top-7">Sales Price</span>
                <select name="BOOL_SALES_PRICE_QUAL" id="BOOL_SALES_PRICE_QUAL" class="form-control col col-7" onchange="betweenTrigger('#BOOL_SALES_PRICE_BETWEEN_AND',value);betweenTrigger('#BOOL_SALES_PRICE_BETWEEN', value);" data-default-value="<TMPL_VAR NAME="BOOL_SALES_PRICE_QUAL_DEFAULT_VALUE">">
                    <option value="=" <TMPL_IF BOOL_SALES_PRICE_QUAL_1>selected="selected"</TMPL_IF>>=</option>
                    <option value="<" <TMPL_IF BOOL_SALES_PRICE_QUAL_2>selected="selected"</TMPL_IF>>&lt;</option>
                    <option value=">" <TMPL_IF BOOL_SALES_PRICE_QUAL_3>selected="selected"</TMPL_IF>>&gt;</option>
                    <option value="between" <TMPL_IF BOOL_SALES_PRICE_QUAL_4>selected="selected"</TMPL_IF>>Between</option>			
                </select>
            </label>
        </div>
        <div class="input col col-2_25">
            <label>
                <input type="text" id="BOOL_SALES_PRICE" class="form-control" name="BOOL_SALES_PRICE" value="<TMPL_VAR NAME="BOOL_SALES_PRICE">" data-ph="ph3" placeholder="$" maxlength="10">
                <span class="tooltip">Sales Price</span>
            </label>
        </div>
	<div id="BOOL_SALES_PRICE_BETWEEN_AND" class="<TMPL_UNLESS BOOL_SALES_PRICE_QUAL_4>hidden</TMPL_UNLESS> col col-0_5 padding-top-7">&nbsp;and</div>
        <div class="input col col-2_25">
            <label>
                <input type="text" id="BOOL_SALES_PRICE_BETWEEN" class="form-control <TMPL_UNLESS BOOL_SALES_PRICE_QUAL_4>hidden</TMPL_UNLESS>" name="BOOL_SALES_PRICE_BETWEEN" value="<TMPL_VAR NAME=BOOL_SALES_PRICE_BETWEEN>" data-ph="ph4" placeholder="$" maxlength="10">
                <span class="tooltip">Sales Price</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <section class="input col col-4">
            <label>
                <span class="col col-3 padding-top-7">Land Value</span>
                <select name="BOOL_LAND_VALUE_QUAL" id="BOOL_LAND_VALUE_QUAL" class="form-control col col-7" onchange="betweenTrigger('#BOOL_LAND_VALUE_BETWEEN_AND',value);betweenTrigger('#BOOL_LAND_VALUE_BETWEEN', value);" data-default-value="<TMPL_VAR NAME="BOOL_LAND_VALUE_QUAL_DEFAULT_VALUE">">
                    <option value="=" <TMPL_IF BOOL_LAND_VALUE_QUAL_1>selected="selected"</TMPL_IF>>=</option>
                    <option value="<" <TMPL_IF BOOL_LAND_VALUE_QUAL_2>selected="selected"</TMPL_IF>>&lt;</option>
                    <option value=">" <TMPL_IF BOOL_LAND_VALUE_QUAL_3>selected="selected"</TMPL_IF>>&gt;</option>
                    <option value="between" <TMPL_IF BOOL_LAND_VALUE_QUAL_4>selected="selected"</TMPL_IF>>Between</option>			
                </select>
            </label>
        </section>
        <section class="input col col-2_25">
            <label>
                <input type="text" id="BOOL_LAND_VALUE" class="form-control" name="BOOL_LAND_VALUE" value="<TMPL_VAR NAME=BOOL_LAND_VALUE>" data-ph="ph5" placeholder="$" maxlength="10">
                <strong class="tooltip">Land Value</strong>
            </label>
        </section>
	<div id="BOOL_LAND_VALUE_BETWEEN_AND" class="<TMPL_UNLESS BOOL_LAND_VALUE_QUAL_4>hidden</TMPL_UNLESS> col col-0_5 padding-top-7">&nbsp;and</div>
        <section class="input col col-2_25">
            <label>
                <input type="text" id="BOOL_LAND_VALUE_BETWEEN" class="form-control <TMPL_UNLESS BOOL_LAND_VALUE_QUAL_4>hidden</TMPL_UNLESS>" name="BOOL_LAND_VALUE_BETWEEN" value="<TMPL_VAR NAME=BOOL_LAND_VALUE_BETWEEN>" data-ph="ph6" placeholder="$" maxlength="10">
                <strong class="tooltip">Land Value</strong>
            </label>
        </section>
    </div>    
    <div class="row">
        <section class="input col col-4">
            <label>
                <span class="col col-3 padding-top-7">Tax Amount</span>
                <select name="BOOL_TAX_QUAL" id="BOOL_TAX_QUAL" class="form-control col col-7" onchange="betweenTrigger('#BOOL_TAX_BETWEEN_AND',value);betweenTrigger('#BOOL_TAX_BETWEEN', value);" data-default-value="<TMPL_VAR NAME="BOOL_TAX_QUAL_DEFAULT_VALUE">">
                    <option value="=" <TMPL_IF BOOL_TAX_QUAL_1>selected="selected"</TMPL_IF>>=</option>
                    <option value="<" <TMPL_IF BOOL_TAX_QUAL_2>selected="selected"</TMPL_IF>>&lt;</option>
                    <option value=">" <TMPL_IF BOOL_TAX_QUAL_3>selected="selected"</TMPL_IF>>&gt;</option>
                    <option value="between" <TMPL_IF BOOL_TAX_QUAL_4>selected="selected"</TMPL_IF>>Between</option>			
                </select>
            </label>
        </section>
        <section class="input col col-2_25">
            <label>
                <input type="text" id="BOOL_TAX" class="form-control" name="BOOL_TAX" value="<TMPL_VAR NAME=BOOL_TAX>" data-ph="ph7" placeholder="$" maxlength="10">
                <span class="tooltip">Tax Amount</span>
            </label>
        </section>
	<div id="BOOL_TAX_BETWEEN_AND" class="<TMPL_UNLESS BOOL_TAX_QUAL_4>hidden</TMPL_UNLESS> col col-0_5 padding-top-7">&nbsp;and</div>
        <section class="input col col-2_25">
            <label>
                <input type="text" id="BOOL_TAX_BETWEEN" class="form-control <TMPL_UNLESS BOOL_TAX_QUAL_4>hidden</TMPL_UNLESS>" name="BOOL_TAX_BETWEEN" value="<TMPL_VAR NAME=BOOL_TAX_BETWEEN>" data-ph="ph8" placeholder="$" maxlength="10">
                <span class="tooltip">Tax Amount</span>
            </label>
        </section>
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
    <div class="row">
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
    <h3>Content</h3>
    <label class="block-display">
        <span class="form-control-label">Source</span>
        <select class="form-control pull-right col-8" id="LOOKUP_TYPE" name="LOOKUP_TYPE" onchange="javascript:disable_fields(LOOKUP_TYPE);" data-default-value="<TMPL_VAR NAME="LOOKUP_TYPE_DEFAULT_VALUE">">
            <option value="" <TMPL_IF NAME="LOOKUP_TYPE_">selected="selected"</TMPL_IF>>Real Property</option>
            <option value="D" <TMPL_IF NAME="LOOKUP_TYPE_D">selected="selected"</TMPL_IF>>Mortgages and Property Deeds</option>
            <TMPL_UNLESS DISABLE_ASSESSMENT>
            <option value="A" <TMPL_IF NAME="LOOKUP_TYPE_A">selected="selected"</TMPL_IF>>Property Assessments</option>
            </TMPL_UNLESS>
        </select>
    </label>
    <label class="checkbox-toggle input" for="CURRONLY">
        <span>Current Records Only</span>
        <input type="checkbox" name="CURRONLY" <TMPL_IF NAME=CURRONLY_CHECKED>checked="checked"</TMPL_IF> id="CURRONLY" >
        <span class="toggle pull-right" aria-hidden="true">
            <span class="toggle-on">ON</span>
            <span class="toggle-switch"></span>
            <span class="toggle-off">OFF</span>
        </span>                    
    </label>
    <hr class="for-radio-group for-radio-group-1">
    <section class="for-radio-group for-radio-group-1">
    <div class="input" id="OPTIONS">
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
        <label class="checkbox-toggle input" for="SINGLE_NAME">
            <span class="checkbox-text">Single Name Entry Fields</span>
            <input class="only_one_field" type="checkbox" name="SINGLE_NAME" <TMPL_IF NAME=SINGLE_NAME_CHECKED>checked="checked"</TMPL_IF> id="SINGLE_NAME"  data-inputfield="NAME_FULL" data-altinputfield="LAST_NAME">
            <span class="toggle pull-right" aria-hidden="true">
                <span class="toggle-on">ON</span>
                <span class="toggle-switch"></span>
                <span class="toggle-off">OFF</span>
            </span>
        </label>
        <label class="checkbox-toggle input" for="SINGLE_CSZ">
            <span class="checkbox-text">Single City, State, Zip Code Fields</span>
            <input class="only_one_field" type="checkbox" name="SINGLE_CSZ" <TMPL_IF NAME=SINGLE_CSZ_CHECKED>checked="checked"</TMPL_IF> id="SINGLE_CSZ"  data-inputfield="CSZ" data-altinputfield="CITY">    
            <span class="toggle pull-right" aria-hidden="true">
                <span class="toggle-on">ON</span>
                <span class="toggle-switch"></span>
                <span class="toggle-off">OFF</span>
            </span>
        </label>        
    </div>
    </section>
</div>
