<TMPL_IF NAME=DA_WIRELESS_SEARCH>
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['PHONE'],
                    ['UNIQUEID','LAST_NAME','FIRST_NAME','MI','STREET_ADDRESS','CITY','STATE','ZIP', 'ZIP4', 'COUNTY', 'UNIQUEID_HELP_ICO']
                ];
            </script>
            <label class="col col-1_5">
                <input type="radio" id="input-group-1" name="input-group" checked="checked" onclick="refresh_input_group()" data-idx="1">
                <span>Find by Phone</span>
            </label>
            <label class="col col-3">
                <input type="radio" id="input-group-2" name="input-group" onclick="refresh_input_group()" data-idx="2">
                <span>Find by Name / Address</span>
            </label>
            <div class="col col-10">
                <div id="input-group-1-subtext" class="input-group-subtext">View information on a phone number.</div>
                <div id="input-group-2-subtext" class="input-group-subtext hidden">View phones associated with a subject.</div>
            </div>
        </div>
    </div>
</TMPL_IF>
<TMPL_IF NAME=PHONE_FINDER_REPORT_SEARCH>
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['PHONE', 'PHONE_OPTIONS-DNH'],
                    ['UNIQUEID', 'SSN', 'LAST_NAME','FIRST_NAME','MI','STREET_ADDRESS','CITY','STATE','ZIP', 'UNIQUEID_HELP_ICO', 'OPTIONS', 'PHONE_OPTIONS-DNH']
                ];
            </script>
            <label class="col col-1_5">
                <input type="radio" id="input-group-1" name="input-group" checked="checked" onclick="refresh_input_group()" data-idx="1">
                <span>Find by Phone</span>
            </label>
            <label class="col col-3">
                <input type="radio" id="input-group-2" name="input-group" onclick="refresh_input_group()" data-idx="2">
                <span>Find by Name / Address / SSN</span>
            </label>
            <div class="col col-10">
                <div id="input-group-1-subtext" class="input-group-subtext">View information on a phone number.</div>
                <div id="input-group-2-subtext" class="input-group-subtext hidden">View phones associated with a subject.</div>
            </div>
        </div>
    </div>
