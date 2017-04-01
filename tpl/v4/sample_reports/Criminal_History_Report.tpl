<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Criminal Records Document</title>

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
	<style type="text/css"> #popover102664{ top:80.5px; left:192px; display:block} </style>
	
	<script src="<TMPL_VAR HTMLPATH>/v4/js/jquery.js"></script>
    <script src="<TMPL_VAR HTMLPATH>/v4/js/sample_reports.js"></script>
    
    </head>
	<body class="menu-on-top" style="">
		<div id="main">
		
			<header id="header">	
	<!-- end pulled right: nav area -->
    <!-- BEGIN: v4/header_logo.tpl -->`
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
					<a href="javascript:void(0);" onclick="javascript:void(0);">Preferences</a>
				</li>
				
				<li class="hlOptions">
					<a href="javascript:void(0);" onclick="javascript:void(0);">Administration</a>
				</li>
            
				<li class="hlOptions">
					<a href="javascript:void(0);" onclick="javascript:void(0);">Change Password</a>
				</li>
                
                    
        				<li class="hlOptions">
        					<a href="javascript:void(0);" onclick="javascript:void(0);">Disabled Searches</a>
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
                            <input autocomplete="off" name="QS_TEXT" id="QS_TEXT" class="form-control qs-input" placeholder="Enter SSN" onkeypress="javascript:void(0);" onkeyup="javascript:void(0);" type="text">
                            <span class="tooltip qs_text_tip tooltip-35">Enter SSN</span>
                        </label>
                    </div>

                    <div class="col input">
                        <label for="QS_REFERENCE_CODE">
                            <input class="form-control qs-input" id="QS_REFERENCE_CODE" name="QS_REFERENCE_CODE" value="" maxlength="32" placeholder="Enter Reference ID" onkeypress="javascript:void(0);" type="text">
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
    </li><li class="nav-fav-search nav-fav-first hx-show"><a href="javascript:void(0);">Find a Person</a></li><li class="nav-fav-search hx-show"><a href="javascript:void(0);">Find a Business</a></li><li class="nav-fav-search hx-show"><a href="javascript:void(0);">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification</a></li><li class="nav-fav-search hx-show"><a href="javascript:void(0);">Phones Plus</a></li><li class="nav-fav-search hx-show"><a href="javascript:void(0);;">Negative News</a></li>
    <li id="nav-fav-viewall" class="hidden">
        <button class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
            <span class="more-actions"></span>
        </button>
        <ul class="dropdown-menu dropdown-menu-right tab-dropdown anim-fadeInDown">
            <li role="presentation" class="dropdown-header">Favorite Searches</li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa person_icon"></span>Find a Person</a></li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa bus_icon"></span>Find a Business</a></li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);;"><span data-searchtype="Phones Plus Search" class="fa person_icon"></span>InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification</a></li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa phone_icon"></span>Phones Plus</a></li><li class="tab-dropdown-item freq-fav hidden"><a href="javascript:void(0);"><span data-searchtype="Phones Plus Search" class="fa news_icon"></span>Negative News</a></li>
        </ul>
    </li>
</ul>


    <ul id="history-tab-ul" class="nav nav-tabs multi-tab-view">


    
        
    
        <li class="btn-group history-tab dropdown active  not-form-tab hx-show" data-paramli="ee732bb91c7ec73c4d2698ad6068285e" data-isactive="1" data-islocked="0">
            <div class="btn-group" data-paramrecent="ee732bb91c7ec73c4d2698ad6068285e">
                <button data-focus="" class="btn dropdown-toggle btn-danger" data-toggle="dropdown" data-hide-dropdown-icon="0"><img src="<TMPL_VAR HTMLPATH>/v4/img/caret_down.png">
                    <span class="sr-only">Open tab options</span>
                </button>
                <button data-container=".nav-tabs" data-toggle="popover" data-placement="top" data-trigger="hover" data-closebutton="off" class="tab-crit btn btn-lg btn-danger" onclick="javascript:void(0);" data-original-title="" title="">
                    <span data-searchtype="Criminal Records" data-tabshowevt="SEARCH2/SHOW_CRIM" class="svg-icon-normal court_icon"></span>
                    <span class="history-tab-data" data-value="doe, john; dayton; OH" aria-hidden="true">doe, john; dayton; OH</span>
                </button>
		<div class="popper-content hide"><div class="popover-font-9 popover-tabs">doe, john; dayton; OH</div></div>
                <button class="remove-tab btn close-icon  btn-danger" onclick="javascript:void(0);;">
                    <span class="sr-only">Close tab</span>
                </button>
                <button class="multi-tab btn btn-danger hidden" onclick="javascript:void(0);">Toggle to Multi-tab View</button>
                <ul id="tab_ee732bb91c7ec73c4d2698ad6068285e" class="dropdown-menu tab-dropdown anim-fadeInDown">
                    <li role="presentation" class="dropdown-header">
                        Tab History 
                    </li>
                    
                        
                            
                                <li tabindex="0" class="tab-dropdown-item lnkRecent" onclick="javascript:void(0);" data-paramli="ee732bb91c7ec73c4d2698ad6068285e" data-page="1">
                                    <div class="history-tab-data">
                                        <span data-searchtype="Criminal Records" data-tabshowevt="SEARCH2/SHOW_CRIM" class="svg-icon-small court_icon"></span>
                                        <span class="tab-search-name">Criminal Records (20)</span>
                                        <span class="tab-search-terms">doe, john; dayton; OH</span>
                                    </div>
                                    
                                    <br class="clear">
                                </li>
                                
                            
                                <li tabindex="0" class="tab-dropdown-item lnkRecent recentRun hidden is-current-page" data-paramli="390e3886b548055a3e99fe43c83cc9ca" data-isreport="1" data-page="1">
                                    <div class="history-tab-data" onclick="javascript:void(0);">
                                        <span data-searchtype="Criminal Records Document" data-tabshowevt="" class="svg-icon-small document-icon"></span>
                                        <span class="tab-search-name">Criminal Records Document</span>
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
                <li role="presentation" class="dropdown-header">Open Tabs (<span id="open-tab-count">1</span>)</li>
                
                    
               
                    <li tabindex="0" class="tab-dropdown-item lnkRecent more-tabs-item not-form-tab" data-paramli="ee732bb91c7ec73c4d2698ad6068285e">
                        <span class="close close-tab">
                            <a class="close-icon font-12" href="javascript:void(0);" onclick="javascript:void(0);">
                                <span class="sr-only">Delete tab</span>
                            </a>
                        </span>
                        <div class="history-tab-data">
                            <section onclick="javascript:void(0);">
                                <span class="svg-icon-normal court_icon" data-tabshowevt="SEARCH2/SHOW_CRIM"></span>
                                <span class="tab-search-name">
                                    Criminal Records (20)
                                </span>
                                <span class="tab-search-terms">
                                    doe, john; dayton; OH
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
						<span id="web20-search-flags" class="hidden" data-search-disabled="0" data-search-error-message="0" data-report-error-message="0" data-is-from-main-menu="0" data-hit-tab-limit="0" data-rerun-display-event="0" data-web20-page-title="Criminal Records Document" data-search-idx="" data-clear-browser-cache-pages="" data-is-clk-search="0" data-is-search-within="0" data-search-within-terms="" data-webpubrec-request="0" data-is-new-window="0" data-active-tab="390e3886b548055a3e99fe43c83cc9ca" data-tab-id="ee732bb91c7ec73c4d2698ad6068285e" data-page="0" data-is-report="1" data-report-has-form="0" data-show-event="SEARCH2/SHOW_CRIM"></span>
    
        <div id="search-form-row" class="row no-print hidden">
            
                
                    <header id="search-form-header">
    <h2>
        <strong>Criminal Records Document</strong>
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
             

<span id="start-page-link" class="button-icon hidden start-page" data-placement="bottom" data-original-title="My Start Page">My Start Page</span>
<a href="javascript:void(0);" onclick="javascript:void(0);" id="make-start-page-link" class="button-icon  make-start-page" data-placement="bottom" data-original-title="Make This My Start Page" data-startpage-idx="">Make This My Start Page</a>

        </div>
    </div>
</header>

                
            









































































































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










        </div>
    

    



						
							
<!-- end map/hidden_form.tpl -->




							<div id="search_decisions" class="hidden">
     <ul>
     
        <li id="SD_IDX_89"><a href="javascript:void(0);">Find Neighbors</a></li>
        <!--
        <li id="IDX_20"><a href="javascript:void(0);">Get Map</a></li>
        -->
     
     
     <li id="SD_IDX_90"><a href="javascript:void(0);">Find Associated Persons</a></li>
     <li id="SD_IDX_120"><a data-type="DID" href="javascript:void(0);">Address Associates</a></li>
     
     
    
        <li id="SD_IDX_164" data-isreport="1"><a href="javascript:void(0);" onclick="javascript:void(0);">Property History Report</a></li>
    
    

  

    <!-- TODO comment out person search for All now, but later add LE Vertical check
    -->
    <!-- Should come up with some solution so that in the magnifying drop down, we can show Find a Person OR Find People with this Phone OR something else, as desired-->
    
      <li id="SD_IDX_0"><a href="javascript:void(0);">Find People with this Phone</a></li>
    
    <!-- -->

    

  

	
    <li id="SD_IDX_42"><a href="javascript:void(0);">People At Work</a></li>
	

	

	
    <li id="SD_IDX_9"><a href="javascript:void(0);">UCC</a></li>
	


	
	 
	


	


	
        <li id="SD_IDX_58"><a href="javascript:void(0);">Fictitious Business Name</a></li>
	

  
	
    <li id="SD_IDX_4"><a href="javascript:void(0);">Motor Vehicles</a></li>
	
  

	

  

  
      
          
          <li id="SD_IDX_1"><a href="javascript:void(0);">Taxes</a></li>
          
          
          <li id="SD_IDX_2"><a href="javascript:void(0);">Deeds &amp; Mortgages</a></li>
          
      
      <li id="SD_IDX_341" data-isreport="1"><a href="javascript:void(0);" onclick="javascript:void(0);">Property History Plus Report</a></li>
  

  
      
        
        <li id="SD_IDX_1"><a href="javascript:void(0);">Taxes</a></li>
        
        
        <li id="SD_IDX_2"><a href="javascript:void(0);">Deeds &amp; Mortgages</a></li>
        
      
      
        <li id="SD_IDX_45"><a href="javascript:void(0);">Foreclosures</a></li>
      
      
      
      <li id="SD_IDX_89"><a href="javascript:void(0);">Find Neighbors</a></li>
      
      
      <li id="SD_IDX_294" data-isreport="1"><a href="javascript:void(0);" onclick="javascript:void(0);">Phone Finder</a></li>
      
  

	
    <li id="SD_IDX_115"><a href="javascript:void(0);">Property (Property Assessments, Deeds &amp; Mortgages)</a></li>
	

	
    <li id="SD_IDX_16"><a href="javascript:void(0);">Watercraft</a></li>
	

	
    <li id="SD_IDX_21"><a href="javascript:void(0);">FAA Aircraft</a></li>
	

	
    <li id="SD_IDX_3"><a href="javascript:void(0);">Driver Licenses</a></li>
	

	
    <li id="SD_IDX_23"><a href="javascript:void(0);">Professional Licenses</a></li>
	

	

	

    

    
    
        <li id="SD_IDX_98"><a href="javascript:void(0);">Email</a></li>
    
    

	

	

  

  


    

    
    

  

	
    <li id="SD_IDX_32"><a href="javascript:void(0);">Voter Registration</a></li>
	

	

        
	
    <li id="SD_IDX_79"><a href="javascript:void(0);">Phones Plus</a></li>
	
	

        

	
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
      

      

      
      
      
        <li id="SD_IDX_103"><a href="javascript:void(0);">Real-Time Motor Vehicle Registrations</a></li>
      
      
      
	 
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
	<li data-id="peoplelinks_ps" data-icon="person_icon">
		<a href="javascript:void(0);">People</a>
	</li>
	<li data-id="businesseslinks_ps" data-icon="bus_icon">
		<a href="javascript:void(0);">Business</a>
	</li>
	<li data-id="assetslinks_ps" data-icon="property_icon">
		<a href="javascript:void(0);">Property &amp; Assets</a>
	</li>
	<li data-id="courtslinks_ps" data-icon="court_icon" data-active="true">
		<a href="javascript:void(0);">Court &amp; Admin Filings</a>
	</li>
	<li data-id="newslinks_ps" data-icon="news_icon">
		<a href="">News</a>
	</li>
	<li data-id="internationallinks_ps" data-icon="international_icon">
		<a href="">International</a>
	</li>
	<li data-id="regcompliancelinks_ps" data-icon="regulations_icon">
		<a href="">Regulations &amp; Compliance</a>
	</li>
	<li data-id="directtosource_ps" data-icon="direct_to_source_icon">
		<a href="">Direct-to-Source</a>
	</li>
	<li data-id="authserviceslinks_ps" data-icon="authentication_services_icon">
		<a href="">Authentication Services</a>
	</li>
</ul>

<div id="main_menu_data" class="no-print">
	<ul data-sid="myfavlinks" data-li-prefix="myfavs">
		
			
				
					
						<li data-id="myfavs_IDX_0" data-dummy="1">
							<a href="">Find a Person</a>
						</li>
						
				
			
				
					
						<li data-id="myfavs_IDX_13" data-dummy="1">
							<a href="">Find a Business</a>
						</li>
						
				
			
				
					
						<li data-id="myfavs_IDX_54" data-dummy="1">
							<a href="">®</sup> Consumer Verification</a>
						</li>
						
				
			
				
					
						<li data-id="myfavs_IDX_79" data-dummy="1">
							<a href="">Phones Plus</a>
						</li>
						
				
			
				
					
						<li data-id="myfavs_IDX_121" data-dummy="1">
							<a href="">Negative News</a>
						</li>
						
				
			
		
	</ul>
	<ul data-sid="myfreqlinks" data-li-prefix="myfreqs">
		
			
				
					
						<li data-id="myfreqs_IDX_115">
							<a href="">Real Property (Property Assessments, Deeds &amp; Mortgages)</a>
						</li>
						
				
			
				
					
						<li data-id="myfreqs_IDX_19">
							<a href="">Criminal Records</a>
						</li>
						
				
			
				
					
						<li data-id="myfreqs_IDX_4">
							<a href="">Motor Vehicle Registrations</a>
						</li>
						
				
			
				
					
						<li data-id="myfreqs_IDX_16">
							<a href="">Boat Registrations</a>
						</li>
						
				
			
				
					
						<li data-id="myfreqs_IDX_294">
							<a href="">LexisNexis<sup class="sup-reg-symbol">®</sup> Phone Finder</a>
						</li>
						
				
			
				
					
						<li data-id="myfreqs_IDX_13">
							<a href=";">Find a Business</a>
						</li>
						
				
			
				
					
						<li data-id="myfreqs_IDX_0">
							<a href="">Find a Person</a>
						</li>
						
				
			
				
					
						<li data-id="myfreqs_IDX_79">
							<a href="">Phones Plus</a>
						</li>
						
				
			
				
					
						<li data-id="myfreqs_IDX_3">
							<a href="">Driver Licenses</a>
						</li>
						
				
			
		
	</ul>
	<ul data-sid="mytasklinks" data-li-prefix="mytask">
		
	</ul>
	<ul data-sid="peoplelinks" data-li-prefix="people">
		
		
			<li data-id="people_IDX_0" class="menu-show-group" data-icon="person_icon">
				<a href="">Find a Person</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_54" class="menu-show-group" data-icon="person_icon">
				<a href="">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification</a>
			</li>
			
		
		
		
			<li data-id="people_IDX_195" class="menu-show-group" data-icon="person_icon">
				<a href="">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification with Red Flags Rule Report</a>
			</li>
			
		
		
		
		
			<li data-id="people_IDX_196" class="menu-show-group" data-icon="person_icon">
				<a href="">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification with FraudPoint<sup class="sup-reg-symbol">®</sup> Score</a>
			</li>
			
		
		
		
			<li data-id="people_IDX_197" class="menu-show-group" data-icon="person_icon">
				<a href="">InstantID<sup class="sup-reg-symbol">®</sup> Consumer Verification with Red Flags &amp; FraudPoint<sup class="sup-reg-symbol">®</sup> Score</a>
			</li>
			
		
		
		
		
		
		
			<li data-id="people_IDX_123" class="menu-show-group" data-icon="person_icon">
				<a href="">FraudPoint<sup class="sup-reg-symbol">®</sup> Score</a>
			</li>
			
		
		
		
			<li data-id="people_IDX_198" class="menu-show-group" data-icon="person_icon">
				<a href="">FraudPoint<sup class="sup-reg-symbol">®</sup> Score with Red Flags Rule Report</a>
			</li>
			
		
		
		
		
			<li data-icon="phone_icon" data-id="people_IDX_294" class="menu-show-group">
				<a href="">LexisNexis<sup class="sup-reg-symbol">®</sup> Phone Finder</a>
			</li>
		
		
		
		
			<li data-icon="phone_icon" data-id="people_IDX_79" class="menu-show-group">
				<a href="">Phones Plus</a>
			</li>
			
		
		
		
			<li data-icon="phone_icon" data-id="people_IDX_6" class="menu-show-group">
				<a href="">Phone Lookup</a>
			</li>
			
		
		
		
			<li data-id="people_IDX_327" class="menu-hide-group" data-icon="person_icon">
				<a href="">Business Executive and Political Biographies</a>
			</li>
			
		
		
		
			<li data-id="people_IDX_3" class="menu-hide-group" data-icon="person_icon">
				<a href="">Driver Licenses</a>
			</li>
			
		
		
		
			<li data-id="people_IDX_98" class="menu-hide-group" data-icon="person_icon">
				<a href="">Email Address/Social Network Report</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_188" class="menu-hide-group">
				<a href="">IRS Verify</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_189" class="menu-hide-group">
				<a href="">SSA Verify</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_43" class="menu-hide-group" data-icon="person_icon">
				<a href="">Marriage &amp; Divorce Records</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_24" class="menu-hide-group" data-icon="person_icon">
				<a href="">OFAC &amp; Other Watch Lists</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_42" class="menu-hide-group" data-icon="person_icon">
				<a href="">People At Work</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_23" class="menu-hide-group" data-icon="person_icon">
				<a href="">Professional Licenses</a>
			</li>
		
					
		
		
			<li data-id="people_IDX_128" class="menu-hide-group" data-icon="person_icon">
				<a href="">Statewide Public Records Person Search</a>
			</li>
		
		
		
		
			<li data-id="people_IDX_32" class="menu-hide-group" data-icon="person_icon">
				<a href="">Voter Registrations</a>
			</li>
		
		

		
					
	</ul>
	<ul data-sid="businesseslinks" data-li-prefix="business">
		
		
			<li data-id="business_IDX_13" class="menu-show-group" data-icon="bus_icon">
				<a href="">Find a Business</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_63" class="menu-show-group" data-icon="bus_icon">
				<a href="">InstantID<sup class="sup-reg-symbol">®</sup> Business Verification</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_199" class="menu-show-group" data-icon="bus_icon">
				<a href="">InstantID<sup class="sup-reg-symbol">®</sup> Business Verification with FraudDefender<sup class="sup-reg-symbol">®</sup></a>
			</li>
		
		
		
		
			<li data-id="business_IDX_70" class="menu-show-group" data-icon="bus_icon">
				<a href="">D&amp;B Global Market Identifiers</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_56" class="menu-show-group" data-icon="bus_icon">
				<a href="">Experian Business Reports</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_58" class="menu-show-group" data-icon="bus_icon">
				<a href="">Fictitious Business Names/DBA</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_165" class="menu-show-group" data-icon="bus_icon">
				<a href=";">GuideStar</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_139" class="menu-show-group" data-icon="bus_icon">
				<a href="">LexisNexis<sup class="sup-reg-symbol">®</sup> Corporate Affiliations™</a>
			</li>
		
		
		
		
		
			<li data-id="business_IDX_41" class="menu-show-group" data-icon="bus_icon">
				<a href="">Secretary of State - State of Delaware</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_135" class="menu-hide-group" data-icon="bus_icon">
				<a href="">Combined Banking Directories</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_137" class="menu-hide-group" data-icon="bus_icon">
				<a href="">D&amp;B DUNS Minority &amp; Women-Owned Businesses</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_107" class="menu-hide-group" data-icon="bus_icon">
				<a href="">D&amp;B FEIN</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_138" class="menu-hide-group" data-icon="bus_icon">
				<a href="javascript:pm_tab_v3('SEARCH2/SHOW_LN_DAND_B_PRIVATE_COMPANY_INSIGHTS');">D&amp;B Private Company Insights</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_140" class="menu-hide-group" data-icon="bus_icon">
				<a href="">Hoover's Company Capsules</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_163" class="menu-hide-group" data-icon="bus_icon">
				<a href="">LexisNexis<sup class="sup-reg-symbol">®</sup> Small Business Risk Score</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_141" class="menu-hide-group" data-icon="bus_icon">
				<a href="">Mergerstat</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_55" class="menu-hide-group" data-icon="bus_icon">
				<a href="">SEC Filings</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_142" class="menu-hide-group" data-icon="bus_icon">
				<a href="">Standard &amp; Poor's Corporate Descriptions plus News</a>
			</li>
		
		
		
		
			<li data-id="business_IDX_136" class="menu-hide-group" data-icon="bus_icon">
				<a href="">Statewide Public Records Business Search</a>
			</li>
		
		
		
					
	</ul>
	<ul data-sid="assetslinks" data-li-prefix="assets">
		
		
			<li data-id="assets_IDX_118" data-icon="property_icon">
				<a href="">Find a Location</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_115" data-icon="property_icon">
				<a href="">Real Property (Property Assessments, Deeds &amp; Mortgages)</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_21" data-icon="property_icon">
				<a href="">Aircraft Registrations</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_16" data-icon="property_icon">
				<a href="">Boat Registrations</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_126" data-icon="property_icon">
				<a href="">Mortgage Fraud Report</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_4" data-icon="property_icon">
				<a href="">Motor Vehicle Registrations</a>
			</li>
		
		
		
		
			<li data-id="assets_IDX_164" data-icon="property_icon">
				<a href="">Property History</a>
			</li>
		
		
		
		
		
			<li data-id="assets_IDX_309" data-icon="property_icon">
				<a href="">Verification of Occupancy</a>
			</li>
		
		
	</ul>
	<ul data-sid="courtslinks" data-li-prefix="courts">
		
		
			<li data-id="courts_IDX_114" data-icon="court_icon">
				<a href="">Bankruptcies, Judgments &amp; Liens</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_10" data-icon="court_icon">
				<a href="">Bankruptcies</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_9" data-icon="court_icon">
				<a href="">UCC Liens</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_11" data-icon="court_icon">
				<a href="">Judgments &amp; Tax Liens</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_130" data-icon="court_icon">
				<a href="">Federal Civil &amp; Criminal Docket Summaries</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_129" data-icon="court_icon">
				<a href="">State Civil &amp; Criminal Filings</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_19" class="active" data-icon="court_icon">
				<a href="">Criminal Records</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_325" data-icon="court_icon">
				<a href="">Case Law</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_18" data-icon="court_icon">
				<a href="">Florida Accidents</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_45" data-icon="court_icon">
				<a href="">Foreclosures</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_131" data-icon="court_icon">
				<a href="">Jury Verdicts &amp; Settlements</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_132" data-icon="court_icon">
				<a href="">Mortgage &amp; Financial Service Sanctions</a>
			</li>
		
		
		
		
			<li data-id="courts_IDX_29" data-icon="court_icon">
				<a href="">Sexual Offenders</a>
			</li>
		
		
	</ul>
	<ul data-sid="newslinks" data-li-prefix="news">
		
		
			<li data-id="news_IDX_48" data-icon="news_icon">
				<a data-icon="news_icon" href="">News</a>
			</li>
		
		
		
		
			<li data-id="news_IDX_121" data-icon="news_icon">
				<a href="">Negative News</a>
			</li>
		
		
		
		
			<li data-icon="news_icon" data-id="news_IDX_345">
				<a data-icon="news_icon" href="javascript:void(0);
">News Trends</a>
			</li>
		
		
		
		
			<li data-id="news_IDX_71" data-icon="news_icon">
				<a href="javascript:void(0);
">Deaths &amp; Obituaries in the News</a>
			</li>
		
		
		
		
			<li data-id="news_IDX_133" data-icon="news_icon">
				<a href="javascript:void(0);
">Bankers' News</a>
			</li>
		
		
	</ul>
	<ul data-sid="internationallinks" data-li-prefix="inter">
		
		
			<li data-id="inter_IDX_166" data-icon="international_icon">
				<a href="javascript:void(0);
">WorldCompliance</a>                    
			</li>
		
		
		
		
			<li data-id="inter_IDX_167" data-icon="international_icon">
				<a href="javascript:void(0);
">All Company Information (excluding Investext &amp; D&amp;B)</a>
			</li>
		
		
		
		
			<li data-id="inter_IDX_100" data-icon="international_icon">
				<a href="javascript:void(0);
">Canadian Phones</a>
			</li>
		
		
		
		
			<li data-id="inter_IDX_324" data-icon="international_icon">
				<a href="javascript:void(0);
">Country Risk Reports</a>
			</li>
		
		
		
		
			<li data-id="inter_IDX_122" data-icon="international_icon">
				<a href="javascript:void(0);
">InstantID<sup class="sup-reg-symbol">®</sup> International</a>
			</li>
		
		
		
		
			<li data-id="inter_IDX_168" data-icon="international_icon">
				<a href="javascript:void(0);
">Passport Validation</a>
			</li>
		
		
		
		
			<li data-id="inter_IDX_143" data-icon="international_icon">
				<a href="javascript:void(0);
">UK Companies &amp; Directories</a>
			</li>
		
		
	</ul>
	<ul data-sid="regcompliancelinks" data-li-prefix="regs"> 
		
		
			<li data-id="regs_IDX_145" data-icon="regulations_icon">
				<a href="javascript:void(0);
">Administrative Law Judge Decisions</a>
			</li>
		
		
		
		
			<li data-id="regs_IDX_326" data-icon="regulations_icon">
				<a href="javascript:void(0);
">Agency Opinions</a>
			</li>
		
		
		
		
			<li data-id="regs_IDX_146" data-icon="regulations_icon">
				<a href="javascript:void(0);
">Code of Federal Regulations - Banking Titles 12 &amp; 31</a>
			</li>
		
		
		
		
			<li data-id="regs_IDX_147" data-icon="regulations_icon">
				<a href="javascript:void(0);
">Code of Federal Regulations &amp; Federal Register</a>
			</li>
		
		
		
		
			<li class="active" data-id="regs_IDX_148" data-icon="regulations_icon">
				<a href="javascript:void(0);
">Congressional Record</a>
			</li>
		
		
		
		
			<li class="active" data-id="regs_IDX_149" data-icon="regulations_icon">
				<a href="javascript:void(0);
">FDIC &amp; Resolution Trust Corp</a>
			</li>
		
		
		
		
			<li class="active" data-id="regs_IDX_150" data-icon="regulations_icon">
				<a href="javascript:void(0);
">Federal Reserve</a>                    
			</li>
		
		
		
		
			<li class="active" data-id="regs_IDX_151" data-icon="regulations_icon">
				<a href="javascript:void(0);
">GAO Reports &amp; Testimonies</a>
			</li>
		
		
		
		
			<li class="active" data-id="regs_IDX_152" data-icon="regulations_icon">
				<a href="javascript:void(0);
">Office of the Comptroller of the Currency</a>
			</li>
		
		
		
		
			<li class="active" data-id="regs_IDX_153" data-icon="regulations_icon">
				<a href="javascript:void(0);
">Office of Thrift Supervision (Archive)</a>
			</li>
		
		
		
		
			<li class="active" data-id="regs_IDX_154" data-icon="regulations_icon">
				<a href="javascript:void(0);
">US Public Laws</a>
			</li>
		
		
		
		
			<li class="active" data-id="regs_IDX_155" data-icon="regulations_icon">
				<a href="javascript:void(0);
">USCS - Banks &amp; Banking - Title 12</a>
			</li>
		
		
	</ul>		
	<ul data-sid="directtosource" data-li-prefix="direct">
		
		
			<li data-id="direct_IDX_191">
				<a href="javascript:void(0);
">Business Assurance</a>
			</li>
		
		
		
		
			<li data-id="direct_IDX_156">
				<a href="javascript:void(0);
">Offline Civil &amp; Criminal Court Records (OCCCR)</a>
			</li>
		
		
		
			
				<li data-id="direct_IDX_1560" class="active">
					<a href="javascript:void(0);
">Direct-to-Source Results</a>
				</li>
			
		
	</ul>
	<ul data-sid="authserviceslinks" data-li-prefix="auth">
		
		
			<li data-id="auth_IDX_284" class="active" data-icon="authentication_services_icon">
				<a href="javascript:void(0);">InstantID<sup class="sup-reg-symbol">®</sup> Q&amp;A</a>
			</li>
		
		
		
	</ul>
</div>




					<div id="search-results-row" class="row">
    
    
        
            
                
            
            
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






<div class="new-edit-search-buttons" data-active-tabid="390e3886b548055a3e99fe43c83cc9ca"> 
    
        
            
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
<h2 class="document-icon svg-icon-normal">Criminal Records Document</h2>
<p id="source_general" class="report_title">Generated on: 10/01/2016 - 12:00 PM EST | FOR INFORMATIONAL PURPOSES ONLY | Copyright © 2016 LexisNexis.  All rights reserved.</p>
<a class="navAnchor" id="criminalAnchor"></a><a class="windowNavAnchor" id="criminal"></a><h3><span id="criminal_report_header_1" role="heading" aria-level="3">Ohio Court Document</span></h3>
<table>
<thead><tr><th colspan="2" id="criminal_records_offender_header_1">Offender information</th></tr></thead>
<tbody>
<tr>
<th id="criminal_records_name_1">Name</th>
<td headers="criminal_records_offender_header_1 criminal_records_name_1">DOE,&nbsp;JOHN</td>
</tr>
<tr>
<th id="criminal_records_address_1">Address</th>
<td headers="criminal_records_offender_header_1 criminal_records_address_1">1234 YOUR STREET <br>DAYTON, OH 45200-0000<br>
</td>
</tr>
<tr>
<th id="criminal_records_case_num_1">Case Number</th>
<td headers="criminal_records_offender_header_1 criminal_records_case_num_1">12CR000000</td>
</tr>
<tr>
<th id="criminal_records_case_filing_date_1">Case Filing Date</th>
<td headers="criminal_records_offender_header_1 criminal_records_case_filing_date_1">08/20/2012</td>
</tr>
<tr>
<th id="criminal_records_case_type_1">Case Type</th>
<td headers="criminal_records_offender_header_1 criminal_records_case_type_1">CRIMINAL</td>
</tr>
<tr>
<th id="criminal_records_county_1">County</th>
<td headers="criminal_records_offender_header_1 criminal_records_county_1">MONTGOMERY</td>
</tr>
<tr>
<th id="criminal_records__dob_1">DOB</th>
<td headers="criminal_records_offender_header_1 criminal_records__dob_1">12/XX/1977</td>
</tr>
</tbody>
</table>
<table>
<thead><tr><th colspan="2" id="criminal_records_offense_header_1">Offenses</th></tr></thead>
<tbody>
<tr><th colspan="2" id="criminal_records_detail_header_1_subheader_1" class="sub-header">Offense 1</th></tr>
<tr>
<th id="criminal_records_1_1_casefilingdate">Case Filing Date</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_1 criminal_records_1_1_casefilingdate">08/20/2012</td>
</tr>
<tr>
<th id="criminal_records_1_1_courtdescription">Court Description</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_1 criminal_records_1_1_courtdescription">COURT CODE: 0000</td>
</tr>
<tr>
<th id="criminal_records_1_1_courtcasenumber">Court Case Number</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_1 criminal_records_1_1_courtcasenumber">12CR000000</td>
</tr>
<tr>
<th id="criminal_records_1_1_courtoffense">Court Offense</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_1 criminal_records_1_1_courtoffense">OBSTRUCTING OFFICIAL BUSINESS</td>
</tr>
<tr>
<th id="criminal_records_1_1_courtplea">Court Plea</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_1 criminal_records_1_1_courtplea">NOT GUILTY</td>
</tr>
<tr>
<th id="criminal_records_1_1_courtdispositiondate">Court Disposition Date</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_1 criminal_records_1_1_courtdispositiondate">09/10/2012</td>
</tr>
<tr>
<th id="criminal_records_1_1_courtlevel">Court Level/Degree</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_1 criminal_records_1_1_courtlevel">MISDEMEANOR - SECOND DEGREE</td>
</tr>
<tr>
<th id="criminal_records_1_1_courtsentencejail">Sentence - Jail</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_1 criminal_records_1_1_courtsentencejail">Max: 30 Days</td>
</tr>
<tr><th colspan="2" id="criminal_records_detail_header_1_subheader_2" class="sub-header">Offense 2</th></tr>
<tr>
<th id="criminal_records_1_2_casefilingdate">Case Filing Date</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_2 criminal_records_1_2_casefilingdate">08/20/2012</td>
</tr>
<tr>
<th id="criminal_records_1_2_courtdescription">Court Description</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_2 criminal_records_1_2_courtdescription">COURT CODE: 1111</td>
</tr>
<tr>
<th id="criminal_records_1_2_courtcasenumber">Court Case Number</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_2 criminal_records_1_2_courtcasenumber">12CR000000</td>
</tr>
<tr>
<th id="criminal_records_1_2_courtoffense">Court Offense</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_2 criminal_records_1_2_courtoffense">MISLEAD</td>
</tr>
<tr>
<th id="criminal_records_1_2_courtplea">Court Plea</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_2 criminal_records_1_2_courtplea">GUILTY</td>
</tr>
<tr>
<th id="criminal_records_1_2_courtdisposition">Court Disposition</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_2 criminal_records_1_2_courtdisposition">GUILTY</td>
</tr>
<tr>
<th id="criminal_records_1_2_courtdispositiondate">Court Disposition Date</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_2 criminal_records_1_2_courtdispositiondate">09/10/2012</td>
</tr>
<tr>
<th id="criminal_records_1_2_courtlevel">Court Level/Degree</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_2 criminal_records_1_2_courtlevel">MISDEMEANOR - FIRST DEGREE</td>
</tr>
<tr>
<th id="criminal_records_1_2_courtsentencejail">Sentence - Jail</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_2 criminal_records_1_2_courtsentencejail">Max: 30 Days</td>
</tr>
<tr>
<th id="criminal_records_1_2_courtsentencesuspended">Sentence - Suspended</th>
<td headers="criminal_records_offense_header_1 criminal_records_detail_header_1_subheader_2 criminal_records_1_2_courtsentencesuspended">9 Days</td>
</tr>
</tbody>
</table>
<table>
<thead><tr><th colspan="2" id="criminal_records_activity_header_1">Court Activity</th></tr></thead>
<tbody><tr><td>[NONE FOUND]</td></tr></tbody>
</table>
<button type="button" class="caret_up has-click-event btn btn-link btn-tight pull-right" data-event="scroll">Top</button><p id="source_footer"><strong>Important</strong> - The Public Records and commercially available data sources used on reports have errors. Data is sometimes entered poorly, processed incorrectly and is generally not free from defect. This system should not be relied upon as definitively accurate. Before relying on any data this system supplies, it should be independently verified. For Secretary of State documents, the following data is for information purposes only and is not an official record. Certified copies may be obtained from that individual state's Department of State.</p>
</div></div>

                
                <input name="GMAP_UNIQUE_ID" value="" type="hidden">
                <input name="IMGPATH" value="/evolution/489/img/v4" type="hidden">
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






<div class="new-edit-search-buttons" data-active-tabid="390e3886b548055a3e99fe43c83cc9ca"> 
    
        
            
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
                   <img id="BannerAd" src="<TMPL_VAR HTMLPATH>/v4/img/aml.jpg" alt="Banner Ad"><!-- TODO: the img and banner should be changed to proper value or generated based on current ad. -->
               </a>
               </div>
					
						
							
						
					
				
			
		</section>
    </div>
		
			
    

    <form name="SELECT_GROUP" action="" method="post" aria-hidden="true">
        <input name="SESSION_ID" value="d3eef0442cfa53837b441f8de5c3a0b1" type="hidden">
        <input name="CSRF_TOKEN" value="dc0345f240d2a75263dee35c64abe86e" type="hidden">  
        <input name="APPLICATION_TYPE" value="aml" type="hidden">
        <input name="EVENT" value="MYACCOUNT/UPDATE_GROUP_SESSION_PORTAL" class="resettable" type="hidden">
        <input name="GROUPS" value="" class="resettable" type="hidden">
    </form>
    <footer class="">
    <p>Customer Support - 1-866-277-8407</p>
    <p><a href="javascript:void(0);">About LexisNexis</a><a href="javascript:void(0);">Terms &amp; Conditions</a><a class="last-child" href="javascript:void(0);">Contact Us</a></p>
    <p>
        <a href="javascript:void(0);">Copyright ©</a>
        <script>document.write(new Date().getFullYear())</script>2016 LexisNexis. All rights reserved.
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
    <div id="error-dialog-modal" class="modal fade" aria-live="polite" role="dialog" aria-labelledby="errorDialogModal" aria-hidden="true" data-keyboard="false" data-backdrop="static" style="display: none;">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">x</span>
                        <span class="sr-only">Close</span>
                    </button>
                    <div class="print-download-buttons pull-right padding-right-5">
                        <div class="additional-info">
                            <button type="button" data-placement="bottom" class="btn-actions btn print-icon svg-icon-tiny" data-original-title="Print Results" aria-label="Print Results" onclick="ejavascript:void(0);;"></button>
                            <span class="tooltip tooltip-35 hover">Print</span>
                        </div>
                        <div class="additional-info">
                            <button type="button" data-placement="bottom" class="btn-actions btn download-icon svg-icon-tiny" data-original-title="Download" aria-label="Download" onclick="javascript:void(0);"></button> 
                            <span class="tooltip tooltip-35 hover">Download</span>
                        </div>
                        
                    </div>
                    <h2 class="modal-title">Too Many Results Found</h2>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <div class="col col-xs-12 col-sm-12">
                        <div class="hidden" id="print-bar">
                            <div class="row">
                                <div class="col col-sm-8">
                                    <textarea class="error-dialog custom-scroll form-control" id="error-print" rows="1" placeholder="Add a Brief Note" maxlength="1000"></textarea>
                                </div>
                                <div class="col col-sm-2 pull-right">
                                    <button type="button" class="btn btn-danger" onclick="javascript:void(0);">Print</button>
                                </div>
                            </div>
                            <h2></h2>
                        </div>
                        <div class="hidden" id="download-bar">
                            <div class="row">
                                <div class="col">Download type</div>
                                <section class="col col-3">
                                    <label class="select">
                                        <select name="DOWNLOAD_FORMAT" id="DOWNLOAD_FORMAT">
                                            <option value="PDF">Adobe® PDF (.pdf)</option>
                                            <option value="CSV">Comma-separated values (.csv)</option>
                                            <option value="EXCEL">Excel (.csv)</option>
                                            <option value="HTML">HTML (.html)</option>
                                        </select>
                                    </label>
                                </section>
                            </div>
                            <fieldset>
                                <section>
                                    <div class="row">
                                        <div class="col">File name:</div>
                                        <div class="col col-5">
                                            <label class="input">
                                            <input id="DOWNLOAD_FILE_NAME" name="DOWNLOAD_FILE_NAME" value="" placeholder="Error.pdf" type="text">
                                            </label>
                                        </div>
                                    </div>
                                </section>
                            </fieldset>
                            <div class="row">
                                <div class="col col-sm-8">
                                    <textarea class="error-dialog custom-scroll form-control" id="error-download" rows="1" name="DOWNLOAD_NOTE" placeholder="Add a Brief Note" maxlength="1000"></textarea>
                                </div>
                                <div class="col col-sm-2 pull-right">
                                    <button type="button" class="btn btn-danger" onclick="javascript:void(0);">Download</button>
                                </div>
                            </div>
                            <h2></h2>
                        </div>
                        <div class="hidden" id="bridger-bar">
                            <div class="row">
                                <div class="col col-sm-2 pull-right">
                                    <button type="button" class="btn btn-danger" onclick="javascript:void(0);">Export</button>
                                </div>
                            </div>
                            <h2></h2>
                        </div>                        
                    </div>
                    
                    <div id="error-body" class="wordwrap clear">
                        
                        
                        
                        <p>
                            <strong>Your search has found too many results. Please edit your search to add more search terms.</strong>
                        </p>
                        
                        
                        
                        <p>
                            <b>Search:</b> Criminal Records
                        </p>
                        
                            <div class="search-terms-con">
                                <b>Search Terms: </b>
                                
                                    <span class="search-term-label">Last Name</span>:&nbsp;<span class="search-term-text"><strong>doe</strong></span>;
                                
                                    <span class="search-term-label">First Name</span>:&nbsp;<span class="search-term-text"><strong>john</strong></span>
                                
                            </div>
                        
                        
                        
                        
                        <input name="ERROR_MESSAGE_BLOB" value="52616e646f6d4956da413d6506494dc14900118eae1b922f496dfb83e7e1242643a145ba91235668a6dd077663eda6ff3ed68b84745ba524e62f37452266754d26efd64b7f40010229ff2f1ffd23a20d84a1628ac5dac3677136d4c8071ee11c47f0053266cd812546fb3f9c71a108a1cec9fbbce206d767b2cf929a5a477b60e25d9d6ce6de23248f5b40427def2b899c1d4799ba749aaa67ab932620d3e87a3c553dfe5c00e6de825dca525dd7eb3c5e5af6deebdbe3d79a288d941289e63e8604188ee6f1dc274a8dbae070103c2b83fbcaf8c3dad19ff00c4dc3b8b165ad54aa38fbc37f0e04ffc0a83d1535441b03590dcd0b59f83c8fe33816a15a88b207a88ba0f8b0ea93614d15ea24395622e80bbf7df699b4bf9d0b74d324dd752bc12d189d7ae47da9e5e9329e8956e43bc21e5d607585c6bc0867c8810d9f97fdfbf987c54ebef515aa9c541abaca0bf9b0715380fe7ebfd25a75a59e8fae8bc6dc05fbe3a06f97bb" type="hidden">
                    </div>

                </div>
                <div class="modal-footer">
                    <div class="text-center" id="new-edit-buttons">
                        <button type="button" class="btn btn-danger" onclick="javascript:void(0);">Edit Search</button>
                        <button type="button" class="btn btn-default" onclick="javascript:void(0);">New Search</button>
                    </div>
                </div>
            </div>
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
                        <button class="btn btn-danger" onclick="javascript:void(0);;" type="button">&nbsp;&nbsp;Yes&nbsp;&nbsp;</button>
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


		
	

<div id="new-modal" class="modal fade bs-example-modal-lg modal-white" aria-live="polite" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
<div class="modal-dialog trap hidden"><div class="modal-content">
<div class="modal-header"><button type="button" class="close hidden" data-dismiss="modal">
<span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
<h2 class="modal-title">Delete tab</h2></div>
<div class="modal-body"><div class="well well-sm"><span class="loading_icon svg-icon-x-large loading-text">Deleting tab, please wait...</span></div>
</div>
</div>
</div>
</div>
</body>
</html>