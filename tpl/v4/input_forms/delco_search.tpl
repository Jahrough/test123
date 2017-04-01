<div id="search-form-fields" class="col col-7">
    <div class="row">
        <h3 class="warning">
            Transactional Fees of $35 will apply. Charges will not count toward minimum monthly commitment.
        </h3>
        <div class="col col-9">
            <label class="select">
                <span class="sr-only">Company Type</span>
                <select id="COMPANY_TYPE" name="COMPANY_TYPE" class="form-control" data-value="<TMPL_IF NAME=COMPANY_TYPE><TMPL_VAR NAME=COMPANY_TYPE><TMPL_ELSE>4</TMPL_IF>">
                    <option value="4">All (Delaware Companies, Previous Name and Name Reservation)</option>
                    <option value="1">Delaware Companies (Active and Inactive)</option>
                    <option value="2">Previous Company Names</option>
                    <option value="3">Name Reservation</option>
                </select>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-6">
            <label>
                <input type="text" id="COMPANY_NAME" class="form-control" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name" maxlength="80">
                <span class="tooltip">Company Name</span> 
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
