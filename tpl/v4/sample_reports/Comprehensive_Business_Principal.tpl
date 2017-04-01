<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Comprehensive Business Principal Report</title>

<link href="<TMPL_VAR HTMLPATH>/v4/css/jquery-ui.css" rel="stylesheet" type="text/css" media="screen">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/bootstrap-accessibility_1.0.3.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/evolution.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/utility.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/search_page.css"> 
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/icons.css">


    
    <link class="dynamic-css" rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/Results.css">
    <link class="dynamic-css" rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/search_report.css">
    <link class="dynamic-css" rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/source_doc.css">
    <body class="menu-on-top">
        <div id="main">
        
            <header id="header">    
    <!-- end pulled right: nav area -->
    <!-- BEGIN: v4/header_logo.tpl -->
<h1>
    <a href="javascript:void(0);">
        
            <img src="<TMPL_VAR HTMLPATH>/v4/img/SampleReport.png" alt="LexisNexis© Sample Report™" id="top">
        
    </a>
        
    
</h1>    
<!-- END: v4/header_logo.tpl -->
    <!-- #TOGGLE LAYOUT BUTTONS -->
    <!-- pulled right: nav area -->
    <div class="pull-right">    
        
      
      
        <div class="btn-group btn-group2" role="group">
            <button data-toggle="dropdown" id="options-list" type="button" class="btn btn-link dropdown-toggle">
                
                    Sam Smith
                
                <span class="gear svg-icon-tiny"></span>
                <span class="fa fa-caret-down"></span>
            </button>
            <ul role="menu" class="dropdown-menu">
                <li class="hlOptions">
                    <a href="javascript:void(0);" onclick="">Preferences</a>
                </li>
                
                <li class="hlOptions">
                    <a href="javascript:void(0);" onclick="">Administration</a>
                </li>
            
                <li class="hlOptions">
                    <a href="javascript:void(0);" onclick="">Change Password</a>
                </li>
                
                    
                        <li class="hlOptions">
                            <a href="javascript:void(0);" onclick="">Disabled Searches</a>
                        </li>
                    
                 
                <li class="divider"></li>
                <li>
                    <a href="javascript:void(0);" onclick="">Announcements</a>
                </li>
            </ul>
        </div>  
        <div class="btn-group btn-group2" role="group">
            <button data-toggle="dropdown" type="button" class="btn btn-link sign-up" id="logout-button" data-logout-msg="You can improve your security further after logging out by closing this opened browser" data-action="userLogout" onclick="">
                Sign Out
            </button>
        </div>
      
      
    </div>
</header>
<section>
            
                
              <div id="occcrtoptabsarea" class="hidden">
    <ul>
        <li id="tab_ba">
            <button type="button" onclick="javascript:send_portal_event('SEARCH2/SHOW_BUSINESS_ASSURANCE');">Business Assurance</button>
        </li>
        <li id="tab_oc">
            <button type="button" onclick="javascript:send_portal_event('SEARCH2/SHOW_OCCCR');">Offline Civil &amp; Criminal Court Records (OCCCR)</button>
        </li>
        <li id="tab_rt">
            <button type="button" onclick="javascript:send_portal_event('SEARCH2/SHOW_OCCCR_RESULTS');">Direct-to-Source Results</button>
        </li>
        <li class="right">
            
            
            
                <button type="button" class="btn btn-link" onclick="javascript:send_portal_event('SEARCH/SHOW_MENU');">
                
                <strong>Return to searches &gt;&gt;</strong>
            </button>
        </li>
    </ul>
</div>
                    
                    <div class="container-fluid" id="search-container">
                        <span id="web20-search-flags" class="hidden" data-search-disabled="0" data-search-error-message="0" data-report-error-message="0" data-is-from-main-menu="0" data-hit-tab-limit="0" data-rerun-display-event="0" data-web20-page-title="Verification of Occupancy" data-search-idx="" data-clear-browser-cache-pages="" data-is-clk-search="0" data-is-search-within="0" data-search-within-terms="" data-webpubrec-request="0" data-is-new-window="0" data-active-tab="6d1e294e408a9c3d50729654d49bd421" data-tab-id="6d1e294e408a9c3d50729654d49bd421" data-page="0" data-is-report="1" data-report-has-form="1" data-show-event="SEARCH2/SHOW_VERIFICATION_OF_OCCUPANCY"></span>
    
        <div id="search-form-row" class="row no-print hidden">
            
                
                    <header id="search-form-header">
    <h2>
        <strong>Verification of Occupancy</strong>
    </h2>
    <div class="additional-info" id="add_to_fav">
        <button type="button" class="favorites-star-red svg-icon-normal btn btn-link">
            <span class="tooltip centered">Add to Favorites</span>
        </button>
    </div>
    <div id="header-addl-wrapper">
        <div id="form-help-icon-container">
            <span class="additional-info">
                <a href="javascript:void(0);" class="help-search help-icon svg-icon-tiny">
                    <span class="tooltip centered">Help</span>
                </a>
            </span>
        </div>

        <div class="additional-info" id="search-form-actions">
            
            
                    <a href="javascript:void(0);" id="source-link" class="button-icon ctrls-text-link">Source</a>
             
            <script>
    var _start_page_banner    = false;
</script>
<span id="start-page-link" class="button-icon hidden start-page" data-placement="bottom" data-original-title="My Start Page">My Start Page</span>
<a href="javascript:void(0);" onclick="javascript:update_start_page_prefs(this);" id="make-start-page-link" class="button-icon  make-start-page" data-placement="bottom" data-original-title="Make This My Start Page" data-startpage-idx="">Make This My Start Page</a>

        </div>
    </div>
</header>

                
            
            
    <form name="VERIFICATION_OF_OCCUPANCY_REPORT" action="/app/evolution/main" method="post" class="smart-form" onkeypress="" onkeyup="javascript:isEnterKeyDown=false; submitFormKeyPress(event);" novalidate>


    <input name="EVENT" value="REPORT2/VERIFICATION_OF_OCCUPANCY" type="hidden">

  <input name="SESSION_ID" value="5408fe4f75c02b939792245f88ada2af" type="hidden">
  <input name="CSRF_TOKEN" value="902a037dfba5529862f156a2cbcbba4b" type="hidden">  

<input id="REPORT_ACTION" name="ACTION_REPORT" value="/app/evolution/report" type="hidden">
<input name="CURRENT_EVENT" id="CURRENT_EVENT" value="REPORT2/VERIFICATION_OF_OCCUPANCY" type="hidden">
<input name="RECID" value="" type="hidden">
<input name="FULL_NAME" value="" type="hidden">
<input name="SKIN_TYPE" value="bps" type="hidden">
<input name="APPLICATION_TYPE" value="aml" type="hidden">
<input name="COURT_SEARCH_WIZARD" value="" type="hidden">
<input name="PMTAB" value="0" type="hidden">
<input name="MYACCTAB" value="" type="hidden">

<!--
<INPUT type="hidden" NAME="REQUIRE_REF_CODE" VALUE="0">
<INPUT type="hidden" NAME="REQUIRE_REF_CODE_EXTRA" VALUE="">
-->





    



<input name="ACTION_MISC" value="/app/evolution/misc" type="hidden">
<input name="QS_OPTION" id="QS_OPTION" value="SSN" type="hidden">
<script>    var isSrchEnabled = 1;</script>

































































































<div id="search-form-fields" class="col col-7">
    <strong class="textRed">Required Input: </strong>Last Name, First Name, Street, City, State
    <span class="search-note">* Entry Required. For Optimal results Address, City, State, Zip, Phone, SSN and DOB should be populated.</span>
    <div class="row">
        <div class="input col col-3">
            <label>
                <input autocomplete="off" id="SSN" name="SSN" value="329-66-8142" placeholder="SSN" class="form-control" maxlength="30" type="text">
                <span class="tooltip">
                    SSN
                    <span class="font-10"> (e.g. 123456789, 123-45-6789, 123 45 6789)</span>
                </span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input id="UNIQUEID" class="form-control" name="UNIQUEID" value="" placeholder="LexID®" maxlength="14" type="text">
                <span class="tooltip">LexID<sup class="sup-reg-symbol">®</sup></span> 
            </label>
        </div>
        <div class="additional-info input btn-container">
            <button type="button" id="UNIQUEID_HELP_ICO" data-clickaway="on" data-toggle="popover" data-title="LexID<sup class=&quot;sup-reg-symbol&quot;>®</sup> Information" class="btn btn-link btn-tight info-icon svg-icon-tiny" data-original-title="" title="">
                <span class="sr-only">Learn more information about LexID</span>
            </button>
            <div class="popper-content hide">
              <div class="popover-lexid">
                <p>LexisNexis<sup class="sup-reg-symbol">®</sup> LexID<sup class="sup-reg-symbol">®</sup> is powerful data linking and analysis technology that works behind the scenes to make connections between seemingly unrelated data.</p>
                <p>After an individual's unique LexID<sup class="sup-reg-symbol">®</sup> number is returned in your initial search, you can then initiate a new search on the LexID<sup class="sup-reg-symbol">®</sup> number for the most comprehensive, relevant results possible.</p>
              </div>
            </div>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input id="FORCE_LAST" name="FORCE_LAST" class="form-control" value="Thigpen" placeholder="Last Name *" maxlength="35" type="text">
                <span class="tooltip">Last Name *</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input id="FORCE_FIRST" name="FORCE_FIRST" class="form-control" value="james" placeholder="First Name *" maxlength="35" type="text">
                <span class="tooltip">First Name *</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input id="MI" name="MI" class="form-control" value="" placeholder="Middle or Initial" maxlength="35" type="text">
                <span class="tooltip">Middle or Initial</span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input id="PHONE" name="PHONE" class="form-control" value="" placeholder="Phone" maxlength="15" type="text">
                <span class="tooltip">
                    Phone
                    <span class="font-10">(e.g. 9375550110, 937-555-0110, (937) 555-0110)</span>
                </span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input id="DOB" class="form-control" name="DOB" value="" placeholder="Date of Birth" maxlength="10" type="text">
                <span class="tooltip">
                    Date of Birth
                    <br>
                    <span class="font-10">(mm/dd/yyyy)</span>
                </span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-6">
            <label>
                <input id="FORCE_STREET_ADDRESS" class="form-control" name="FORCE_STREET_ADDRESS" value="4809 winona terrace" placeholder="Street Address *" maxlength="35" type="text">
                <span class="tooltip">Street Address * <span class="font-10"> (e.g. 123 Main St Apt 1)</span></span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input id="FORCE_CITY" class="form-control" name="FORCE_CITY" value="cincinnati" placeholder="City *" maxlength="35" type="text">
                <span class="tooltip">City *</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <span class="sr-only">State</span>
                <select id="FORCE_STATE" name="FORCE_STATE" class="form-control" data-value="OH">
                    <option value="">All States *</option>
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
                <input id="ZIP" name="ZIP" class="form-control" value="" placeholder="Zip Code" maxlength="10" type="text">
                <span class="tooltip">Zip Code</span>
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input id="ASOFDATE" name="ASOFDATE" class="form-control" value="" placeholder="As Of Date" maxlength="10" type="text">
                <span class="tooltip">
                    As of Date<br>(mm/dd/yyyy)</span> 
            </label>
        </div>
    </div>    
</div>
<div class="col col-3" id="search-options">
    <div class="row" style="margin:0;">
        <div class="input col col-10" style="padding:0;">
            <label>
                <input id="REFERENCE_CODE" class="form-control" name="REFERENCE_CODE" value="" maxlength="32" placeholder="Reference ID" type="text">
                <span class="tooltip">Reference ID </span> 
            </label>
        </div>
        <div id="REFERENCE_CODE_CRITERIA" class="col col-10">
            <span id="ref_code_criteria" class="textGray hidden">The Reference ID must contain only valid characters. </span>
        </div>
    </div>
    <hr>
