<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Property History Plus Report</title>

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
<link class="dynamic-css" rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/prop_history_plus.css">

<link id="load-css-0" rel="stylesheet" type="text/css" href="<TMPL_VAR HTMLPATH>/v4/css/util.css">
<link id="load-css-1" rel="stylesheet" type="text/css" href="<TMPL_VAR HTMLPATH>/v4/css/tooltip.css">

<style type="text/css"> #popover953003{ top:80.5px; left:43.9333px; display:block} </style>
<style type="text/css"> #popover884192{ top:80.5px; left:43.9333px; display:block} </style>

<script src="<TMPL_VAR HTMLPATH>/v4/js/jquery.js"></script>
    <script src="<TMPL_VAR HTMLPATH>/v4/js/sample_reports.js"></script>
    
    </head>
	<body class="menu-on-top" style="">
		<div id="main">
		
			<header id="header">	
	<!-- end pulled right: nav area -->
    <!-- BEGIN: v4/header_logo.tpl -->
<h1>


		
			<img src="<TMPL_VAR HTMLPATH>/v4/img/SampleReport.png" alt="LexisNexis© Sample Report™">
		
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
					<a href="#" onclick="javascript:get_prefs_data(1); return false;">Preferences</a>
				</li>
				
               
				
				<li class="hlOptions">
					<a href="#" onclick="javascript:get_prefs_data(2); return false;">Change Password</a>
				</li>
                 
				<li class="divider"></li>
				<li>
					<a href="#" onclick="">Announcements</a>
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





		
		<header id="topnav" class="">
			
				
<nav id="top-navigation" class="navbar navbar-inverse clear no-print">
    <div class="container pull-left top-section">
        <div>        
            <ul class="nav navbar-nav pull-left" id="bs-example-navbar-collapse-1">
                <li>
                    <a href="javascript:void(0);">History</a>
                </li>
            </ul>
            
            <div id="delivery-tray-container" class="hidden">
              <img id="delivery-tray-folder-icon" src="<TMPL_VAR HTMLPATH>/v4/img/delivery-tray-folder-icon.svg" alt="Delivery Tray" onclick="">
              <p id="delivery-tray-count"></p>
            </div>

            <div class="navbar-form pull-right" role="search" id="quick-search">
                <div id="quick-search-dropdown" class="input-group-btn qs-more-searches">
                    <button class="btn dropdown btn-default2 search-icon dropdown-toggle svg-icon-tiny" type="button" data-toggle="dropdown">   
                        <span class="fa fa-caret-down"></span>
                        <span class="sr-only">Open search within menu</span>                        
                    </button>
                    <ul role="menu" class="dropdown-menu">
                        <li class="qs-available active">
                            <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter SSN" data-qsoption="SSN" data-maxlength="" data-qs-permission="people_IDX_0" onclick="">SSN Lookup</a>
                        </li>
                        <li class="qs-available">
                            <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter Address" data-qsoption="Address" data-maxlength="130" data-qs-permission="people_IDX_0" onclick="">Address</a>
                        </li>
                        <li class="qs-available">
                            <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter Phone" data-qsoption="Phone" data-maxlength="" data-qs-permission="phones_IDX_79" onclick="">Reverse Phone</a>
                        </li>
                        <li class="qs-available">
                            <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter Company" data-qsoption="Company" data-maxlength="" data-qs-permission="business_IDX_13" onclick="">Company Name</a>
                        </li>
                        
                    </ul>
                </div>
                <div class="form-group"> 
                    <div class="col input">  
                        <label for="QS_TEXT">                 
                            <input autocomplete="off" name="QS_TEXT" id="QS_TEXT" class="form-control qs-input" placeholder="Enter SSN" onkeypress="" onkeyup="" type="text">
                            <span class="tooltip qs_text_tip tooltip-35">Enter SSN</span>
                        </label>
                    </div>

                    <div class="col input">
                        <label for="QS_REFERENCE_CODE">
                            <input class="form-control qs-input" id="QS_REFERENCE_CODE" name="QS_REFERENCE_CODE" value="" maxlength="32" placeholder="Enter Reference ID" onkeypress="" type="text">
                            <span class="tooltip tooltip-35">Enter Reference ID</span>
                        </label>
                    </div>
                </div>
                <button class="btn btn-success qs-go-button" type="button" id="quickSearchBtn">Go</button>
            </div>
        </div>
    </div>                               
</nav>


			
			
						
				
<ul id="nav-fav-bar" class="nav">
    <li class="srchHome">
        <div class="btn-group">
            <button id="home-button" class="dropdown-toggle home-icon svg-icon-small btn-danger" onclick="">
                <span class="tooltip centered">Home</span>
            </button>
            <button id="search-menu-button" data-toggle="dropdowncustom" data-target="#srchHome-dropdown" "="" class="btn-danger">
                Search Menu
                <span class="fa fa-caret-down"></span>
            </button>
            <div id="srchHome-dropdown" class="dropdown-menu"></div>
        </div>
    </li>            
    <li id="nav-fav-sel">        
        <div class="btn-group">
            <button id="nav-fav-select" data-toggle="dropdown" class="dropdown-toggle">
                <span class="btnText svg-icon-small favorites-star-red-filled">Favorites</span>
                <span class="fa fa-caret-down"></span>
            </button>
            <ul id="nav-fav-dropdown" class="dropdown-menu">
                <li>
                    <a href="#" onclick="">Favorites</a>
                </li>
                <li>
                    <a href="#" onclick="">Frequent</a>
                </li>
            </ul>
        </div>
    </li><li class="nav-fav-search nav-fav-first hx-show"><a href="javascript:void(0);">Find a Person</a></li><li class="nav-fav-search hx-show"><a href="javascript:void(0);">Find a Business</a></li><li class="nav-fav-search hx-show"><a href="javascript:void(0);">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification</a></li><li class="nav-fav-search hx-show"><a href="javascript:void(0);">Phones Plus</a></li><li class="nav-fav-search hx-show"><a href="javascript:void(0);">Negative News</a></li>
    <li id="nav-fav-viewall" class="hidden">
        <button class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
            <span class="more-actions"></span>
        </button>
        <ul class="dropdown-menu dropdown-menu-right tab-dropdown anim-fadeInDown">
            <li role="presentation" class="dropdown-header">Favorite Searches</li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa person_icon"></span>Find a Person</a></li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa bus_icon"></span>Find a Business</a></li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa person_icon"></span>InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification</a></li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa phone_icon"></span>Phones Plus</a></li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa news_icon"></span>Negative News</a></li>
        </ul>
    </li>
