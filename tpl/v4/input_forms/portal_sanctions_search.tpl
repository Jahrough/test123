<div id="search-form-fields" class="col col-7">
    <fieldset class="row">
        <legend class="sr-only">Change search type</legend>
        <script>
            var input_group_arr = [
                ['COMPANY_NAME', 'CASE_NUMBER', 'LAST_NAME', 'FIRST_NAME'],
                ['BOOL_COMPANY_NAME', 'BOOL_CASE_NUMBER', 'BOOL_NAME_FULL', 'ADDITIONAL_TERMS', 'TERMS_SEGMENTS', 'TERMS_SEGMENTS_ADD']
            ];
            var segment_arr = [
                ['Date: Equals', 'date(is )'],
                ['Date: After', 'date(aft )'],
                ['Date: Before', 'date(bef )'],
                ['Date: Between', 'date(btw  and )'],
                ['Jurisdiction', 'jurisdiction()'],
                ['Name', 'name()'],
                ['Number', 'number()']
            ];
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
        <div class="input col col-3">
            <label>
                <input type="text" id="CASE_NUMBER" name="CASE_NUMBER" class="form-control" value="<TMPL_VAR NAME=CASE_NUMBER>" placeholder="Case Number" maxlength="35">
                <span class="tooltip">Case Number</span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input class="form-control" type="text" id="BOOL_CASE_NUMBER" name="BOOL_CASE_NUMBER" value="" placeholder="Case Number" maxlength="35">
                <span class="tooltip">Case Number</span> 
            </label>
        </div>
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
    <hr class="for-radio-group for-radio-group-1">
    <section class="for-radio-group for-radio-group-1">
    <div class="row">
        <div id="search-options-container" class="col-sm-12">
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
        </div>
    </div>
    </section>
</div>