</TMPL_IF>
<TMPL_IF NAME="LICENSE_SEARCH">
	<div class="row">
		<div class="col col-10">
			<script>
                var input_group_arr = [
                    ['SSN', 'UNIQUEID-DNH', 'LAST_NAME', 'FIRST_NAME', 'LICENSE_NUMBER', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'DOB', 'NICKNAMES', 'PHONETICS'],
                    ['BOOL_SSN', 'UNIQUEID-DNH', 'BOOL_NAME_FULL', 'BOOL_LICENSE_NUMBER', 'BOOL_ADDRESS', 'TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
                ];
				var segment_arr = [
					['DL Number'	, 'dl-number()'],
					['DOB: Equals'	, 'dob(is )'],
					['DOB: After'	, 'dob(aft )'],
					['DOB: Before'	, 'dob(bef )'],
					['DOB: Between'	, 'dob(btw and )'],
					['License Class', 'license-class()'],
					['License State', 'license-state()'],
					['Restrictions'	, 'restrictions()']
				];
            </script>
			<TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
		</div>
	</div>
</TMPL_IF>
<TMPL_IF NAME="MARRIAGE_SEARCH">
	<div class="row">
		<div class="col col-10">
			<script>
                var input_group_arr = [
                    ['UNIQUEID-DNH', 'LAST_NAME', 'FIRST_NAME', 'MI', 'STATE', 'COUNTY', 'FILING_NUMBER', 'OPTIONS'],
                    ['UNIQUEID-DNH', 'BOOL_LAST', 'BOOL_FIRST', 'BOOL_MI', 'BOOL_COUNTY', 'BOOL_ADDRESS', 'BOOL_FILING_NUMBER', 'TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
                ];
				var segment_arr = [
					['Bride Name'	, 'bride-name()'],
					['County'	, 'county()'],
					['Date: Equals'	, 'date(is )'],
					['Date: After'	, 'date(aft )'],
					['Date: Before', 'date(bef )'],
					['Date: Between', 'date(btw  and )'],
					['Groom Name'	, 'groom-name()'],
					['Jurisdiction'	, 'jurisdiction()'],
					['Marriage Date: Equals'	, 'marrieage-date(is )'],
					['Marriage Date: After'	, 'marrieage-date(after )'],
					['Marriage Date: Before'	, 'marriage-date(bef )'],
					['Marriage Date: Between'	, 'marriage-date(btw  and )']
				];
            </script>
			<TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
		</div>
	</div>
</TMPL_IF>
<TMPL_IF NAME="PROF_LICENSE_SEARCH">
	<div class="row">
		<div class="col col-10">
			<script>
				var input_group_arr = [
					['SSN', 'LAST_NAME', 'FIRST_NAME', 'MI', 'COMPANY_NAME', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'OPTIONS'],
					['BOOL_SSN', 'BOOL_NAME_FULL', 'BOOL_COMPANY_NAME', 'BOOL_ADDRESS', 'TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
				];
				var segment_arr = [
					['Address'			, 'address()'],
					['Board'			, 'board()'],
					['Company Name'		, 'company-name()'],
					['Date'				, 'date()'],
					['DOB: Equals'		, 'dob(is )'],
					['DOB: After'		, 'dob(aft )'],
					['DOB: Before'		, 'dob(bef )'],
					['DOB: Between'		, 'dob(btw  and )'],
					['License Number'	, 'license-number()'],
					['License Type'		, 'license-type()'],
					['Tax Id'			, 'tax-id()'],
					['UPIN'				, 'upin()']
				];
			</script>		
			<TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
		</div>
	</div>
</TMPL_IF>

<TMPL_IF NAME="UCC_SEARCH">
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['COMPANY_NAME', 'LAST_NAME', 'FIRST_NAME', 'MI', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'DATE_DROP', 'FILING_NUMBER', 'FILING_JURISDICTION'],
                    ['BOOL_COMPANY_NAME', 'BOOL_NAME_FULL', 'TERMS', 'BOOL_ADDRESS', 'TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD', 'BOOL_FILING_NUMBER', 'BOOL_FILING_JURISDICTION']
                ];
                var segment_arr = [
                    ['Assignee'            , 'assignee()'],
                    ['Assignee Address'    , 'assignee-address()'],
                    ['Debtor Address'      , 'debtor-address()'],
                    ['Debtors'             , 'debtors()'],
                    ['Filing Date: Equals' , 'filing-date(is )'],
                    ['Filing Date: After'  , 'filing-date(aft )'],
                    ['Filing Date: Before' , 'filing-date(bef )'],
                    ['Filing Date: Between', 'filing-date(btw  and )'],
                    ['Filing Number'       , 'filing-number()'],
                    ['Filing Status'       , 'filing-status()'],
                    ['Secured Party'       , 'secured-party()'],
                    ['Secured Prty Addr'   , 'secured-prty-addr()']
                ];
            </script>
            <TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
        </div>
    </div>
</TMPL_IF>
<TMPL_IF NAME="PORTAL_SANCTIONS_SEARCH">
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['COMPANY_NAME', 'CASE_NUMBER', 'LAST_NAME','FIRST_NAME'],
                    ['BOOL_COMPANY_NAME', 'BOOL_CASE_NUMBER', 'BOOL_NAME_FULL', 'TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
                ];
                var segment_arr = [
                    ['Date: Equals' , 'date(is )'],
                    ['Date: After'  , 'date(aft )'],
                    ['Date: Before' , 'date(bef )'],
                    ['Date: Between', 'date(btw  and )'],
                    ['Jurisdiction' , 'jurisdiction()'],
                    ['Name'         , 'name()'],
                    ['Number'       , 'number()']
                ];
            </script>
            <TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
        </div>
    </div>
</TMPL_IF>

<TMPL_IF NAME="REAL_PROPERTY_SEARCH">
	<div class="row">
		<div class="col col-10">
			<script>
				var input_group_arr = [
					['LAST_NAME', 'FIRST_NAME', 'MI', 'COMPANY_NAME', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'COUNTY', 'PARCEL_ID', 'OPTIONS'],
					['BOOL_NAME_FULL', 'BOOL_COMPANY_NAME', 'BOOL_ADDRESS', 
					 'BOOL_COUNTY', 'BOOL_PARCEL_ID', 'BOOL_LOAN_AMOUNT_QUAL', 'BOOL_LOAN_AMOUNT', 'BOOL_SALES_PRICE_QUAL', 'BOOL_SALES_PRICE',
					 'BOOL_LAND_VALUE_QUAL', 'BOOL_LAND_VALUE', 'BOOL_TAX_QUAL', 'BOOL_TAX',
					 'TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
				];
				var segment_arr = [
					['APN'						, 'apn()'],
					['Book Page'				, 'book-page()'],
					['Borrower'					, 'borrower()'],
					['Borrower Address'			, 'borrower-address()'],
					['Brief Legal'				, 'brief-legal()'],
					['Buyer'					, 'buyer()'],
					['Buyer Address'			, 'buyer-address()'],
					['Contract Date: Equals'	, 'contract-date(is )'],
					['Contract Date: After'		, 'contract-date(aft )'],
					['Contract Date: Before'	, 'contract-date(bef )'],
					['Contract Date: Between'	, 'contract-date(btw  and )'],
					['County'					, 'county()'],
					['Deed Type'				, 'deed-type()'],
					['Due Date: Equals'			, 'due-date(is )'],
					['Due Date: After'			, 'due-date(aft )'],
					['Due Date: Before'			, 'due-date(bef )'],
					['Due Date: Between'		, 'due-date(btw  and )'],
					['Land Value (Numeric)'		, 'land-value()'],
					['Legal Desc'				, 'legal-desc()'],
					['Lender'					, 'lender()'],
					['Loan Amount (Numeric)'	, 'loan-amount()'],
					['Loan Type'				, 'loan-type()'],
					['Mailing Address'			, 'mailing-address()'],
					['Mortgage Date: Equals'	, 'mortgage-date(is )'],
					['Mortgage Date: After'		, 'mortgage-date(aft )'],
					['Mortgage Date: Before'	, 'mortgage-date(bef )'],
					['Mortgage Date: Between'	, 'mortgage-date(btw  and )'],
					['Mortgage Type'			, 'mortgage-type()'],
					['Owners'					, 'owners()'],
					['Property Address'			, 'property-address()'],
					['Property Use'				, 'property-use()'],
					['Recorded Date: Equals'	, 'recorded-date(is )'],
					['Recorded Date: After'		, 'recorded-date(aft )'],
					['Recorded Date: Before'	, 'recorded-date(bef )'],
					['Recorded Date: Between'	, 'recorded-date(btw  and )'],
					['Sale Date: Equals'		, 'sale-date(is )'],
					['Sale Date: After'			, 'sale-date(aft )'],
					['Sale Date: Before'		, 'sale-date(bef )'],
					['Sale Date: Between'		, 'sale-date(btw  and )'],
					['Sale Price (Numeric)'		, 'sale-price()'],
					['Seller'					, 'seller()'],
					['Seller Address'			, 'seller-address()'],
					['State'					, 'state()'],
					['Tax Year'					, 'tax-year()'],
					['Tot Mar Value'			, 'tot-mar-value()'],
					['Type Finance'				, 'type-finance()'],
					['Year Assess'				, 'year-assess()']
				];
				var disable_fields_to_check = ['BOOL_LOAN_AMOUNT_QUAL', 'BOOL_LOAN_AMOUNT', 'BOOL_LAND_VALUE_QUAL', 'BOOL_LAND_VALUE', 'BOOL_TAX_QUAL', 'BOOL_TAX'];
				var disable_fields_arr = [
					[],
					['BOOL_LAND_VALUE_QUAL', 'BOOL_LAND_VALUE', 'BOOL_TAX_QUAL', 'BOOL_TAX'],
					['BOOL_LOAN_AMOUNT_QUAL', 'BOOL_LOAN_AMOUNT']
				];
			</script>		
			<TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
		</div>
	</div>
</TMPL_IF>

<TMPL_IF NAME="DEA_SEARCH">
	<div class="row">
		<div class="col col-10">
			<script>
                var input_group_arr = [
                    ['SSN', 'LAST_NAME', 'FIRST_NAME', 'MI', 'COMPANY_NAME', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'REG_NUMBER'],
                    ['BOOL_NAME_FULL', 'BOOL_COMPANY_NAME', 'BOOL_ADDRESS', 'BOOL_REGISTRATION_NUMBER', 'TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
                ];
				var segment_arr = [
					['Address'			, 'address()'],
					['License Number'	, 'license-number()'],
					['Name'	, 'name()']
				];
            </script>
			<TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
		</div>
	</div>
</TMPL_IF>

<TMPL_IF NAME="FEIN_SEARCH">
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['COMPANY_NAME', 'FEIN', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP'],
                    ['BOOL_COMPANY_NAME', 'BOOL_FEIN', 'BOOL_ADDRESS', 'TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
                ];
                var segment_arr = [
                    ['Address'          , 'address()'],
                    ['Company Name'     , 'companyname()'],
                    ['FEIN (No Dash)'   , 'fein()'],
                ];
            </script>
            <TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
        </div>
    </div>
</TMPL_IF>

<TMPL_IF NAME="MILITARY_PERSONNEL_SEARCH">
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['LAST_NAME','FIRST_NAME', 'MI', 'MILITARY_SERVICE_BRANCH', 'STATE'],
                    ['BOOL_NAME_FULL', 'TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD', 'BOOL_MILITARY_SERVICE_BRANCH', 'BOOL_STATE']
                ];
                var segment_arr = [
                    ['First Name' , 'first-name()'],
                    ['Last Name'  , 'last-name()'],
                    ['Middle Name' , 'middle-name()'],
                    ['Military Service Branch', 'military-service-branch()']
                ];
            </script>
            <TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
        </div>
    </div>
</TMPL_IF>

<TMPL_IF NAME="FICTIOUS_SEARCH">
	<div class="row">
		<div class="col col-10">
			<script>
                var input_group_arr = [
                    ['LAST_NAME', 'FIRST_NAME', 'MI', 'COMPANY_NAME', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'PHONE', 'FILING_NUMBER', 'FILING_DATE'],
                    ['BOOL_COMPANY_FICT', 'BOOL_FULLNAME_FICT', 'BOOL_STREET_ADDRESS_FICT', 'BOOL_CITY_FICT', 'BOOL_STATE_FICT', 'BOOL_ZIP5_FICT', 'BOOL_FILING_NUMBER', 'BOOL_FILING_DATE', 'TERMS']
                ];
				
            </script>
			<TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
		</div>
	</div>
</TMPL_IF>

<TMPL_IF NAME="VOTER_REGISTRATION_SEARCH">
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['SSN', 'UNIQUEID','LAST_NAME', 'FIRST_NAME', 'MI', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'OPTIONS'],
                    ['BOOL_SSN', 'BOOL_NAME_FULL', 'BOOL_ADDRESS', 'TERMS','TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
                ];
                var segment_arr = [
                    ['County'   , 'county()'],
                    ['Name'   , 'name()'],
                    ['Political Party', 'political-party()']
                ];
            </script>
            <TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
        </div>
    </div>
</TMPL_IF>

<TMPL_IF NAME="MERCHANT_VESSEL_SEARCH">
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
					['LAST_NAME', 'FIRST_NAME', 'MI', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'COMPANY_NAME', 'HULL_ID', 'VESSEL_NAME', 'NICKNAMES', 'PHONETICS'],
					['BOOL_NAME_FULL', 'BOOL_ADDRESS', 'BOOL_HULL_ID', 'BOOL_VESSEL_NAME', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD', 'TERMS']
                ];
                var segment_arr = [
					['Address', 'address()'],
					['Dealer', 'dealer()'],
					['Decal Number', 'decal-number()'],
					['Hull Id', 'hull-id()'],
					['Length', 'length()'],
					['Make', 'make()'],
					['Model', 'model()'],
					['Name', 'name()'],
					['Vessel Id', 'vessel-id()'],
					['Vessel Name', 'vessel-name()']
                ];
            </script>
            <TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
        </div>
    </div>
</TMPL_IF>
<TMPL_IF NAME=PHONE_LOOKUP_SEARCH>
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['PHONE', 'PHONELOOKUP_STATE'],
                    ['LAST_NAME','FIRST_NAME','MI','STREET_ADDRESS','CITY','STATE','ZIP']
                ];
            </script>
            <label class="col col-1_5">
                <input type="radio" id="input-group-1" name="input-group" checked="checked" onclick="refresh_input_group()" data-idx="1">
                <span>Phone</span>
            </label>
            <label class="col col-1_5">
                <input type="radio" id="input-group-2" name="input-group" onclick="refresh_input_group()" data-idx="2">
                <span>Name or Address</span>
            </label>
            <div class="col col-10">
                <div id="input-group-1-subtext" class="input-group-subtext">Reverse phone lookup.</div>
                <div id="input-group-2-subtext" class="input-group-subtext hidden">Phone lookup.</div>
            </div>
        </div>
    </div>
</TMPL_IF>
<TMPL_IF NAME="SOS_FILINGS_SEARCH">
	<div class="row">
		<div class="col col-10">
			<script>
                var input_group_arr = [
                    ['COMPANY_NAME', 'FEIN', 'LAST_NAME', 'FIRST_NAME', 'MI', 'STREET_ADDRESS', 'CITY', 'STATE', 'ZIP', 'FILING_NUMBER'],
                    ['BOOL_COMPANY_NAME', 'BOOL_FEIN', 'BOOL_NAME_FULL', 'BOOL_ADDRESS', 'BOOL_FILING_NUMBER', 'BOOL_FILING_DATE', 'TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
                ];
				var segment_arr = [
					['Business Type'	, 'business-type()'		],
					['Company Name'		, 'company-name()'		],
					['Contact'		, 'contact()'			],
					['Contact Address'	, 'contact-address()'		],
					['Contact Status'	, 'contact-status()'		],
					['Filing Date: Equals'	, 'filing-date(is )'		],
					['Filing Date: After'	, 'filing-date(aft )'		],
					['Filing Date: Before'	, 'filing-date(bef )'		],
					['Filing Date: Between'	, 'filing-date(btw  and )'      ],
					['Incorp State'		, 'incorp-state()'		],
					['Name'			, 'name()'			],		
					['Regis Agent'		, 'regis-agent()'		],	
					['Corp Status'		, 'corp-status()'		]						
				];
            </script>
			<TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
		</div>
	</div>
</TMPL_IF>

<TMPL_IF NAME="PROP_HISTORY_REPORT_SEARCH">
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['FORCE_STREET_ADDRESS', 'FORCE_CITY', 'FORCE_STATE', 'FORCE_ZIP'],
                    ['FORCE_PARCEL']
                ];
            </script>
            <label class="col col-2">
                <input type="radio" id="input-group-1" name="input-group" checked="checked" onclick="refresh_input_group()" data-idx="1">
                <span>Find by Address</span>
            </label>
            <label class="col col-3_5">
                <input type="radio" id="input-group-2" name="input-group" onclick="refresh_input_group()" data-idx="2">
                <span>Find by Assessor Parcel Number (APN)</span>
            </label>
        </div>
    </div>
</TMPL_IF>

<TMPL_IF NAME="PROP_HISTORY_PLUS_REPORT_SEARCH">
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['FORCE_STREET_ADDRESS', 'FORCE_CITY', 'FORCE_STATE', 'FORCE_ZIP'],
                    ['FORCE_PARCEL']
                ];
            </script>
            * Entry Required. For Optimal results Address, City, State, Zip OR
APN should be populated. $ Additional Fees Apply.<br/><br/>
            <label class="col col-1_5">
                <input type="radio" id="input-group-1" name="input-group" checked="checked" onclick="refresh_input_group()" data-idx="1">
                <span>Find by Address</span>
            </label>
            <label class="col col-3">
                <input type="radio" id="input-group-2" name="input-group" onclick="refresh_input_group()" data-idx="2">
                <span>Find by Assessor Parcel Number (APN)</span>
            </label>
        </div>
    </div>
</TMPL_IF>

<TMPL_IF NAME="BANKRUPTCY_SEARCH">
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['SSN', 'UNIQUEID', 'LAST_NAME', 'FIRST_NAME', 'MI', 'COMPANY_NAME', 'CITY', 'STATE', 'ZIP', 'STREET_ADDRESS', 'CASE_NUMBER'],
                    ['BOOL_SSN', 'BOOL_NAME_FULL', 'BOOL_COMPANY_NAME', 'BOOL_ADDRESS', 'BOOL_CASE_NUMBER', 'TERMS']
                ];
                var segment_arr = [ 
                    ['Address',       'address()'],
                    ['Business Type', 'business-type()'],
                    ['Company Name' , 'company-name()']
                ];
            </script>
        <TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
        </div>
    </div>
</TMPL_IF>

<TMPL_IF NAME="LIEN_SEARCH">
    <div class="row">
        <div class="col col-10">
            <script>
                var input_group_arr = [
                    ['SSN', 'UNIQUEID', 'LAST_NAME', 'FIRST_NAME', 'MI', 'COMPANY_NAME', 'FEIN', 'CITY', 'STATE', 'ZIP', 'STREET_ADDRESS', 'CASE_NUMBER', 'TAX_ID'],
                    ['BOOL_SSN', 'BOOL_NAME_FULL', 'BOOL_COMPANY_NAME', 'BOOL_FEIN', 'BOOL_ADDRESS', 'BOOL_CASE_NUMBER', 'BOOL_TAX_CERT', 'TERMS']
                ];
                var segment_arr = [ 
                    ['Address',       'address()'],
                    ['Business Type', 'business-type()'],
                    ['Company Name' , 'company-name()']
                ];
            </script>
        <TMPL_INCLUDE NAME="form_terms_connector_search_header.tpl">
        </div>
    </div>
</TMPL_IF>