</ul>


    <ul id="history-tab-ul" class="nav nav-tabs multi-tab-view">


    
        
    
        <li class="btn-group history-tab dropdown active  not-form-tab hx-show" data-paramli="1c23d3983cecfbfd0d5b53ab7e0e77eb" data-isactive="1" data-islocked="0">
            <div class="btn-group" data-paramrecent="1c23d3983cecfbfd0d5b53ab7e0e77eb">
                <button data-focus="tab_1c23d3983cecfbfd0d5b53ab7e0e77eb" class="btn fa dropdown-toggle btn-danger" data-toggle="dropdown" data-hide-dropdown-icon="0"><img src="<TMPL_VAR HTMLPATH>/v4/img/caret_down.png">
                    <span class="sr-only">Open tab options</span>
                </button>
                <button data-container=".nav-tabs" data-toggle="popover" data-placement="top" data-trigger="hover" data-closebutton="off" class="tab-crit btn btn-lg btn-danger" onclick="" data-original-title="" title="">
                    <span data-searchtype="Property History Plus Report" data-tabshowevt="SEARCH2/SHOW_PROP_HISTORY_PLUS_REPORT" class="svg-icon-normal document-icon"></span>
                    <span class="history-tab-data" data-value="1234 Your Street; Your City; OH; 45200" aria-hidden="true">1234 Your Street; Your City; OH; 45200</span>
                </button>
		<div class="popper-content hide"><div class="popover-font-9 popover-tabs">1234 Your Street; Your City; OH; 4500</div></div>
                <button class="remove-tab btn close-icon  btn-danger" onclick="">
                    <span class="sr-only">Close tab</span>
                </button>
                <button class="multi-tab btn btn-danger hidden" onclick="">Toggle to Multi-tab View</button>
                <ul id="tab_1c23d3983cecfbfd0d5b53ab7e0e77eb" class="dropdown-menu tab-dropdown anim-fadeInDown">
                    <li role="presentation" class="dropdown-header">
                        Tab History 
                    </li>
                    
                        
                            
                                <li tabindex="0" class="tab-dropdown-item lnkRecent recentRun is-current-page" data-paramli="1c23d3983cecfbfd0d5b53ab7e0e77eb" data-isreport="1" data-page="1">
                                    <div class="history-tab-data" onclick="javascript:if($('.popup-link:hover').length === 0){process_tab_request(this,'1c23d3983cecfbfd0d5b53ab7e0e77eb',1);}">
                                        <span data-searchtype="Property History Plus Report" data-tabshowevt="SEARCH2/SHOW_PROP_HISTORY_PLUS_REPORT" class="svg-icon-small document-icon"></span>
                                        <span class="tab-search-name">Property History Plus Report</span>
                                        <span class="tab-search-terms"></span>
                                    </div>
                                    
                                    
                                    <button type="button" class="btn btn-default pull-right external_link_icon svg-icon-x-tiny tab-btn" onclick="run_history_popup_search('1c23d3983cecfbfd0d5b53ab7e0e77eb',1);"></button>
                                    
                                    
                                    <br class="clear">
                                </li>
                                
                            
                        
                    
                </ul>
            </div>
        </li>
    
    <li class="btn-group history-tab dropdown" id="history-more-tabs">
        <div class="additional-info">
            <button type="button" data-focus="tab-options-dropdown" data-toggle="dropdown" class="btn btn-default manage-tabs svg-icon-normal dropdown-toggle">
                <span class="overflow hidden" aria-hidden="true">View All</span>
                <span class="tooltip tooltip-right">Manage Tabs</span>
            </button>
            <ul id="tab-options-dropdown" class="dropdown-menu tab-dropdown anim-fadeInDown more-tabs-item">
                <li>
                    <a tabindex="0" onclick="javascript:close_all_tabs();" data-toggle="tab" class="tab-option">Close All Tabs</a>
                </li>
                <li>
                    <a tabindex="0" onclick="javascript:close_all_inactive_tabs();" data-toggle="tab" class="tab-option">Close All Tabs but the Active Tab</a>
                </li>
                <li id="toggle-print-screen-mode">
                    <a tabindex="0" onclick="javascript:toggle_print_screen_mode();" data-toggle="tab" class="tab-option">Toggle Print Screen Mode</a>
                </li>
                <li id="toggle-single-tab-view">
                    <a tabindex="0" onclick="javascript:confirm_set_single_tab_view();" data-toggle="tab" class="tab-option">Toggle Single Tab View</a>
                </li>
                <li role="presentation" class="dropdown-header">Open Tabs (<span id="open-tab-count">1</span>)</li>
                
                    
               
                    <li tabindex="0" class="tab-dropdown-item lnkRecent more-tabs-item not-form-tab is-current-page" data-paramli="1c23d3983cecfbfd0d5b53ab7e0e77eb">
                        <span class="close close-tab">
                            <a class="close-icon font-12" href="javascript:void(0);" onclick="remove_tab('1c23d3983cecfbfd0d5b53ab7e0e77eb');">
                                <span class="sr-only">Delete tab</span>
                            </a>
                        </span>
                        <div class="history-tab-data">
                            <section onclick="javascript:if($('.popup-link:hover').length === 0){process_tab_request(this,'1c23d3983cecfbfd0d5b53ab7e0e77eb',1,1);}">
                                <span class="svg-icon-normal document-icon" data-tabshowevt="SEARCH2/SHOW_PROP_HISTORY_PLUS_REPORT"></span>
                                <span class="tab-search-name">
                                    Property History Plus Report (1)
                                </span>
                                <span class="tab-search-terms">
                                   
                                </span>
                            </section>
                        </div>
                        <br class="clear">
                   </li>
               
            </ul>
        </div>
    </li>        


    </ul>

			
			
			
		</header>
		<section style="padding-top: 0px;">
			
				
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
						<span id="web20-search-flags" class="hidden" data-search-disabled="0" data-search-error-message="0" data-report-error-message="0" data-is-from-main-menu="0" data-hit-tab-limit="0" data-rerun-display-event="0" data-web20-page-title="Property History Plus Report" data-search-idx="" data-clear-browser-cache-pages="" data-is-clk-search="0" data-is-search-within="0" data-search-within-terms="" data-webpubrec-request="0" data-is-new-window="0" data-active-tab="1c23d3983cecfbfd0d5b53ab7e0e77eb" data-tab-id="1c23d3983cecfbfd0d5b53ab7e0e77eb" data-page="0" data-is-report="1" data-report-has-form="1" data-show-event="SEARCH2/SHOW_PROP_HISTORY_PLUS_REPORT"></span>
    
        <div id="search-form-row" class="row no-print hidden">
            
                
                    <header id="search-form-header">
    <h2>
        <strong>Property History Plus Report</strong>
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
<a href="#" onclick="javascript:update_start_page_prefs(this); return false;" id="make-start-page-link" class="button-icon  make-start-page" data-placement="bottom" data-original-title="Make This My Start Page" data-startpage-idx="">Make This My Start Page</a>

        </div>
    </div>
</header>

                
            
            
    <form name="PROP_HISTORY_PLUS_REPORT_SEARCH" action="/app/evolution/main" method="post" class="smart-form" onkeypress="" onkeyup="javascript:isEnterKeyDown=false; submitFormKeyPress(event);" novalidate>


    <input name="EVENT" value="REPORT2/SEARCH_PROP_HISTORY_PLUS_REPORT" type="hidden">

  <input name="SESSION_ID" value="1ce41be3a92f0ea987c7956577a113a4" type="hidden">
  <input name="CSRF_TOKEN" value="78ada0bee79af99b605a9e26c6142afd" type="hidden">  

