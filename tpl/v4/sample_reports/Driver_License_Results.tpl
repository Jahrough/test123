<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Driver License Document</title>

<link href="<TMPL_VAR HTMLPATH>/v4/css/jquery-ui.css" rel="stylesheet" type="text/css" media="screen">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/bootstrap-accessibility_1.0.3.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/evolution.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/utility.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/search_page.css"> 
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/icons.css">


    
    <link class="dynamic-css" rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/Results.css">
    <link class="dynamic-css" rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css//search_report.css">
    <link class="dynamic-css" rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR HTMLPATH>/v4/css/source_doc.css">
    
    <script src="<TMPL_VAR HTMLPATH>/v4/js/jquery.js"></script>
    <script src="<TMPL_VAR HTMLPATH>/v4/js/sample_reports.js"></script>
    
    </head>
	<body class="menu-on-top">
		<div id="main">
		
			<header id="header">	
	<!-- end pulled right: nav area -->
    <!-- BEGIN: v4/header_logo.tpl -->
<h1>
	<a href="javascript:void(0);">
		
          
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
					<a href="javascript:void(0);" onclick="javascript:void(0);;">Preferences</a>
				</li>
				
               
				
				<li class="hlOptions">
					<a href="javascript:void(0);" onclick="javascript:void(0);">Change Password</a>
				</li>
                
                    
                 
				<li class="divider"></li>
				<li>
					<a href="javascript:void(0);" onclick="javascript:void(0);">Announcements</a>
				</li>
			</ul>
		</div>	
		<div class="btn-group btn-group2" role="group">
			<button data-toggle="dropdown" type="button" class="btn btn-link sign-up" id="logout-button" data-logout-msg="You can improve your security further after logging out by closing this opened browser" data-action="userLogout" onclick="javascript:void(0);">
				Sign Out
			</button>
		</div>
      
      
	</div>
</header>





		
		<header id="topnav">
			
				
<nav id="top-navigation" class="navbar navbar-inverse clear no-print">
    <div class="container pull-left top-section">
        <div>        
            <ul class="nav navbar-nav pull-left" id="bs-example-navbar-collapse-1">
                <li>
                    <a href="javascript:void(0);">History</a>
                </li>
            </ul>
            
            <div id="delivery-tray-container" class="hidden">
              <img id="delivery-tray-folder-icon" src="<TMPL_VAR HTMLPATH>/v4/img/delivery-tray-folder-icon.svg" alt="Delivery Tray" onclick="javascript:void(0);">
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
                            <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter SSN" data-qsoption="SSN" data-maxlength="" data-qs-permission="people_IDX_0" onclick="javascript:void(0);">SSN Lookup</a>
                        </li>
                        <li class="qs-available">
                            <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter Address" data-qsoption="Address" data-maxlength="130" data-qs-permission="people_IDX_0" onclick="javascript:void(0);">Address</a>
                        </li>
                        <li class="qs-available">
                            <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter Phone" data-qsoption="Phone" data-maxlength="" data-qs-permission="phones_IDX_79" onclick="javascript:void(0);">Reverse Phone</a>
                        </li>
                        <li class="qs-available">
                            <a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="Enter Company" data-qsoption="Company" data-maxlength="" data-qs-permission="business_IDX_13" onclick="javascript:void(0);">Company Name</a>
                        </li>
                        
                    </ul>
                </div>
                <div class="form-group"> 
                    <div class="col input">  
                        <label for="QS_TEXT">                 
                            <input autocomplete="off" name="QS_TEXT" id="QS_TEXT" class="form-control qs-input" placeholder="Enter SSN" onkeypress="javascript:submitQuickKeyPress(event)" onkeyup="javascript:dokey_stop_flag=false;" type="text">
                            <span class="tooltip qs_text_tip tooltip-35">Enter SSN</span>
                        </label>
                    </div>

                    <div class="col input">
                        <label for="QS_REFERENCE_CODE">
                            <input class="form-control qs-input" id="QS_REFERENCE_CODE" name="QS_REFERENCE_CODE" value="" maxlength="32" placeholder="Enter Reference ID" onkeypress="javascript:submitQuickKeyPress(event)" type="text">
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
            <button id="home-button" class="dropdown-toggle home-icon svg-icon-small btn-danger" onclick="javascript:void(0);">
                <span class="tooltip centered">Home</span>
            </button>
            <button id="search-menu-button" data-toggle="dropdowncustom" data-target="#srchHome-dropdown" "="" class="btn-danger">
                Search Menu
                <span class="fa fa-caret-down"></span>
            </button>

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
                    <a href="javascript:void(0);" onclick="javascript:void(0);">Favorites</a>
                </li>
                <li>
                    <a href="javascript:void(0);" onclick="javascript:void(0);">Frequent</a>
                </li>
            </ul>
        </div>
    </li><li class="nav-fav-search nav-fav-first hx-show"><a href="javascript:void(0);">Find a Person</a></li><li class="nav-fav-search hx-show"><a href="javascript:void(0);">Find a Business</a></li><li class="nav-fav-search hx-show"><a href="javascript:void(0);">Bankruptcies</a></li><li class="nav-fav-search hx-show"><a href="javascript:void(0);">Real Property (Property Assessments, Deeds &amp; Mortgages)</a></li><li class="nav-fav-search hx-show"><a href="javascript:void(0);">Phones Plus</a></li>
    <li id="nav-fav-viewall" class="hidden">
        <button class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
            <span class="more-actions"></span>
        </button>
        <ul class="dropdown-menu dropdown-menu-right tab-dropdown anim-fadeInDown">
            <li role="presentation" class="dropdown-header">Favorite Searches</li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa person_icon"></span>Find a Person</a></li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa bus_icon"></span>Find a Business</a></li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa court_icon"></span>Bankruptcies</a></li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa property_icon"></span>Real Property (Property Assessments, Deeds &amp; Mortgages)</a></li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa phone_icon"></span>Phones Plus</a></li>
        </ul>
    </li>
</ul>


    <ul id="history-tab-ul" class="nav nav-tabs multi-tab-view">


    
        <li class="btn-group history-tab dropdown  not-form-tab hx-show" data-paramli="f2ccaf0e2fee5850e53bbfebdf926ce7" data-isactive="0" data-islocked="0">
            <div class="btn-group" data-paramrecent="f2ccaf0e2fee5850e53bbfebdf926ce7">
                <!--<button data-focus="tab_f2ccaf0e2fee5850e53bbfebdf926ce7" class="btn fa fa-caret-down dropdown-toggle btn-default" data-toggle="dropdown" data-hide-dropdown-icon="0">
                    <span class="sr-only">Open tab options</span>
                </button>-->