</div>







    <div class="col col-7" id="portal-search-buttons">
  
    
    
    
    
    <div class="pull-right">
        
            
                
                    <input name="DIRECT_REPORT" value="1" type="HIDDEN">
                
                
                  
                            <input class="btn btn-danger" id="searchBtn" value="Search" onblur="ENTER_FOCUS=0;" onfocus="ENTER_FOCUS=1" onclick="if(!web20_validate('VERIFICATION_OF_OCCUPANCY_REPORT')){ return false;}else{ show_loading(); send_ajax_event('REPORT2/VERIFICATION_OF_OCCUPANCY','/app/evolution/misc');}" type="button">
                  
                
            
            
              
                <input class="btn btn-clear" onclick="javascript:web20_clear_all();return false;" value="Clear" type="button">
              
            
        
        
        <div id="verify_btn_step" class="hidden">
            <button class="btn btn-danger" id="ver_continue" onclick="if(!id_validate()){return false;}else{javascript:show_loading(); verify_iid_qa_quiz();}" type="button">Continue</button>
        </div>
        <div id="results_btn_step" class="hidden">
            <button class="btn btn-danger" id="res_continue" onclick="javascript:web20_clear_all();pm_tab_v3('SEARCH2/SHOW_ID_VERIFY');" type="button">Request New Q &amp; A</button>
        </div>
    </div>
    
    
    
    
  
</div>







<input name="IS_FROM_FORM" value="1" type="hidden">

</form>


        </div>
    

    



                        
                            <!-- search_hidden_form.tpl -->
<form name="SEARCH" action="/app/evolution/main" method="post" aria-hidden="true">
  <input name="SESSION_ID" value="5408fe4f75c02b939792245f88ada2af" type="hidden">
  <input name="CSRF_TOKEN" value="902a037dfba5529862f156a2cbcbba4b" type="hidden">  

<input name="NAME_FULL" value="" class="resettable" type="HIDDEN">
<input name="LAST_NAME" value="" class="resettable" type="HIDDEN">
<input name="FIRST_NAME" value="" class="resettable" type="HIDDEN">
<input name="MI" value="" class="resettable" type="HIDDEN">
<input name="DOB" value="" class="resettable" type="HIDDEN">
<input name="AGE_LOW" value="" class="resettable" type="HIDDEN">
<input name="AGE_HIGH" value="" class="resettable" type="HIDDEN">
<input name="SSN" value="" class="resettable" type="HIDDEN">
<input name="STREET_ADDRESS" value="" class="resettable" type="HIDDEN">
<input name="CITY" value="" class="resettable" type="HIDDEN">
<input name="STATE" value="" class="resettable" type="HIDDEN">
<input name="ZIP" value="" class="resettable" type="HIDDEN">
<input name="ZIP4" value="" class="resettable" type="HIDDEN">
<input name="PHONE" value="" class="resettable" type="HIDDEN">
<input name="RECID" value="" class="resettable" type="HIDDEN">
<input name="LICENSE_NUMBER" value="" class="resettable" type="HIDDEN">
<input name="LICENSE_STATE" value="" class="resettable" type="HIDDEN">
<input name="LICENSE_PLATE" value="" class="resettable" type="HIDDEN">
<input name="VIN" value="" class="resettable" type="HIDDEN">
<input name="COMPANY_NAME" value="" class="resettable" type="HIDDEN">
<input name="PHONETICS" value="" class="resettable" type="HIDDEN">
<input name="INCLUDE_VERIFIED" value="" class="resettable" type="HIDDEN">
<input name="INCLUDE_REALTIME" value="" class="resettable" type="HIDDEN">
<input name="USE_BANKRUPTCIES" value="1" type="HIDDEN">
<input name="FRAUD_DEFENSE_IND" value="" class="resettable" type="HIDDEN">
<input name="DOMAIN_NAME" value="" class="resettable" type="HIDDEN">
<input name="ACCIDENT_NUMBER" value="" class="resettable" type="HIDDEN">
<input name="ACCIDENT_STATE" value="" class="resettable" type="HIDDEN">
<input name="TRADE_NAME" value="" class="resettable" type="HIDDEN">
<input name="CLIPBOARD" value="" class="resettable" type="HIDDEN">
<input name="UNIQUEID" value="" class="resettable" type="HIDDEN">
<input name="DUNS_NUMBER" value="" class="resettable" type="HIDDEN">
<input name="RECENT_SEARCH_INDEX" value="" class="resettable" type="HIDDEN">
<input name="TMS_ID" value="" class="resettable" type="HIDDEN">
<input name="FILING_NUMBER" value="" class="resettable" type="HIDDEN">
<input name="FULLADDRHIST" value="" class="resettable" type="HIDDEN">
<input name="COURT_LINK_TYPE" value="" class="resettable" type="HIDDEN">

<!-- Driver License specific vars -->
<input name="NON_GOVERNMENTAL" value="" class="resettable" type="HIDDEN">

<!-- DA Specific vars -->
<input name="LOOKUP_TYPE" value="" class="resettable" type="HIDDEN">
<input name="RADIUS" value="" class="resettable" type="HIDDEN">
<input name="COUNTY" value="" class="resettable" type="HIDDEN">
<input name="EXCLUDE_CITY" value="" class="resettable" type="HIDDEN">
<!-- END DA Specific vars -->

<!-- Property Specific vars -->
<input name="PARCEL_ID" value="" class="resettable" type="HIDDEN">
<input name="PROP_TYPE" value="" class="resettable" type="HIDDEN">
<!-- END Property Specific vars -->

<!-- Business Specific vars -->
<input name="FEIN" value="" class="resettable" type="HIDDEN">
<input name="CHARTER_NUMBER" value="" class="resettable" type="HIDDEN">
<input name="STATE_ORIGIN" value="" class="resettable" type="HIDDEN">
<!-- END Business Specific vars -->

<!-- Bankruptcy / Liens Specific vars -->
<input name="CASE_NUMBER" value="" class="resettable" type="HIDDEN">
<input name="COURT_STATE" value="" class="resettable" type="HIDDEN">
<!-- END Bankruptcy Specific vars -->

<!-- Watercraft Specific vars -->
<input name="VESSEL_NAME" value="" class="resettable" type="HIDDEN">
<input name="VESSEL_NUMBER" value="" class="resettable" type="HIDDEN">
<input name="HULL_ID" value="" class="resettable" type="HIDDEN">
<!-- END Watercraft Specific vars -->

<!-- Aircraft Specific vars -->
<input name="AIRCRAFT_NUMBER" value="" class="resettable" type="HIDDEN">
<!-- END Aircraft Specific vars -->


<!-- Criminal Specific vars -->
<input name="DOC_NUMBER" value="" class="resettable" type="HIDDEN">
<!-- END Criminal Specific vars -->

<!-- DEA Substances Specific vars -->
<input name="REG_NUMBER" value="" class="resettable" type="HIDDEN">
<!-- END DEA Substances Specific vars -->

<!-- RT-MVR Specific vars -->
<input name="LOCAL_ONLY" value="" class="resettable" type="HIDDEN">
<!-- END DEA Substances Specific vars -->

<!-- Patriot Specific vars -->
<input name="OFAC_ONLY" value="" class="resettable" type="HIDDEN">
<input name="THRESHOLD" value="" class="resettable" type="HIDDEN">
<input name="SEARCH_TYPE" value="" type="HIDDEN">
<!-- END Patriot Specific vars -->

<!-- Provider Search vars -->
<input name="NPI_NUMBER" value="" class="resettable" type="HIDDEN">
<!-- End Provider Search vars -->

<!-- Sanction Search vars -->
<input name="OIG_EXCLU" value="" class="resettable" type="HIDDEN">
<!-- End Sanction Search vars -->

<!-- Sex Offender vars -->
<input name="OFFENSE_CATEGORY_SO" value="" class="resettable" type="HIDDEN">
<input name="SCARS" value="" class="resettable" type="HIDDEN">
<!-- End Sex Offender vars -->

<input name="REF_CODE_DROP_DOWN" value="0" type="HIDDEN">
<input name="RESULTS_TYPE" value="" type="HIDDEN">
<input name="REFERENCE_CODE" value="" type="HIDDEN">
<input name="REFERENCE_CODE2" value="" type="HIDDEN">
<input name="DOL_DATE" value="" type="HIDDEN">
<input name="EVENT" value="SEARCH/SEARCH" type="HIDDEN">
<input name="PAGE" value="" type="HIDDEN">
<input name="LIENS_PAGE" value="" type="HIDDEN">
<input name="MYACCTAB" value="" type="HIDDEN">
<input name="ENH_FLAT_RATE_COMP" value="" type="HIDDEN">

<!-- For XBPS to launch Archived News -->
<input name="SUBJECT" value="subject-hidden" class="resettable" type="HIDDEN">
<!-- End XBPS -->

<!-- For National Accident Search -->
<input name="NAT_ACC_ENABLE" value="0" class="resettable" type="HIDDEN">
<!-- End National Accident Search -->

<!-- For Portal Neighbors Search -->
<input name="LOCATION_ID" value="" class="resettable" type="HIDDEN">
<input name="STREET_NAME" value="" class="resettable" type="HIDDEN">
<input name="STREET_NUM" value="" class="resettable" type="HIDDEN">
<input name="PRE_DIR" value="" class="resettable" type="HIDDEN">
<input name="STREET_SUFFIX" value="" class="resettable" type="HIDDEN">
<input name="POST_DIR" value="" class="resettable" type="HIDDEN">
<input name="UNIT_NUM" value="" class="resettable" type="HIDDEN">
<input name="UNIT_DESIG" value="" class="resettable" type="HIDDEN">
<!-- End Portal Neighbors Search -->

<!-- For Social Media Locator -->
<input name="SML_DOB" value="" class="resettable" type="HIDDEN">
<input name="SML_EMAIL_1" value="" class="resettable" type="HIDDEN">
<input name="SML_EMAIL_2" value="" class="resettable" type="HIDDEN">
<input name="SML_EMAIL_3" value="" class="resettable" type="HIDDEN">
<input name="SML_EMAIL_4" value="" class="resettable" type="HIDDEN">
<input name="SML_EMAIL_5" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_LAST_NAME_1" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_LAST_NAME_2" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_LAST_NAME_3" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_LAST_NAME_4" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_LAST_NAME_5" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_FIRST_NAME_1" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_FIRST_NAME_2" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_FIRST_NAME_3" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_FIRST_NAME_4" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_FIRST_NAME_5" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_MIDDLE_NAME_1" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_MIDDLE_NAME_2" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_MIDDLE_NAME_3" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_MIDDLE_NAME_4" value="" class="resettable" type="HIDDEN">
<input name="SML_OTHER_MIDDLE_NAME_5" value="" class="resettable" type="HIDDEN">
<input name="SML_STREET_ADDRESS_1" value="" class="resettable" type="HIDDEN">
<input name="SML_STREET_ADDRESS_2" value="" class="resettable" type="HIDDEN">
<input name="SML_STREET_ADDRESS_3" value="" class="resettable" type="HIDDEN">
<input name="SML_STREET_ADDRESS_4" value="" class="resettable" type="HIDDEN">
<input name="SML_STREET_ADDRESS_5" value="" class="resettable" type="HIDDEN">

<input name="SML_CITY_1" value="" class="resettable" type="HIDDEN">
<input name="SML_CITY_2" value="" class="resettable" type="HIDDEN">
<input name="SML_CITY_3" value="" class="resettable" type="HIDDEN">
<input name="SML_CITY_4" value="" class="resettable" type="HIDDEN">
<input name="SML_CITY_5" value="" class="resettable" type="HIDDEN">

<input name="SML_STATE_1" value="" class="resettable" type="HIDDEN">
<input name="SML_STATE_2" value="" class="resettable" type="HIDDEN">
<input name="SML_STATE_3" value="" class="resettable" type="HIDDEN">
<input name="SML_STATE_4" value="" class="resettable" type="HIDDEN">
<input name="SML_STATE_5" value="" class="resettable" type="HIDDEN">

<input name="SML_ZIP_1" value="" class="resettable" type="HIDDEN">
<input name="SML_ZIP_2" value="" class="resettable" type="HIDDEN">
<input name="SML_ZIP_3" value="" class="resettable" type="HIDDEN">
<input name="SML_ZIP_4" value="" class="resettable" type="HIDDEN">
<input name="SML_ZIP_5" value="" class="resettable" type="HIDDEN">

<input name="SML_PHONE_1" value="" class="resettable" type="HIDDEN">
<input name="SML_PHONE_2" value="" class="resettable" type="HIDDEN">
<input name="SML_PHONE_3" value="" class="resettable" type="HIDDEN">
<input name="SML_PHONE_4" value="" class="resettable" type="HIDDEN">
<input name="SML_PHONE_5" value="" class="resettable" type="HIDDEN">


<!-- End Social Media Locator -->


<!-- BEGIN is this a disabled search? -->
<input name="SEARCH_DISABLED" value="" type="HIDDEN">
<!-- END is this a disabled search? -->