<input id="REPORT_ACTION" name="ACTION_REPORT" value="/app/evolution/report" type="hidden">
<input name="CURRENT_EVENT" id="CURRENT_EVENT" value="REPORT2/SEARCH_PROP_HISTORY_PLUS_REPORT" type="hidden">
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
    <fieldset class="row">
        <legend class="sr-only">Change search type</legend>
        <script>
            var input_group_arr = [
                ['STREET_ADDRESS', 'CITY', 'STATE', 'ZIP'],
                ['PARCEL']
            ];
        </script>
        <p>* Entry Required. For Optimal results Address, Zip OR Address, City, State OR APN should be populated. <a onclick="javascript:window.open('https://risk.nexis.com/AMLSolutions/help/Fees_Apply.htm', 'help', 'width=800,height=600,left=25,top=25,scrollbars=yes,menubar=no,resizable=yes'); return false;" href="#">$ Additional Fees Apply</a>.</p>
        <label class="col col-3">
            <input id="input-group-1" name="input-group" checked="checked" onclick="refresh_input_group()" data-idx="1" value="FORM_SEARCH" type="radio">
            <span>Find by Address</span>
        </label>
        <label class="col col-6">
            <input id="input-group-2" name="input-group" onclick="refresh_input_group()" data-idx="2" value="NOT_FORM_SEARCH" type="radio">
            <span>Find by Assessor Parcel Number (APN)</span>
        </label>
    </fieldset>
    <div class="row">
        <div class="input col col-6">
            <label>
                <input id="STREET_ADDRESS" class="form-control" name="STREET_ADDRESS" value="" placeholder="Street Address *" maxlength="35" type="text">
                <span class="tooltip">Street Address * <span class="font-10"> (e.g. 123 Main St Apt 1)</span></span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3">
            <label>
                <input id="CITY" class="form-control" name="CITY" value="cincinnati" placeholder="City" maxlength="35" type="text">
                <span class="tooltip">City</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <select id="STATE" name="STATE" class="form-control" data-value="OH">
                    <option value="">State</option>
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
                <span class="hidden-label">State</span>
            </label>
        </div>
        <div class="input col col-2">
            <label>
                <input id="ZIP" name="ZIP" class="form-control" value="45227" placeholder="Zip Code" maxlength="10" type="text">
                <span class="tooltip">Zip Code</span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-3 hidden">
            <label>
                <input id="PARCEL" name="PARCEL" value="" placeholder="Assessor Parcel Number *" class="form-control radio-hidden-group" maxlength="55" data-oldval="" type="text">
                <span class="tooltip">Assessor Parcel Number *</span>
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
				
				
				  
							<input class="btn btn-danger" id="searchBtn" value="Search" onblur="ENTER_FOCUS=0;" onfocus="ENTER_FOCUS=1" onclick="if(!web20_validate('PROP_HISTORY_PLUS_REPORT_SEARCH')){ return false;}else{ show_loading(); send_ajax_event('REPORT2/SEARCH_PROP_HISTORY_PLUS_REPORT','/app/evolution/misc');}" type="button">
				  
				
			
			
			  
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
  <input name="SESSION_ID" value="1ce41be3a92f0ea987c7956577a113a4" type="hidden">
  <input name="CSRF_TOKEN" value="78ada0bee79af99b605a9e26c6142afd" type="hidden">  

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
<input name="CURRENT_EVENT" value="REPORT2/SEARCH_PROP_HISTORY_PLUS_REPORT" type="HIDDEN">
<!-- END Used for NEXT/PREV and Download to Excel -->

<!-- Person Search Plus vars -->
<input name="IN_HOUSEHOLD_TAB" value="" type="HIDDEN"> 
<!-- End Sanction Search vars -->

<!-- used by send_event to save EVENT value prior to altering it -->
<input name="SAVED_EVENT" value="" type="hidden">
<input name="DECISION_POPUP" value="1" type="hidden">

<!-- parent search id -->

<input name="PSID" value="1c23d3983cecfbfd0d5b53ab7e0e77eb" type="hidden">
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
  <input name="SESSION_ID" value="1ce41be3a92f0ea987c7956577a113a4" type="hidden">
  <input name="CSRF_TOKEN" value="78ada0bee79af99b605a9e26c6142afd" type="hidden">  

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
     
     
        <li id="SD_IDX_311" data-isreport="1"><a href="#" onclick="javascript:build_web20_decision_report(this,'REPORT2/PORTAL_LOCATION_REPORT',88); return false;">SmartLinx<sup class="sup-reg-symbol">®</sup> Location Report</a></li>
    
    
        <li id="SD_IDX_164" data-isreport="1"><a href="#" onclick="javascript:build_web20_decision_report(this,'REPORT2/SEARCH_PROP_HISTORY_REPORT',120); return false;">Property History Report</a></li>
    
    

  

    <!-- TODO comment out person search for All now, but later add LE Vertical check
    -->
    <!-- Should come up with some solution so that in the magnifying drop down, we can show Find a Person OR Find People with this Phone OR something else, as desired-->
    
      <li id="SD_IDX_0"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_FAP', 'cp_clkphone', 'PHONE_CLICK_SEARCH');">Find People with this Phone</a></li>
    
    <!-- -->

    

  

	
    <li id="SD_IDX_42"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_PAW');">People At Work</a></li>
	

	
    <li id="SD_IDX_8"><a href="javascript:srchDecisionEvt('WS_SEARCH/SEARCH_CORPORATION');">Corporation Filings</a></li>
	

	
    <li id="SD_IDX_9"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_UCC');">UCC</a></li>
	


	
	 
	


	


	
        <li id="SD_IDX_58"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_FICTIOUS');">Fictitious Business Name</a></li>
	

  
	
    <li id="SD_IDX_4"><a href="javascript:srchDecisionEvt('WS_SEARCH/SEARCH_DL_REG');">Motor Vehicles</a></li>
	
  

	

  

  
      
          
          <li id="SD_IDX_1"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY_A');">Taxes</a></li>
          
          
          <li id="SD_IDX_2"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY_D');">Deeds &amp; Mortgages</a></li>
          
      
      <li id="SD_IDX_341" data-isreport="1"><a href="#" onclick="javascript:build_web20_decision_report(this,'REPORT2/SEARCH_PROP_HISTORY_PLUS_REPORT', 117); return false;">Property History Plus Report</a></li>
  

  
      
        
        <li id="SD_IDX_1"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY_A');">Taxes</a></li>
        
        
        <li id="SD_IDX_2"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY_D');">Deeds &amp; Mortgages</a></li>
        
      
      
        <li id="SD_IDX_45"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_FORECLOSURE');">Foreclosures</a></li>
      
      
      <li id="SD_IDX_311" data-isreport="1"><a href="#" onclick="javascript:build_web20_decision_report(this,'REPORT2/PORTAL_LOCATION_REPORT',88); return false;">Get Location Report</a></li>a
      
      
      <li id="SD_IDX_89"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_NEIGHBORS');">Find Neighbors</a></li>
      
      
  

	
    <li id="SD_IDX_115"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY');">Property (Property Assessments, Deeds &amp; Mortgages)</a></li>
	

	
    <li id="SD_IDX_16"><a href="javascript:setaction('/app/evolution/misc');srchDecisionEvt('WS_SEARCH/SEARCH_VESSEL');">Watercraft</a></li>
	

	
    <li id="SD_IDX_21"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_AIRCRAFT');">FAA Aircraft</a></li>
	

	
    <li id="SD_IDX_3"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_LICENSE');">Driver Licenses</a></li>
	

	
    <li id="SD_IDX_23"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_PROF_LICENSE');">Professional Licenses</a></li>
	

	

	

    

    
    
        <li id="SD_IDX_98"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_EMAIL');">Email</a></li>
    
    

	

	

  

  


    

    
    

  

	
    <li id="SD_IDX_32"><a href="javascript:srchDecisionEvt('WS_SEARCH/SEARCH_VOTER_REGISTRATION');">Voter Registration</a></li>
	

	

        
	
    <li id="SD_IDX_79"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_DA_WIRELESS', 'cp_wafphonepl');">Phones Plus</a></li>
	
	

        
            <li id="SD_IDX_341" data-isreport="1"><a href="#" onclick="javascript:build_web20_decision_report(this,'REPORT2/SEARCH_PROP_HISTORY_PLUS_REPORT', 117); return false;">Property History Plus Report</a></li>
        

	
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
		
			
				
					
						<li data-id="myfreqs_IDX_341">
							<a href="javascript:pm_tab_v3('SEARCH2/SHOW_PROP_HISTORY_PLUS_REPORT');">Property History Plus Report</a>
						</li>
						
				
			
				
					
						<li data-id="myfreqs_IDX_3">
							<a href="javascript:pm_tab_v3('SEARCH2/SHOW_LICENSE');">Driver Licenses</a>
						</li>
						
				
			
				
					
						<li data-id="myfreqs_IDX_126">
							<a href="javascript:pm_tab_v3('SEARCH2/SHOW_MORTGAGEFRAUD_REPORT');">Mortgage Fraud Report</a>
						</li>
						
				
			
				
					
						<li data-id="myfreqs_IDX_0">
							<a href="javascript:pm_tab_v3('SEARCH2/SHOW_FAP');">Find a Person</a>
						</li>
						
				
			
				
					
						<li data-id="myfreqs_IDX_195">
							<a href="javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_IDRF');">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification with Red Flags Rule Report</a>
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
			
		
		
		
		
			<li data-id="people_IDX_171" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:pm_tab_v3('SEARCH2/SHOW_IDENTITY_REPORT');">LexisNexis<sup class="sup-reg-symbol">®</sup> Identity Report</a>
			</li>
			
		
		
		
		
			<li data-id="people_IDX_123" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:pm_tab_v3('SEARCH2/SHOW_FRAUDPOINT_SCORE');">FraudPoint<sup class="sup-reg-symbol">®</sup> Score</a>
			</li>
			
		
		
		
			<li data-id="people_IDX_198" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:pm_tab_v3('SEARCH2/SHOW_FRAUDPOINT_SCORE_WITH_REDFLAGS');">FraudPoint<sup class="sup-reg-symbol">®</sup> Score with Red Flags Rule Report</a>
			</li>
			
		
		
		
		
			<li data-icon="phone_icon" data-id="people_IDX_353" class="menu-show-group">
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
		
		
		
		
			<li data-id="business_IDX_8" class="menu-show-group" data-icon="bus_icon">
				<a href="javascript:pm_tab_v3('SEARCH2/SHOW_SOS_FILINGS');">Secretary of State Filings</a>
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
		
		
		
		
			<li data-id="assets_IDX_341" data-icon="property_icon">
				<a href="javascript:pm_tab_v3('SEARCH2/SHOW_PROP_HISTORY_PLUS_REPORT');">Property History Plus</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_309" data-icon="property_icon">
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
		
		
		
		
			<li data-id="auth_IDX_342" data-icon="authentication_services_icon">
				<a href="javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_OTP');">One Time Password</a>
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