<!--                <button data-container=".nav-tabs" data-toggle="popover" data-placement="top" data-trigger="hover" data-closebutton="off" class="tab-crit btn btn-lg btn-default" onclick="javascript:void(0);" data-original-title="" title="">
                    <span data-searchtype="LexisNexis<sup class='sup-reg-symbol'>®</sup> Identity Report" data-tabshowevt="SEARCH2/SHOW_IDENTITY_REPORT" class="svg-icon-normal document-icon"></span>
                    <span class="history-tab-data" data-value="" aria-hidden="true"></span>
                </button>-->
		<div class="popper-content hide"><div class="popover-font-9 popover-tabs"></div></div>
                <!--<button class="remove-tab btn close-icon  btn-default" onclick="javascript:void(0);">
                    <span class="sr-only">Close tab</span>
                </button>-->
                <button class="multi-tab btn btn-danger hidden" onclick="javascript:void(0);">Toggle to Multi-tab View</button>
                <ul id="tab_f2ccaf0e2fee5850e53bbfebdf926ce7" class="dropdown-menu tab-dropdown anim-fadeInDown">
                    <li role="presentation" class="dropdown-header">
                        Tab History 
                    </li>
                    
                        
                            
                                <li tabindex="0" class="tab-dropdown-item lnkRecent recentRun" data-paramli="f2ccaf0e2fee5850e53bbfebdf926ce7" data-isreport="1" data-page="1">
                                    <div class="history-tab-data" onclick="javascript:void(0);">
                                        <span data-searchtype="LexisNexis<sup class='sup-reg-symbol'>®</sup> Identity Report" data-tabshowevt="SEARCH2/SHOW_IDENTITY_REPORT" class="svg-icon-small document-icon"></span>
                                        <span class="tab-search-name">LexisNexis<sup class="sup-reg-symbol">®</sup> Identity Report</span>
                                        <span class="tab-search-terms"></span>
                                    </div>
                                    
                                    <button type="button" class="btn btn-default pull-right external_link_icon svg-icon-x-tiny tab-btn" onclick="javascript:void(0);"></button>
                                    
                                    <br class="clear">
                                </li>
                                
                            
                        
                    
                </ul>
            </div>
        </li>
    
        <li class="btn-group history-tab dropdown active  not-form-tab hx-show" data-paramli="9355c217106082133cd7699d2ef8f554" data-isactive="1" data-islocked="0">
            <div class="btn-group" data-paramrecent="9355c217106082133cd7699d2ef8f554">
                <button data-focus="" class="btn dropdown-toggle btn-danger" data-toggle="dropdown" data-hide-dropdown-icon="0"><img src="<TMPL_VAR HTMLPATH>/v4/img/caret_down.png">
                    <span class="sr-only">Open tab options</span>
                </button>
                <button data-container=".nav-tabs" data-toggle="popover" data-placement="top" data-trigger="hover" data-closebutton="off" class="tab-crit btn btn-lg btn-danger" onclick="javascript:void(0);" data-original-title="" title="">
                    <span data-searchtype="Driver Licenses" data-tabshowevt="SEARCH2/SHOW_LICENSE" class="svg-icon-normal person_icon"></span>
                    <span class="history-tab-data" data-value="111-11-xxxx; Doe, John; 1234 Your Street; cincinnati; OH" aria-hidden="true">111-11-xxxx; Doe, jJohn; 1234 Your Street...</span>
                </button>
		<div class="popper-content hide"><div class="popover-font-9 popover-tabs">111-11-1111; Doe, John; 1234 Your Street; cincinnati; OH</div></div>
                <button class="remove-tab btn close-icon  btn-danger" onclick="javascript:void(0);">
                    <span class="sr-only">Close tab</span>
                </button>
                <button class="multi-tab btn btn-danger hidden" onclick="javascript:void(0);">Toggle to Multi-tab View</button>
                <ul id="tab_9355c217106082133cd7699d2ef8f554" class="dropdown-menu tab-dropdown anim-fadeInDown">
                    <li role="presentation" class="dropdown-header">
                        Tab History 
                    </li>
                    
                        
                            
                                <li tabindex="0" class="tab-dropdown-item lnkRecent" onclick="javascript:void(0);" data-paramli="" data-page="1">
                                    <div class="history-tab-data">
                                        <span data-searchtype="Driver Licenses" data-tabshowevt="SEARCH2/SHOW_LICENSE" class="svg-icon-small person_icon"></span>
                                        <span class="tab-search-name">Driver Licenses (2)</span>
                                        <span class="tab-search-terms"></span>
                                    </div>
                                    
                                    <br class="clear">
                                </li>
                                
                            
                                <li tabindex="0" class="tab-dropdown-item lnkRecent recentRun hidden is-current-page" data-paramli="" data-isreport="1" data-page="1">
                                    <div class="history-tab-data" onclick="javascript:void(0);">
                                        <span data-searchtype="Driver License Document" data-tabshowevt="" class="svg-icon-small document-icon"></span>
                                        <span class="tab-search-name">Driver License Document</span>
                                        <span class="tab-search-terms"></span>
                                    </div>
                                    
                                    <button type="button" class="btn btn-default pull-right external_link_icon svg-icon-x-tiny tab-btn" onclick="javascript:void(0);"></button>
                                    
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
                    <a tabindex="0" onclick="javascript:void(0);" data-toggle="tab" class="tab-option">Close All Tabs</a>
                </li>
                <li>
                    <a tabindex="0" onclick="javascript:void(0);" data-toggle="tab" class="tab-option">Close All Tabs but the Active Tab</a>
                </li>
                <li id="toggle-print-screen-mode">
                    <a tabindex="0" onclick="javascript:void(0);" data-toggle="tab" class="tab-option">Toggle Print Screen Mode</a>
                </li>
                <li id="toggle-single-tab-view">
                    <a tabindex="0" onclick="javascript:void(0);" data-toggle="tab" class="tab-option">Toggle Single Tab View</a>
                </li>
                <li role="presentation" class="dropdown-header">Open Tabs (<span id="open-tab-count">2</span>)</li>
                
                    <li tabindex="0" class="tab-dropdown-item lnkRecent more-tabs-item not-form-tab" data-paramli="f2ccaf0e2fee5850e53bbfebdf926ce7">
                        <span class="close close-tab">
                            <a class="close-icon font-12" href="javascript:void(0);" onclick="javascript:void(0);">
                                <span class="sr-only">Delete tab</span>
                            </a>
                        </span>
                        <div class="history-tab-data">
                            <section onclick="javascript:void(0);">
                                <span class="svg-icon-normal document-icon" data-tabshowevt="SEARCH2/SHOW_IDENTITY_REPORT"></span>
                                <span class="tab-search-name">
                                    LexisNexis<sup class="sup-reg-symbol">®</sup> Identity Report (1)
                                </span>
                                <span class="tab-search-terms">
                                    
                                </span>
                            </section>
                        </div>
                        <br class="clear">
                   </li>
               
                    <li tabindex="0" class="tab-dropdown-item lnkRecent more-tabs-item not-form-tab" data-paramli="9355c217106082133cd7699d2ef8f554">
                        <span class="close close-tab">
                            <a class="close-icon font-12" href="javascript:void(0);" onclick="javascript:void(0);">
                                <span class="sr-only">Delete tab</span>
                            </a>
                        </span>
                        <div class="history-tab-data">
                            <section onclick="javascript:void(0);">
                                <span class="svg-icon-normal person_icon" data-tabshowevt="SEARCH2/SHOW_LICENSE"></span>
                                <span class="tab-search-name">
                                    Driver Licenses (2)
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
		<section>
			
				
					<div id="occcrtoptabsarea" class="hidden">
    <ul>
        <li id="tab_ba">
            <button type="button" onclick="javascript:void(0);">Business Assurance</button>
        </li>
        <li id="tab_oc">
            <button type="button" onclick="javascript:void(0);">Offline Civil &amp; Criminal Court Records (OCCCR)</button>
        </li>
        <li id="tab_rt">
            <button type="button" onclick="javascript:void(0);">Direct-to-Source Results</button>
        </li>
        <li class="right">
            
            
            
                <button type="button" class="btn btn-link" onclick="javascript:void(0);">
                
                <strong>Return to searches &gt;&gt;</strong>
            </button>
        </li>
    </ul>
</div>
					
					<div class="container-fluid" id="search-container">
						<span id="web20-search-flags" class="hidden" data-search-disabled="0" data-search-error-message="0" data-report-error-message="0" data-is-from-main-menu="0" data-hit-tab-limit="0" data-rerun-display-event="0" data-web20-page-title="Driver License Document" data-search-idx="" data-clear-browser-cache-pages="" data-is-clk-search="0" data-is-search-within="0" data-search-within-terms="" data-webpubrec-request="0" data-is-new-window="0" data-active-tab="607bb4860f517ea90635652df805ff4b" data-tab-id="9355c217106082133cd7699d2ef8f554" data-page="0" data-is-report="1" data-report-has-form="0" data-show-event="SEARCH2/SHOW_LICENSE"></span>
    
        <div id="search-form-row" class="row no-print hidden">
            
                
                    <header id="search-form-header">
    <h2>
        <strong>Driver License Document</strong>
    </h2>
    <div class="additional-info" id="add_to_fav">
        <button type="button" class="favorites-star-red svg-icon-normal btn btn-link">
            <span class="tooltip centered">Add to Favorites</span>
        </button>
    </div>
    <div id="header-addl-wrapper">
        <div id="form-help-icon-container">
            <span class="additional-info">
                <a href="javascript:void(0);" class="help-search help-icon svg-icon-tiny hide">
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
<a href="javascript:void(0);" onclick="javascript:void(0);" id="make-start-page-link" class="button-icon  make-start-page" data-placement="bottom" data-original-title="Make This My Start Page" data-startpage-idx="">Make This My Start Page</a>

        </div>
    </div>
</header>

                
            
            
    <form name="PERSON_SEARCH" action="/app/evolution/main" method="post" class="smart-form">


    <input name="EVENT" value="SEARCH/SEARCH" type="hidden">

  <input name="SESSION_ID" value="ce10895878387091a8aadfa73a9bc35b" type="hidden">
  <input name="CSRF_TOKEN" value="5e0f004fb9903c7a099c4e3bdb65782a" type="hidden">  

<input id="REPORT_ACTION" name="ACTION_REPORT" value="/app/evolution/report" type="hidden">
<input name="CURRENT_EVENT" id="CURRENT_EVENT" value="REPORT2/WEB20_SRC_DOCS_REPORT" type="hidden">
<input name="RECID" value="" type="hidden">
<input name="FULL_NAME" value="" type="hidden">
<input name="SKIN_TYPE" value="bps" type="hidden">
<input name="APPLICATION_TYPE" value="rskm" type="hidden">
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








































































































    <div class="col col-7" id="portal-search-buttons">
  
	
	
	
	
    <div class="pull-right">
		
			 
			  
				
						<input class="btn btn-danger" id="searchBtn" value="Search" onblur="ENTER_FOCUS=0;" onfocus="ENTER_FOCUS=1" onclick="javascript:void(0);" type="button">
				
			  
			
			
			  
				<input class="btn btn-clear" onclick="javascript:void(0);" value="Clear" type="button">
			  
			
		
		
		<div id="verify_btn_step" class="hidden">
			<button class="btn btn-danger" id="ver_continue" onclick="javascript:void(0);" type="button">Continue</button>
		</div>
		<div id="results_btn_step" class="hidden">
			<button class="btn btn-danger" id="res_continue" onclick="javascript:void(0);" type="button">Request New Q &amp; A</button>
		</div>
    </div>
	
	
	
	
  
</div>



<input name="IS_FROM_FORM" value="1" type="hidden">

</form>


        </div>
    

    



						
							<!-- search_hidden_form.tpl -->
<form name="SEARCH" action="/app/evolution/main" method="post" aria-hidden="true">
  <input name="SESSION_ID" value="ce10895878387091a8aadfa73a9bc35b" type="hidden">
  <input name="CSRF_TOKEN" value="5e0f004fb9903c7a099c4e3bdb65782a" type="hidden">  

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
<input name="CURRENT_EVENT" value="REPORT2/WEB20_SRC_DOCS_REPORT" type="HIDDEN">
<!-- END Used for NEXT/PREV and Download to Excel -->

<!-- Person Search Plus vars -->
<input name="IN_HOUSEHOLD_TAB" value="" type="HIDDEN"> 
<!-- End Sanction Search vars -->

<!-- used by send_event to save EVENT value prior to altering it -->
<input name="SAVED_EVENT" value="" type="hidden">
<input name="DECISION_POPUP" value="1" type="hidden">

<!-- parent search id -->