<!-- BEGIN Used for NEXT/PREV and Download to Excel -->
<input name="SEARCH_NAME" value="" type="HIDDEN">
<input name="SEARCH_INDEX" value="" type="HIDDEN">
<input name="CURRENT_EVENT" value="REPORT2/VERIFICATION_OF_OCCUPANCY" type="HIDDEN">
<!-- END Used for NEXT/PREV and Download to Excel -->

<!-- Person Search Plus vars -->
<input name="IN_HOUSEHOLD_TAB" value="" type="HIDDEN"> 
<!-- End Sanction Search vars -->

<!-- used by send_event to save EVENT value prior to altering it -->
<input name="SAVED_EVENT" value="" type="hidden">
<input name="DECISION_POPUP" value="1" type="hidden">

<!-- parent search id -->

<input name="PSID" value="6d1e294e408a9c3d50729654d49bd421" type="hidden">
<input name="ACTION_MISC" value="/app/evolution/misc" type="hidden">
<input name="SEARCH_FROM" value="" class="resettable" type="HIDDEN">
<input name="SEARCH_EVT" value="" type="HIDDEN">
<input name="LOG_AS" value="" class="resettable" type="hidden">
<input name="PAGE_TITLE_FROM_CLK_SEARCH" value="" class="resettable" type="hidden">
<input name="WEB20_HLPPATH" value="/evolution/web20_help" type="hidden">
<!--
<input type="hidden" name="G_PSID" value="">
-->

</form>


<!-- end search_hidden_form.tpl -->

                            <!-- map/hidden_form.tpl -->
<form name="MAP" action="/app/evolution/misc" method="post" target="MapWindow" onsubmit="map_copy_data()" aria-hidden="true">
  <input name="SESSION_ID" value="5408fe4f75c02b939792245f88ada2af" type="hidden">
  <input name="CSRF_TOKEN" value="902a037dfba5529862f156a2cbcbba4b" type="hidden">  

<input name="STREET_ADDRESS" value="" type="HIDDEN">
<input name="ADDRESS" value="" type="HIDDEN">
<input name="CITY" value="" type="HIDDEN">
<input name="STATE" value="" type="HIDDEN">
<input name="ZIP" value="" type="HIDDEN">
<input name="ZIP4" value="" type="HIDDEN">
<input name="REFERENCE_CODE" value="" type="HIDDEN">
<input name="EVENT" value="MAP/CREATE_MAP" type="HIDDEN">


<!-- BEGIN This is for having report option on a decision popup -->
<input name="KEY_VALUES_STR" value="" type="HIDDEN">
<input name="NUMERO" value="" type="HIDDEN">
<input name="GOOGLE_DISCLAIMER_ACCEPTED" value="0" type="HIDDEN">
<input name="GMAP_UNIQUE_ID" value="" type="HIDDEN">
<!-- END This is for having report option on a decision popup -->

</form>

<!-- end map/hidden_form.tpl -->


                            <script>

//Input rules for different click searches. "only" means only these will be allowed,
// "skip" means these will not be allowed. The underlying code will process either
// "skip" list (first priority) or "only" list, not both. Though "skip" is recommended,
// because most of the required input is populated, from which you have to skip the
// offending ones, choose what you need -- skip or only.
// If a search is not listed in clk_inputs, then all are allowed.
var clk_inputs = {
    79: {
        skip: {'LOCATION_ID':1},
    },
};

// keep these as part of input
var clk_keep = { 'REFERENCE_CODE':1, 'DOL_DATE':1, 'PAGE':1, 'LOOKUP_TYPE': 1, 'INCLUDE_VERIFIED':1, 'INCLUDE_REALTIME':1, 'PHONETICS':1 };

//Research Panel Global Obj ==========
var RP_obj = {
    'typeFullName': {
        'NAME: ': [0, 46, 42, 13, 4, 3, 30, 45, 31, 32, 33, 38, 10, 11, 19, 29, 91, 9, 23, 8, 55, 57, 64, 65, 1, 2, 16, 21, 5, 66, 67, 79, 6, 105, 18, 24, 43, 39, 115, 170, 26, 39, 114]
    },
    'typeSSN': {
        'SSN: ': [0, 46, 42, 13, 4, 3, 30, 45, 31, 32, 33, 38, 10, 11, 19, 29, 91, 9, 23, 170, 105, 114, 175] // Complete List
    },
    'typeLexID': {
        'LEXID: ': [46, 0, 42, 79, 98, 175, 91, 43, 3, 10, 11, 114, 104, 170, 1, 2, 115, 4, 175, 98, 31, 16, 38, 23, 105, 170, 29, 45, 18, 19, 'DTR']
    },
    'typeAddr': {
        // 311 -> location report
        // 89  -> neighbors
        // 90  -> PERSON associates (requires address)
        // 79  -> phones plus
        // 164 -> property history report
        'ADDRESS: ': [311, 89, 90, 79, 164]
    },
    'typeAddr2': {
        // 311 -> location report
        // 89  -> neighbors
        // 120 -> ADDRESS associates (requires uniqueid)
        // 79  -> phones plus
        // 164 -> property history report
        'ADDRESS: ': [311, 89, 120, 79, 164]
    },
    'typeBJL': {
        'ADDRESS: ': [311, 89, 90, 79]
    },
    'typeMvr': {
        // 311 -> location report
        // 89  -> neighbors
        // 79  -> phones plus
        // 164 -> propert history report
        'ADDRESS: ': [311, 89, 79, 164]
    },
    'typeProp': {
        'ADDRESS: ': [1, 2, 341]
    },
    'typePropPlus': {
        'ADDRESS: ': [1, 2, 45, 311, 89, 294]
    },
    'typePhone': {
        'PHONE: ': [0, 79]
    },
    'typeMap': {
        'ADDRESS: ': [0, 46, 42, 13, 4, 3, 30, 45, 31, 32, 33, 38, 10, 11, 19, 29, 91, 9, 23, 8, 55, 57, 64, 65, 1, 2, 16, 21, 5, 66, 67, 79, 6, 105, 18, 24, 43, 39,117]
    },
    'typeVIN': {
        'VIN: ': [4, 18, 103]
    },
    'typeDL': {
        'DL: ': [3, 4, 18, 103]
    },
    'typePLATE': {
        'LICENSE PLATE: ': [4, 18, 103]
    },
    'typeLICENSE': {
        'LICENSE NUMBER: ': [23]
    },
    'typePhoneCA': {
        'PHONE: ': [100]
    },
    'typeAddrCA': {
        'ADDRESS: ': [100]
    },
    'typeFullNameCA': {
        'NAME: ': [100]
    },
    'typeFEIN': {
        'FEIN: ': [13, 8, 114, 42, 9, 11, 10]
    },   
    'typeCompany': {
        'COMPANY NAME: ': [13, 42, 8, 9, 11, 10, 40, 41, 16, 23, 85, 4, 45, 38, 6, 26, 18, 24, 17, 58, 107, 114]
    },
    'typeURL': {
        'URL: ': [17, 999]
    },
    'typeFilingNumber': {
        'Filing Number: ': [9, 58]
    },
    'typeFilingNumberMD': {
        'Filing Number: ': [43]
    },
    'typeCaseNumber': {
        'Case Number: ': [10, 114]
    },
    'typeRegNum': {
        'Registration Number: ': [38]
    },
    'typeTradeName': {
        'Trade Name: ': [33]
    },
    'typeFirearmsLicenseNumber': {
        'License Number: ': [33]
    },
    'typeACCIDENT': {
        'Accident Number: ': [18]
    },
    'typeHullID': {
        'HullID: ': [16]
    },
    'typeParcelNum': {
        'Parcel Number: ': [1, 2, 115, 86]
    },
    'typeCHARTER': {
        'Charter Number: ': [8]
    },
    'typeVesselName': {
        'Vessel Name: ': [16]
    },
    'typeDAAddr': {
        // 14  -> address report
        // 36  -> asset report
        // 89  -> neighbors
        // 90  -> associates
        // 79  -> phones plus
        'ADDRESS: ': [14, 36, 89, 90, 79]
    },
    'typeAccidentAddr': {
        'ADDRESS: ': [14, 89, 79, 36]
    },
    'typeLocationAddr': {
        'ADDRESS: ': [89, 90, 79, 341]
    },
    'typeAddrFAB': {
        // 311 -> location report
        // 164 -> propert history report
        'ADDRESS: ': [311, 164]
    },
    'typePhoneFAB': {
        // 79  -> phone plus search
        // 0   -> person search
        // 13  -> business search
        'PHONE: ': [79, 0, 13]
    },
    'typeAddrVessel': {
        // 311 -> location report
        // 89  -> neighbors
        // 79  -> phones plus
        // 164 -> propert history report
        'ADDRESS: ': [311, 89, 79, 164]
    },
    'typeAddrSoSFiling': {
        // 311 -> location report        
        // 164 -> propert history report
        'ADDRESS: ': [311, 164]
    },  
    'typeAircraftAddr': { 
        // 311 -> location report 
        // 89  -> neighbors 
        // 79  -> phones plus 
        // 164 -> propert history report 
        'ADDRESS: ': [311, 89, 79, 164] 
    },
};


</script>

                            <div id="search_decisions" class="hidden">
     <ul>
     
        <li id="SD_IDX_89"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_NEIGHBORS');">Find Neighbors</a></li>
        <!--
        <li id="IDX_20"><a href="javascript:void(0);">Get Map</a></li>
        -->
     
     
     <li id="SD_IDX_90"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_ADDRESS_ASSOCIATES','cp_clkassociates');">Find Associated Persons</a></li>
     <li id="SD_IDX_120"><a data-type="DID" href="javascript:srchDecisionEvt('SEARCH2/SEARCH_ADVANCED_ADDR','cp_clkalladdr');">Address Associates</a></li>
     
     
    
        <li id="SD_IDX_164" data-isreport="1"><a href="javascript:void(0);" onclick="javascript:build_web20_decision_report(this,'REPORT2/SEARCH_PROP_HISTORY_REPORT',120);">Property History Report</a></li>
    
    

  

    <!-- TODO comment out person search for All now, but later add LE Vertical check
    -->
    <!-- Should come up with some solution so that in the magnifying drop down, we can show Find a Person OR Find People with this Phone OR something else, as desired-->
    
      <li id="SD_IDX_0"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_FAP', 'cp_clkphone', 'PHONE_CLICK_SEARCH');">Find People with this Phone</a></li>
    
    <!-- -->

    

  

    
    <li id="SD_IDX_42"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_PAW');">People At Work</a></li>
    

    

    
    <li id="SD_IDX_9"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_UCC');">UCC</a></li>
    


    
     
    


    


    
        <li id="SD_IDX_58"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_FICTIOUS');">Fictitious Business Name</a></li>
    

  
    
    <li id="SD_IDX_4"><a href="javascript:srchDecisionEvt('WS_SEARCH/SEARCH_DL_REG');">Motor Vehicles</a></li>
    
  

    

  

  
      
          
          <li id="SD_IDX_1"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY_A');">Taxes</a></li>
          
          
          <li id="SD_IDX_2"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY_D');">Deeds &amp; Mortgages</a></li>
          
      
      <li id="SD_IDX_341" data-isreport="1"><a href="javascript:void(0);" onclick="javascript:build_web20_decision_report(this,'REPORT2/SEARCH_PROP_HISTORY_PLUS_REPORT', 117);">Property History Plus Report</a></li>
  

  
      
        
        <li id="SD_IDX_1"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY_A');">Taxes</a></li>
        
        
        <li id="SD_IDX_2"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY_D');">Deeds &amp; Mortgages</a></li>
        
      
      
        <li id="SD_IDX_45"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_FORECLOSURE');">Foreclosures</a></li>
      
      
      
      <li id="SD_IDX_89"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_NEIGHBORS');">Find Neighbors</a></li>
      
      
      <li id="SD_IDX_294" data-isreport="1"><a href="javascript:void(0);" onclick="javascript:build_web20_decision_report(this,'SEARCH2/SEARCH_PHONE_FINDER',294);">Phone Finder</a></li>
      
  

    
    <li id="SD_IDX_115"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY');">Property (Property Assessments, Deeds &amp; Mortgages)</a></li>
    

    
    <li id="SD_IDX_16"><a href="javascript:setaction('/app/evolution/misc');srchDecisionEvt('WS_SEARCH/SEARCH_VESSEL');">Watercraft</a></li>
    

    
    <li id="SD_IDX_21"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_AIRCRAFT');">FAA Aircraft</a></li>
    

    
    <li id="SD_IDX_3"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_LICENSE');">Driver Licenses</a></li>
    

    
    <li id="SD_IDX_23"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_PROF_LICENSE');">Professional Licenses</a></li>
    

    

    

    

    
    
        <li id="SD_IDX_98"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_EMAIL');">Email</a></li>
    
    

    

    

  

  


    

    
    

  

    
    <li id="SD_IDX_32"><a href="javascript:srchDecisionEvt('WS_SEARCH/SEARCH_VOTER_REGISTRATION');">Voter Registration</a></li>
    

    

        
    
    <li id="SD_IDX_79"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_DA_WIRELESS', 'cp_wafphonepl');">Phones Plus</a></li>
    
    

        

    
    <li id="SD_IDX_6"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_DA_BASIC');">Basic Lookup</a></li>
    

  

    
        
        <li id="SD_IDX_10"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BLJB');">Bankruptcy</a></li>
        
    
    
    
        <li id="SD_IDX_114"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BLJ');">Bankruptcies, Liens and Judgments</a></li>
    
    
    
    <li id="SD_IDX_19"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_CRIM');">Criminal Records</a></li>
    

        

    

    
        
        <li id="SD_IDX_11"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BLJL');">Liens and Judgments</a></li>
        
    

    
        
            <li id="SD_IDX_18"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_ACCIDENT');">Florida Accidents</a></li>
        
    

    
    <li id="SD_IDX_24"><a href="javascript:do_patriotact_search_by_name();">USA PATRIOT Act</a></li>
    

    
    <li id="SD_IDX_29"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_SEXPREDATOR');">Sexual Offenders</a></li>
    

    
    <li id="SD_IDX_45"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_FORECLOSURE');">Foreclosures</a></li>
    

    

    
    <li id="SD_IDX_43"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_MARRIAGE');">Marriages / Divorces</a></li>
    

    

    
    
    
        <li id="SD_IDX_41"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_DELCO');">Delaware Corporation</a></li>
    
    
      
    
    
    
    
        <li id="SD_IDX_13"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_FAB');">Find Businesses with this Phone</a></li>
    
    
    
   
    
      
    

    
    
        <li id="SD_"><a href="javascript:srchDecisionEvt('SEARCH/SHOW_PASSPORT_VALIDATION');">Passport Validation</a></li>
    
    

    
      
        <li id="SD_IDX_DTR"><a href="javascript:srchDecisionEvt('SEARCH/SHOW_PERSON_DTR');">Direct-To-Report</a></li>
      
    
    
    
        <li id="SD_IDX_100"><a href="javascript:setaction('/app/evolution/misc');javascript:srchDecisionEvt('SEARCH2/SEARCH_CANADIAN_PHONES');">Canadian Phones</a></li>
      

      

      
      
      
        <li id="SD_IDX_103"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_RT_MVR');">Real-Time Motor Vehicle Registrations</a></li>
      
      
      
     