<div class="new-edit-search-buttons" data-active-tabid="1c23d3983cecfbfd0d5b53ab7e0e77eb"> 
    
        
            
                <div class="report-actions hidden">
                    <div class="additional-info">
                        <button type="button" class="btn edit-icon svg-icon-tiny btn-actions reportnotessh" onclick="javascript:showHideNotes(reportNotesContainer)">
                            <span class="tooltip centered">Show or Hide Notes</span>
                        </button>
                    </div>
                    <button type="button" class="btn display_all_button" onclick="javascript:showHideAllSections();">Show All Details</button> 
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
                
                    <span class="hidden" id="custom-css">prop_history_plus.css</span><div id="report_body"><div id="report_content" role="article">
<header><h2 class="property_icon svg-icon-normal">Property History Plus Report</h2>
<div class="report_title">
<strong>Results Generated: </strong><time>10/01/2016&nbsp;12:00 PM EST</time> | FOR INFORMATIONAL PURPOSES ONLY | Copyright ©&nbsp;2016 LexisNexis, All rights reserved.</div>
<div class="report_title"><div>
<strong>Report Created for: </strong>PORTAL-RISK RESEARCH(1442381)</div></div>
<div class="report_title"><div id="terms" class="ellipsis show">
<strong>Search Terms: </strong>Street Address:&nbsp;<strong class="term">1234 Your Street</strong>;&nbsp;City:&nbsp;<strong class="term">your city</strong>;&nbsp;State:&nbsp;<strong class="term">OH</strong>;&nbsp;ZIP Code:&nbsp;<strong class="term">45220</strong>
</div></div></header><div id="properymeta" class="report_section">
<h3><span>Property: 1234 YOUR STREET YOUR CITY, OH 45200<text>-</text>0000</span></h3>
<ul><li>Residential</li></ul>
</div>
<a name="timeline"></a><div id="timeline-info" class="report_section">
<h3>Timeline</h3>
<div class="section_container">
<header><div id="icon_legend" class="smalltxt pull-left">
<strong>Legend: </strong><span title="Default: property in default (based on LexisNexis property/deed records)"><img class="pos2" src="<TMPL_VAR HTMLPATH>/v4/img/icon_mini_default2.gif" alt="Default" height="16"> Default
                        </span> |
                        <span title="Flip: property sold within 180 days of purchase"><img class="pos2" src="<TMPL_VAR HTMLPATH>/v4/img/icon_mini_flip.gif" alt="Flip" height="16"> Flip
                        </span> |
                        <span title="Foreclosure: property is/was in foreclosure (based on LexisNexis property/deed records)"><img class="pos2" src="<TMPL_VAR HTMLPATH>/v4/img/icon_mini_foreclosure.gif" alt="Foreclosure" height="16"> Foreclosure
                        </span> |
                        <span title="High Profit: current buyer paid 10% or more than the seller within 12 months or 20% or greather within 24 months"><img class="pos2" src="<TMPL_VAR HTMLPATH>/v4/img/icon_mini_profit.gif" alt="High Profit" height="16"> High Profit
                        </span> |
                        <span title="In Network: buyer and seller are members of the same cluster and have mutual associate 2 degrees or less away"><img class="pos2" src="<TMPL_VAR HTMLPATH>/v4/img/icon_mini_network.gif" alt="In Network" height="16"> In Network
                        </span> |
                        <span title="Property"><img class="pos2" src="<TMPL_VAR HTMLPATH>/v4/img/icon_mini_house.gif" alt="Property" height="16"> Property
                        </span>  |
                        <span title="Transfer of Ownership: no suspicious activity"><img class="pos2" src="<TMPL_VAR HTMLPATH>/v4/img/icon_mini_transfer.gif" alt="Transfer of Ownership" height="16"> Transfer of Ownership
                        </span>
</div>
<div class="section_range pull-right">
                        Range:
                        <select name="time_options" class="time_opt" onchange=""><option value="30">30 Days</option>
