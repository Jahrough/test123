<TMPL_IF NAME=INPUT_BOOL_SSN>
	<div class="input col col-3">
    	<label>
        	<input autocomplete="off" type="text" id="BOOL_SSN" name="BOOL_SSN" value="<TMPL_VAR NAME=BOOL_SSN>" placeholder="SSN" class="form-control" maxlength="30">
        	<span class="tooltip">
            	SSN<br/>
                <TMPL_IF NAME=PROF_LICENSE_SEARCH>
                   <span class="font-10">(Examples: 123456789, 123-45-6789, 123 45 6789)</span>
                <TMPL_ELSE>
                   <span class="font-10">(Examples: 123456789, 123-45-6789, 123 45 6789, 6789)</span>
                </TMPL_IF>
        	</span> 
    	</label>
    </div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_ADDRESS>
	<div class="input col col-9">
    	<label>
        	<input type="text" id="BOOL_ADDRESS" name="BOOL_ADDRESS" class="form-control" value="<TMPL_VAR NAME=BOOL_ADDRESS>" placeholder="Address" maxlength="200">
        	<span class="tooltip">Address</span> 
    	</label>
    </div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_NAME_FULL>
	<div class="input col col-9">
        <label>
            <input type="text" id="BOOL_NAME_FULL" class="form-control" name="BOOL_NAME_FULL" value="<TMPL_VAR NAME=BOOL_NAME_FULL>" placeholder="Full Name" maxlength="50">
            <span class="tooltip">Full Name</span> 
        </label>
    </div>
</TMPL_IF>

<TMPL_IF NAME="INPUT_TERMS">
	<div class="input col col-9">
    	<label>
        	<textarea name="TERMS" class="form-control" id="TERMS" placeholder="Additional Terms"><TMPL_VAR NAME=TERMS></textarea>
        	<span class="tooltip">
        		Additional Terms<br/>
          		<span class="font-10">Example: car and boat</span>
        	</span> 
    	</label>
    </div>
</TMPL_IF>
	
