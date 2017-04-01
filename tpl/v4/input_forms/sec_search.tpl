<div id="search-form-fields" class="col col-7">
    <span class="search-note">Modify your search using connectors: "car 
        <strong>and</strong> 
        boat", "car 
        <strong>or</strong> auto", "car 
        <strong>w/5</strong> accident" - 
        <a href="javascript:void(0);" id="search-connector-examples">More Examples</a>
    </span>
    <div class="row">
        <div class="input col col-6">
            <label>
                <input type="text" id="COMPANY_NAME" class="form-control" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name" maxlength="50">
                <span class="tooltip">Company Name</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="TICKER" name="TICKER" class="form-control" value="<TMPL_VAR NAME=TICKER>" placeholder="Ticker" maxlength="10">
                <span class="tooltip">Ticker</span> 
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
        <div class="input col col-3">
            <label>
                <span class="sr-only">Search by a date range</span>
                <select name="DATE_DROP" id="DATE_DROP" class="form-control" onchange="$('#FROM_DATE, #TO_DATE').val(''); toggle_custom_dates_radios();" data-value="<TMPL_VAR NAME="DATE_DROP_VALUE">" data-default-value="<TMPL_VAR NAME="DATE_DROP_DEFAULT_VALUE">" >
                    <TMPL_VAR DATE_DROP_CONTENTS_OPTIONS>
                </select>
            </label>
        </div>
        <fieldset>
            <legend class="sr-only">Enter custom date range</legend>
            <div class="input col col-3">
                <label>
                    <span class="sr-only">date start</span>
                    <input type="text" id="FROM_DATE" name="FROM_DATE" class="form-control hidden" value="<TMPL_VAR NAME=FROM_DATE>" placeholder="From" maxlength="10">
                    <span class="tooltip" aria-hidden="true">From<br>ex. 01/01/99, 01/01/1999,  1/ 1/1999</span> 
                </label>
            </div>
            <div class="col col-3">
                <label>
                    <span class="sr-only">date end</span>
                    <input type="text" id="TO_DATE" name="TO_DATE" class="form-control hidden" value="<TMPL_VAR NAME=TO_DATE>" placeholder="To" maxlength="10">
                    <span class="tooltip" aria-hidden="true">To<br>ex. 01/01/99, 01/01/1999,  1/ 1/1999</span> 
                </label>
            </div>
            <span id="DATE_HELP" class="hidden col col-1">
                <div class="additional-info">
                    <a id="custom-date-help" class="svg-icon-tiny help-icon" href="javascript:void(0);">
                        <span class="sr-only">Open help window on entering custom dates</span>
                        <span class="tooltip centered" aria-hidden="true">Help</span>
                    </a>
                </div>
            </span>
        </fieldset>
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
    <div class="row">
        <div id="additional-content-container" class="col-sm-12">
            <h3>Filing</h3>
            <label class="select">
                <select id="SEC_FILING" name="SEC_FILING" class="form-control" <TMPL_IF SEC_FILING>data-value="<TMPL_VAR NAME=SEC_FILING>"</TMPL_IF> data-default-value="SECAll">
                    <option value="SECAll" selected="selected">All Available SEC Filings</option>
                    <option value="SECForm8K">SEC Form 8-K Filings</option>
                    <option value="SECForm10K">SEC Form 10-K</option>           
                    <option value="SECForm10Q">SEC Form 10-Q</option>
                    <option value="SECForm20F">SEC Form 20-F</option>
                    <option value="SECAnnualRpt">SEC Annual Reports to Shareholders</option>
                    <option value="SECProxy">SEC Proxy Statements</option>
                    <option value="SECExhibits">SEC Filings, Exhibits Only</option>
                    <option value="SECProspectus">SEC Prospectuses</option>
                    <option value="SECRegStatements">SEC Registration Statements</option>
                    <option value="SECWilliamsAct">SEC Williams Act Filings</option>
                </select>
            </label>
        </div>
    </div>
</div>