<option value="60">60 Days</option>
<option value="90">90 Days</option>
<option value="120">120 Days</option>
<option value="180">180 Days</option>
<option value="730">2 Years</option>
<option value="1825">5 Years</option>
<option value="3650">10 Years</option>
<option value="0" selected="">All Years</option></select>
</div></header><div class="timeline-container"><ul id="timeline" class="timeline">
<li data-tf="4419"><div>
<ul class="timeline-meta">
<li><img src="<TMPL_VAR HTMLPATH>/v4/img/icon_mini_house.gif" alt="Property" title="Property" height="16"></li>
<li><img src="<TMPL_VAR HTMLPATH>/v4/img/icon_mini_transfer.gif" alt="Transfer of Ownership" title="Transfer of Ownership: no suspicious activity" height="16"></li>
<li><img src="<TMPL_VAR HTMLPATH>/v4/img/icon_mini_house.gif" alt="Property" title="Property" height="16"></li>
</ul>
<p>John Doe</p>
<p>Owner as of 08/27/2004</p>
<p>$100,000</p>
<p class="timeline-date">08/27/2004</p>
</div></li>
<li data-tf="4430"><div>
<ul class="timeline-meta">
<li><img src="<TMPL_VAR HTMLPATH>/v4/img/icon_mini_house.gif" alt="Property" title="Property" height="16"></li>
<li><img src="<TMPL_VAR HTMLPATH>/v4/img/icon_mini_transfer.gif" alt="Transfer of Ownership" title="Transfer of Ownership: no suspicious activity" height="16"></li>
</ul>
<p>Seller: Sally Smith</p>
<p>Buyer: John Doe</p>
<p>$100,000</p>
<p class="timeline-date">08/16/2004</p>
</div></li>
</ul></div>
</div>
</div>
<div id="property-info" class="report_section collapsible-section with-links">
<h3>
<span tabindex="0" class="collapsible fa-icon-tiny-before has-click-event open" data-event="collapse" data-collapser="PROPERTY_INFORMATION">Property Information</span><ul><li><button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button></li></ul>
</h3>
<div class="section_container" id="PROPERTY_INFORMATION">
<ul class="property-maps">
<li>
<div class="preview" aria-hidden="true"><button type="button" href="javascript:void(0);" id="record1_sat1_button" onclick="" class="btn btn-link btn-tight" data-toggle="modal" data-target="#record1_sat1"><img src="<TMPL_VAR HTMLPATH>/v4/img/prop1.png" alt="Google Map"></button></div>
<button type="button" id="record1_sat1_button" onclick="" class="btn btn-link" data-toggle="modal" data-target="#record1_sat1" aria-hidden="true">Google Maps: Satellite View</button><div id="record1_sat1" class="modal addressmap disclaimer" data-backdrop="static" role="dialog" tabindex="0" aria-hidden="true" data-address=" " data-viewtype="0" data-title="Address" data-refcode=""><div class="resizable-dialog">
<div class="resizable-header">
<button type="button" class="close close-icon" data-dismiss="modal"></button><h4 class="modal-title"></h4>
</div>
<div class="resizable-body map"></div>
<div class="resizable-body disclaimer-text">
<h5>IMPORTANT - READ CAREFULLY BEFORE ACCESSING THIS PRODUCT FEATURE.</h5>
<p>THE MAPPING SERVICES ARE PROVIDED BY A THIRD PARTY, AND ARE NOT CREATED, OWNED OR CONTROLLED BY LEXISNEXIS RISK SOLUTIONS FLORIDA. YOUR INPUTS INTO THE MAPPING SERVICE WILL BE REDIRECTED TO A THIRD PARTY EXTERNAL SITE. YOU MAY CEASE USE OF THE MAPPING SERVICE AT ANY TIME. BE ADVISED THAT LEXISNEXIS RISK SOLUTIONS FLORIDA DOES NOT CONTROL, SCREEN, ALTER OR MODIFY THE CONTENT OF THE MAPPING SERVICES AND CANNOT CONTROL THE AVAILABILITY OR FUNCTIONALITY OF THE MAPPING SERVICE. THE MAPPING SERVICE IS PROVIDED "AS IS, AS AVAILABLE."</p>
<p class="disclaimer-hide">By accessing this mapping feature, you agree to abide by the terms and conditions of the license agreement.</p>
</div>
<div class="resizable-footer disclaimer-controls">
<button type="button" class="btn btn-default" data-dismiss="modal">I Decline</button><button type="button" class="btn" onclick="javascript:map_shown(record1_sat1);">I Agree</button>
</div>
<div class="resizable-footer disclaimer-dismiss"><button type="button" class="btn btn-default" onclick="javascript:hide_map_disclaimer(record1_sat1);">Ok</button></div>
<div class="resizable-footer disclaimer-link"><button type="button" class="btn btn-link" onclick="javascript:show_map_disclaimer(record1_sat1);">Disclaimer</button></div>
</div></div>
</li>
<li>
<div class="preview" aria-hidden="true"><button type="button" href="javascript:void(0);" id="record1_street1_button" onclick="" class="btn btn-link btn-tight" data-toggle="modal" data-target="#record1_street1"><img src="<TMPL_VAR HTMLPATH>/v4/img/prop2.png" alt="Google Street View"></button></div>
<button type="button" id="record1_street1_button" onclick="" class="btn btn-link" data-toggle="modal" data-target="#record1_street1" aria-hidden="true">Google Maps: Street View</button><div id="record1_street1" class="modal addressmap disclaimer" data-backdrop="static" role="dialog" tabindex="0" aria-hidden="true" data-address=" " data-viewtype="1" data-title="Address" data-refcode=""><div class="resizable-dialog">
<div class="resizable-header">
<button type="button" class="close close-icon" data-dismiss="modal"></button><h4 class="modal-title"> </h4>
</div>
<div class="resizable-body map"></div>
<div class="resizable-body disclaimer-text">
<h5>IMPORTANT - READ CAREFULLY BEFORE ACCESSING THIS PRODUCT FEATURE.</h5>
<p>THE MAPPING SERVICES ARE PROVIDED BY A THIRD PARTY, AND ARE NOT CREATED, OWNED OR CONTROLLED BY LEXISNEXIS RISK SOLUTIONS FLORIDA. YOUR INPUTS INTO THE MAPPING SERVICE WILL BE REDIRECTED TO A THIRD PARTY EXTERNAL SITE. YOU MAY CEASE USE OF THE MAPPING SERVICE AT ANY TIME. BE ADVISED THAT LEXISNEXIS RISK SOLUTIONS FLORIDA DOES NOT CONTROL, SCREEN, ALTER OR MODIFY THE CONTENT OF THE MAPPING SERVICES AND CANNOT CONTROL THE AVAILABILITY OR FUNCTIONALITY OF THE MAPPING SERVICE. THE MAPPING SERVICE IS PROVIDED "AS IS, AS AVAILABLE."</p>
<p class="disclaimer-hide">By accessing this mapping feature, you agree to abide by the terms and conditions of the license agreement.</p>
</div>
<div class="resizable-footer disclaimer-controls">
<button type="button" class="btn btn-default" data-dismiss="modal">I Decline</button><button type="button" class="btn" onclick="javascript:map_shown(record1_street1);">I Agree</button>
</div>
<div class="resizable-footer disclaimer-dismiss"><button type="button" class="btn btn-default" onclick="javascript:hide_map_disclaimer(record1_street1);">Ok</button></div>
<div class="resizable-footer disclaimer-link"><button type="button" class="btn btn-link" onclick="javascript:show_map_disclaimer(record1_street1);">Disclaimer</button></div>
</div></div>
</li>
</ul>
<div class="property-metadata">
<dl>
<div>
<dt>Address</dt>
<dd>
<input id="ADDR_KEY_VALUES" name="KEY_VALUES" value="" type="hidden"><div class="col-md-11" style="padding:0px 0px 0px 0px">1234 YOUR STREET<br>
  YOUR CITY,&nbsp;OH&nbsp;45200
  <text>-</text>
  0000</div>
