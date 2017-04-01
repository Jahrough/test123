<div id="search-form-fields" class="col col-7">
    <div class="input-group-subtext input-group-pulltop">Terms &amp; Connectors: Modify your search using connectors: "car and boat", "car or auto", "car w/5 accident" - <a href="javascript:void(0);" id="search-connector-examples">More Examples</a></div>
    <div class="row">
        <div class="input col col-3">
            <label>
                <select id="AO_SOURCE_DROP" name="AO_SOURCE_DROP" class="form-control required" data-value="<TMPL_VAR NAME=AO_SOURCE_DROP>">
                    <option value="">Select a source ...</option>
                    <option value="AgencyOpinionsSTSEC">State SEC Opinions</option>
                    <option value="AgencyOpinionsTAXCTR">State Tax Opinions</option>
                </select>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <span class="sr-only">State</span>
                <select id="AO_COURT_DROP" name="AO_COURT_DROP" class="form-control required" data-value="<TMPL_VAR NAME=AO_COURT_DROP>">
                    <option value="">Select a state...</option>
                    <option value="All">All</option>
                    <option value="Alabama">Alabama</option>
                    <option value="Alaska">Alaska</option>
                    <option value="American Samoa">American Samoa</option>
                    <option value="Arizona">Arizona</option>
                    <option value="Arkansas">Arkansas</option>
                    <option value="California">California</option>
                    <option value="Colorado">Colorado</option>
                    <option value="Connecticut">Connecticut</option>
                    <option value="Delaware">Delaware</option>
                    <option value="District of Columbia">District of Columbia</option>
                    <option value="Florida">Florida</option>
                    <option value="Georgia">Georgia</option>
                    <option value="Guam">Guam</option>
                    <option value="Hawaii">Hawaii</option>
                    <option value="Idaho">Idaho</option>
                    <option value="Illinois">Illinois</option>
                    <option value="Indiana">Indiana</option>
                    <option value="Iowa">Iowa</option>
                    <option value="Kansas">Kansas</option>
                    <option value="Kentucky">Kentucky</option>
                    <option value="Louisiana">Louisiana</option>
                    <option value="Maine">Maine</option>
                    <option value="Maryland">Maryland</option>
                    <option value="Massachusetts">Massachusetts</option>
                    <option value="Michigan">Michigan</option>
                    <option value="Minnesota">Minnesota</option>
                    <option value="Mississippi">Mississippi</option>
                    <option value="Missouri">Missouri</option>
                    <option value="Montana">Montana</option>
                    <option value="Nebraska">Nebraska</option>
                    <option value="Nevada">Nevada</option>
                    <option value="New Hampshire">New Hampshire</option>
                    <option value="New Jersey">New Jersey</option>
                    <option value="New Mexico">New Mexico</option>
                    <option value="New York">New York</option>
                    <option value="North Carolina">North Carolina</option>
                    <option value="North Dakota">North Dakota</option>
                    <option value="Ohio">Ohio</option>
                    <option value="Oklahoma">Oklahoma</option>
                    <option value="Oregon">Oregon</option>
                    <option value="Pennsylvania">Pennsylvania</option>
                    <option value="Puerto Rico">Puerto Rico</option>
                    <option value="Rhode Island">Rhode Island</option>
                    <option value="South Carolina">South Carolina</option>
                    <option value="South Dakota">South Dakota</option>
                    <option value="Tennessee">Tennessee</option>
                    <option value="Texas">Texas</option>
                    <option value="Utah">Utah</option>
                    <option value="Vermont">Vermont</option>
                    <option value="Virgin Islands">Virgin Islands</option>
                    <option value="Virginia">Virginia</option>
                    <option value="Washington">Washington</option>
                    <option value="West Virginia">West Virginia</option>
                    <option value="Wisconsin">Wisconsin</option>
                    <option value="Wyoming">Wyoming</option>
                </select>
            </label>
        </div>
    </div>    
    <fieldset>
        <legend class="sr-only">Search by text in the document</legend>
        <div class="row">
            <div class="input col col-9">
                <label>
                    <textarea name="ARTICLE_WORDS" class="form-control" id="ARTICLE_WORDS" placeholder="Words in the Article"><TMPL_VAR NAME=ARTICLE_WORDS></textarea>
                    <span class="tooltip">
                        Words in the Article
                        <span class="font-10">ex. FDA and kids or children and nutrition</span>
                    </span> 
                </label>
            </div>
        </div>    
        <div class="row">
            <div class="input col col-9">
                <label>
                    <textarea name="WITHOUT_WORDS" class="form-control" id="WITHOUT_WORDS" placeholder="Without the Words"><TMPL_VAR NAME=WITHOUT_WORDS></textarea>
                    <span class="tooltip">
                        Without the Words
                        <span class="font-10">ex. car and boat</span>
                    </span> 
                </label>
            </div>
        </div>    
    </fieldset>
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
</div>