<TMPL_IF NAME="INPUT_TERMS_SEGMENTS">
	<div class="input col col-3">
		<label>
			<select id="TERMS_SEGMENTS" name="TERMS_SEGMENTS" class="form-control">
				<option value="">Add Segments</option>
			</select>
		</label>
	</div>
	<div class="btn-container col col-1">
		<button type="button" onclick="javascript:add_segment(TERMS_SEGMENTS)" class="btn btn-default form-control" id="TERMS_SEGMENTS_ADD">Add</button>
	</div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_LICENSE_NUMBER>
	<div class="input col col-3">
    	<label>
        	<input autocomplete="off" type="text" id="BOOL_LICENSE_NUMBER" class="form-control" name="BOOL_LICENSE_NUMBER" value="<TMPL_VAR NAME=BOOL_LICENSE_NUMBER>" placeholder="License Number" maxlength="35">
        	<span class="tooltip">License Number</span> 
    	</label>
    </div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_LAST>
	<div class="input col col-3">
    	<label>
        	<input type="text" id="BOOL_LAST" class="form-control" name="BOOL_LAST" value="<TMPL_VAR NAME=BOOL_LAST>" placeholder="Last Name" maxlength="90">
       		<span class="tooltip">Last Name</span> 
    	</label>
    </div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_FIRST>
    <div class="input col col-3">
        <label>
            <input type="text" id="BOOL_FIRST" class="form-control" name="BOOL_FIRST" value="<TMPL_VAR NAME=BOOL_FIRST>" placeholder="First Name" maxlength="40">
            <span class="tooltip">First Name</span> 
        </label>
    </div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_MI>
    <div class="input col col-3">
        <label>
            <input type="text" id="BOOL_MI" name="BOOL_MI" class="form-control" value="<TMPL_VAR NAME=BOOL_MI>" placeholder="Middle Name">
            <span class="tooltip">Middle Name</span> 
        </label>
    </div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_COUNTY>
    <div class="input col col-3">
        <label>
            <input type="text" id="BOOL_COUNTY" name="BOOL_COUNTY" class="form-control" value="<TMPL_VAR NAME=BOOL_COUNTY>" placeholder="County" maxlength="50">
            <span class="tooltip">County</span> 
        </label>
    </div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_FILING_NUMBER>
	<div class="input col col-3">
		<label>
			<input type="text" id="BOOL_FILING_NUMBER" name="BOOL_FILING_NUMBER" class="form-control" value="<TMPL_VAR NAME=BOOL_FILING_NUMBER>" placeholder="<TMPL_IF FICTIOUS_SEARCH>Charter/</TMPL_IF>Filing Number" maxlength="35">
			<span class="tooltip"><TMPL_IF FICTIOUS_SEARCH>Charter/</TMPL_IF>Filing Number</span>
		</label>
	</div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_COMPANY_NAME>
    <div class="input col col-6">
        <label>
            <input type="text" id="BOOL_COMPANY_NAME" class="form-control" name="BOOL_COMPANY_NAME" value="<TMPL_VAR NAME=BOOL_COMPANY_NAME>" placeholder="Company Name" maxlength="50">
            <span class="tooltip">Company Name</span> 
        </label>
    </div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_PARCEL_ID>
	<div class="input col col-3">
		<label>
			<input type="text" id="BOOL_PARCEL_ID" class="form-control" name="BOOL_PARCEL_ID" value="<TMPL_VAR NAME=BOOL_PARCEL_ID>" placeholder="Parcel Number" maxlength="55">
			<span class="tooltip">Parcel Number</span>
		</label>
	</div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_LOAN_AMOUNT_QUAL>
	<div class="input col col-3">
		<label>
			<select name="BOOL_LOAN_AMOUNT_QUAL" id="BOOL_LOAN_AMOUNT_QUAL" class="form-control col col-3">
				<TMPL_INCLUDE NAME="amount_qual_options.tpl">			
			</select>
			<span class="col col-7">Loan Amount</span>
		</label>
	</div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_LOAN_AMOUNT>
	<div class="input col col-3">
		<label>
			<input type="text" id="BOOL_LOAN_AMOUNT" class="form-control" name="BOOL_LOAN_AMOUNT" value="<TMPL_VAR NAME=BOOL_LOAN_AMOUNT>" placeholder="$" maxlength="10">
			<span class="tooltip">Loan Amount</span>
		</label>
	</div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_SALES_PRICE_QUAL>
	<div class="input col col-3">
		<label>
			<select name="BOOL_SALES_PRICE_QUAL" id="BOOL_SALES_PRICE_QUAL" class="form-control col col-3">
				<TMPL_INCLUDE NAME="amount_qual_options.tpl">			
			</select>
			<span class="col col-7">Sales Price</span>
		</label>
	</div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_SALES_PRICE>
	<div class="input col col-3">
		<label>
			<input type="text" id="BOOL_SALES_PRICE" class="form-control" name="BOOL_SALES_PRICE" value="<TMPL_VAR NAME=BOOL_SALES_PRICE>" placeholder="$" maxlength="10">
			<span class="tooltip">Sales Price</span>
		</label>
	</div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_LAND_VALUE_QUAL>
	<section class="input col col-3">
		<label>
			<select name="BOOL_LAND_VALUE_QUAL" id="BOOL_LAND_VALUE_QUAL" class="form-control col col-3">
				<TMPL_INCLUDE NAME="amount_qual_options.tpl">			
			</select>
			<span class="col col-7">Land Value</span>
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_LAND_VALUE>
	<section class="input col col-3">
		<label>
			<input type="text" id="BOOL_LAND_VALUE" class="form-control" name="BOOL_LAND_VALUE" value="<TMPL_VAR NAME=BOOL_LAND_VALUE>" placeholder="$" maxlength="10">
			<strong class="tooltip">Land Value</strong>
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_TAX_QUAL>
	<section class="input col col-3">
		<label>
			<select name="BOOL_TAX_QUAL" id="BOOL_TAX_QUAL" class="form-control col col-3">
				<TMPL_INCLUDE NAME="amount_qual_options.tpl">			
			</select>
			<span class="col col-7">Tax Amount</span>
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_TAX>
	<section class="input col col-3">
		<label>
			<input type="text" id="BOOL_TAX" class="form-control" name="BOOL_TAX" value="<TMPL_VAR NAME=BOOL_TAX>" placeholder="$" maxlength="10">
			<span class="tooltip">Tax Amount</span>
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_TAX_CERT>
	<section class="input col col-3">
		<label>
			<input type="text" id="BOOL_TAX_CERT" class="form-control" name="BOOL_TAX_CERT" value="<TMPL_VAR NAME=BOOL_TAX_CERT>" placeholder="Tax Certificate Number" maxlength="10">
			<span class="tooltip">Tax Certificate Number</span>
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_REGISTRATION_NUMBER>
	<section class="input col col-3">
		<label>
			<input type="text" id="BOOL_REGISTRATION_NUMBER" class="form-control" name="BOOL_REGISTRATION_NUMBER" value="<TMPL_VAR NAME=BOOL_REGISTRATION_NUMBER>" placeholder="Registration Number">
			<span class="tooltip">Registration Number</span>
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_PHONE>
	<section class="col col-3">
		<label class="input">
			<input type="text" id="BOOL_PHONE" name="BOOL_PHONE" value="<TMPL_VAR NAME=BOOL_PHONE>" placeholder="Phone Number" maxlength="35">
			<strong class="tooltip">
				<span class="fa fa-warning txt-color-teal"></span>
				Phone Number
			</strong>
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_FILING_DATE>
	<section class="col col-3">
		<label class="input">
			<input type="text" id="BOOL_FILING_DATE" name="BOOL_FILING_DATE" class="form-control" value="<TMPL_VAR NAME=BOOL_FILING_DATE>" placeholder="Filing Date" maxlength="10">
			<strong class="tooltip">
				<span class="fa fa-warning txt-color-teal"></span>
				Filing Date
			</strong>
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_STREET_ADDRESS_FICT>
	<section class="col col-6">
		<label class="input">
			<input type="text" id="BOOL_STREET_ADDRESS_FICT" name="BOOL_STREET_ADDRESS_FICT" value="<TMPL_VAR NAME=BOOL_STREET_ADDRESS_FICT>" placeholder="Street Address" maxlength="35">
			<b class="tooltip">
				<i class="fa fa-warning txt-color-teal"></i> 
				Street Address</b> 
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_CITY_FICT>
	<section class="col col-3">
		<label class="input">
			<input type="text" id="BOOL_CITY_FICT" name="BOOL_CITY_FICT" value="<TMPL_VAR NAME=BOOL_CITY_FICT>" placeholder="City" maxlength="45">
			<b class="tooltip">
				<i class="fa fa-warning txt-color-teal"></i> 
				City</b> 
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_STATE_FICT>
	<section class="col col-3">
		<label class="select">
			<select id="BOOL_STATE_FICT" name="BOOL_STATE_FICT">
				<option value="">All States</option>
				<TMPL_INCLUDE NAME="all_states_options_list.tpl">
			</select>
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_ZIP5_FICT>
	<section class="col col-3">
		<label class="input">
			<input type="text" id="BOOL_ZIP5_FICT" name="BOOL_ZIP5_FICT" value="<TMPL_VAR NAME=BOOL_ZIP5_FICT>" placeholder="Zip">
			<b class="tooltip">
				<i class="fa fa-warning txt-color-teal"></i> 
				Zip</b> 
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_COMPANY_FICT>
	<section class="col col-9">
		<label class="input">
			<input type="text" id="BOOL_COMPANY_FICT" name="BOOL_COMPANY_FICT" value="<TMPL_VAR NAME=BOOL_COMPANY_FICT>" placeholder="Company Name" maxlength="50">
			<b class="tooltip">
				<i class="fa fa-warning txt-color-teal"></i> 
				Company Name</b> 
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_FULLNAME_FICT>
	<section class="col col-9">
		<label class="input">
			<input type="text" id="BOOL_FULLNAME_FICT" name="BOOL_FULLNAME_FICT" value="<TMPL_VAR NAME=BOOL_FULLNAME_FICT>" placeholder="Last, First, Middle or Initial" maxlength="50">
			<b class="tooltip">
				<i class="fa fa-warning txt-color-teal"></i> 
				Last, First, Middle or Initial</b> 
		</label>
	</section>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_HULL_ID>
    <div class="input col col-3">
        <label>
            <input class="form-control" type="text" id="BOOL_HULL_ID" name="BOOL_HULL_ID" value="<TMPL_VAR NAME=BOOL_HULL_ID>" placeholder="Hull ID Number (HIN)" maxlength="40">
            <span class="tooltip">Hull ID Number (HIN)</span> 
        </label>
    </div>		