<input name="PSID" value="607bb4860f517ea90635652df805ff4b" type="hidden">
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
  <input name="SESSION_ID" value="ce10895878387091a8aadfa73a9bc35b" type="hidden">
  <input name="CSRF_TOKEN" value="5e0f004fb9903c7a099c4e3bdb65782a" type="hidden">  

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
     
        <li id="SD_IDX_89"><a href="javascript:void(0);">Find Neighbors</a></li>
        <!--
        <li id="IDX_20"><a href="javascript:void(0);">Get Map</a></li>
        -->
     
     
     <li id="SD_IDX_90"><a href="javascript:void(0);">Find Associated Persons</a></li>
     <li id="SD_IDX_120"><a data-type="DID" href="javascript:void(0);">Address Associates</a></li>
     
     
        <li id="SD_IDX_311" data-isreport="1"><a href="javascript:void(0);" onclick="javascript:void(0);">SmartLinx<sup class="sup-reg-symbol">®</sup> Location Report</a></li>
    
    
        <li id="SD_IDX_164" data-isreport="1"><a href="javascript:void(0);" onclick="javascript:void(0);">Property History Report</a></li>
    
    

  

    <!-- TODO comment out person search for All now, but later add LE Vertical check
    -->
    <!-- Should come up with some solution so that in the magnifying drop down, we can show Find a Person OR Find People with this Phone OR something else, as desired-->
    
      <li id="SD_IDX_0"><a href="javascript:void(0);">Find People with this Phone</a></li>
    
    <!-- -->

    

  

	
    <li id="SD_IDX_42"><a href="javascript:void(0);">People At Work</a></li>
	

	
    <li id="SD_IDX_8"><a href="javascript:void(0);">Corporation Filings</a></li>
	

	
    <li id="SD_IDX_9"><a href="javascript:void(0);">UCC</a></li>
	


	
	 
	


	


	
        <li id="SD_IDX_58"><a href="javascript:void(0);">Fictitious Business Name</a></li>
	

  
	
    <li id="SD_IDX_4"><a href="javascript:void(0);">Motor Vehicles</a></li>
	
  

	

  

  
      
          
          <li id="SD_IDX_1"><a href="javascript:void(0);">Taxes</a></li>
          
          
          <li id="SD_IDX_2"><a href="javascript:void(0);">Deeds &amp; Mortgages</a></li>
          
      
      <li id="SD_IDX_341" data-isreport="1"><a href="javascript:void(0);" onclick="javascript:void(0);">Property History Plus Report</a></li>
  

  
      
        
        <li id="SD_IDX_1"><a href="javascript:void(0);">Taxes</a></li>
        
        
        <li id="SD_IDX_2"><a href="javascript:void(0);">Deeds &amp; Mortgages</a></li>
        
      
      
        <li id="SD_IDX_45"><a href="javascript:void(0);">Foreclosures</a></li>
      
      
      <li id="SD_IDX_311" data-isreport="1"><a href="javascript:void(0);" onclick="javascript:void(0);">Get Location Report</a></li>a
      
      
      <li id="SD_IDX_89"><a href="javascript:void(0);">Find Neighbors</a></li>
      
      
      <li id="SD_IDX_294" data-isreport="1"><a href="javascript:void(0);" onclick="javascript:void(0);">Phone Finder</a></li>
      
  

	
    <li id="SD_IDX_115"><a href="javascript:void(0);">Property (Property Assessments, Deeds &amp; Mortgages)</a></li>
	

	
    <li id="SD_IDX_16"><a href="javascript:void(0);">Watercraft</a></li>
	

	
    <li id="SD_IDX_21"><a href="javascript:void(0);">FAA Aircraft</a></li>
	

	
    <li id="SD_IDX_3"><a href="javascript:void(0);">Driver Licenses</a></li>
	

	
    <li id="SD_IDX_23"><a href="javascript:void(0);">Professional Licenses</a></li>
	

	
    <li id="SD_IDX_5"><a href="javascript:void(0);">FAA Pilots</a></li>
	

	
    <li id="SD_IDX_30"><a href="javascript:void(0);">Hunting &amp; Fishing License</a></li>
	

    

    
    
        <li id="SD_IDX_98"><a href="javascript:void(0);">Email</a></li>
    
    

	

	

  
      <li id="SD_IDX_38"><a href="javascript:void(0);">DEA Controlled Substances</a></li>
  

  


    

    
    

  
    <li id="SD_IDX_31"><a href="javascript:void(0);">Concealed Weapon</a></li>
	

	
    <li id="SD_IDX_32"><a href="javascript:void(0);">Voter Registration</a></li>
	

	
	<li id="SD_IDX_33"><a href="javascript:void(0);">Federal Firearms</a></li>
	

        
	
    <li id="SD_IDX_79"><a href="javascript:void(0);">Phones Plus</a></li>
	
	

        
            <li id="SD_IDX_341" data-isreport="1"><a href="javascript:void(0);" onclick="javascript:void(0);">Property History Plus Report</a></li>
        

	
    <li id="SD_IDX_6"><a href="javascript:void(0);">Basic Lookup</a></li>
	

  

	
	    
	    <li id="SD_IDX_10"><a href="javascript:void(0);">Bankruptcy</a></li>
	    
	
    
    
        <li id="SD_IDX_114"><a href="javascript:void(0);">Bankruptcies, Liens and Judgments</a></li>
    
    
	
    <li id="SD_IDX_19"><a href="javascript:void(0);">Criminal Records</a></li>
	

        

	

	
	    
	    <li id="SD_IDX_11"><a href="javascript:void(0);">Liens and Judgments</a></li>
	    
	

	
		
	    	<li id="SD_IDX_18"><a href="javascript:void(0);">Florida Accidents</a></li>
	   	
	

	
    <li id="SD_IDX_24"><a href="javascript:void(0);">USA PATRIOT Act</a></li>
	

	
    <li id="SD_IDX_29"><a href="javascript:void(0);">Sexual Offenders</a></li>
	

	
    <li id="SD_IDX_45"><a href="javascript:void(0);">Foreclosures</a></li>
	

	

	
    <li id="SD_IDX_43"><a href="javascript:void(0);">Marriages / Divorces</a></li>
	

	

	
    
    
        <li id="SD_IDX_41"><a href="javascript:void(0);">Delaware Corporation</a></li>
    
    
      
    
    
    
    
		<li id="SD_IDX_13"><a href="javascript:void(0);">Find Businesses with this Phone</a></li>
    
    
    
   
	
      
	

    
    
        <li id="SD_"><a href="javascript:void(0);">Passport Validation</a></li>
    
    

    
      
        <li id="SD_IDX_DTR"><a href="javascript:void(0);">Direct-To-Report</a></li>
      
    
    
    
        <li id="SD_IDX_100"><a href="javascript:void(0);">Canadian Phones</a></li>
      

      

      
      
      
	 
</ul>
</div>










						
						<!-- begin: $RCSfile: search_terms_echo.tpl,v $ -->

<!-- end: $RCSfile: search_terms_echo.tpl,v $ -->

						
						
						

	
<ul id="primary_sections_data" class="hidden no-print">
	
		<li data-id="myfavlinks_ps" data-icon="fa-fav">
			<a href="javascript:void(0);">Favorite</a>
		</li>
	
	<li data-id="myfreqlinks_ps" data-icon="fa-freq">
		<a href="javascript:void(0);">Frequent</a>
	</li>
	<li data-id="mytasklinks_ps" data-icon="fa-fav">
		<a href="javascript:void(0);">myTasks</a>
	</li>
	<li data-id="peoplelinks_ps" data-icon="person_icon" data-active="true">
		<a href="javascript:void(0);">People</a>
	</li>
	<li data-id="businesseslinks_ps" data-icon="bus_icon">
		<a href="javascript:void(0);">Business</a>
	</li>
	<li data-id="assetslinks_ps" data-icon="property_icon">
		<a href="javascript:void(0);">Property &amp; Assets</a>
	</li>
	<li data-id="authserviceslinks_ps" data-icon="authentication_services_icon">
		<a href="javascript:void(0);">Authentication Services</a>
	</li>
	<li data-id="courtslinks_ps" data-icon="court_icon">
		<a href="javascript:void(0);">Court &amp; Admin Filings</a>
	</li>
	<li data-id="directtosource_ps" data-icon="direct_to_source_icon">
		<a href="javascript:void(0);">Direct-to-Source</a>
	</li>
	<li data-id="newslinks_ps" data-icon="news_icon">
		<a href="javascript:void(0);">News</a>
	</li>
	<li data-id="internationallinks_ps" data-icon="international_icon">
		<a href="javascript:void(0);">International</a>
	</li>