</ul>
</div>










                        
                        <!-- begin: $RCSfile: search_terms_echo.tpl,v $ -->

<!-- end: $RCSfile: search_terms_echo.tpl,v $ -->

                        
                        
                        
    
<ul id="primary_sections_data" class="hidden no-print">
    
        <li data-id="myfavlinks_ps" data-icon="fa-fav">
            <a href="javascript:myacc_v3('');">Favorite</a>
        </li>
    
    <li data-id="myfreqlinks_ps" data-icon="fa-freq">
        <a href="javascript:myacc_v3('');">Frequent</a>
    </li>
    <li data-id="mytasklinks_ps" data-icon="fa-fav">
        <a href="javascript:myacc_v3('');">myTasks</a>
    </li>
    <li data-id="peoplelinks_ps" data-icon="person_icon" data-active="true">
        <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FAP');">People</a>
    </li>
    <li data-id="businesseslinks_ps" data-icon="bus_icon">
        <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FAB');">Business</a>
    </li>
    <li data-id="assetslinks_ps" data-icon="property_icon">
        <a href="javascript:pm_tab_v3('SEARCH2/SHOW_DL_REG');">Property &amp; Assets</a>
    </li>
    <li data-id="courtslinks_ps" data-icon="court_icon">
        <a href="javascript:pm_tab_v3('SEARCH2/SHOW_CRIM');">Court &amp; Admin Filings</a>
    </li>
    <li data-id="newslinks_ps" data-icon="news_icon">
        <a href="">News</a>
    </li>
    <li data-id="internationallinks_ps" data-icon="international_icon">
        <a href="javascript:pm_tab_v3('SEARCH2/SHOW_INTDOCKETS');">International</a>
    </li>
    <li data-id="regcompliancelinks_ps" data-icon="regulations_icon">
        <a href="">Regulations &amp; Compliance</a>
    </li>
    <li data-id="directtosource_ps" data-icon="direct_to_source_icon">
        <a href="">Direct-to-Source</a>
    </li>
    <li data-id="authserviceslinks_ps" data-icon="authentication_services_icon">
        <a href="javascript:pm_tab_v3('SEARCH2/SHOW_ID_VERIFY');">Authentication Services</a>
    </li>
</ul>