</TMPL_IF>
	
<TMPL_IF NAME=INPUT_BOOL_VESSEL_NAME>
    <div class="input col col-3">
        <label>
            <input class="form-control" type="text" id="BOOL_VESSEL_NAME" name="BOOL_VESSEL_NAME" value="<TMPL_VAR NAME=BOOL_VESSEL_NAME>" placeholder="Vessel Name" maxlength="50">
            <span class="tooltip">Vessel Name</span>
        </label>
    </div>		
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_FEIN>
    <div class="input col col-3">
        <label>
            <input class="form-control" type="text" id="BOOL_FEIN" name="BOOL_FEIN" value="<TMPL_VAR NAME=BOOL_FEIN>" placeholder="FEIN" maxlength="11">
            <span class="tooltip">FEIN</span> 
        </label>
    </div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_CASE_NUMBER>
    <div class="input col col-3">
        <label>
            <input class="form-control" type="text" id="BOOL_CASE_NUMBER" name="BOOL_CASE_NUMBER" value="<TMPL_VAR NAME=BOOL_CASE_NUMBER>" placeholder="<TMPL_IF BLJ_SEARCH>Filing/<TMPL_ELSE><TMPL_IF BANKRUPTCY_SEARCH>Filing/<TMPL_ELSE><TMPL_IF LIEN_SEARCH>Filing/</TMPL_IF></TMPL_IF></TMPL_IF>Case Number" maxlength="35">
            <span class="tooltip"><TMPL_IF BLJ_SEARCH>Filing/<TMPL_ELSE><TMPL_IF BANKRUPTCY_SEARCH>Filing/<TMPL_ELSE><TMPL_IF LIEN_SEARCH>Filing/</TMPL_IF></TMPL_IF></TMPL_IF>Case Number</span> 
        </label>
    </div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_FILING_JURISDICTION>
    <div class="input col col-3">
        <label>
            <select id="BOOL_FILING_JURISDICTION" name="BOOL_FILING_JURISDICTION" class="form-control">
                <option value="">Filing Jurisdiction</option>
                <TMPL_INCLUDE NAME="all_states_options_list.tpl">
            </select>            
            <span class="hidden-label">Filing Jurisdiction</span>
        </label>
    </div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_STATE>
    <div class="input col col-3">
        <label>
            <select id="BOOL_STATE" name="BOOL_STATE" class="form-control">
                <option value="">All States</option>
                <TMPL_INCLUDE NAME="all_states_options_list.tpl">
            </select>            
            <span class="hidden-label">State</span>
        </label>
    </div>
</TMPL_IF>

<TMPL_IF NAME=INPUT_BOOL_MILITARY_SERVICE_BRANCH>
    <div class="input col col-3">
        <label>
            <select name="BOOL_MILITARY_SERVICE_BRANCH" id="BOOL_MILITARY_SERVICE_BRANCH" class="form-control">
                <option selected="selected" value="">All Available</option>
                <option value="Army">US Army</option>
                <option value="Air Force">US Air Force</option>
                <option value="Marines">US Marines</option>
                <option value="Navy">US Navy</option>
            </select>
            <span class="hidden-label">Military Service Branch</span>
        </label>
    </div>
</TMPL_IF>