<div class="col-md-1" style="padding:0px 0px 0px 0px">
<div class="portal-decisions additional-info block-display" data-decisiontype="typePropPlus" data-numero="1" data-row="0">
<button type="button" data-toggle="dropdown" class="btn btn-link btn-tight add-actions dropdown-toggle add-search-icon" aria-label=" "><span class="tooltip centered">More Searches</span></button><ul role="menu" class="dropdown-menu"><li>To populate menu, activate the button proceeding the list</li></ul>
</div>
<div class="additional-info block-display">
<button type="button" id="record1_map1_button" onclick="" class="btn btn-link map_icon add-actions" data-toggle="modal" data-target="#record1_map1" aria-hidden="true"><span class="tooltip centered">View Map</span></button><div xmlns:bps-packaged="http://www.seisint.com/bps-packaged" xmlns:bps-sources="http://www.seisint.com/bps-sources" id="record1_map1" class="modal addressmap disclaimer" data-backdrop="static" role="dialog" tabindex="0" aria-hidden="true" data-address=" " data-viewtype="0" data-title="Address" data-refcode=""><div class="resizable-dialog">
<div class="resizable-header">
<button type="button" class="close close-icon" data-dismiss="modal"></button><h4 class="modal-title"> </h4>
</div>
<div class="resizable-body map"></div>
<div class="resizable-body disclaimer-text">
<h5>IMPORTANT - READ CAREFULLY BEFORE ACCESSING THIS PRODUCT FEATURE.</h5>
<p>THE MAPPING SERVICES ARE PROVIDED BY A THIRD PARTY, AND ARE NOT CREATED, OWNED OR CONTROLLED BY LEXISNEXIS RISK SOLUTIONS FLORIDA. YOUR INPUTS INTO THE MAPPING SERVICE WILL BE REDIRECTED TO A THIRD PARTY EXTERNAL SITE. YOU MAY CEASE USE OF THE MAPPING SERVICE AT ANY TIME. BE ADVISED THAT LEXISNEXIS RISK SOLUTIONS FLORIDA DOES NOT CONTROL, SCREEN, ALTER OR MODIFY THE CONTENT OF THE MAPPING SERVICES AND CANNOT CONTROL THE AVAILABILITY OR FUNCTIONALITY OF THE MAPPING SERVICE. THE MAPPING SERVICE IS PROVIDED "AS IS, AS AVAILABLE."</p>
<p class="disclaimer-hide">By accessing this mapping feature, you agree to abide by the terms and conditions of the license agreement.</p>
</div>
<div class="resizable-footer disclaimer-controls">
<button type="button" class="btn btn-default" data-dismiss="modal">I Decline</button><button type="button" class="btn" onclick="javascript:map_shown(record1_map1);">I Agree</button>
</div>
<div class="resizable-footer disclaimer-dismiss"><button type="button" class="btn btn-default" onclick="javascript:hide_map_disclaimer(record1_map1);">Ok</button></div>
<div class="resizable-footer disclaimer-link"><button type="button" class="btn btn-link" onclick="javascript:show_map_disclaimer(record1_map1);">Disclaimer</button></div>
</div></div>
</div>
</div>
</dd>
</div>
<div>
<dt>APN</dt>
<dd>000-0000-0000-00</dd>
</div>
<div>
<dt>Alt Parcel Number</dt>
<dd></dd>
</div>
<div>
<dt>Legal Description</dt>
<dd>1234 YOUR STRET 50 X 150 LOT 20 SETTLES SUB</dd>
</div>
<div>
<dt>Subdivision Name</dt>
<dd></dd>
</div>
<div>
<dt>Land Use</dt>
<dd>SINGLE FAMILY RESIDENTIAL</dd>
</div>
<div>
<dt>Land Value</dt>
<dd>$6,633</dd>
</div>
<div>
<dt>Improvement Value</dt>
<dd>$27,916</dd>
</div>
<div>
<dt>Total Value</dt>
<dd></dd>
</div>
<div>
<dt>Assessed Value</dt>
<dd>$34,549</dd>
</div>
<div>
<dt>Market Land Value</dt>
<dd>$18,950</dd>
</div>
<div>
<dt>Market Improvement Value</dt>
<dd>$79,760</dd>
</div>
<div>
<dt>Total Market Value</dt>
<dd>$100,000</dd>
</div>
<div>
<dt>Tax Amount</dt>
<dd>$2,240</dd>
</div>
<div>
<dt>Tax Year</dt>
<dd>2014</dd>
</div>
</dl>
<dl>
<div>
<dt>Stories</dt>
<dd>2</dd>
</div>
<div>
<dt>Number of Bedrooms</dt>
<dd>4</dd>
</div>
<div>
<dt>Baths</dt>
<dd>1</dd>
</div>
<div>
<dt>Style</dt>
<dd>CONVENTIONAL</dd>
</div>
<div>
<dt>Year Built</dt>
<dd>1910</dd>
</div>
<div>
<dt>Square Footage</dt>
<dd>1920</dd>
</div>
<div>
<dt>Lot Size</dt>
<dd>6839</dd>
</div>
<div>
<dt>Condition</dt>
<dd></dd>
</div>
<div>
<dt>Fireplace</dt>
<dd>NO</dd>
</div>
<div>
<dt>Pool</dt>
<dd>NO</dd>
</div>
<div>
<dt>Air Conditioning</dt>
<dd>YES</dd>
</div>
<div>
<dt>Heating</dt>
<dd>YES</dd>
</div>
<div>
<dt>Fuel</dt>
<dd></dd>
</div>
<div>
<dt>Sewer</dt>
<dd></dd>
</div>
<div>
<dt>Water</dt>
<dd></dd>
</div>
<div>
<dt>Electric</dt>
<dd></dd>
</div>
<div>
<dt>Frame</dt>
<dd></dd>
</div>
<div>
<dt>Roof</dt>
<dd></dd>
</div>
</dl>
</div>
</div>
</div>
<div id="transaction-history" class="report_section collapsible-section with-links">
<h3>
<span tabindex="0" class="collapsible fa-icon-tiny-before has-click-event open" data-event="collapse" data-collapser="TRANSACTION_HISTORY">Transaction History</span><ul><li><button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button></li></ul>
</h3>
<div class="section_container" id="TRANSACTION_HISTORY">
<div class="history_chart"><div id="history_chart_all"><div style="position: relative;"><div style="position: relative; width: 1585px; height: 200px;" dir="ltr"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;" aria-label="A chart."><svg width="1585" height="200" style="overflow: hidden;" aria-label="A chart."><defs id="defs"><clipPath id="_ABSTRACT_RENDERER_ID_57"><rect x="142" y="38" width="1301" height="124"></rect></clipPath></defs><rect x="0" y="0" width="1585" height="200" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="142" y="24.25" font-family="Arial" font-size="15" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">Sales Amount</text><rect x="142" y="11.5" width="1301" height="15" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="1458" y="68" width="112" height="63" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><rect x="1458" y="68" width="112" height="15" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="1494" y="80.75" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#222222">Sales</text></g><path d="M1458,75.5L1488,75.5" stroke="#cc0033" stroke-width="3" fill-opacity="1" fill="none"></path><circle cx="1473" cy="75.5" r="4.5" stroke="none" stroke-width="0" fill="#cc0033"></circle></g><g><rect x="1458" y="92" width="112" height="15" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="1494" y="104.75" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#222222">Zip</text></g><path d="M1458,99.5L1488,99.5" stroke="#336699" stroke-width="2" stroke-dasharray="7,2" fill-opacity="1" fill="none"></path></g><g><rect x="1458" y="116" width="112" height="15" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="1494" y="128.75" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#222222">Zip+4</text></g><path d="M1458,123.5L1488,123.5" stroke="#009ddb" stroke-width="2" stroke-dasharray="7,2" fill-opacity="1" fill="none"></path></g></g><g><rect x="142" y="38" width="1301" height="124" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(https://amlsolutionsdev.lexisnexis.com/app/evolution/main#_ABSTRACT_RENDERER_ID_57)"><g><rect x="142" y="38" width="1" height="124" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="359" y="38" width="1" height="124" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="575" y="38" width="1" height="124" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="792" y="38" width="1" height="124" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="1009" y="38" width="1" height="124" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="1225" y="38" width="1" height="124" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="1442" y="38" width="1" height="124" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="142" y="161" width="1301" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="142" y="130" width="1301" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="142" y="100" width="1301" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="142" y="69" width="1301" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="142" y="38" width="1301" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect></g><g><rect x="142" y="161" width="1301" height="1" stroke="none" stroke-width="0" fill="#333333"></rect></g><g><path d="M1442.5,108.7125L250.83333333333331,108.7125" stroke="#cc0033" stroke-width="3" fill-opacity="1" fill="none"></path></g></g><g><circle cx="1442.5" cy="108.7125" r="4.5" stroke="none" stroke-width="0" fill="#cc0033"></circle><circle cx="250.83333333333331" cy="108.7125" r="4.5" stroke="none" stroke-width="0" fill="#cc0033"></circle></g><g><g><text text-anchor="middle" x="142.5" y="183.75" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#444444">8-2004</text></g><g><text text-anchor="middle" x="359.16666666666663" y="183.75" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#444444">8-2004</text></g><g><text text-anchor="middle" x="575.8333333333333" y="183.75" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#444444">8-2004</text></g><g><text text-anchor="middle" x="792.5" y="183.75" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#444444">8-2004</text></g><g><text text-anchor="middle" x="1009.1666666666666" y="183.75" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#444444">8-2004</text></g><g><text text-anchor="middle" x="1225.8333333333333" y="183.75" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#444444">8-2004</text></g><g><text text-anchor="middle" x="1442.5" y="183.75" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#444444">8-2004</text></g><g><text text-anchor="end" x="127" y="166.75" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#444444">$0</text></g><g><text text-anchor="end" x="127" y="136" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#444444">$60,000</text></g><g><text text-anchor="end" x="127" y="105.25" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#444444">$120,000</text></g><g><text text-anchor="end" x="127" y="74.49999999999999" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#444444">$180,000</text></g><g><text text-anchor="end" x="127" y="43.749999999999986" font-family="Arial" font-size="15" stroke="none" stroke-width="0" fill="#444444">$240,000</text></g></g></g><g></g></svg></div></div><div style="display: none; position: absolute; top: 210px; left: 1595px; white-space: nowrap; font-family: Arial; font-size: 15px;" aria-hidden="true">Zip+4</div><div></div></div></div></div>
<ul class="transaction-range">
<li><a id="download_csv" href="javascript:void(0);" class="btn btn-xs btn-default" title="Download to Excel"><img src="<TMPL_VAR HTMLPATH>/v4/img/excel.png" class="pos2" title="Download to Excel" width="16" height="13"> Download to Excel</a></li>
<li>History Range: <select id="th_range" name="time_options" class="time_opt"><option value="30">30 Days</option>
<option value="60">60 Days</option>
<option value="90">90 Days</option>
<option value="120">120 Days</option>
<option value="180">180 Days</option>
<option value="730">2 Years</option>
<option value="1825">5 Years</option>
<option value="3650">10 Years</option>
<option value="0" selected="">All Years</option></select>
</li>
</ul>
<table id="transhistory" class="autoflow">
<thead><tr>
<th>Sale Date</th>
<th>Seller / Buyer</th>
<th>% Gain / # of Days</th>
<th>Sale</th>
<th>Recording Date</th>
<th>Source</th>
</tr></thead>
<tbody>
<tr data-tf="4430">
<td>
<a class="expando fa-icon-tiny-before collapsed" data-toggle="collapserow" data-target=".grp4"></a>08/16/2004</td>
<td><ul>
<li class="pull-container">
<div class="pull-left">
<strong>Seller: </strong><span class="relative"><a href="javascript:void(0);">SMITH, SALLY</a><span class="tooltip hover">
                                            Person Search
                                        </span></span>