<div id="main_menu_data" class="no-print">
    <ul data-sid="myfavlinks" data-li-prefix="myfavs">
        
            
                
                    
                        <li data-id="myfavs_IDX_0" data-dummy="1">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FAP');">Find a Person</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfavs_IDX_13" data-dummy="1">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FAB');">Find a Business</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfavs_IDX_54" data-dummy="1">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_ID');">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfavs_IDX_79" data-dummy="1">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_DA_WIRELESS');">Phones Plus</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfavs_IDX_121" data-dummy="1">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_NEG_NEWS');">Negative News</a>
                        </li>
                        
                
            
        
    </ul>
    <ul data-sid="myfreqlinks" data-li-prefix="myfreqs">
        
            
                
                    
                        <li data-id="myfreqs_IDX_115">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_REAL_PROPERTY');">Real Property (Property Assessments, Deeds &amp; Mortgages)</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfreqs_IDX_294">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PHONE_FINDER');">LexisNexis<sup class="sup-reg-symbol">®</sup> Phone Finder</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfreqs_IDX_164">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PROP_HISTORY_REPORT');">Property History Report</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfreqs_IDX_13">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FAB');">Find a Business</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfreqs_IDX_0">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FAP');">Find a Person</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfreqs_IDX_118">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_LOCATION');">SmartLinx<sup class="sup-reg-symbol">®</sup> Location Report</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfreqs_IDX_79">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_DA_WIRELESS');">Phones Plus</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfreqs_IDX_19">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_CRIM');">Criminal Records</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfreqs_IDX_4">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_DL_REG');">Motor Vehicle Registrations</a>
                        </li>
                        
                
            
                
                    
                        <li data-id="myfreqs_IDX_16">
                            <a href="javascript:pm_tab_v3('SEARCH2/SHOW_VESSEL');">Boat Registrations</a>
                        </li>
                        
                
            
        
    </ul>
    <ul data-sid="mytasklinks" data-li-prefix="mytask">
        
    </ul>
    <ul data-sid="peoplelinks" data-li-prefix="people">
        
        
            <li data-id="people_IDX_0" class="menu-show-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FAP');">Find a Person</a>
            </li>
        
        
        
        
            <li data-id="people_IDX_54" class="menu-show-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_ID');">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification</a>
            </li>
            
        
        
        
            <li data-id="people_IDX_195" class="menu-show-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_IDRF');">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification with Red Flags Rule Report</a>
            </li>
            
        
        
        
        
            <li data-id="people_IDX_196" class="menu-show-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_IDFP');">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification with FraudPoint<sup class="sup-reg-symbol">®</sup> Score</a>
            </li>
            
        
        
        
            <li data-id="people_IDX_197" class="menu-show-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_IDRFFP');">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification with Red Flags &amp; FraudPoint<sup class="sup-reg-symbol">®</sup> Score</a>
            </li>
            
        
        
        
        
        
        
            <li data-id="people_IDX_123" class="menu-show-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FRAUDPOINT_SCORE');">FraudPoint<sup class="sup-reg-symbol">®</sup> Score</a>
            </li>
            
        
        
        
            <li data-id="people_IDX_198" class="menu-show-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FRAUDPOINT_SCORE_WITH_REDFLAGS');">FraudPoint<sup class="sup-reg-symbol">®</sup> Score with Red Flags Rule Report</a>
            </li>
            
        
        
        
        
            <li data-icon="phone_icon" data-id="people_IDX_294" class="menu-show-group">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PHONE_FINDER')">LexisNexis<sup class="sup-reg-symbol">®</sup> Phone Finder</a>
            </li>
        
        
        
        
            <li data-icon="phone_icon" data-id="people_IDX_79" class="menu-show-group">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_DA_WIRELESS');">Phones Plus</a>
            </li>
            
        
        
        
            <li data-icon="phone_icon" data-id="people_IDX_6" class="menu-show-group">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PHONE_LOOKUP');">Phone Lookup</a>
            </li>
            
        
        
        
            <li data-id="people_IDX_327" class="menu-hide-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_BUSINESS_EXECUTIVE_AND_POLITICAL_BIOGRAPHIES');">Business Executive and Political Biographies</a>
            </li>
            
        
        
        
            <li data-id="people_IDX_3" class="menu-hide-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_LICENSE');">Driver Licenses</a>
            </li>
            
        
        
        
            <li data-id="people_IDX_98" class="menu-hide-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_EMAIL');">Email Address/Social Network Report</a>
            </li>
        
        
        
        
            <li data-id="people_IDX_188" class="menu-hide-group">
                <a href="javascript:pm_tab_v3('SEARCH/SHOW_IRS_VERIFY');">IRS Verify</a>
            </li>
        
        
        
        
            <li data-id="people_IDX_189" class="menu-hide-group">
                <a href="javascript:pm_tab_v3('SEARCH/SHOW_SSA_VERIFY');">SSA Verify</a>
            </li>
        
        
        
        
            <li data-id="people_IDX_43" class="menu-hide-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_MARRIAGE');">Marriage &amp; Divorce Records</a>
            </li>
        
        
        
        
            <li data-id="people_IDX_24" class="menu-hide-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_OFAC');">OFAC &amp; Other Watch Lists</a>
            </li>
        
        
        
        
            <li data-id="people_IDX_42" class="menu-hide-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH/SHOW_PAW');">People At Work</a>
            </li>
        
        
        
        
            <li data-id="people_IDX_23" class="menu-hide-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a>
            </li>
        
                    
        
        
            <li data-id="people_IDX_128" class="menu-hide-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_STATEWIDE_PERSON');">Statewide Public Records Person Search</a>
            </li>
        
        
        
        
            <li data-id="people_IDX_32" class="menu-hide-group" data-icon="person_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_VOTER_REGISTRATION');">Voter Registrations</a>
            </li>
        
        

        
                    
    </ul>
    <ul data-sid="businesseslinks" data-li-prefix="business">
        
        
            <li data-id="business_IDX_13" class="menu-show-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FAB');">Find a Business</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_63" class="menu-show-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_BUS_INSTANT_ID')">InstantID<sup class="sup-reg-symbol">®</sup> Business Verification</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_199" class="menu-show-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_BUS_INSTANT_IDFD')">InstantID<sup class="sup-reg-symbol">®</sup> Business Verification with FraudDefender<sup class="sup-reg-symbol">®</sup></a>
            </li>
        
        
        
        
            <li data-id="business_IDX_70" class="menu-show-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH/SHOW_DBGLOBAL');">D&amp;B Global Market Identifiers</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_56" class="menu-show-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_EXPERIAN_BUSINESS');">Experian Business Reports</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_58" class="menu-show-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FICTIOUS');">Fictitious Business Names/DBA</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_165" class="menu-show-group" data-icon="bus_icon">
                <a href="javascript:portal_disclaimer_v3('SEARCH2/SHOW_GUIDESTAR');">GuideStar</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_139" class="menu-show-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_LN_CORP_AFFILIATIONS');">LexisNexis<sup class="sup-reg-symbol">®</sup> Corporate Affiliations™</a>
            </li>
        
        
        
        
        
            <li data-id="business_IDX_41" class="menu-show-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_DELCO');">Secretary of State - State of Delaware</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_135" class="menu-hide-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_THOMSON_DIRECTORIES');">Combined Banking Directories</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_137" class="menu-hide-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_LN_DAND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES');">D&amp;B DUNS Minority &amp; Women-Owned Businesses</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_107" class="menu-hide-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FEIN');">D&amp;B FEIN</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_138" class="menu-hide-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_LN_DAND_B_PRIVATE_COMPANY_INSIGHTS');">D&amp;B Private Company Insights</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_140" class="menu-hide-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_HOOVER_COMPANY_CAPSULES');">Hoover's Company Capsules</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_163" class="menu-hide-group" data-icon="bus_icon">
                <a href="javascript:portal_disclaimer_v3('SEARCH2/SHOW_SMALL_BUSINESS_RISK_SCORE');">LexisNexis<sup class="sup-reg-symbol">®</sup> Small Business Risk Score</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_141" class="menu-hide-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_MERGERSTAT');">Mergerstat</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_55" class="menu-hide-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_SEC');">SEC Filings</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_142" class="menu-hide-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_S_AND_P_CORP_DECISIONS');">Standard &amp; Poor's Corporate Descriptions plus News</a>
            </li>
        
        
        
        
            <li data-id="business_IDX_136" class="menu-hide-group" data-icon="bus_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_STATEWIDE_BUSINESS');">Statewide Public Records Business Search</a>
            </li>
        
        
        
                    
    </ul>
    <ul data-sid="assetslinks" data-li-prefix="assets">
        
        
            <li data-id="assets_IDX_118" data-icon="property_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_LOCATION');">Find a Location</a>
            </li>
        
        
        
        
            <li data-id="assets_IDX_115" data-icon="property_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_REAL_PROPERTY');">Real Property (Property Assessments, Deeds &amp; Mortgages)</a>
            </li>
        
        
        
        
            <li data-id="assets_IDX_21" data-icon="property_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_AIRCRAFT');">Aircraft Registrations</a>
            </li>
        
        
        
        
            <li data-id="assets_IDX_16" data-icon="property_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_VESSEL');">Boat Registrations</a>
            </li>
        
        
        
        
            <li data-id="assets_IDX_126" data-icon="property_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_MORTGAGEFRAUD_REPORT');">Mortgage Fraud Report</a>
            </li>
        
        
        
        
            <li data-id="assets_IDX_4" data-icon="property_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_DL_REG');">Motor Vehicle Registrations</a>
            </li>
        
        
        
        
            <li data-id="assets_IDX_164" data-icon="property_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PROP_HISTORY_REPORT');">Property History</a>
            </li>
        
        
        
        
        
            <li data-id="assets_IDX_309" class="active" data-icon="property_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_VERIFICATION_OF_OCCUPANCY');">Verification of Occupancy</a>
            </li>
        
        
    </ul>
    <ul data-sid="courtslinks" data-li-prefix="courts">
        
        
            <li data-id="courts_IDX_114" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_BLJ');">Bankruptcies, Judgments &amp; Liens</a>
            </li>
        
        
        
        
            <li data-id="courts_IDX_10" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_BANKRUPTCY');">Bankruptcies</a>
            </li>
        
        
        
        
            <li data-id="courts_IDX_9" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_UCC');">UCC Liens</a>
            </li>
        
        
        
        
            <li data-id="courts_IDX_11" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_LIENS');">Judgments &amp; Tax Liens</a>
            </li>
        
        
        
        
            <li data-id="courts_IDX_130" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_US_CRIMINAL');">Federal Civil &amp; Criminal Docket Summaries</a>
            </li>
        
        
        
        
            <li data-id="courts_IDX_129" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_STATE_CRIMINAL');">State Civil &amp; Criminal Filings</a>
            </li>
        
        
        
        
            <li data-id="courts_IDX_19" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_CRIM');">Criminal Records</a>
            </li>
        
        
        
        
            <li data-id="courts_IDX_325" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_CASE_LAW');">Case Law</a>
            </li>
        
        
        
        
            <li data-id="courts_IDX_18" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_ACCIDENT');">Florida Accidents</a>
            </li>
        
        
        
        
            <li data-id="courts_IDX_45" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FORECLOSURE');">Foreclosures</a>
            </li>
        
        
        
        
            <li data-id="courts_IDX_131" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_JURY_VERDICT');">Jury Verdicts &amp; Settlements</a>
            </li>
        
        
        
        
            <li data-id="courts_IDX_132" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_SANCTIONS');">Mortgage &amp; Financial Service Sanctions</a>
            </li>
        
        
        
        
            <li data-id="courts_IDX_29" data-icon="court_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_SEXPREDATOR');">Sexual Offenders</a>
            </li>
        
        
    </ul>
    <ul data-sid="newslinks" data-li-prefix="news">
        
        
            <li data-id="news_IDX_48" data-icon="news_icon">
                <a data-icon="news_icon" href="javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_NEWS');">News</a>
            </li>
        
        
        
        
            <li data-id="news_IDX_121" data-icon="news_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_NEG_NEWS');">Negative News</a>
            </li>
        
        
        
        
            <li data-icon="news_icon" data-id="news_IDX_345">
                <a data-icon="news_icon" href="javascript:pm_tab_v3('SEARCH2/SHOW_NEWS_TRENDS');">News Trends</a>
            </li>
        
        
        
        
            <li data-id="news_IDX_71" data-icon="news_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_DO_NEWS');">Deaths &amp; Obituaries in the News</a>
            </li>
        
        
        
        
            <li data-id="news_IDX_133" data-icon="news_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_BANK_NEWS');">Bankers' News</a>
            </li>
        
        
    </ul>
    <ul data-sid="internationallinks" data-li-prefix="inter">
        
        
            <li data-id="inter_IDX_166" data-icon="international_icon">
                <a href="javascript: void window.open('https://members.worldcompliance.com/Signin.aspx', 'wc', '');">WorldCompliance</a>                    
            </li>
        
        
        
        
            <li data-id="inter_IDX_167" data-icon="international_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_ALLCOMPANY');">All Company Information (excluding Investext &amp; D&amp;B)</a>
            </li>
        
        
        
        
            <li data-id="inter_IDX_100" data-icon="international_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_CANADIAN_PHONE');">Canadian Phones</a>
            </li>
        
        
        
        
            <li data-id="inter_IDX_324" data-icon="international_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_COUNTRY_RISK_REPORT');">Country Risk Reports</a>
            </li>
        
        
        
        
            <li data-id="inter_IDX_122" data-icon="international_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_INTL_INSTANTID');">InstantID<sup class="sup-reg-symbol">®</sup> International</a>
            </li>
        
        
        
        
            <li data-id="inter_IDX_168" data-icon="international_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PASSPORT_VALIDATION');">Passport Validation</a>
            </li>
        
        
        
        
            <li data-id="inter_IDX_143" data-icon="international_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_UK_COMPANY_DIRECTORY');">UK Companies &amp; Directories</a>
            </li>
        
        
    </ul>
    <ul data-sid="regcompliancelinks" data-li-prefix="regs"> 
        
        
            <li data-id="regs_IDX_145" data-icon="regulations_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_ADMIN_LAW_DECISIONS');">Administrative Law Judge Decisions</a>
            </li>
        
        
        
        
            <li data-id="regs_IDX_326" data-icon="regulations_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_AGENCY_OPINIONS');">Agency Opinions</a>
            </li>
        
        
        
        
            <li data-id="regs_IDX_146" data-icon="regulations_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FED_BANKING_CODE');">Code of Federal Regulations - Banking Titles 12 &amp; 31</a>
            </li>
        
        
        
        
            <li data-id="regs_IDX_147" data-icon="regulations_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FED_REGISTER');">Code of Federal Regulations &amp; Federal Register</a>
            </li>
        
        
        
        
            <li class="active" data-id="regs_IDX_148" data-icon="regulations_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_CONG_RECORD');">Congressional Record</a>
            </li>
        
        
        
        
            <li class="active" data-id="regs_IDX_149" data-icon="regulations_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FDIC');">FDIC &amp; Resolution Trust Corp</a>
            </li>
        
        
        
        
            <li class="active" data-id="regs_IDX_150" data-icon="regulations_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_LN_FEDERAL_RESERVE');">Federal Reserve</a>                    
            </li>
        
        
        
        
            <li class="active" data-id="regs_IDX_151" data-icon="regulations_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_LN_GAO_REPORTS');">GAO Reports &amp; Testimonies</a>
            </li>
        
        
        
        
            <li class="active" data-id="regs_IDX_152" data-icon="regulations_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_LN_COMPTROLLER_CURRENCY');">Office of the Comptroller of the Currency</a>
            </li>
        
        
        
        
            <li class="active" data-id="regs_IDX_153" data-icon="regulations_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_OFFICE_THRIFT_SUPERVISIONS');">Office of Thrift Supervision (Archive)</a>
            </li>
        
        
        
        
            <li class="active" data-id="regs_IDX_154" data-icon="regulations_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_LN_US_PUBLIC_LAWS');">US Public Laws</a>
            </li>
        
        
        
        
            <li class="active" data-id="regs_IDX_155" data-icon="regulations_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_USCS_BANKS');">USCS - Banks &amp; Banking - Title 12</a>
            </li>
        
        
    </ul>       
    <ul data-sid="directtosource" data-li-prefix="direct">
        
        
            <li data-id="direct_IDX_191">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_BUSINESS_ASSURANCE');">Business Assurance</a>
            </li>
        
        
        
        
            <li data-id="direct_IDX_156">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR');">Offline Civil &amp; Criminal Court Records (OCCCR)</a>
            </li>
        
        
        
            
                <li data-id="direct_IDX_1560" class="active">
                    <a href="javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR_RESULTS');">Direct-to-Source Results</a>
                </li>
            
        
    </ul>
    <ul data-sid="authserviceslinks" data-li-prefix="auth">
        
        
            <li data-id="auth_IDX_284" class="active" data-icon="authentication_services_icon">
                <a href="javascript:pm_tab_v3('SEARCH2/SHOW_ID_VERIFY');">InstantID<sup class="sup-reg-symbol">®</sup> Q&amp;A</a>
            </li>
        
        
        
    </ul>
</div>




                    <div id="search-results-row" class="row">
    
    
        
            
                
            
            
        <div class="search-results-actions">
            


    <input name="SEARCH_EVT" value="" type="hidden">
    <div class="reportLeftNavToggle hidden">
        <div class="additional-info">
            <button type="button" data-placement="bottom" class="btn-actions btn navigation_icon svg-icon-tiny" onclick="javascript:showHideReportNavigation();"></button>
            <span class="tooltip tooltip-35 hover">Toggle Navigation</span>
        </div>
    </div>

<div class="print-download-buttons">
    
    
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn print-icon svg-icon-tiny" data-original-title="Print Results" aria-label="Print Results" onclick=""></button>
        <span class="tooltip tooltip-35 hover">Print Document</span>
    </div>
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn download-icon svg-icon-tiny" data-original-title="Download" aria-label="Download" onclick=""></button> 
        <span class="tooltip tooltip-35 hover">Download Document</span>
    </div>
</div>










<div class="new-edit-search-buttons" data-active-tabid="6d1e294e408a9c3d50729654d49bd421"> 
    
        
            
                <div class="report-actions hidden">
                    <div class="additional-info">
                        <button type="button" class="btn edit-icon svg-icon-tiny btn-actions reportnotessh" onclick="javascript:showHideNotes(reportNotesContainer)">
                            <span class="tooltip centered">Show or Hide Notes</span>
                        </button>
                    </div>
                    <button type="button" class="btn display_all_button" onclick="">Show All Details</button> 
                </div>
            
        
    
    
    <button class="btn" onclick="">Edit Search</button> 
    <button class="btn" onclick="">New Search</button> 
    
    
        <div class="additional-info">
            <a href="javascript:void(0);" class="help-search-results help-icon svg-icon-small">
                <span class="tooltip tooltip-right">Help</span>
            </a>
        </div>
    
</div>





        </div>
        
        <div id="search-results-con">
            <form name="SEARCH_RESULTS" method="post">
                
                    
<span class="hidden" id="custom-css">voo_styles.css</span><div id="report_body"><div id="report_content" role="article">
<h2 class="bus_icon svg-icon-normal report-header-h2">LexisNexis <sup class="sup-reg-symbol">®</sup> Business Assurance Report</h2>
<div class="report_title"><span class="font-12 report-generated-on"><strong>Generated On: </strong><time>12/01/2016&nbsp;12:00 PM EST</time> | FOR INFORMATIONAL PURPOSES ONLY | Copyright ©&nbsp;2016 LexisNexis, All rights reserved.</span></div>
<div id="search_terms" class="clear report-search-terms">
<strong>Requester: &nbsp;</strong>Last Name:&nbsp;<strong class="term">Doe</strong>;&nbsp;First Name:&nbsp;<strong class="term">John</strong>;&nbsp;Account:&nbsp;<strong class="term">0000001</strong>;&nbsp;Report ID:&nbsp;<strong class="term">00000000000211111</strong><br>
</div>