<div id="main_menu_data" class="no-print">
	<ul data-sid="myfavlinks" data-li-prefix="myfavs">
		
			
				
					
						<li data-id="myfavs_IDX_0" data-dummy="1">
							<a href="javascript:void(0);">Find a Person</a>
						</li>
					
				
			
				
					
						<li data-id="myfavs_IDX_13" data-dummy="1">
							<a href="javascript:void(0);">Find a Business</a>
						</li>
					
				
			
				
					
						<li data-id="myfavs_IDX_10" data-dummy="1">
							<a href="javascript:void(0);">Bankruptcies</a>
						</li>
					
				
			
				
					
						<li data-id="myfavs_IDX_115" data-dummy="1">
							<a href="javascript:void(0);">Real Property (Property Assessments, Deeds &amp; Mortgages)</a>
						</li>
					
				
			
				
					
						<li data-id="myfavs_IDX_79" data-dummy="1">
							<a href="javascript:void(0);">Phones Plus</a>
						</li>
					
				
			
		
	</ul>
	<ul data-sid="myfreqlinks" data-li-prefix="myfreqs">
		
			
				
					
						<li data-id="myfreqs_IDX_171">
							<a href="javascript:void(0);">LexisNexis<sup class="sup-reg-symbol">®</sup> Identity Report</a>
						</li>
					
				
			
				
					
						<li data-id="myfreqs_IDX_3">
							<a href="javascript:void(0);">Driver Licenses</a>
						</li>
					
				
			
		
	</ul>
	<ul data-sid="mytasklinks" data-li-prefix="mytask">
		
	</ul>
	<ul data-sid="peoplelinks" data-li-prefix="people">
		
		
			<li data-id="people_IDX_0" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:void(0);">Find a Person</a>
			</li>
		
		
		
			<li data-id="people_IDX_279" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:void(0);">LexisNexis<sup class="sup-reg-symbol">®</sup> FirstPursuit<sup class="sup-reg-symbol">®</sup></a>
			</li>
        
		
		
			<li data-icon="phone_icon" data-id="people_IDX_79" class="menu-show-group">
				<a href="javascript:void(0);">Phones Plus</a>
			</li>
		
		
		
		
			<li data-icon="phone_icon" data-id="people_IDX_294" class="menu-show-group">
				<a href="javascript:void(0);">LexisNexis<sup class="sup-reg-symbol">®</sup> Phone Finder</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_171" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:void(0);">LexisNexis<sup class="sup-reg-symbol">®</sup> Identity Report</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_23" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:void(0);">Professional Licenses</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_54" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:void(0);">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_195" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:void(0);">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification with Red Flags Rule Report</a>
			</li>
		
		
		
		
		
			<li data-id="people_IDX_196" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:void(0);">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification with FraudPoint<sup class="sup-reg-symbol">®</sup> Score</a>
			</li>
		
		
		
		 
		
		
			<li data-id="people_IDX_197" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:void(0);">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification with Red Flags &amp; FraudPoint<sup class="sup-reg-symbol">®</sup> Score</a>
			</li>
		
		
		
		
		
			<li data-id="people_IDX_42" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:void(0);">People At Work</a>
			</li>
		
		
		
		
		
			<li data-id="people_IDX_198" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:void(0);">FraudPoint<sup class="sup-reg-symbol">®</sup> Score with Red Flags Rule Report</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_123" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:void(0);">FraudPoint<sup class="sup-reg-symbol">®</sup> Score</a>
			</li>
		
		
		
		
		
			<li data-id="people_IDX_3" class="menu-show-group active" data-icon="person_icon">
				<a href="javascript:void(0);">Driver Licenses</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_98" class="menu-show-group" data-icon="person_icon">
				<a href="javascript:void(0);">Email Address/Social Network Report</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_31" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">Concealed Weapon Permits</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_38" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">Drug Enforcement Administration Registrants</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_5" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">FAA Pilot Licenses</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_33" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">Federal Firearms &amp; Explosives Licenses</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_346" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">FraudPoint<sup class="sup-reg-symbol">®</sup> ATO Score</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_30" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">Hunting &amp; Fishing Licenses</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_188" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">IRS Verify</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_189" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">SSA Verify</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_43" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">Marriage &amp; Divorce Records</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_127" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">Military Personnel (Archive)</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_24" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">OFAC &amp; Other Watch Lists</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_6" class="menu-hide-group" data-icon="phone_icon">
				<a href="javascript:void(0);">Phone Lookup</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_128" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">Statewide Public Records Person Search</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_32" class="menu-hide-group" data-icon="person_icon">
				<a href="javascript:void(0);">Voter Registrations</a>
			</li>
		
		
	</ul>
	<ul data-sid="businesseslinks" data-li-prefix="business">
		
		
			<li data-id="business_IDX_13" class="menu-show-group" data-icon="bus_icon">
				<a href="javascript:void(0);">Find a Business</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_199" class="menu-show-group" data-icon="bus_icon">
				<a href="javascript:void(0);">InstantID<sup class="sup-reg-symbol">®</sup> Business Verification with FraudDefender<sup class="sup-reg-symbol">®</sup></a>
			</li>
		
		
		
		
			<li data-id="business_IDX_63" class="menu-show-group" data-icon="bus_icon">
				<a href="javascript:void(0);">InstantID<sup class="sup-reg-symbol">®</sup> Business Verification</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_8" class="menu-show-group" data-icon="bus_icon">
				<a href="javascript:void(0);">Secretary of State Filings</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_163" class="menu-show-group" data-icon="bus_icon">
				<a href="javascript:void(0);">LexisNexis<sup class="sup-reg-symbol">®</sup> Small Business Risk Score</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_136" class="menu-show-group" data-icon="bus_icon">
				<a href="javascript:void(0);">Statewide Public Records Business Search</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_107" class="menu-show-group" data-icon="bus_icon">
				<a href="javascript:void(0);">D&amp;B FEIN</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_58" class="menu-show-group" data-icon="bus_icon">
				<a href="javascript:void(0);">Fictitious Business Names/DBA</a>	
			</li>
		
		
		
		
			<li data-id="business_IDX_41" class="menu-show-group" data-icon="bus_icon">
				<a href="javascript:void(0);">Secretary of State - State of Delaware</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_70" class="menu-show-group" data-icon="bus_icon">
				<a href="javascript:void(0);">D&amp;B Global Market Identifiers</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_135" class="menu-hide-group" data-icon="bus_icon">
				<a href="javascript:void(0);">Combined Banking Directories</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_137" class="menu-hide-group" data-icon="bus_icon">
				<a href="javascript:void(0);">D&amp;B DUNS Minority &amp; Women-Owned Businesses</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_138" class="menu-hide-group" data-icon="bus_icon">
				<a href="javascript:void(0);">D&amp;B Private Company Insights</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_56" class="menu-hide-group" data-icon="bus_icon">
				<a href="javascript:void(0);">Experian Business Reports</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_165" class="menu-hide-group" data-icon="bus_icon">
				<a href="javascript:void(0);">GuideStar</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_140" class="menu-hide-group" data-icon="bus_icon">
				<a href="javascript:void(0);">Hoover's Company Capsules</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_139" class="menu-hide-group" data-icon="bus_icon">
				<a href="javascript:void(0);">LexisNexis<sup class="sup-reg-symbol">®</sup> Corporate Affiliations™</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_141" class="menu-hide-group" data-icon="bus_icon">
				<a href="javascript:void(0);">Mergerstat</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_55" class="menu-hide-group" data-icon="bus_icon">
				<a href="javascript:void(0);">SEC Filings</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_142" class="menu-hide-group" data-icon="bus_icon">
				<a href="javascript:void(0);">Standard &amp; Poor's Corporate Descriptions plus News</a>
			</li>
		
		
	</ul>
	<ul data-sid="assetslinks" data-li-prefix="assets">
		
		
			<li data-id="assets_IDX_115" data-icon="property_icon">
				<a href="javascript:void(0);">Real Property (Property Assessments, Deeds &amp; Mortgages)</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_4" data-icon="property_icon">
				<a href="javascript:void(0);">Motor Vehicle Registrations</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_118" data-icon="property_icon">
				<a href="javascript:void(0);">Find a Location</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_341" data-icon="property_icon">
				<a href="javascript:void(0);">Property History Plus</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_164" data-icon="property_icon">
				<a href="javascript:void(0);">Property History</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_309" data-icon="property_icon">
				<a href="javascript:void(0);">Verification of Occupancy</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_126" data-icon="property_icon">
				<a href="javascript:void(0);">Mortgage Fraud Report</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_21" data-icon="property_icon">
				<a href="javascript:void(0);">Aircraft Registrations</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_16" data-icon="property_icon">
				<a href="javascript:void(0);">Boat Registrations</a>
			</li>
		
		
	</ul>
	<ul data-sid="courtslinks" data-li-prefix="courts">
		
		
			<li data-id="courts_IDX_9" data-icon="court_icon">
				<a href="javascript:void(0);">UCC Liens</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_114" data-icon="court_icon">
				<a href="javascript:void(0);">Bankruptcies, Judgments &amp; Liens</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_10" data-icon="court_icon">
				<a href="javascript:void(0);">Bankruptcies</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_11" data-icon="court_icon">
				<a href="javascript:void(0);">Judgments &amp; Tax Liens</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_130" data-icon="court_icon">
				<a href="javascript:void(0);">Federal Civil &amp; Criminal Docket Summaries</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_129" data-icon="court_icon">
				<a href="javascript:void(0);">State Civil &amp; Criminal Filings</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_19" data-icon="court_icon">
				<a href="javascript:void(0);">Criminal Records</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_131" data-icon="court_icon">
				<a href="javascript:void(0);">Jury Verdicts &amp; Settlements</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_45" data-icon="court_icon">
				<a href="javascript:void(0);">Foreclosures</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_18" data-icon="court_icon">
				<a href="javascript:void(0);">Florida Accidents</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_132" data-icon="court_icon">
				<a href="javascript:void(0);">Mortgage &amp; Financial Service Sanctions</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_29" data-icon="court_icon">
				<a href="javascript:void(0);">Sexual Offenders</a>
			</li>
		
		
	</ul>
	<ul data-sid="internationallinks" data-li-prefix="inter">
		
		
			<li data-id="inter_IDX_166" data-icon="international_icon">
				<a href="javascript:void(0);">WorldCompliance</a>                    
			</li>
		
		
		
		
			<li data-id="inter_IDX_100" data-icon="international_icon">
				<a href="javascript:void(0);">Canadian Phones</a>
			</li>
		
		
		
		
			<li data-id="inter_IDX_122" data-icon="international_icon">
				<a href="javascript:void(0);">InstantID<sup class="sup-reg-symbol">®</sup> International</a>
			</li>
		
		
		
		
			<li data-id="inter_IDX_167" data-icon="international_icon">
				<a href="javascript:void(0);">All Company Information (excluding Investext &amp; D&amp;B)</a>
			</li>
		
		
		
		
			<li data-id="inter_IDX_168" data-icon="international_icon">
				<a href="javascript:void(0);">Passport Validation</a>
			</li>
		
		
		
		
			<li data-id="inter_IDX_143" data-icon="international_icon">
				<a href="javascript:void(0);">UK Companies &amp; Directories</a>
			</li>
		
		
	</ul>
	<ul data-sid="newslinks" data-li-prefix="news">
		
		
			<li data-id="news_IDX_48" data-icon="news_icon">
				<a data-icon="news_icon" href="javascript:void(0);">News</a>
			</li>
		
		
		
		
			<li data-id="news_IDX_121" data-icon="news_icon">
				<a href="javascript:void(0);">Negative News</a>
			</li>
		
		
		
		
			<li data-icon="news_icon" data-id="news_IDX_345">
				<a data-icon="news_icon" href="javascript:void(0);">News Trends</a>
			</li>
		
		
		
		
			<li data-id="news_IDX_71" data-icon="news_icon">
				<a href="javascript:void(0);">Deaths &amp; Obituaries in the News</a>
			</li>
		
		
		
		
			<li data-id="news_IDX_133" data-icon="news_icon">
				<a href="javascript:void(0);;">Bankers' News</a>
			</li>
		
		
	</ul>
	<ul data-sid="directtosource" data-li-prefix="direct">
		
		
			<li data-id="direct_IDX_191">
				<a href="javascript:void(0);">Business Assurance</a>
			</li>
		
		
		
		
			<li data-id="direct_IDX_156">
				<a href="javascript:void(0);">Offline Civil &amp; Criminal Court Records (OCCCR)</a>
			</li>
		
		

		
			
				<li data-id="direct_IDX_1560" class="active">
					<a href="javascript:void(0);">Direct-to-Source Results</a>
				</li>
			
		
	</ul>
	<ul data-sid="authserviceslinks" data-li-prefix="auth">
		
		
			<li data-id="auth_IDX_284" data-icon="authentication_services_icon">
				<a href="javascript:void(0);">InstantID<sup class="sup-reg-symbol">®</sup> Q&amp;A</a>
			</li>
		
		
		
		
			<li data-id="auth_IDX_342" data-icon="authentication_services_icon">
				<a href="javascript:void(0);;">One Time Password</a>
			</li>
		
		
	</ul>