</div>
<div class="pull-right">
<a href="javascript:void(0);" class="btn btn-default external_link_icon svg-icon-x-tiny tab-btn"></a><span class="tooltip hover tooltip-right">Open in New Window</span>
</div>
<input name="KEY_VALUES" id="seller11" value="" type="hidden">
</li>
<li class="pull-container">
<div class="pull-left">
<strong>Buyer: </strong><span class="relative"><a href="javascript:void(0);">DOE, JOHN</a><span class="tooltip hover">
                                            Person Search
                                        </span></span><span class="relative"><button type="button" data-toggle="popover" data-title="Buyer Warnings" class="btn btn-link btn-tight popper high-risk-icon svg-icon-tiny" data-original-title="" title=""></button><div class="popper-content hide"><div class="popover-font-9 popover-prop-history"><ul><li>Buyer cluster had 5+ deed transfers ending in default or foreclosure</li></ul></div></div></span>
</div>
<div class="pull-right">
<a href="javascript:void(0);" class="btn btn-default external_link_icon svg-icon-x-tiny tab-btn"></a><span class="tooltip hover tooltip-right">Open in New Window</span>
</div>
<input name="KEY_VALUES" id="buyer11" value="" type="hidden">
</li>
</ul></td>
<td>
<strong># of Days</strong>: 1216 Days
            </td>
<td><strong>Sale Price</strong>: $103,000<br>
  <strong>Loan Amount</strong>: $97,850<br>
  <strong>Lender</strong>: FUNDING LLC<br>
  <strong>Document Type</strong>: WARRANTY DEED<br></td>
<td>08/30/2004</td>
<td>B</td>
</tr>
<tr class="dupe grp4 collapse" data-tf="4428">
<td>08/18/2004<em>(Duplicate Data)</em>
</td>
<td><ul>
<li class="pull-container">
<div class="pull-left">
<strong>Seller: </strong><span class="relative"><a href="javascript:close_modal('0');javascript:build_report('/app/evolution/report',0,43,0,null,'seller21',null,null);">MCDONALD, DAISY</a><span class="tooltip hover">
                                            Person Search
                                        </span></span>
</div>
<div class="pull-right">
<a href="javascript:close_modal('0');javascript:build_report('/app/evolution/report',0,43,0,null,'seller21','new_win',null);" class="btn btn-default external_link_icon svg-icon-x-tiny tab-btn"></a><span class="tooltip hover tooltip-right">Open in New Window</span>
</div>
<input name="KEY_VALUES" id="seller21" value="" type="hidden">
</li>
<li class="pull-container">
<div class="pull-left">
<strong>Buyer: </strong><span class="relative"><a href="javascript:close_modal('0');javascript:build_report('/app/evolution/report',0,43,0,null,'buyer21',null,null);"></a><span class="tooltip hover">
                                            Person Search
                                        </span></span>
</div>
<div class="pull-right">
<a href="javascript:close_modal('0');javascript:build_report('/app/evolution/report',0,43,0,null,'buyer21','new_win',null);" class="btn btn-default external_link_icon svg-icon-x-tiny tab-btn"></a><span class="tooltip hover tooltip-right">Open in New Window</span>
</div>
<input name="KEY_VALUES" id="buyer21" value="" type="hidden">
</li>
</ul></td>
<td>
<strong># of Days</strong>: 2 Days
            </td>
<td>
<strong>Sale Price</strong>: $103,000<br><strong>Loan Amount</strong>: $97,850<br><strong>Lender</strong>: SOUTHSTAR FNDG LLC<br><strong>Document Type</strong>: DEED<br>
</td>
<td>08/30/2004</td>
<td>A</td>
</tr>
<tr data-tf="4419">
<td>08/27/2004</td>
<td><ul>
<li class="pull-container">
<div class="pull-left"><strong>Seller: </strong><span class="relative"><a href="javascript:void(0);">SMITH, SALLY</a><span class="tooltip hover"> Person Search </span></span></div>
<div class="pull-right">
<a href="javascript:void(0);" class="btn btn-default external_link_icon svg-icon-x-tiny tab-btn"></a><span class="tooltip hover tooltip-right">Open in New Window</span>
</div>
<input name="KEY_VALUES" id="seller31" value="" type="hidden">
</li>
<li class="pull-container">
<div class="pull-left">
<strong>Buyer: </strong><span class="relative"><a href="javascript:void(0);">DOE, JOHN</a><span class="tooltip hover">
                                            Person Search
                                        </span></span><span class="relative"><button type="button" data-toggle="popover" data-title="Buyer Warnings" class="btn btn-link btn-tight popper high-risk-icon svg-icon-tiny" data-original-title="" title=""></button><div class="popper-content hide"><div class="popover-font-9 popover-prop-history"><ul><li>Buyer cluster had 5+ deed transfers ending in default or foreclosure</li></ul></div></div></span>
</div>
<div class="pull-right">
<a href="javascript:void(0);" class="btn btn-default external_link_icon svg-icon-x-tiny tab-btn"></a><span class="tooltip hover tooltip-right">Open in New Window</span>
</div>
<input name="KEY_VALUES" id="buyer31" value="" type="hidden">
</li>
</ul></td>
<td>
<strong># of Days</strong>: 9 Days
            </td>
<td><strong>Sale Price</strong>: $103,000<br>
  <strong>Loan Amount</strong>: $97,850<br>
  <strong>Lender</strong>: FNDG<br>
  <strong>Document Type</strong>: DEED<br></td>
<td>08/27/2004</td>
<td>A</td>
</tr>
<tr data-tf="6456">
<td>01/29/1999</td>
<td><ul><li class="pull-container">
<div class="pull-left"><strong>Buyer: </strong><span class="relative"><a href="javascript:void(0);">SMITH, SALLY</a><span class="tooltip hover"> Person Search </span></span></div>
<div class="pull-right">
<a href="javascript:void(0);" class="btn btn-default external_link_icon svg-icon-x-tiny tab-btn"></a><span class="tooltip hover tooltip-right">Open in New Window</span>
</div>
<input name="KEY_VALUES" id="buyer41" value="" type="hidden">
</li></ul></td>
<td>
<strong># of Days</strong>: 0 Days
            </td>
<td><strong>Loan Amount</strong>: $56,000<br>
  <strong>Lender</strong>: MTG SVCS LLC<br>
  <strong>Document Type</strong>: DEED OF TRUST<br></td>