<div id="report-created-for-container" class="report_title"><strong>Order Date: </strong>January 01, 2017&nbsp;&nbsp; <strong>Production Date: </strong>January 01, 2017</div>
<!--------------------------->
<div id="Identities" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before">Comprehensive Business Report</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr>
<th>Names</th>
<th>Report Summary</th>
</tr></thead>
<tbody>
<tr>
<tr>
<td><strong>Joseph A. Sample</strong><br>
  <br>
1234 Your Street<br>
Your City, OH 45200-0000<br>
Your County; Cincinnati, OH<br>
<br>
SSN: 111-11-XXXX<br>
DOB: 01/XX/1965<br>
<br>
<br>
<br></td>
<td>
<a href="#smartlinx" class="clear">SmartLinx Business Report&nbsp;&nbsp;<strong>1</strong></a><br>
<a href="#ofac" class="clear">OFAC Terrorist List&nbsp;&nbsp;<strong>0</strong></a><br>
<a href="#bankruptcy" class="clear">Bankruptcy&nbsp;&nbsp;<strong>1</strong></a><br>
<a href="#judgement" class="clear">Judgment&nbsp;&nbsp;<strong>1</strong></a><br>
<a href="#foreclosure" class="clear">Foreclosure Search&nbsp;&nbsp;<strong>1</strong></a><br>
<a href="#fedtaxliens" class="clear">Federal Tax Liens&nbsp;&nbsp;<strong>1</strong></a><br>
<a href="#statetaxliens" class="clear">State Tax Liens&nbsp;&nbsp;<strong>1</strong></a><br>
<a href="#fedcivil" class="clear">Federal Civil Litigation&nbsp;&nbsp;<strong>1</strong></a><br>
<a href="#statecivil" class="clear">State Civil Litigation&nbsp;&nbsp;<strong>1</strong></a><br>
<a href="#fedfelony" class="clear">Federal Felony & Misdemeanor&nbsp;&nbsp;<strong>1</strong></a><br>
<a href="#statefelony" class="clear">State Felony & Misdemeanor&nbsp;&nbsp;<strong>1</strong></a><br>
<a href="#ucc" class="clear">UCC 5 Year Search&nbsp;&nbsp;<strong>1</strong></a><br>
<a href="#negnews" class="clear">Negative Publicity&nbsp;&nbsp;<strong>1</strong></a><br><br>
</td>
</tr>


</tbody>
</table>
</div>
</div>
<!--------------------------->
<div id="Bankruptcy" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before" id="smartlinx">SmartLinx Business Report</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr> </tr></thead>
<tbody>
<tr>
    <td colspan="4">A SmartLinx Business Report search was conducted on the requested subject.<br>
      <br>
      <strong>Comment:</strong> Please see attached </td>
</tr>
<tr> </tr>
</tbody>
</table>
</div>
<!--------------------------->
<div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
</div>
<!--------------------------->
<!--------------------------->
<div id="Bankruptcy" class="report_section collapsible-section"> </div>
<!--------------------------->
<!--------------------------->


<a id="Sources" class="navAnchor"></a><a id="Utilities" class="navAnchor"></a><a id="Properties" class="navAnchor"></a><a id="Identities" class="navAnchor"></a>
<div id="Identities" class="report_section collapsible-section">
<h3><span class="collapsible open fa-icon-tiny-before" id="ofac">OFAC Terrorist List</span></h3>
<div class="section_container">
<table class="fixed">
  <thead><tr>
<th bgcolor="blue">NOTES</th>
</tr></thead>
<tbody>
<tr>
<td> An INFRACTIONS DATABASE search was conducted which enables you to know your customers and vendors. This Search can be one of your tools with which you comply with the USA PATRIOT Act (Uniting and Strengthening America by Providing Appropriate Tools Required to Intercept and Obstruct Terrorism). The Infractions database includes data from government agencies, including:<br>
  <br>
  <ol>
<li>US Department of Commerce, Bureau of Export Administration, Denied Persons Information (BXA)</li>
<li>US Treasury Department, Office of Foreign Assets Control (OFAC)</li>
<li>Office of the Superintendent of Financial Institutions (OSFI)</li>
<li>Interpol Most Wanted – Includes entities wanted by national jurisdictions or the International Criminal Tribunals, where appropriate.</li>
<li>Bank of England Sanctions – Individuals or entities whose assets should be frozen based upon relevant UN Security Council Restrictions.</li>
<li>Chiefs of State and Cabinet Members of Foreign Governments.<br><br>
</ol>
The database contains data on individuals, companies, company-related and individual-related infractions, and vessels.<br><br> 

<strong>COMMENT:</strong> The subject name is not on the list</td>
</tr>
<tr> </tr>
<tr> </tr>
</tbody>
</table>
</div>
</div>
 <div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
<!--------------------------->
<div id="Bankruptcy" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before" id="bankruptcy">Bankruptcy</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr> </tr></thead>
<tbody>
<tr>
    <td align="right"><strong>Records Found:</strong></td>
    <td>1</td>
    <td align="right"><strong>Date Checked:</strong><br><strong>Current Through:</strong></td>
<td>3/18/2010<br>3/18/2010</td>
</tr>
<tr>
    <td align="right"><strong>Location:</strong></td>
<td>Central District of California Los Angeles Division US Bankruptcy Court</td>
    <td align="right"><strong>Time Period:</strong></td>
    <td>02/28/2000 - 03/03/2010</td>
</tr>
<tr>
    <td align="right"><strong>Case No:</strong></td>
<td>02-89543</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Date Filed:</strong></td>
<td>03/23/2002</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
    </tr><td align="right"><strong>Type:</strong></td>
<td>Chapter 11 - Reorginization</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<td align="right"><strong>How Filed:</strong></td>
<td>Business Voluntary</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<td align="right"><strong>Status:</strong></td>
<td>Open</td>
    <td align="right"><strong>Status Date:</strong></td>
<td>04/12/2003</td>
</tr>
<td align="right"><strong>No. of Creditors:</strong></td>
<td>15</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<td align="right"><strong>Assets:</strong></td>
<td>$45,387.00</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<td align="right"><strong>Liabilities:</strong></td>
<td>$327,156.00</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<td align="right"><strong>Exemptions:</strong></td>
<td>$52,413.00</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<td align="right"><strong>*Verified By:</strong></td>
<td colspan="3">BUSINESS NAME=The Sample Company, ADDRESS Line1- 1234 Your Street CITY-Your City STATE= OH</td>
</tr>
  
</tbody>
</table>

</div>
<div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
</div>
<!--------------------------->
<!--------------------------->

<div id="Bankruptcy" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before" id="judgement">Judgment</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr> </tr></thead>
<tbody>
<tr>
    <td align="right"><strong>Records Found:</strong></td>
    <td>1</td>
    <td align="right"><strong>Date Checked:</strong><br><strong>Current Through:</strong></td>
<td>3/18/2010<br>3/18/2010</td>
</tr>
<tr>
    <td align="right"><strong>Location:</strong></td>
<td>Los Angeles Superior &amp; Metro Municipal Courts Los Angeles, CA</td>
    <td align="right"><strong>Time Period:</strong></td>
    <td>02/28/2000 - 03/03/2010</td>
</tr>
<tr>
    <td align="right"><strong>Case No:</strong></td>
<td>05-60000</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Date Filed:</strong></td>
<td>07/16/2005</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
    </tr><td align="right"><strong>Type:</strong></td>
<td>Judgement</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Nature:</strong></td>
<td>Contract Complaint</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<td align="right"><strong>Status:</strong></td>
<td>Closed</td>
    <td align="right"><strong>Status Date:</strong></td>
<td>11/12/2005</td>
</tr>
  <td align="right"><strong>Plantiffs:</strong></td>
<td>The Green Company</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>No. of &nbsp;Defendants:</strong></td>
<td>1</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Defendants:</strong></td>
<td>The Sample Company</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
 </tr>
<td align="right"><strong>*Verified By:</strong></td>
<td colspan="3">BUSINESS NAME=The Sample Company, ADDRESS LINE1 = 123 Maple Street CITY=Los Angeles STATE=CA</td>
</tr>
  
</tbody>
</table>

</div>
<div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
</div>
<!--------------------------->

<div id="Bankruptcy" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before" id="foreclosure">Foreclosure Search</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr> </tr></thead>
<tbody>
<tr>
    <td align="right"><strong>Records Found:</strong></td>
    <td>1</td>
    <td align="right"><strong>Date Checked:</strong><br><strong>Current Through:</strong></td>
<td>3/18/2010<br>3/18/2010</td>
</tr>
<tr>
    <td align="right"><strong>Location:</strong></td>
<td>Los Angeles County Recorder of Deeds Los Angeles, CA</td>
    <td align="right"><strong>Time Period:</strong></td>
    <td>02/28/2000 - 03/03/2010</td>
</tr>
<tr>
    <td align="right"><strong>Case No:</strong></td>
<td>02-88888-000</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Filing Date:</strong></td>
<td>03/23/2005</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
    </tr>
  <td align="right"><strong>Default Date:</strong></td>
<td>02/12/2005</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Default Amount:</strong></td>
<td>$75,000.00</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Final Judgment Amount:</strong></td>
<td>$71,000.00</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Plantiff Name:</strong></td>
<td>The Sample Company</td>
    <td align="right"></td>
<td></td>
</tr>
    <td align="right"><strong>Plantiff Address:</strong></td>
<td>123 Maple Street<br>
  Los Angeles, CA</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Defendant Name:</strong></td>
<td>Zachary Smith</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<td align="right"><strong>Defendant Address:</strong></td>
<td>200 W 3rd Street <br>
  Los Gotas, CA</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Trustee Name:</strong></td>
<td>Sam Sample</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<td align="right"><strong>Trustee Address:</strong></td>
<td>1600 Lakeside Ct <br>
Oakland, CA</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
 </tr>
<td align="right"><strong>*Verified By:</strong></td>
<td colspan="3">BUSINESS NAME=The Sample Company, ADDRESS LINE1 = 123 Maple Street CITY=Los Angeles STATE=CA</td>
</tr>
  
</tbody>
</table>

</div>
<div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
</div>
<!--------------------------->

<div id="Bankruptcy" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before" id="fedtaxliens">Federal Tax Liens</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr> </tr></thead>
<tbody>
<tr>
    <td align="right"><strong>Records Found:</strong></td>
    <td>1</td>
    <td align="right"><strong>Date Checked:</strong><br><strong>Current Through:</strong></td>
<td>3/18/2010<br>3/18/2010</td>
</tr>
<tr>
    <td align="right"><strong>Location:</strong></td>
<td>Los Angeles County Recorder <br>
  Los Angeles, CA</td>
    <td align="right"><strong>Time Period:</strong></td>
    <td>02/28/2000 - 03/03/2010</td>
</tr>
<tr>
    <td align="right"><strong>Amount:</strong></td>
<td>$6,000.00<br></td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Date Filed:</strong></td>
<td>05/28/2005</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
    </tr><td align="right"><strong>Type:</strong></td>
<td>Federal</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Instrument No:</strong></td>
<td>05-2004551</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Book:</strong></td>
<td>Bk 2211</td>
    <td align="right"><strong>Page:</strong></td>
<td>Pg 324</td>
</tr>
    <td align="right"><strong>Staus:</strong></td>
<td>Released</td>
<td align="right"><strong>Staus Date:</strong></td>
<td>09/06/2005</td>
</tr>
    <td align="right"><strong>Released:</strong></td>
<td>Yes</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Book:</strong></td>
<td>2500</td>
<td align="right"><strong>Page:</strong></td>
<td>246</td>
</tr>
<td align="right"><strong>lien Holder:</strong></td>
<td>IRS</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Address:</strong></td>
<td>200 Metro Place, Sacramento, CA</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
 </tr>
<td align="right"><strong>*Verified By:</strong></td>
<td colspan="3">BUSINESS NAME=The Sample Company, ADDRESS LINE1 = 123 Maple Street CITY=Los Angeles STATE=CA</td>
</tr>
  