</div>



					</ul><div id="search-results-row" class="row">
    
    
        
            
                
            
            
        <div class="search-results-actions">
            


    <input name="SEARCH_EVT" value="" type="hidden">
    <div class="reportLeftNavToggle hidden">
        <div class="additional-info">
            <button type="button" data-placement="bottom" class="btn-actions btn navigation_icon svg-icon-tiny" onclick="javascript:void(0);"></button>
            <span class="tooltip tooltip-35 hover">Toggle Navigation</span>
        </div>
    </div>

<div class="print-download-buttons">
    
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn selectDeselectDocument checkbox-icon" data-original-title="Select Document" aria-label="Select Document" onclick="javascript:void(0);"></button>
        <span class="tooltip tooltip-35 hover">Select Document</span>
    </div>
    
    
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn print-icon svg-icon-tiny" data-original-title="Print Results" aria-label="Print Results" onclick="javascript:void(0);"></button>
        <span class="tooltip tooltip-35 hover">Print Document</span>
    </div>
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn download-icon svg-icon-tiny" data-original-title="Download" aria-label="Download" onclick="javascript:void(0);"></button> 
        <span class="tooltip tooltip-35 hover">Download Document</span>
    </div>
</div>





    <div class="pagination-container">
        <ul class="pagination">
            <li>
                
                <a tabindex="-1" class="disabled" href="javascript:void(0);">&lt;&lt;</a>
                
            </li>
            <li>
                
                <a tabindex="-1" class="disabled" href="javascript:void(0);">&lt;</a>
                
            </li>
            <li>
                <span>
                    1 of 1 page
                </span>
            </li>
            <li>
                
                <a class="disabled" href="javascript:void(0);">&gt;</a>
                
            </li>
            <li>
                
                <a class="disabled" href="javascript:void(0);">&gt;&gt;</a>
                
            </li>
        </ul>
    </div>






<div class="new-edit-search-buttons" data-active-tabid="607bb4860f517ea90635652df805ff4b"> 
    
        
            
                <div class="report-actions hidden">
                    <div class="additional-info">
                        <button type="button" class="btn edit-icon svg-icon-tiny btn-actions reportnotessh" onclick="javascript:void(0);">
                            <span class="tooltip centered">Show or Hide Notes</span>
                        </button>
                    </div>
                    <button type="button" class="btn display_all_button" onclick="javascript:void(0);">Show All Details</button> 
                </div>
            
        
    
    
    <button class="btn" onclick="javascript:void(0);">Edit Search</button> 
    <button class="btn" onclick="javascript:void(0);">New Search</button> 
    
    
</div>





        </div>
        
        <div id="search-results-con">
            <form name="SEARCH_RESULTS" method="post">
                
                    <div id="source_doc_container"><div id="source_doc_content">