<td>03/02/1999</td>
<td>A</td>
</tr>
</tbody>
</table>
</div>
</div><script>var transdata = [[,"FCRA: The data provided to you by use of this product may not be used as a factor in establishing a consumer's eligibility for credit, insurance, employment or other purposes identified under the Fair Credit Reporting Act (FCRA). Your DPPA Permissible Use is: Litigation Your GLBA Permissible Use is: Fraud Prevention or Detection Your DMF Permissible Use is: Fraud Prevention Interest Copyright (c) 2016 LexisNexis. All rights reserved.",,,,,,,,,,,,,],["Property Plus Report",,,,,,,,,,,,,,],["Sale Date", "Seller", "Buyer", "Relationship", "% Gain", "# of Days", "Sale Price", "Loan Amount", "Lender", "Document Type", "Recording Date", "Source", "Seller Risk Indicators", "Buyer Risk Indicators", "Transaction Risk Indicators"],["08/16/2004",", "," ","","","1216","$103,000","$97,850","","WARRANTY DEED","08/30/2004","B","","Buyer1 Warning: || > Buyer cluster had 5+ deed transfers ending in default or foreclosure |",""],["08/18/2004| (Duplicate Data)","Y","TS","","","2","$103,000","$97,850","","DEED","08/30/2004","A","","",""],["08/27/2004","","","","","9","$103,000","$97,850","","DEED","08/27/2004","A","","Buyer1 Warning: || > Buyer cluster had 5+ deed transfers ending in default or foreclosure |",""],["01/29/1999","","","","","0","","$56,000","NCS MTG SVCS LLC","DEED OF TRUST","03/02/1999","A","","",""]];</script><div id="resident-info" class="report_section collapsible-section with-links">

<h3>
<span tabindex="0" class="collapsible fa-icon-tiny-before has-click-event open" data-event="collapse" data-collapser="CURRENT_RESIDENTS">Current Residents</span><ul><li><button type="button" data-event="scroll" class="caret_up has-click-event btn btn-link btn-tight">Top</button></li></ul>
</h3>
<div class="section_container" id="CURRENT_RESIDENTS"><table class="autoflow">
<thead><tr>
<th>Name</th>
<th>SSN</th>
<th>Dates</th>
<th>Actions</th>
</tr></thead>
<tbody>
<tr>
<td>DOE, JOHN&nbsp;D</td>
<td>111-11-XXXX</td>
<td>09/2016</td>
<td><div class="pull-container">
<a href="javascript:void(0);" class="clear person_icon pull-left">Person Report</a><div class="additional-info pull-right"><a href="javascript:void(0);" class="btn btn-default external_link_icon svg-icon-x-tiny tab-btn" aria-label="Open Person Report in a new window"><span class="tooltip tooltip-right">Open in New Window</span></a></div>
<input name="KEY_VALUES" id="resident_1" value="|" type="hidden">
</div></td>
</tr>
<tr>
<td>DOE, JANE&nbsp;E</td>
<td>222-22-XXXX</td>
<td>09/2016</td>
<td><div class="pull-container">
<a href="javascript:void(0);" class="clear person_icon pull-left">Person Report</a><div class="additional-info pull-right"><a href="javascript:void(0);" class="btn btn-default external_link_icon svg-icon-x-tiny tab-btn" aria-label="Open Person Report in a new window"><span class="tooltip tooltip-right">Open in New Window</span></a></div>
<input name="KEY_VALUES" id="resident_2" value="" type="hidden">
</div></td>
</tr>
</tbody>
</table></div>
</div>
<div class="report_section">
<strong>FCRA:</strong> The data provided to you by use of this product may not be used as a factor in establishing a consumer's eligibility for credit, insurance, employment or other purposes identified under the Fair Credit Reporting Act (FCRA).
                </div>
</div></div><script type="text/javascript">window.chartdata = [[new Date(2004,7,27),103000,,],[new Date(2004,7,16),103000,,]];</script><script type="text/javascript"></script>

                
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










<div class="new-edit-search-buttons" data-active-tabid="1c23d3983cecfbfd0d5b53ab7e0e77eb"> 
    
        
            
                <div class="report-actions hidden">
                    <div class="additional-info">
                        <button type="button" class="btn edit-icon svg-icon-tiny btn-actions reportnotessh" onclick="javascript:showHideNotes(reportNotesContainer)">
                            <span class="tooltip centered">Show or Hide Notes</span>
                        </button>
                    </div>
                    <button type="button" class="btn display_all_button" onclick="javascript:showHideAllSections();">Show All Details</button> 
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
               <a href="javascript:void(0);">
                   <img id="BannerAd" alt="Banner Ad"><!-- TODO: the img and banner should be changed to proper value or generated based on current ad. -->
               </a>
               </div>
					
						<div id="permissible-row">
    <script type="text/javascript">
        var _dppa_required = false,
            _glba_required = false;
    </script>
    <ul class="unmarked_list">
        
	    <li>
    		<strong>Your DPPA Permissible Use:</strong>
    		
    		    <a class="uline" id="dppa_reason" href="javascript:void(0);">
    			Debt Recovery/Fraud
    		    </a>
    		
            </li>
        
        
    	    <li>
    		<strong>Your GLBA Permissible Use:</strong>
    		
    		    <a class="uline" id="glb_reason" href="javascript:void(0);">
    			Legal Compliance
    		    </a>
    		
            </li>
        
        
    </ul>  
</div>

					
				
			
		</section>
    </div>
		
			
    

    <form name="SELECT_GROUP" action="" method="post" aria-hidden="true">
        <input name="SESSION_ID" value="1ce41be3a92f0ea987c7956577a113a4" type="hidden">
        <input name="CSRF_TOKEN" value="78ada0bee79af99b605a9e26c6142afd" type="hidden">  
        <input name="APPLICATION_TYPE" value="aml" type="hidden">
        <input name="EVENT" value="MYACCOUNT/UPDATE_GROUP_SESSION_PORTAL" class="resettable" type="hidden">
        <input name="GROUPS" value="" class="resettable" type="hidden">
    </form>
    <footer class="">
    <p>Customer Support - 1-866-277-8407</p>
    <p><a href="javascript:void(0);">About LexisNexis</a><a href="javascript:void(0);">Terms &amp; Conditions</a><a class="last-child" href="javascript:void(0);">Contact Us</a></p>
    <p>
        <a href="javascript:void(0);">Copyright ©</a>
        <script>document.write(new Date().getFullYear())</script> LexisNexis. All rights reserved.
    </p>
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
                    <h4 class="modal-title">Single-Tab View Switch Confirmation</h4>
                </div>
                <div class="modal-body">
                    <div style="text-align:center;">
                        <span>Changing to single-tab view will delete all but the current tab you are working in. Do you want to proceed?</span>
                        <br><br><br>
                        <button class="btn btn-danger" onclick="set_tab_view_session('single');" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                        <button class="btn btn-default" data-dismiss="modal" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="ie8-modal" class="modal">
        <div class="well well-sm"><img src="<TMPL_VAR HTMLPATH>/v4/img/loading_spinner.gif" alt="Loading" width="35" height="35">&nbsp;<span class="loading-text"></span></div>
    </div>


		
	

<script type="text/javascript" src="https://www.gstatic.com/charts/45/loader.js"></script><script type="text/javascript" src="https://www.gstatic.com/charts/45/js/jsapi_compiled_format_module.js"></script><script type="text/javascript" src="https://www.gstatic.com/charts/45/js/jsapi_compiled_default_module.js"></script><script type="text/javascript" src="https://www.gstatic.com/charts/45/js/jsapi_compiled_ui_module.js"></script><script type="text/javascript" src="https://www.gstatic.com/charts/45/js/jsapi_compiled_corechart_module.js"></script><div id="new-modal" class="modal fade bs-example-modal-lg modal-white" aria-live="polite" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;"><div class="modal-dialog trap hidden"><div class="modal-content"><div class="modal-header"><button type="button" class="close hidden" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button><h2 class="modal-title">Delete tab</h2></div><div class="modal-body"><div class="well well-sm"><span class="loading_icon svg-icon-x-large loading-text">Deleting tab, please wait...</span></div></div></div></div></div>
</body></html>