</tbody>
</table>

</div>
<div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
</div>
<!--------------------------->
<div id="Bankruptcy" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before" id="statetaxliens">State Tax Liens</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr> </tr></thead>
<tbody>
<tr>
    <td align="right"><strong>Records Found:</strong></td>
    <td>1</td>
    <td align="right"><strong>Date Checked:</strong><br><strong>Current Through:</strong></td>
<td>3/18/2010<br>3/18/2010</td>
</tr>
<tr>
    <td align="right"><strong>Location:</strong></td>
<td>Los Angeles County Recorder <br>
  Los Angeles, CA</td>
    <td align="right"><strong>Time Period:</strong></td>
    <td>02/28/2000 - 03/03/2010</td>
</tr>
<tr>
    <td align="right"><strong>Amount:</strong></td>
<td>$6,000.00</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Date Filed:</strong></td>
<td>05/01/2003</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
    </tr><td align="right"><strong>Type:</strong></td>
<td>State</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Instrument No:</strong></td>
<td>00-999333</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Book:</strong></td>
<td>101</td>
    <td align="right"><strong>Page:</strong></td>
<td>89</td>
</tr>
 <td align="right"><strong>Status:</strong></td>
<td>Open</td>
    <td align="right"><strong>Status Date:</strong></td>
<td>06/06/2006</td>
</tr>
 </tr>
  <td align="right"><strong>Released:</strong></td>
<td>No</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Lien Holder:</strong></td>
<td>California Department of Revenue</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Address:</strong></td>
<td>CA</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
 </tr>
<td align="right"><strong>*Verified By:</strong></td>
<td colspan="3">BUSINESS NAME=The Sample Company, ADDRESS LINE1 = 123 Maple Street CITY=Los Angeles STATE=CA</td>
</tr>
  
</tbody>
</table>

</div>
<div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
</div>

<!--------------------------->
<div id="Bankruptcy" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before" id="fedcivil">Federal Civil Litigation</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr> </tr></thead>
<tbody>
<tr>
    <td align="right"><strong>Records Found:</strong></td>
    <td>1</td>
    <td align="right"><strong>Date Checked:</strong><br><strong>Current Through:</strong></td>
<td>3/18/2010<br>3/18/2010</td>
</tr>
<tr>
    <td align="right"><strong>Location:</strong></td>
<td>Central District of California Los Angeles Division US Bankruptcy Court</td>
    <td align="right"><strong>Time Period:</strong></td>
    <td>02/28/2000 - 03/03/2010</td>
</tr>
<tr>
    <td align="right"><strong>Case No:</strong></td>
<td>02-88888</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Date Filed:</strong></td>
<td>10/16/2000</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
    </tr><td align="right"><strong>Type:</strong></td>
<td>Suit</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Nature:</strong></td>
<td>Statutory Actions</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<td align="right"><strong>Status:</strong></td>
<td>Dismissed</td>
    <td align="right"><strong>Status Date:</strong></td>
<td>04/30/2001</td>
</tr>
  <td align="right"><strong>Plantiffs:</strong></td>
<td>Zac Thul</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>No. of &nbsp;Defendants:</strong></td>
<td>1</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Defendants:</strong></td>
<td>The Sampler Company</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
 </tr>
<td align="right"><strong>*Verified By:</strong></td>
<td colspan="3">BUSINESS NAME=The Sample Company, ADDRESS LINE1 = 123 Maple Street CITY=Los Angeles STATE=CA</td>
</tr>
  
</tbody>
</table>

</div>
<div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
</div>
<!--------------------------->
<div id="Bankruptcy" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before" id="statecivil">State Civil Litigation</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr> </tr></thead>
<tbody>
<tr>
    <td align="right"><strong>Records Found:</strong></td>
    <td>1</td>
    <td align="right"><strong>Date Checked:</strong><br><strong>Current Through:</strong></td>
<td>3/18/2010<br>3/18/2010</td>
</tr>
<tr>
    <td align="right"><strong>Location:</strong></td>
<td>Central District of California Los Angeles Division US Bankruptcy Court</td>
    <td align="right"><strong>Time Period:</strong></td>
    <td>02/28/2000 - 03/03/2010</td>
</tr>
<tr>
    <td align="right"><strong>Case No:</strong></td>
<td>02-88888</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Date Filed:</strong></td>
<td>10/16/2000</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
    </tr><td align="right"><strong>Type:</strong></td>
<td>Suit</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Nature:</strong></td>
<td>Breach of Contract</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<td align="right"><strong>Status:</strong></td>
<td>Dismissed with Prejudice</td>
    <td align="right"><strong>Status Date:</strong></td>
<td>11/12/2002</td>
</tr>
  <td align="right"><strong>Plantiffs:</strong></td>
<td>The ABC Company</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>No. of &nbsp;Defendants:</strong></td>
<td>1</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Defendants:</strong></td>
<td>The Sample Company</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
 </tr>
<td align="right"><strong>*Verified By:</strong></td>
<td colspan="3">BUSINESS NAME=The Sample Company, ADDRESS LINE1 = 123 Maple Street CITY=Los Angeles STATE=CA</td>
</tr>
  
</tbody>
</table>

</div>
<div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
</div>
<!--------------------------->

<!--------------------------->
<div id="Bankruptcy" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before" id="fedfelony">Federal Felony &amp; Misdemeanor</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr> </tr></thead>
<tbody>
<tr>
    <td align="right"><strong>Records Found:</strong></td>
    <td>1</td>
    <td align="right"><strong>Date Checked:</strong><br><strong>Current Through:</strong></td>
<td>3/18/2010<br>3/18/2010</td>
</tr>
<tr>
    <td align="right"><strong>Location:</strong></td>
<td>Central District of California Los Angeles Division US Bankruptcy Court</td>
    <td align="right"><strong>Time Period:</strong></td>
    <td>02/28/2000 - 03/03/2010</td>
</tr>
<tr>
    <td align="right"><strong>Case No:</strong></td>
<td>333-00000</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Case Date:</strong></td>
<td>01/14/1999</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
    </tr>  <td align="right"><strong>Charge Type:</strong></td>
<td>Felony</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Final Charge:</strong></td>
<td> Establishment of a Place for Drug Operation</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Disposition Type:</strong></td>
<td>Convicted</td>
    <td align="right"><strong>Disposition Date:</strong></td>
<td>03/19/1999</td>
</tr>
    <td align="right"><strong>Outcome:</strong></td>
<td>Probation, 24 months; fees $1000; jail 22 months – imprisonment</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
</tr>
<td align="right"><strong>*Verified By:</strong></td>
<td colspan="3">LAST NAME=Sample, FIRST NAME=Joseph DATE OF BIRTH=01/01/1961 ADDRESS LINE1=123 Maple Street CITY=Los Angeles STATE=CA</td>
</tr>
  
</tbody>
</table>

</div>
<div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
</div>
<!--------------------------->
<!--------------------------->
<div id="Bankruptcy" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before" id="statefelony">State Felony &amp; Misdemeanor</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr> </tr></thead>
<tbody>
<tr>
    <td align="right"><strong>Records Found:</strong></td>
    <td>1</td>
    <td align="right"><strong>Date Checked:</strong><br><strong>Current Through:</strong></td>
<td>3/18/2010<br>3/18/2010</td>
</tr>
<tr>
    <td align="right"><strong>Location:</strong></td>
<td>Los Angeles Superior &amp; Metro Municipal</td>
    <td align="right"><strong>Time Period:</strong></td>
    <td>02/28/2000 - 03/03/2010</td>
</tr>
<tr>
    <td align="right"><strong>Case No:</strong></td>
<td>BE111155552222</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Case Date:</strong></td>
<td>09/29/2001</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
    </tr>  <td align="right"><strong>Charge Type:</strong></td>
<td>Misdemeanor</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Final Charge:</strong></td>
<td> Reckless Driving</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Disposition Type:</strong></td>
<td>First offender</td>
    <td align="right"><strong>Disposition Date:</strong></td>
<td>12/29/2001</td>
</tr>
    <td align="right"><strong>Outcome:</strong></td>
<td>Fined 250 Paid; Court costs, 75 Paid</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
</tr>
<td align="right"><strong>*Verified By:</strong></td>
<td colspan="3">NAME=Sample, FIRST NAME=Joseph DATE OF BIRTH=01/XX/1961 </td>
</tr>
  
</tbody>
</table>

</div>
<div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
</div>
<!--------------------------->

<!--------------------------->
<div id="Bankruptcy" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before" id="ucc">SOS UCC Records</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr> </tr></thead>
<tbody>
<tr>
    <td align="right"><strong>Records Found:</strong></td>
    <td>1</td>
    <td align="right"><strong>Date Checked:</strong><br><strong>Current Through:</strong></td>
<td>3/18/2010<br>3/18/2010</td>
</tr>
<tr>
    <td align="right"><strong>Location:</strong></td>
<td>Central District of California Los Angeles Division US Bankruptcy Court</td>
    <td align="right"><strong>Time Period:</strong></td>
    <td>02/28/2000 - 03/03/2010</td>
</tr>
<tr>
    <td align="right"><strong>Type:</strong></td>
<td>Original</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Date Filed:</strong></td>
<td>05/16/2006</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
    </tr>  <td align="right"><strong>Filing No:</strong></td>
<td>23001111</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
    <td align="right"><strong>Debtor:</strong></td>
<td>The Sample company</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Secured:</strong></td>
<td>US Bank</td>
    <td align="right"></td>
<td>11/12/2005</td>
</tr>
    <td align="right"><strong>Address:</strong></td>
<td>101 Street, <br>
  Bakersfield, CA</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>
  <td align="right"><strong>Collatoral:</strong></td>
<td>See Copies</td>
<td align="right">&nbsp;</td>
<td>&nbsp;</td>
</tr>

 </tr>
<td align="right"><strong>*Verified By:</strong></td>
<td colspan="3">BUSINESS NAME=The Sample Company, ADDRESS LINE1 = 123 Maple Street CITY=Los Angeles STATE=CA</td>
</tr>
  
</tbody>
</table>

</div>
<div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
</div>
<!--------------------------->
<!--------------------------->
<div id="Bankruptcy" class="report_section collapsible-section">
  <h3><span class="collapsible open fa-icon-tiny-before" id="negnews">Media Research</span></h3>
  <div class="section_container">
<table class="fixed">
  <thead><tr> </tr></thead>
<tbody>
<tr>
    <td colspan="4">A nationwide review of online media from numerous sources including newspapers, magazines, trade and industry journals, broadcast transcripts, and wire services was conducted for any negative references to the subject. We constructed searches for adverse media using the following negative terms: lawsuit, scandal, fraud, illegal, criminal, convict, guilty, litigation, bankrupt, indict and allegation.<br>
      <br>
      <strong>Comment:</strong> Please see attached news articles</td>
</tr>
<tr> </tr>
</tbody>
</table>
</div>
<div id="top"><ul class="report_help_links"><li><a href="#top">
  <button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button>
</a></li></ul></div>
</div>
<!--------------------------->
<!--------------------------->


<!--------------------------->

<!--------------------------->


<!--------------------------->


<!--------------------------->
<div id="reportFooter">
  <p><br>
    <span class="font-12">An asterisk (*) denotes that no additional identifiers are available. LexisNexis Risk Solutions is providing you with this record informatively, and we recommend that you seek additional information from the Subject of this report prior to making your decision. </span></p>
  <p><span class="font-12"><strong>NOTE: The information contained in this report is secured from numerous third parties and processed by fallible sources. Such information may contain inaccuracies for which neither LexisNexis Risk Solutions nor its subsidiary or affiliated companies shall be responsible. Additionally, this information may not be used for any purpose governed by the federal Fair Credit Reporting Act ( 15 U.S.C 1681, et seq. ) Specifically, this information may not be used to establish a consumer's eligibility for credit, insurance or employment. Further, recipient shall not use this information in a manner that is contrary to, or in violation of any applicable federal, state, or local law, rule or regulation.</span></p>
</div>
</div></div>

                
                <input name="GMAP_UNIQUE_ID" value="" type="hidden">
                <input name="IMGPATH" value="" type="hidden">
            </form>
        </div>
        
        <div class="search-results-actions">
            


    <input name="SEARCH_EVT" value="" type="hidden">
    <div class="reportLeftNavToggle hidden">
        <div class="additional-info">
            <button type="button" data-placement="bottom" class="btn-actions btn navigation_icon svg-icon-tiny" onclick="javascript:showHideReportNavigation();"></button>
            <span class="tooltip tooltip-35 hover">Toggle Navigation</span>
        </div>
    </div>