<h2 class="document-icon svg-icon-normal">Driver License Document</h2>
<p id="source_general" class="report_title">Generated on: 10/01/2016 - 12:00 PM EST | FOR INFORMATIONAL PURPOSES ONLY | Copyright © 2016 LexisNexis.  All rights reserved.</p>
<a class="navAnchor" id="dlRegAnchor"></a><a class="windowNavAnchor" id="dlReg"></a><h3 id="dl_header_1">Ohio Driver License Records</h3>
<table>
<thead><tr><th colspan="2" id="dl_driver_info_header_1">Driver Information</th></tr></thead>
<tbody>
<tr>
<th id="dl_driver_info_name_1_1">Name</th>
<td headers="dl_driver_info_header_1 dl_info_subheader_1 dl_driver_info_name_1_1">DOE,&nbsp;JOE</td>
</tr>
<tr>
<th id="dl_driver_info_address_1_1">Address</th>
<td headers="dl_driver_info_header_1 dl_info_subheader_1 dl_driver_info_address_1_1">1234 YOUR STREET <br>CINCINNATI, OH 45200-0000<br>YOUR COUNTY</td>
</tr>
<tr>
<th id="dl_driver_info_source_1_1">Data Source</th>
<td headers="dl_driver_info_header_1 dl_info_subheader_1 dl_driver_info_source_1_1">Governmental: OH</td>
</tr>
</tbody>
</table>
<table>
<thead><tr><th colspan="2" id="dl_personal_info_header_1">Personal Information</th></tr></thead>
<tbody>
<tr>
<th id="dl_personal_info_ssn_1">SSN</th>
<td headers="dl_personal_info_header_1 dl_personal_info_ssn_1">111-11-XXXX</td>
</tr>
<tr>
<th id="dl_personal_info_dob_1">Date of Birth</th>
<td headers="dl_personal_info_header_1 dl_personal_info_dob_1">01/1977</td>
</tr>
<tr>
<th id="dl_personal_info_gender_1">Gender</th>
<td headers="dl_personal_info_header_1 dl_personal_info_gender_1">Male</td>
</tr>
<tr>
<th id="dl_personal_info_height_1">Height</th>
<td headers="dl_personal_info_header_1 dl_personal_info_height_1">5'10''</td>
</tr>
<tr>
<th id="dl_personal_info_weight_1">Weight</th>
<td headers="dl_personal_info_header_1 dl_personal_info_weight_1">150 lbs.</td>
</tr>
<tr>
<th id="dl_personal_info_hair_1">Hair</th>
<td headers="dl_personal_info_header_1 dl_personal_info_hair_1">Brown</td>
</tr>
<tr>
<th id="dl_personal_info_eyes_1">Eyes</th>
<td headers="dl_personal_info_header_1 dl_personal_info_eyes_1">Brown</td>
</tr>
</tbody>
</table>
<table>
<thead><tr><th colspan="2" id="dl_license_info_header_1_1">Current License Information</th></tr></thead>
<tbody>
<tr>
<th id="dl_cur_license_type_1_1">License Type</th>
<td headers="dl_license_info_header_1 dl_cur_license_type_1_1">RENEWAL</td>
</tr>
<tr>
<th id="dl_cur_license_class_1_1">License Class</th>
<td headers="dl_license_info_header_1 dl_cur_license_class_1_1">Operator - Non Commercial</td>
</tr>
<tr>
<th id="dl_cur_license_issue_date_1_1">Issue Date</th>
<td headers="dl_license_info_header_1 dl_cur_license_issue_date_1_1">05/30/2015</td>
</tr>
<tr>
<th id="dl_cur_license_expiration_date_1_1">Expiration Date</th>
<td headers="dl_license_info_header_1 dl_cur_license_expiration_date_1_1">05/2019</td>
</tr>
<tr>
<th id="dl_cur_license_restrictions_1_1">Restrictions</th>
<td headers="dl_license_info_header_1 dl_cur_license_restrictions_1_1">Corrective Lenses</td>
</tr>
<tr>
<th id="dl_cur_license_attention_1_1">Attention</th>
<td headers="dl_license_info_header_1 dl_cur_license_attention_1_1">ORGAN DONOR</td>
</tr>
</tbody>
</table>
<table>
<thead><tr><th colspan="2" id="dl_conviction_header_1">Conviction Information</th></tr></thead>
<tbody>
<tr><th colspan="2" id="dl_conviction_subheader_1" class="sub-header">Conviction 1.</th></tr>
<tr>
<th id="dl_conviction_type_1_1">Type</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_type_1_1">CONVICTION</td>
</tr>
<tr>
<th id="dl_conviction_court_name_1_1">Court Name</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_court_name_1_1">YOUR MUNI</td>
</tr>
<tr>
<th id="dl_conviction_violation_date_1_1">Violation Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_violation_date_1_1">08/03/2015</td>
</tr>
<tr>
<th id="dl_conviction_plate_num_1_1">Plate Number</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_plate_num_1_1">DGE0000</td>
</tr>
<tr>
<th id="dl_conviction_date_1_1">Conviction Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_date_1_1">09/28/2015</td>
</tr>
<tr>
<th id="dl_conviction_county_1_1">County</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_county_1_1">YOUR COUNTY</td>
</tr>
<tr>
<th id="dl_conviction_court_type_1_1">Court Type</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_court_type_1_1">YOUR COURT</td>
</tr>
<tr>
<th id="dl_conviction_offense_1_1">Offense / Conviction</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_offense_1_1">ASSURED CLEAR DISTANCE</td>
</tr>
<tr>
<th id="dl_conviction_sentence_1_1">Sentence</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_sentence_1_1">CONVICTED</td>
</tr>
<tr>
<th id="dl_conviction_points_1_1">Points</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_points_1_1">02</td>
</tr>
<tr>
<th id="dl_conviction_hazardous_materials_1_1">Hazardous Materials</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_hazardous_materials_1_1">NO - HAZARDOUS MATERIALS NOT PRESENT</td>
</tr>
<tr>
<th id="dl_conviction_plea_1_1">Plea</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_plea_1_1">GUILTY</td>
</tr>
<tr>
<th id="dl_conviction_court_case_num_1_1">Court Case Number</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_court_case_num_1_1">15TRD0000</td>
</tr>
<tr>
<th id="dl_conviction_num_vehicles_1_1">Number of Vehicles</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_num_vehicles_1_1">2</td>
</tr>
<tr>
<th id="dl_conviction_create_date_1_1">Create Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_create_date_1_1">11/02/2015</td>
</tr>
<tr>
<th id="dl_conviction_proof_filing_date_1_1">Proof of Filing Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_1 dl_conviction_proof_filing_date_1_1">09/28/2015</td>
</tr>
<tr><th colspan="2" id="dl_conviction_subheader_2" class="sub-header">Conviction 2.</th></tr>
<tr>
<th id="dl_conviction_type_1_2">Type</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_type_1_2">CONVICTION</td>
</tr>
<tr>
<th id="dl_conviction_court_name_1_2">Court Name</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_court_name_1_2">NEW COUNTY</td>
</tr>
<tr>
<th id="dl_conviction_violation_date_1_2">Violation Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_violation_date_1_2">03/31/2011</td>
</tr>
<tr>
<th id="dl_conviction_plate_num_1_2">Plate Number</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_plate_num_1_2">ERZ0000</td>
</tr>
<tr>
<th id="dl_conviction_date_1_2">Conviction Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_date_1_2">04/13/2011</td>
</tr>
<tr>
<th id="dl_conviction_county_1_2">County</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_county_1_2">MAIN COUNTY</td>
</tr>
<tr>
<th id="dl_conviction_court_type_1_2">Court Type</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_court_type_1_2">COUNTY COURT</td>
</tr>
<tr>
<th id="dl_conviction_offense_1_2">Offense / Conviction</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_offense_1_2">SPEED 4000.000</td>
</tr>
<tr>
<th id="dl_conviction_sentence_1_2">Sentence</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_sentence_1_2">CONVICTED</td>
</tr>
<tr>
<th id="dl_conviction_points_1_2">Points</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_points_1_2">02</td>
</tr>
<tr>
<th id="dl_conviction_hazardous_materials_1_2">Hazardous Materials</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_hazardous_materials_1_2">NO - HAZARDOUS MATERIALS NOT PRESENT</td>
</tr>
<tr>
<th id="dl_conviction_plea_1_2">Plea</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_plea_1_2">GUILTY</td>
</tr>
<tr>
<th id="dl_conviction_court_case_num_1_2">Court Case Number</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_court_case_num_1_2">TRD000000</td>
</tr>
<tr>
<th id="dl_conviction_num_vehicles_1_2">Number of Vehicles</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_num_vehicles_1_2">2</td>
</tr>
<tr>
<th id="dl_conviction_create_date_1_2">Create Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_create_date_1_2">04/21/2011</td>
</tr>
<tr>
<th id="dl_conviction_proof_filing_date_1_2">Proof of Filing Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_2 dl_conviction_proof_filing_date_1_2">04/13/2011</td>
</tr>
<tr><th colspan="2" id="dl_conviction_subheader_3" class="sub-header">Conviction 3.</th></tr>
<tr>
<th id="dl_conviction_type_1_3">Type</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_type_1_3">CONVICTION</td>
</tr>
<tr>
<th id="dl_conviction_court_name_1_3">Court Name</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_court_name_1_3">PRESIDENTS</td>
</tr>
<tr>
<th id="dl_conviction_violation_date_1_3">Violation Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_violation_date_1_3">04/19/2010</td>
</tr>
<tr>
<th id="dl_conviction_plate_num_1_3">Plate Number</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_plate_num_1_3">ERZ1111</td>
</tr>
<tr>
<th id="dl_conviction_date_1_3">Conviction Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_date_1_3">05/12/2010</td>
</tr>
<tr>
<th id="dl_conviction_county_1_3">County</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_county_1_3">YOUR COUNTY</td>
</tr>
<tr>
<th id="dl_conviction_court_type_1_3">Court Type</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_court_type_1_3">PRESIDENT'S COURT</td>
</tr>
<tr>
<th id="dl_conviction_offense_1_3">Offense / Conviction</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_offense_1_3">SPEED</td>
</tr>
<tr>
<th id="dl_conviction_sentence_1_3">Sentence</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_sentence_1_3">CONVICTED</td>
</tr>
<tr>
<th id="dl_conviction_points_1_3">Points</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_points_1_3">02</td>
</tr>
<tr>
<th id="dl_conviction_hazardous_materials_1_3">Hazardous Materials</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_hazardous_materials_1_3">NO - HAZARDOUS MATERIALS NOT PRESENT</td>
</tr>
<tr>
<th id="dl_conviction_plea_1_3">Plea</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_plea_1_3">GUILTY</td>
</tr>
<tr>
<th id="dl_conviction_court_case_num_1_3">Court Case Number</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_court_case_num_1_3">20100000000</td>
</tr>
<tr>
<th id="dl_conviction_num_vehicles_1_3">Number of Vehicles</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_num_vehicles_1_3">2</td>
</tr>
<tr>
<th id="dl_conviction_create_date_1_3">Create Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_create_date_1_3">05/13/2010</td>
</tr>
<tr>
<th id="dl_conviction_proof_filing_date_1_3">Proof of Filing Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_3 dl_conviction_proof_filing_date_1_3">05/12/2010</td>
</tr>
<tr><th colspan="2" id="dl_conviction_subheader_4" class="sub-header">Conviction 4.</th></tr>
<tr>
<th id="dl_conviction_type_1_4">Type</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_type_1_4">CONVICTION</td>
</tr>
<tr>
<th id="dl_conviction_court_name_1_4">Court Name</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_court_name_1_4">LARGE MUNI</td>
</tr>
<tr>
<th id="dl_conviction_violation_date_1_4">Violation Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_violation_date_1_4">08/07/2001</td>
</tr>
<tr>
<th id="dl_conviction_plate_num_1_4">Plate Number</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_plate_num_1_4">Y000111</td>
</tr>
<tr>
<th id="dl_conviction_date_1_4">Conviction Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_date_1_4">08/17/2001</td>
</tr>
<tr>
<th id="dl_conviction_county_1_4">County</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_county_1_4">NEW COUNTY</td>
</tr>
<tr>
<th id="dl_conviction_court_type_1_4">Court Type</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_court_type_1_4">MUNICIPAL COURT</td>
</tr>
<tr>
<th id="dl_conviction_offense_1_4">Offense / Conviction</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_offense_1_4">REGISTRATION - TITLE VIOLATION</td>
</tr>
<tr>
<th id="dl_conviction_sentence_1_4">Sentence</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_sentence_1_4">NO POINTS</td>
</tr>
<tr>
<th id="dl_conviction_points_1_4">Points</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_points_1_4">00</td>
</tr>
<tr>
<th id="dl_conviction_hazardous_materials_1_4">Hazardous Materials</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_hazardous_materials_1_4">NO - HAZARDOUS MATERIALS NOT PRESENT</td>
</tr>
<tr>
<th id="dl_conviction_plea_1_4">Plea</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_plea_1_4">GUILTY</td>
</tr>
<tr>
<th id="dl_conviction_court_case_num_1_4">Court Case Number</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_court_case_num_1_4">1111111</td>
</tr>
<tr>
<th id="dl_conviction_num_vehicles_1_4">Number of Vehicles</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_num_vehicles_1_4">2</td>
</tr>
<tr>
<th id="dl_conviction_create_date_1_4">Create Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_create_date_1_4">09/10/2001</td>
</tr>
<tr>
<th id="dl_conviction_proof_filing_date_1_4">Proof of Filing Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_4 dl_conviction_proof_filing_date_1_4">08/17/2001</td>
</tr>
<tr><th colspan="2" id="dl_conviction_subheader_5" class="sub-header">Conviction 5.</th></tr>
<tr>
<th id="dl_conviction_type_1_5">Type</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_type_1_5">CONVICTION</td>
</tr>
<tr>
<th id="dl_conviction_court_name_1_5">Court Name</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_court_name_1_5">MAIN MUNI</td>
</tr>
<tr>
<th id="dl_conviction_violation_date_1_5">Violation Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_violation_date_1_5">10/02/1999</td>
</tr>
<tr>
<th id="dl_conviction_date_1_5">Conviction Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_date_1_5">12/02/1999</td>
</tr>
<tr>
<th id="dl_conviction_county_1_5">County</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_county_1_5">YOUR COUNTY</td>
</tr>
<tr>
<th id="dl_conviction_offense_1_5">Offense / Conviction</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_offense_1_5">MISCELLANEOUS</td>
</tr>
<tr>
<th id="dl_conviction_sentence_1_5">Sentence</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_sentence_1_5">NO POINTS</td>
</tr>
<tr>
<th id="dl_conviction_points_1_5">Points</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_points_1_5">00</td>
</tr>
<tr>
<th id="dl_conviction_hazardous_materials_1_5">Hazardous Materials</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_hazardous_materials_1_5">UNKNOWN</td>
</tr>
<tr>
<th id="dl_conviction_plea_1_5">Plea</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_plea_1_5">GUILTY</td>
</tr>
<tr>
<th id="dl_conviction_court_case_num_1_5">Court Case Number</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_court_case_num_1_5">D0111111</td>
</tr>
<tr>
<th id="dl_conviction_num_vehicles_1_5">Number of Vehicles</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_num_vehicles_1_5">2</td>
</tr>
<tr>
<th id="dl_conviction_create_date_1_5">Create Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_5 dl_conviction_create_date_1_5">12/29/1999</td>
</tr>
<tr><th colspan="2" id="dl_conviction_subheader_6" class="sub-header">Conviction 6.</th></tr>
<tr>
<th id="dl_conviction_type_1_6">Type</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_type_1_6">CONVICTION</td>
</tr>
<tr>
<th id="dl_conviction_court_name_1_6">Court Name</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_court_name_1_6">NEW MUNI</td>
</tr>
<tr>
<th id="dl_conviction_violation_date_1_6">Violation Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_violation_date_1_6">07/30/1997</td>
</tr>
<tr>
<th id="dl_conviction_plate_num_1_6">Plate Number</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_plate_num_1_6">UQ0000</td>
</tr>
<tr>
<th id="dl_conviction_date_1_6">Conviction Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_date_1_6">09/30/1997</td>
</tr>
<tr>
<th id="dl_conviction_county_1_6">County</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_county_1_6">MAIN</td>
</tr>
<tr>
<th id="dl_conviction_offense_1_6">Offense / Conviction</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_offense_1_6">TRAFFIC CONTROL LIGHTS</td>
</tr>
<tr>
<th id="dl_conviction_sentence_1_6">Sentence</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_sentence_1_6">CONVICTED</td>
</tr>
<tr>
<th id="dl_conviction_points_1_6">Points</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_points_1_6">02</td>
</tr>
<tr>
<th id="dl_conviction_hazardous_materials_1_6">Hazardous Materials</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_hazardous_materials_1_6">UNKNOWN</td>
</tr>
<tr>
<th id="dl_conviction_plea_1_6">Plea</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_plea_1_6">NO CONTEST</td>
</tr>
<tr>
<th id="dl_conviction_court_case_num_1_6">Court Case Number</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_court_case_num_1_6">D000000</td>
</tr>
<tr>
<th id="dl_conviction_num_vehicles_1_6">Number of Vehicles</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_num_vehicles_1_6">2</td>
</tr>
<tr>
<th id="dl_conviction_create_date_1_6">Create Date</th>
<td headers="dl_conviction_header_1 dl_conviction_subheader_6 dl_conviction_create_date_1_6">11/13/1997</td>
</tr>
</tbody>
</table>
<table>
<thead><tr><th colspan="2" id="dl_accident_header_1">Accident Information</th></tr></thead>
<tbody>
<tr><th colspan="2" id="dl_accident_subheader_1" class="sub-header">Accident 1.</th></tr>
<tr>
<th id="dl_accident_detail_1_1">Detail</th>
<td headers="dl_accident_header_1 dl_accident_subheader_1 dl_accident_detail_1_1">ACCIDENT</td>
</tr>
<tr>
<th id="dl_accident_jurisdiction_1_1">Jurisdiction</th>
<td headers="dl_accident_header_1 dl_accident_subheader_1 dl_accident_jurisdiction_1_1">OH</td>
</tr>
<tr>
<th id="dl_accident_jurisdiction_1_1">Accident Severity</th>
<td headers="dl_accident_header_1 dl_accident_subheader_1 dl_accident_jurisdiction_1_1">POSSIBLE INJURY</td>
</tr>
<tr>
<th id="dl_accident_date_1_1">Accident Date</th>
<td headers="dl_accident_header_1 dl_accident_subheader_1 dl_accident_date_1_1">08/03/2015</td>
</tr>
<tr>
<th id="dl_accident_num_vehicles_1_1">Number of Vehicles</th>
<td headers="dl_accident_header_1 dl_accident_subheader_1 dl_accident_num_vehicles_1_1">2</td>
</tr>
<tr>
<th id="dl_accident_haz_mat_1_1">Hazardous Materials</th>
<td headers="dl_accident_header_1 dl_accident_subheader_1 dl_accident_haz_mat_1_1">NO - HAZARDOUS MATERIALS NOT PRESENT</td>
</tr>
<tr>
<th id="dl_accident_create_date_1_1">Create Date</th>
<td headers="dl_accident_header_1 dl_accident_subheader_1 dl_accident_create_date_1_1">08/05/2015</td>
</tr>
<tr>
<th id="dl_accident_bmv_case_num1_1_1">BMV Case Number</th>
<td headers="dl_accident_header_1 dl_accident_subheader_1 dl_accident_bmv_case_num1_1_1">5000000</td>
</tr>
</tbody>
</table>
<table>
<thead><tr><th colspan="2" id="dl_suspension_header_1">Suspension Information</th></tr></thead>
<tbody>
<tr><th colspan="2" id="dl_suspension_subheader_1" class="sub-header">Suspension 1.</th></tr>
<tr>
<th id="dl_suspension_type_1_1">Type</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_type_1_1">LICENSE FORFEITURE</td>
</tr>
<tr>
<th id="dl_suspension_clear_date_1_1">Clear Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_clear_date_1_1">09/28/2015</td>
</tr>
<tr>
<th id="dl_suspension_start_date_1_1">Start Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_start_date_1_1">09/23/2015</td>
</tr>
<tr>
<th id="dl_suspension_bmv_case_num1_1_1">BMV Case Number</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_bmv_case_num1_1_1">LF0000000</td>
</tr>
<tr>
<th id="dl_suspension_court_case_num_1_1">Court Case Number</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_court_case_num_1_1">5D0000000</td>
</tr>
<tr>
<th id="dl_suspension_court_name_1_1">Court Name</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_court_name_1_1">MAIN MUNI</td>
</tr>
<tr>
<th id="dl_suspension_county_1_1">County</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_county_1_1">MAIN</td>
</tr>
<tr>
<th id="dl_suspension_court_type_1_1">Court Type</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_court_type_1_1">MUNI</td>
</tr>
<tr>
<th id="dl_suspension_offense_conviction_1_1">Offense/Conviction</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_offense_conviction_1_1">ASSURED CLEAR DISTANCE</td>
</tr>
<tr>
<th id="dl_suspension_fee_paid_date_1_1">Fee Paid Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_fee_paid_date_1_1">09/28/2015</td>
</tr>
<tr>
<th id="dl_suspension_withdraw_status_1_1">Withdrawal Status</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_withdraw_status_1_1">CLOSED</td>
</tr>
<tr>
<th id="dl_suspension_record_create_date_1_1">Record Create Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_record_create_date_1_1">09/14/2015</td>
</tr>
<tr>
<th id="dl_suspension_fee_required_1_1">Fee Required</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_fee_required_1_1">Y</td>
</tr>
<tr>
<th id="dl_suspension_fine_paid_date_1_1">Fine Paid Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_1 dl_suspension_fine_paid_date_1_1">09/28/2015</td>
</tr>
<tr><th colspan="2" id="dl_suspension_subheader_2" class="sub-header">Suspension 2.</th></tr>
<tr>
<th id="dl_suspension_type_1_2">Type</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_type_1_2">LICENSE FORFEITURE</td>
</tr>
<tr>
<th id="dl_suspension_clear_date_1_2">Clear Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_clear_date_1_2">07/07/2005</td>
</tr>
<tr>
<th id="dl_suspension_start_date_1_2">Start Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_start_date_1_2">12/08/2004</td>
</tr>
<tr>
<th id="dl_suspension_bmv_case_num1_1_2">BMV Case Number</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_bmv_case_num1_1_2">LF111222</td>
</tr>
<tr>
<th id="dl_suspension_court_case_num_1_2">Court Case Number</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_court_case_num_1_2">971116</td>
</tr>
<tr>
<th id="dl_suspension_court_name_1_2">Court Name</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_court_name_1_2">NEW COURT</td>
</tr>
<tr>
<th id="dl_suspension_county_1_2">County</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_county_1_2">YOUR COUNTY</td>
</tr>
<tr>
<th id="dl_suspension_court_type_1_2">Court Type</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_court_type_1_2">MAYORS</td>
</tr>
<tr>
<th id="dl_suspension_fee_paid_date_1_2">Fee Paid Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_fee_paid_date_1_2">07/07/2005</td>
</tr>
<tr>
<th id="dl_suspension_withdraw_status_1_2">Withdrawal Status</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_withdraw_status_1_2">CLOSED</td>
</tr>
<tr>
<th id="dl_suspension_record_create_date_1_2">Record Create Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_record_create_date_1_2">11/29/2004</td>
</tr>
<tr>
<th id="dl_suspension_fee_required_1_2">Fee Required</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_fee_required_1_2">Y</td>
</tr>
<tr>
<th id="dl_suspension_fine_paid_date_1_2">Fine Paid Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_2 dl_suspension_fine_paid_date_1_2">07/07/2005</td>
</tr>
<tr><th colspan="2" id="dl_suspension_subheader_3" class="sub-header">Suspension 3.</th></tr>
<tr>
<th id="dl_suspension_type_1_3">Type</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_type_1_3">LICENSE FORFEITURE</td>
</tr>
<tr>
<th id="dl_suspension_clear_date_1_3">Clear Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_clear_date_1_3">07/07/2005</td>
</tr>
<tr>
<th id="dl_suspension_start_date_1_3">Start Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_start_date_1_3">12/08/2004</td>
</tr>
<tr>
<th id="dl_suspension_bmv_case_num1_1_3">BMV Case Number</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_bmv_case_num1_1_3">L4440000</td>
</tr>
<tr>
<th id="dl_suspension_court_case_num_1_3">Court Case Number</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_court_case_num_1_3">000000</td>
</tr>
<tr>
<th id="dl_suspension_court_name_1_3">Court Name</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_court_name_1_3">MAYORS</td>
</tr>
<tr>
<th id="dl_suspension_county_1_3">County</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_county_1_3"> YOUR COUNTY</td>
</tr>
<tr>
<th id="dl_suspension_court_type_1_3">Court Type</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_court_type_1_3">MAYORS</td>
</tr>
<tr>
<th id="dl_suspension_commercial_vehicle_1_3">Commercial Vehicle</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_commercial_vehicle_1_3">NO -S NOT COMMERCIAL VEHICLE</td>
</tr>
<tr>
<th id="dl_suspension_haz_mat_1_3">Hazardous Materials</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_haz_mat_1_3">NO - HAZARDOUS MATERIALS NOT PRESENT</td>
</tr>
<tr>
<th id="dl_suspension_fee_paid_date_1_3">Fee Paid Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_fee_paid_date_1_3">07/07/2005</td>
</tr>
<tr>
<th id="dl_suspension_withdraw_status_1_3">Withdrawal Status</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_withdraw_status_1_3">CLOSED</td>
</tr>
<tr>
<th id="dl_suspension_record_create_date_1_3">Record Create Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_record_create_date_1_3">11/29/2004</td>
</tr>
<tr>
<th id="dl_suspension_fee_required_1_3">Fee Required</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_fee_required_1_3">Y</td>
</tr>
<tr>
<th id="dl_suspension_fine_paid_date_1_3">Fine Paid Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_3 dl_suspension_fine_paid_date_1_3">07/07/2005</td>
</tr>
<tr><th colspan="2" id="dl_suspension_subheader_4" class="sub-header">Suspension 4.</th></tr>
<tr>
<th id="dl_suspension_type_1_4">Type</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_4 dl_suspension_type_1_4">LICENSE FORFEITURE</td>
</tr>
<tr>
<th id="dl_suspension_clear_date_1_4">Clear Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_4 dl_suspension_clear_date_1_4">05/01/2000</td>
</tr>
<tr>
<th id="dl_suspension_start_date_1_4">Start Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_4 dl_suspension_start_date_1_4">04/26/2000</td>
</tr>
<tr>
<th id="dl_suspension_bmv_case_num1_1_4">BMV Case Number</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_4 dl_suspension_bmv_case_num1_1_4">F000000</td>
</tr>
<tr>
<th id="dl_suspension_court_case_num_1_4">Court Case Number</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_4 dl_suspension_court_case_num_1_4">9D011111112</td>
</tr>
<tr>
<th id="dl_suspension_court_name_1_4">Court Name</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_4 dl_suspension_court_name_1_4">NEW MUNI</td>
</tr>
<tr>
<th id="dl_suspension_county_1_4">County</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_4 dl_suspension_county_1_4">YOUR COUNTY</td>
</tr>
<tr>
<th id="dl_suspension_court_type_1_4">Court Type</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_4 dl_suspension_court_type_1_4">MUNI</td>
</tr>
<tr>
<th id="dl_suspension_withdraw_status_1_4">Withdrawal Status</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_4 dl_suspension_withdraw_status_1_4">CLOSED</td>
</tr>
<tr>
<th id="dl_suspension_record_create_date_1_4">Record Create Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_4 dl_suspension_record_create_date_1_4">04/26/2000</td>
</tr>
<tr>
<th id="dl_suspension_fee_required_1_4">Fee Required</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_4 dl_suspension_fee_required_1_4">N</td>
</tr>
<tr>
<th id="dl_suspension_fine_paid_date_1_4">Fine Paid Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_4 dl_suspension_fine_paid_date_1_4">05/01/2000</td>
</tr>
<tr><th colspan="2" id="dl_suspension_subheader_5" class="sub-header">Suspension 5.</th></tr>
<tr>
<th id="dl_suspension_type_1_5">Type</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_5 dl_suspension_type_1_5">LICENSE FORFEITURE</td>
</tr>
<tr>
<th id="dl_suspension_start_date_1_5">Start Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_5 dl_suspension_start_date_1_5">09/23/2015</td>
</tr>
<tr>
<th id="dl_suspension_bmv_case_num1_1_5">BMV Case Number</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_5 dl_suspension_bmv_case_num1_1_5">LF111222</td>
</tr>
<tr>
<th id="dl_suspension_court_case_num_1_5">Court Case Number</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_5 dl_suspension_court_case_num_1_5">5666444</td>
</tr>
<tr>
<th id="dl_suspension_court_name_1_5">Court Name</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_5 dl_suspension_court_name_1_5">MAIN MUNI</td>
</tr>
<tr>
<th id="dl_suspension_county_1_5">County</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_5 dl_suspension_county_1_5">YOUR COUNTY</td>
</tr>
<tr>
<th id="dl_suspension_court_type_1_5">Court Type</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_5 dl_suspension_court_type_1_5">MUNI</td>
</tr>
<tr>
<th id="dl_suspension_offense_conviction_1_5">Offense/Conviction</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_5 dl_suspension_offense_conviction_1_5">ASSURED CLEAR DISTANCE</td>
</tr>
<tr>
<th id="dl_suspension_withdraw_status_1_5">Withdrawal Status</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_5 dl_suspension_withdraw_status_1_5">OPEN</td>
</tr>
<tr>
<th id="dl_suspension_record_create_date_1_5">Record Create Date</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_5 dl_suspension_record_create_date_1_5">09/14/2015</td>
</tr>
<tr>
<th id="dl_suspension_fee_required_1_5">Fee Required</th>
<td headers="dl_suspension_header_1 dl_suspension_subheader_5 dl_suspension_fee_required_1_5">Y</td>
</tr>
</tbody>
</table>
<button type="button" class="caret_up has-click-event btn btn-link btn-tight pull-right" data-event="scroll">Top</button><p id="source_footer"><strong>Important</strong> - The Public Records and commercially available data sources used on reports have errors. Data is sometimes entered poorly, processed incorrectly and is generally not free from defect. This system should not be relied upon as definitively accurate. Before relying on any data this system supplies, it should be independently verified. For Secretary of State documents, the following data is for information purposes only and is not an official record. Certified copies may be obtained from that individual state's Department of State.</p>
</div></div>

                
                <input name="GMAP_UNIQUE_ID" value="" type="hidden">
                <input name="IMGPATH" value="img" type="hidden">
            </form>
        </div>
        
        <div class="search-results-actions">
            


    <input name="SEARCH_EVT" value="" type="hidden">
    <div class="reportLeftNavToggle hidden">
        <div class="additional-info">
            <button type="button" data-placement="bottom" class="btn-actions btn navigation_icon svg-icon-tiny" onclick="javascript:void(0);"></button>
            <span class="tooltip tooltip-35 hover">Toggle Navigation</span>
        </div>
    </div>

