<div id="search-form-fields" class="col col-7">
    <span class="search-note">Search emerging adverse news trends by subject or industry. News Trends leverages our automated classification system that analyzes documents for relevant news subjects and industries. Apply a date and, optionally a name or company name; select a topic or topics within a given category and click Search.</span>
    <div class="row">
        <div class="input col col-3">
            <label for="DATE_OPTIONS">
                <span class="sr-only">Date range</span>
                <select name="DATE_OPTIONS" id="DATE_OPTIONS" data-value="<TMPL_VAR NAME=DATE_OPTIONS>" class="form-control">
                    <option value="Today">Today</option>
                    <option value="Previous Week">Previous Week</option>
                    <option value="Previous Month">Previous Month</option>
                    <option value="Previous 60 Days">Previous 60 Days</option>
                    <option value="Previous 90 Days">Previous 90 Days</option>
                </select>
            </label>
        </div> 
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
        <div class="input col col-6">
            <label>
                <input type="text" id="COMPANY_NAME" class="form-control" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name" maxlength="50">
                <span class="tooltip">Company Name</span> 
            </label>
        </div>
    </div>    
    <input type="hidden" id="NEWS_TRENDS_TOPICS" class="form-control" name="NEWS_TRENDS_TOPICS" value="<TMPL_VAR NAME=NEWS_TRENDS_TOPICS>">
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