<div class="print-download-buttons">
    
    
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn print-icon svg-icon-tiny" data-original-title="Print Results" aria-label="Print Results" onclick=""></button>
        <span class="tooltip tooltip-35 hover">Print Document</span>
    </div>
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn download-icon svg-icon-tiny" data-original-title="Download" aria-label="Download" onclick=""></button> 
        <span class="tooltip tooltip-35 hover">Download Document</span>
    </div>
</div>










<div class="new-edit-search-buttons" data-active-tabid="6d1e294e408a9c3d50729654d49bd421"> 
    
        
            
                <div class="report-actions hidden">
                    <div class="additional-info">
                        <button type="button" class="btn edit-icon svg-icon-tiny btn-actions reportnotessh" onclick="">
                            <span class="tooltip centered">Show or Hide Notes</span>
                        </button>
                    </div>
                    <button type="button" class="btn display_all_button" onclick="">Show All Details</button> 
                </div>
            
        
    
    
    <button class="btn" onclick="">Edit Search</button> 
    <button class="btn" onclick="">New Search</button> 
    
    
        <div class="additional-info">
            <a href="javascript:void(0);" class="help-search-results help-icon svg-icon-small">
                <span class="tooltip tooltip-right">Help</span>
            </a>
        </div>
    
</div>





        </div>
        
        
    
</div></div>
               <div class="col-1_5 start-page-banner hidden">
               <a href="http://www.lexisnexis.com/risk/insights" target="_blank">
                   <img id="BannerAd" src="img/aml.jpg" alt="Banner Ad"><!-- TODO: the img and banner should be changed to proper value or generated based on current ad. -->
               </a>
               </div>
                    
    <div id="permissible-row">
    <script type="text/javascript">
        var _dppa_required = false,
            _glba_required = false;
    </script>
    
    
</div>

                    
                
            
        </section>
    </div>
    
            <div></div>
        
            
    

    <form name="SELECT_GROUP" action="" method="post" aria-hidden="true">
        <input name="SESSION_ID" value="5408fe4f75c02b939792245f88ada2af" type="hidden">
        <input name="CSRF_TOKEN" value="902a037dfba5529862f156a2cbcbba4b" type="hidden">  
        <input name="APPLICATION_TYPE" value="aml" type="hidden">
        <input name="EVENT" value="MYACCOUNT/UPDATE_GROUP_SESSION_PORTAL" class="resettable" type="hidden">
        <input name="GROUPS" value="" class="resettable" type="hidden">
    </form>
    <footer class="">
    <p>Customer Support - 1-866-277-8407</p>
    <p><a href="javascript:void(0);">About LexisNexis</a><a href="javascript:void(0);">Terms &amp; Conditions</a><a class="last-child" href="javascript:void(0);">Contact Us</a></p>
    <p> <a href="javascript:void(0);">Copyright ©</a> 2017 LexisNexis. All rights reserved. </p>
    </footer>
    <div id="mainModal" class="modal fade bs-example-modal-lg" aria-live="polite" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>          
                    <h2 class="modal-title">&nbsp; </h2>
                </div>
                <div class="modal-body">
                    <div class="well well-sm"><span class="loading_icon svg-icon-x-large loading-text">Working on the request, please wait...</span></div>
                </div>
            </div>
        </div>
    </div>
    <div id="logout-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="logoutModal" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h2 class="modal-title">Sign Out</h2>
                </div>
                <div class="modal-body">
                    <div>
                        <span>Do you want to save your Search tabs? Tabs are saved until midnight ET.</span>
                        <br><br><input title="Do not prompt again" id="NO_CLEAR_TABS_PROMPT" name="NO_CLEAR_TABS_PROMPT" type="checkbox"><label for="NO_CLEAR_TABS_PROMPT">&nbsp;Remember this setting. You can change it in your Preferences.</label>
                        <br><br><br>
                        <button class="btn btn-danger" onclick="update_clear_tabs_prefs('on');" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                        <button class="btn btn-default" onclick="update_clear_tabs_prefs('off');" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="clear-freqs-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="clearFreqsModal" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">Clear Frequent Searches Confirmation</h4>
                </div>
                <div class="modal-body">
                    <div style="text-align:center;">
                        <span>Are you sure you want to clear your Frequent Searches List?</span>
                        <br><br><br>
                        <button class="btn btn-danger" onclick="update_clear_freqs_prefs(this,'yes');" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                        <button class="btn btn-default" onclick="update_clear_freqs_prefs(this,'no');" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="rerun-recent-search-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="rerunRecentModal" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h2 class="modal-title">Refresh tab results</h2>
                </div>
                <div class="modal-body">
                    <div>
                        <span>You have changed your preferred number of results per page to display since you generated these search results last. Click OK to refresh your page with preferred number of results to display.</span>
                        <br><br><br>
                    </div>
                </div>
                <div class="modal-footer">
                    <div>
                        <button class="btn btn-default" onclick="force_rerun_recentSearch();" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="refresh-session-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="refreshSessionModal" aria-hidden="true" data-keyboard="false" data-backdrop="static">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title">Security Time Out</h2>
                </div>
                <div class="modal-body">
                    <div>
                        <span id="session_refresh_message">Your session will expire in <span id="remaining_minutes">0</span> minutes (about <span id="sess_expires_at">11:23:45 EST</span>) unless you refresh your session by clicking OK below</span>
                        <span id="session_expired_message" class="hidden">Your session has expired due to inactivity. Please click OK below to sign back in.</span>
                        <br><br><br>
                    </div>
                </div>
                <div class="modal-footer">
                    <div>
                        <button id="session_refresh_btn" class="btn btn-default" onclick="refresh_web20_session();" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
                        <button id="session_expired_btn" class="btn btn-default hidden" onclick="web20_auto_logout();" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="print-dialog-modal" class="modal fade" aria-live="polite" role="dialog" aria-labelledby="printDialogModal" aria-hidden="true">
        <div class="modal-dialog trap">
        </div>
    </div>
    <div id="error-dialog-modal" class="modal fade" aria-live="polite" role="dialog" aria-labelledby="errorDialogModal" aria-hidden="true" data-keyboard="false" data-backdrop="static">
        <div class="modal-dialog trap">
        </div>
    </div>
    <div id="web20-survey-modal" class="modal fade bs-example-modal-sm" data-backdrop="static" data-keyboard="false" aria-live="polite" role="dialog" aria-labelledby="printDialogModal" aria-hidden="true">
        <div class="modal-dialog trap">
        </div>
    </div>
    <div id="web20-survey-final-modal" class="modal fade bs-example-modal-sm" data-backdrop="static" data-keyboard="false" aria-live="polite" role="dialog" aria-labelledby="printDialogModal" aria-hidden="true">
    </div>
    <div id="web20-survey-start-modal" class="modal fade bs-example-modal-sm" data-backdrop="static" data-keyboard="false" aria-live="polite" role="dialog" aria-labelledby="rerunRecentModal" aria-hidden="true">
        <div class="modal-dialog trap">
           <div class="modal-content">
              <div class="modal-header">
                  <h2 class="modal-title">Survey Start!!</h2>
              </div>
              <div class="modal-body">
                  <div>
                      <p>Thank you for taking this survey. When complete, your results will be stored, and the feedback used to make improvements in the future...</p>
                      <p class="hidden">Please click Start below to start the survey.</p>
                  </div>
              </div>
              <div class="modal-footer">
                  <div>
                      <button id="start-survey-button" class="btn btn-danger" type="button">&nbsp;&nbsp;Start Survey&nbsp;&nbsp;</button>
                      <button id="postpone-survey-button" class="btn btn-default" type="button">&nbsp;&nbsp;Maybe Later&nbsp;&nbsp;</button>
                      <button id="decline-survey-button" class="btn btn-default" type="button">&nbsp;&nbsp;Decline&nbsp;&nbsp;</button>
                  </div>
              </div>
          </div>
        </div>
    </div>
    <div id="disable-search-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="disableSearch" aria-hidden="true">
        <div class="modal-dialog trap">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">
               <span aria-hidden="true" class="close-icon"></span>
               <span class="sr-only">Close</span>
              </button>
              <h2 class="modal-title">Disabled Searches</h2>
            </div>
            <div class="modal-body">
              <div class="settings-container">
   
    
<div id="main_menu_data_ds" class="no-print">
    
    
    
    <h2>People</h2><ul data-sid="peoplelinks" data-li-prefix="people">
        
        
        
        
        
        
            <li data-id="people_IDX_171" class="menu-show-group" data-icon="person_icon">LexisNexis® Identity Report</li>
            
        
        
        
        
        
        
        
        
        
        
        
        
        
                    
        
        

        
                    
    </ul>
    <h2>Business</h2><ul data-sid="businesseslinks" data-li-prefix="business">
        
        
        
        
        
        
        
        
        
        
            <li data-id="business_IDX_8" class="menu-show-group" data-icon="bus_icon">Secretary of State Filings</li>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
                    
    </ul>
    <h2>Property &amp; Assets</h2><ul data-sid="assetslinks" data-li-prefix="assets">
        
        
        
        
        
        
        
        
        
            <li data-id="assets_IDX_341" data-icon="property_icon">Property History Plus</li>
        
        
        
    </ul>
    
    
    
            
    
    <h2>Authentication Services</h2><ul data-sid="authserviceslinks" data-li-prefix="auth">
        
        
        
            <li data-id="auth_IDX_342" data-icon="authentication_services_icon">One Time Password</li>
        
        
    </ul>
</div>




</div>
<div style="text-align:center;margin:25px 0px 5px;">
   <input style="width:75px;" value="OK" class="btn btn-danger" data-dismiss="modal" type="button">
</div>
            </div>
          </div>  
        </div>
    </div>
    <div id="group-select-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="disableSearch" aria-hidden="true">
        <div class="modal-dialog trap col-8">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h2 class="modal-title">Select Group</h2>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <label>
                            <span class="form-control-label pull-left col-3 font-bold">Please select a group:</span>
                            <select id="group_select" class="form-control pull-left col-3">
                                
                            </select>
                        </label>
                        <button type="button" onclick="javascript:select_group_v4();" id="continue-group-select-modal" class="btn btn-danger pull-left left-spacing-5">Continue</button>
                        <div id="pw-group-select-modal" onclick="javascript:void(0);" class="pull-left left-spacing-5 hidden"><span class="loading_icon svg-icon-x-large loading-text">Loading...</span></div>
                    </div>
                    <div id="group-desc">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="group-select-confirm-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="groupSelectConfirmModal" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">Change Group Confirmation</h4>
                </div>
                <div class="modal-body">
                    <div style="text-align:center;">
                        <span>Changing to a different group will delete your tabs. Do you want to proceed?</span>
                        <br><br><input title="Do not prompt again" id="NO_CHANGE_GROUP_PROMPT" name="NO_CHANGE_GROUP_PROMPT" type="checkbox"><label for="NO_CHANGE_GROUP_PROMPT">&nbsp;Remember this setting. You can change it in your Preferences.</label>
                        <br><br><br>
                        <button class="btn btn-danger" onclick="show_group_modal_proceed(this);" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                        <button class="btn btn-default" data-dismiss="modal" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="single-tab-view-confirm-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="singleTabViewConfirmModal" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">Single Tab View Switch Confirmation</h4>
                </div>
                <div class="modal-body">
                    <div style="text-align:center;">
                        <span>Changing to Single Tab View will delete all your tabs but active tab. Do you want to proceed?</span>
                        <br><br><br>
                        <button class="btn btn-danger" onclick="set_tab_view_session('single');" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                        <button class="btn btn-default" data-dismiss="modal" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="ie8-modal" class="modal">
        <div class="well well-sm"><img src="img/loading_spinner.gif" alt="Loading" width="35" height="35">&nbsp;<span class="loading-text"></span></div>
    </div>


        
    

<div id="new-modal" class="modal fade bs-example-modal-lg" aria-live="polite" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;"><div class="modal-dialog trap"><div class="modal-content"><div class="modal-header"><button type="button" class="close hidden" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button><h2 class="modal-title">Preparing search results</h2></div><div class="modal-body"><div class="well well-sm"><span class="loading_icon svg-icon-x-large loading-text">Preparing search results, please wait...</span></div></div></div></div></div></body></html>