<div class="print-download-buttons">
    
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn selectDeselectDocument checkbox-icon" data-original-title="Select Document" aria-label="Select Document" onclick="javascript:void(0);"></button>
        <span class="tooltip tooltip-35 hover">Select Document</span>
    </div>
    
    
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn print-icon svg-icon-tiny" data-original-title="Print Results" aria-label="Print Results" onclick="javascript:void(0);"></button>
        <span class="tooltip tooltip-35 hover">Print Document</span>
    </div>
    <div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn download-icon svg-icon-tiny" data-original-title="Download" aria-label="Download" onclick="javascript:void(0);"></button> 
        <span class="tooltip tooltip-35 hover">Download Document</span>
    </div>
</div>





    <div class="pagination-container">
        <ul class="pagination">
            <li>
                
                <a tabindex="-1" class="disabled" href="javascript:void(0);">&lt;&lt;</a>
                
            </li>
            <li>
                
                <a tabindex="-1" class="disabled" href="javascript:void(0);">&lt;</a>
                
            </li>
            <li>
                <span>
                    1 of 1 page
                </span>
            </li>
            <li>
                
                <a class="disabled" href="javascript:void(0);">&gt;</a>
                
            </li>
            <li>
                
                <a class="disabled" href="javascript:void(0);">&gt;&gt;</a>
                
            </li>
        </ul>
    </div>






<div class="new-edit-search-buttons" data-active-tabid="607bb4860f517ea90635652df805ff4b"> 
    
        
            
                <div class="report-actions hidden">
                    <div class="additional-info">
                        <button type="button" class="btn edit-icon svg-icon-tiny btn-actions reportnotessh" onclick="javascript:void(0);">
                            <span class="tooltip centered">Show or Hide Notes</span>
                        </button>
                    </div>
                    <button type="button" class="btn display_all_button" onclick="javascript:void(0);">Show All Details</button> 
                </div>
            
        
    
    
    <button class="btn" onclick="javascript:void(0);">Edit Search</button> 
    <button class="btn" onclick="javascript:void(0);">New Search</button> 
    
    
</div>





        </div>
        
        
    
</div></div>
               <div class="col-1_5 start-page-banner hidden">
               <a href="javascript:void(0);" target="_blank">
                   <img id="BannerAd" src="" alt="Banner Ad"><!-- TODO: the img and banner should be changed to proper value or generated based on current ad. -->
               </a>
               </div>
					
						<div id="permissible-row">

    <ul class="unmarked_list">
        
	    <li>
    		<strong>Your DPPA Permissible Use:</strong>
    		
    		    <a class="uline" id="dppa_reason" href="javascript:void(0);">
    			Litigation
    		    </a>
    		
            </li>
        
        
        
    </ul>  
</div>

					
				
			
		</section>
    </div>
		
			
    

    <form name="SELECT_GROUP" action="" method="post" aria-hidden="true">
        <input name="SESSION_ID" value="ce10895878387091a8aadfa73a9bc35b" type="hidden">
        <input name="CSRF_TOKEN" value="5e0f004fb9903c7a099c4e3bdb65782a" type="hidden">  
        <input name="APPLICATION_TYPE" value="rskm" type="hidden">
        <input name="EVENT" value="MYACCOUNT/UPDATE_GROUP_SESSION_PORTAL" class="resettable" type="hidden">
        <input name="GROUPS" value="" class="resettable" type="hidden">
    </form>
    <footer class="">
    <p>Customer Support - 1-866-277-8407</p>
    <p><a href="javascript:void(0);">About LexisNexis</a><a href="javascript:void(0);">Terms &amp; Conditions</a><a class="last-child" href="javascript:void(0);">Contact Us</a></p>
    <p>
        <a href="javascript:void(0);">Copyright ©</a>
        2016 LexisNexis. All rights reserved.
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
                        <button class="btn btn-danger" onclick="javascript:void(0);" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                        <button class="btn btn-default" onclick="javascript:void(0);" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
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
                        <button class="btn btn-danger" onclick="javascript:void(0);" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                        <button class="btn btn-default" onclick="javascript:void(0);" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
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
                        <button class="btn btn-default" onclick="javascript:void(0);" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
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
                        <button id="session_refresh_btn" class="btn btn-default" onclick="javascript:void(0);" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
                        <button id="session_expired_btn" class="btn btn-default hidden" onclick="javascript:void(0);" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
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
              No disabled search to show
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
                        <button type="button" onclick="javascript:void(0);" id="continue-group-select-modal" class="btn btn-danger pull-left left-spacing-5">Continue</button>
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
                        <button class="btn btn-danger" onclick="javascript:void(0);" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
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
                        <button class="btn btn-danger" onclick="javascript:void(0);" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
                        <button class="btn btn-default" data-dismiss="modal" type="button">&nbsp;&nbsp;No&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="ie8-modal" class="modal">
        <div class="well well-sm"><img src="<TMPL_VAR HTMLPATH>/v4/img/loading_spinner.gif" alt="Loading" width="35" height="35">&nbsp;<span class="loading-text"></span></div>
    </div>

<div id="new-modal" class="modal fade bs-example-modal-lg" aria-live="polite" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
<div class="modal-dialog trap">
<div class="modal-content">

<div class="modal-header">
<button type="button" class="close hidden" data-dismiss="modal"><span aria-hidden="true">×</span>
<span class="sr-only">Close</span></button>
<h2 class="modal-title">Preparing Document</h2>
</div>

<div class="modal-body">
<div class="well well-sm"><span class="loading_icon svg-icon-x-large loading-text">Preparing Document, please wait...</span></div>
</div>
</div>
</div>
</div>
</body>
</html>