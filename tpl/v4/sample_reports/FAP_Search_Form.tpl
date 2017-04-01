<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Find a Person Search Form</title>

    <!-- Bootstrap Core CSS -->
    <link href="<TMPL_VAR HTMLPATH>/v4/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    
 

    <!-- Custom CSS -->
    <link href="<TMPL_VAR HTMLPATH>/v4/css/4-col-portfolio.css" rel="stylesheet">
	<!--<link rel="stylesheet" href="<TMPL_VAR HTMLPATH>/v4/css/font-awesome.min.css">-->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
 
	<script src="<TMPL_VAR HTMLPATH>/v4/js/jquery.js"></script>
    <script src="<TMPL_VAR HTMLPATH>/v4/js/sample_reports.js"></script>


</head>

<body class="" data-pinterest-extension-installed="cr1.37">
  <header style="
"><span class="pull-right" style="
"><div class="btn-group btn-group2" role="group" style="
"> 
      <!---Group--->
      <button id="btnGroup" type="button" class="btn btn-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Groups: Group 1 <span class="caret"></span> </button>
      <ul aria-labelledby="btnGroup" role="menu" class="dropdown-menu">
        <li><a href="javascript:void(0);">Action</a></li>
        <li><a href="javascript:void(0);">Another action</a></li>
        <li><a href="javascript:void(0);">Something else here</a></li>
      </ul>
    </div>

<div role="group1" class="btn-group btn-group2"> 
      <!---Gears--->
      <button style="
    /* margin-left: 15px; */
" aria-expanded="false" data-toggle="dropdown" class="btn btn-link dropdown-toggle" type="button"> Mark Marsupial <img src="<TMPL_VAR HTMLPATH>/v4/img/svg/settings.svg" alt="" height="12" width="12"> <span class="caret"></span> </button>
      <ul class="dropdown-menu" role="menu" style="
">
        <li><a href="javascript:void(0);">Preferences</a></li>
        <li><a href="javascript:void(0);">Administration</a></li>
        <li><a href="javascript:void(0);">Disabled Searches</a></li>
        <li class="divider"></li>
        <li><a href="javascript:void(0);">Announcements</a></li>
      </ul>
    </div>

<div class="btn-group btn-group2" role="group2">
      <button type="button" class="btn btn-link" data-toggle="dropdown" aria-expanded="false" style="
    /* margin-left: 15px; */
">
      <a class="btn btn-link" href="/3"><img src="<TMPL_VAR HTMLPATH>/v4/img/svg/sign-out.png" alt="Sign Out" height="" width=""> Sign Out</a>
      </button>
    </div></span><img alt="" src="<TMPL_VAR HTMLPATH>/v4/img/datademo_header.png" style="
"></header>
    <!-- Navigation -->
<nav class="navbar navbar-inverse" role="navigation" style="        
">
        <div class="container pull-left">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;" aria-expanded="false">
                <ul class="nav navbar-nav pull-left">
                    <li>
                        <a href="#" style="
                   ">History</a>
                    </li>
                    
                    
                </ul>
<form class="navbar-form navbar-right" role="search">
        <button class="btn dropdown btn-default2" style="
    margin-right: -9px;
">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" style="
    color: #6D6E71;
"><img src="<TMPL_VAR HTMLPATH>/v4/img/svg/additionalquicksearch.svg" alt="Search" height="12" width="12"><span class="caret" style="
"></span></a>
        <ul class="dropdown-menu" role="menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="#">Separated link</a></li>
          <li class="divider"></li>
          <li><a href="#">One more separated link</a></li>
        </ul>
        </button>
        <div class="form-group" style="">
          <input type="text" class="form-control" placeholder="Enter SSN" style="height:28px">
          <input type="text" class="form-control" placeholder="Enter Reference ID" style="height:28px">
        </div>
        <button type="submit" class="btn btn-success" style="
    color: #FFF;
    background-color: #192850;
    /* margin-right: 3px; */  
    height: 27px;  
    width: 30px;  padding: 2px;
    margin-top: -12px;
    margin-left: -9px;
    border-radius: 0px 5px 5px 0px;
">Go</button>
      </form>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

<!-- Favs/Frequent --><ul id="nav-fav-bar" class="nav">
    <li class="srchHome">
        <div class="btn-group" style="
    /* margin-top: -10px; */
">
        <button class="dropdown-toggle btn-default" style=" " rel="tooltip" data-original-title="Home" onclick="javascript:send_event('SEARCH/SHOW_MENU');">
            <img src="<TMPL_VAR HTMLPATH>/v4/img/svg/home.svg" alt="Home" height="15" width="15">
        </button>
        <button id="search-menu" data-toggle="dropdown" class="dropdown-toggle btn-default" rel="tooltip" data-original-title="Search Menu" style="
" aria-expanded="false">
            Search Menu
            <img src="<TMPL_VAR HTMLPATH>/v4/img/svg/caret-down-blue.png" alt="Caret Down" height="" width="">
        </button>
        <div id="srchHome-dropdown" class="dropdown-menu dropdown-menu-large row anim-fadeInDown">
            <div class="tabs-left">
                <ul class="nav nav-tabs tabs-left" id="searchMenu"><li class="active"><a class="leftm" data-id="fa-user" href="/FAP-Search-Form.html#tab-fa-user" data-toggle="tab"><i class="fa fa-user"></i>&nbsp;PERSON</a></li><li><a class="leftm" data-id="fa-building" href="/FAP-Search-Form.html#tab-fa-building" data-toggle="tab"><i class="fa fa-building"></i>&nbsp;BUSINESS</a></li><li><a class="leftm" data-id="fa-tags" href="/FAP-Search-Form.html#tab-fa-tags" data-toggle="tab"><i class="fa fa-tags"></i>&nbsp;PROPERTY &amp; ASSETS</a></li><li><a class="leftm" data-id="fa-file-text-o" href="/FAP-Search-Form.html#tab-fa-file-text-o" data-toggle="tab"><i class="fa fa-file-text-o"></i>&nbsp;FILINGS</a></li><li><a class="leftm" data-id="fa-newspaper-o" href="/FAP-Search-Form.html#tab-fa-newspaper-o" data-toggle="tab"><i class="fa fa-newspaper-o"></i>&nbsp;NEWS</a></li><li><a class="leftm" data-id="fa-globe" href="/FAP-Search-Form.html#tab-fa-globe" data-toggle="tab"><i class="fa fa-globe"></i>&nbsp;INTERNATIONAL</a></li><li><a class="leftm" data-id="fa-caret-square-o-right" href="/FAP-Search-Form.html#tab-fa-caret-square-o-right" data-toggle="tab"><i class="fa fa-caret-square-o-right"></i>&nbsp;DIRECT-TO-SOURCE</a></li></ul>
                <div class="tab-content" id="searchMenuData"><div class="tab-pane" id="tab-fa-user" style="display: block;"><div style="padding-left: 6px;padding-top: 8px;"><div class="dd nestable"><ul><li><a href="javascript:pm_tab_v3('SEARCH/SHOW_FAP');">Find a Person</a></li><li><a href="javascript:void(0);">InstantID® Consumer Verification with Red Flags Rule Report</a></li><li><a href="javascript:void(0);">LexisNexis® Identity Report</a></li><li><a href="javascript:void(0);">FraudPoint® Score</a></li><li><a href="javascript:pm_tab_v3('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></li><li><a href="javascript:void(0);">OFAC &amp; Other Watch Lists</a></li><li><a href="javascript:void(0);">Statewide Public Records Person Search</a></li><li><a href="javascript:pm_tab_v3('SEARCH/SHOW_LICENSE');">Driver Licenses</a></li><li><a href="javascript:pm_tab_v3('SEARCH2/SHOW_MARRIAGE');">Marriage &amp; Divorce Records</a></li><li><a href="javascript:void(0);">People At Work</a></li><li><a href="javascript:pm_tab_v3('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a></li><li><a href="javascript:void(0);">Voter Registrations</a></li><li><a href="javascript:void(0);">Email Address/Social Network Report</a></li></ul></div></div></div><div class="tab-pane" id="tab-fa-building"><div style="padding-left: 6px;padding-top: 8px;"><div class="dd nestable"><ul><li><a href="javascript:pm_tab_v3('SEARCH2/SHOW_FAB');">Find a Business</a></li><li><a href="javascript:void(0);">InstantID® Business Verification with FraudDefender®</a></li><li><a href="javascript:void(0);">D&amp;B Global Market Identifiers</a></li><li><a href="javascript:void(0);">Experian Business Data</a></li><li><a href="javascript:void(0);">Statewide Public Records Business Search</a></li><li><a href="javascript:void(0);">D&amp;B FEIN</a></li><li><a href="javascript:void(0);">LexisNexis® Corporate Affiliations™</a></li><li><a href="javascript:void(0);">Mergerstat</a></li><li><a href="javascript:void(0);">Secretary of State Filings</a></li><li><a href="javascript:void(0);">Fictitious Business Names/DBA</a></li><li><a href="javascript:void(0);">DE Secretary of State</a></li></ul></div></div></div><div class="tab-pane" id="tab-fa-tags"><div style="padding-left: 6px;padding-top: 8px;"><div class="dd nestable"><ul><li><a href="javascript:void(0);">Find a Location</a></li><li><a href="javascript:pm_tab_v3('SEARCH/SHOW_REAL_PROPERTY');">Real Property (Property Assessments, Deeds &amp; Mortgages)</a></li><li><a href="javascript:void(0);">Property History</a></li><li><a href="javascript:void(0);">Mortgage Fraud Report</a></li><li><a href="javascript:void(0);">Motor Vehicle Registrations</a></li><li><a href="javascript:void(0);">Aircraft Registrations</a></li><li><a href="javascript:void(0);">Boat Registrations</a></li></ul></div></div></div><div class="tab-pane" id="tab-fa-file-text-o"><div style="padding-left: 6px;padding-top: 8px;"><div class="dd nestable"><ul><li><a href="javascript:void(0);">Bankruptcies, Judgments &amp; Liens</a></li><li><a href="javascript:void(0);">UCC Liens</a></li><li><a href="javascript:void(0);">Federal Civil &amp; Criminal Docket Summaries</a></li><li><a href="javascript:void(0);">State Civil &amp; Criminal Filings</a></li><li><a href="javascript:void(0);">Criminal Records</a></li><li><a href="javascript:pm_tab_v3('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a></li><li><a href="javascript:void(0);">Jury Verdicts &amp; Settlements</a></li><li><a href="javascript:pm_tab_v3('SEARCH2/SHOW_ACCIDENT');">Florida Accidents</a></li><li><a href="javascript:void(0);">Mortgage &amp; Financial Service Sanctions</a></li><li><a href="javascript:void(0);">Sexual Offenders</a></li></ul></div></div></div><div class="tab-pane" id="tab-fa-newspaper-o"><div style="padding-left: 6px;padding-top: 8px;"><div class="dd nestable"><ul><li><a href="javascript:void(0);">News</a></li><li><a href="javascript:pm_tab_v3('SEARCH/SHOW_NEG_NEWS');">Negative News</a></li><li><a href="javascript:void(0);">Deaths &amp; Obituaries in the News</a></li><li><a href="javascript:void(0);">Bankers' News</a></li></ul></div></div></div><div class="tab-pane" id="tab-fa-globe"><div style="padding-left: 6px;padding-top: 8px;"><div class="dd nestable"><ul><li><a href="javascript:void(0);">WorldCompliance</a></li><li><a href="javascript:void(0);">Canadian Phones</a></li><li><a href="javascript:void(0);">All Company Information (excluding Investext &amp; D&amp;B)</a></li><li><a href="javascript:void(0);">Passport Validation</a></li></ul></div></div></div><div class="tab-pane" id="tab-fa-caret-square-o-right"><div style="padding-left: 6px;padding-top: 8px;"><div class="dd nestable"><ul><li><a href="javascript:void(0);">Business Assurance Records</a></li><li><a href="javascript:void(0);">Offline Criminal &amp; Civil Court Records</a></li><li><a href="javascript:void(0);">IRS Verify</a></li></ul></div></div></div></div>
            </div>
            <div id="main-menu-dropdown-ad"></div>
        </div>
        </div>
    </li>
            
    <li id="nav-fav-sel">
        
        <!--
        <select id="nav-fav-select" onchange="refresh_favoritesBar()">
            <option value="nav-fav-favorite">Favorites</option>
            <option value="nav-fav-frequent">Frequent</option>
        </select>
        -->
        <div class="btn-group btn-group2">
            <button id="nav-fav-select" data-toggle="dropdown" class="dropdown-toggle" rel="tooltip" data-original-title="Favorites/Frequent"><img src="<TMPL_VAR HTMLPATH>/v4/img/svg/FavoriteSearches-Selected-SMALL.svg" alt="Favorite Search" height="15" width="15"><span> Favorites </span><img src="<TMPL_VAR HTMLPATH>/v4/img/svg/caret-down.png" alt="Caret Down" height="" width=""></button>
            <ul id="nav-fav-dropdown" class="dropdown-menu tab-dropdown anim-fadeInDown" style="margin-top:0;">
                <li><a href="#" onClick="javascript:refresh_favoritesBar(this); return false;">Favorites</a></li>
                <li><a href="#" onClick="javascript:refresh_favoritesBar(this); return false;">Frequent</a></li>
                <li><a href="#" onClick="javascript:refresh_favoritesBar(this); return false;">My Tasks</a></li>
            </ul>
        </div>
    </li><li class="nav-fav-search nav-fav-first"><a href="javascript:void(0);">Find a Person</a></li><li class="nav-fav-search"><a href="javascript:void(0);">Find a Business</a></li><li class="nav-fav-search"><a href="javascript:void(0);">Phones Plus</a></li><li class="nav-fav-search"><a href="javascript:void(0);">Negative News</a></li><li class="nav-fav-search"><a href="javascript:void(0);">Bankruptcies, Judgments &amp; Liens</a></li><li class="nav-fav-search" style="display: none;"><a href="javascript:void(0);">State Civil &amp; Criminal Filings</a></li>
    <li id="nav-fav-viewall" style="float:right;" class="">
        <button class="btn btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="
"><img src="<TMPL_VAR HTMLPATH>/v4/img/svg/Chevron-down.png" alt="Down" height="" width=""></button>
        <ul class="dropdown-menu dropdown-menu-right tab-dropdown anim-fadeInDown" style="margin-top:0;">
            <li role="presentation" class="dropdown-header">More Favorite Searches</li>
            <li class="tab-dropdown-item"><a href="javascript:void(0);"><i data-searchtype="Crim Filings" class="fa fa-institution"></i>&nbsp;State Civil &amp; Criminal Filings</a></li>
        </ul>
    </li>
</ul>

    
    <!-- Begin Content -->
<div class="container-fluid">
<div class="row">
  <!-- tabs row-->
<div class="widget-body" style="
">
        

        <ul id="history-tab-ul" class="nav nav-tabs" style="border-bottom:0;">
            
            
                
                    
                
                
                
                <li style="" data-islocked="0" data-isactive="1" data-paramli="SEARCH/SHOW_DA_WIRELESS" class="btn-group btn-group2 history-tab dropdown active form-tab"> <div class="btn-group" data-paramrecent="SEARCH/SHOW_DA_WIRELESS"> <button class="tab-crit btn btn-lg btn-danger" onclick="#"> <img src="<TMPL_VAR HTMLPATH>/v4/img/svg/People2.svg" alt="Find a Person" height="" width=""> Find a Person</button><button class="remove-tab btn btn-lg btn-icon-subbtn btn-danger" onclick="#"><i class="fa fa-times"></i> </button> </div> </li><li class="history-tab dropdown" id="history-more-tabs">
                    <button data-toggle="dropdown" class="btn btn-lg btn-default dropdown-toggle font-md bg-color-blueDark txt-color-white" href="javascript:void(0);" style="" rel="tooltip" data-original-title="Manage Tabs" aria-expanded="false"><img src="<TMPL_VAR HTMLPATH>/v4/img/svg/list.png" alt="list" height="" width=""></button>
                    <ul id="tab-options-dropdown" class="dropdown-menu anim-fadeInDown">
                        <li>
                            <a onclick="javascript:close_all_tabs();" data-toggle="tab" class="tab-option">Close All Tabs</a>
                        </li>
                        <li>
                            <a onclick="javascript:close_all_inactive_tabs();" data-toggle="tab" class="tab-option">Close All Tabs but the Active Tab</a>
                        </li>
                        <li role="presentation" class="dropdown-header">Open Tabs (<span id="open-tab-count">1</span>)</li>
                        
                            
                        
                    <li class="tab-dropdown-item lnkRecent more-tabs-item more-form-tab" onclick="javascript:if($('.popup-link:hover').length === 0){tab_results_request('SEARCH/SHOW_DA_WIRELESS');}" data-paramli="SEARCH/SHOW_DA_WIRELESS"> <span> <i class="fa fa-user"></i> Phones Plus<i class="btn btn-default fa fa-unlock pull-right popup-link" onclick="javascript:lock_tab('SEARCH/SHOW_DA_WIRELESS')"></i> <i class="btn btn-default fa fa-external-link pull-right popup-link" onclick="run_history_popup_search();"></i> </span> <span>Phones Plus</span> </li></ul>
                </li>
                
            
            
        </ul>
    </div>
  
  
  
<!--Holds content in box-->
<div class="col-lg-12 col-md-12 col-sm-12 report-container">
  
  
  <div class="col-lg-12 innercontent">
  <div class="col-lg-12 col-md-12 col-sm-12"><div class="col-lg-7 form-rightside"><H1><img alt="" src="<TMPL_VAR HTMLPATH>/v4/img/svg/people.svg" style="
    " data-pin-nopin="true"> Find a Person Search Results</H1>
        <a href="#" role="button" aria-expanded="false" style="
    color: #E52726;
"></a>
        
        </button><span class="pull-right med-blue" style="margin: -20px -10px 0 0;color: #192850;"><img src="<TMPL_VAR HTMLPATH>/v4/img/svg/help.svg" alt="Help Searches" height="15" width="15"></span></h1>
  <form>
        <div class="row">
            <div class="col-xs-4">
                <input type="text" class="form-control" data-toggle="tooltip" placeholder="SSN" title="" data-original-title="Enter Social Security Number">
            </div><div class="col-xs-4">
                <input type="text" class="form-control" data-toggle="tooltip" title="" data-original-title="Enter LexID" placeholder="LexID">
            </div>
            
            
            
        </div>
        
        <br><div class="row">
            <div class="col-xs-3">
                <input type="text" class="form-control" data-toggle="tooltip" placeholder="Last Name" title="" data-original-title="Enter Last Name">
            </div>
            <div class="col-xs-4">
                <input type="text" class="form-control" data-toggle="tooltip" title="" data-original-title="Enter LexID" placeholder="First Name">
            </div> 
            <div class="col-xs-5">
                <input type="text" class="form-control" data-toggle="tooltip" title="" data-original-title="Enter LexID" placeholder="Middle Name/Initial">
            </div>
            
        </div>
        
         
<br><div class="row">
            <div class="col-xs-12">
                <input type="text" class="form-control" placeholder="Street">
            </div>
            
            
        </div><br>
<div class="row">
            <div class="col-xs-5">
                <input type="text" class="form-control" placeholder="City">
            </div>
            <div class="col-xs-3">
                <select class="form-control">
				<option value="State" selected="">State</option>
                <option value="AL-Alabama">AL-Alabama</option>
                <option value="AK-Alaska">AK-Alaska</option>
                <option value="AZ-Arizona ">AZ-Arizona </option>
                <option value="AR-Arkansas ">AR-Arkansas </option>
                <option value="CA-California ">CA-California </option>
                <option value="CO-Colorado ">CO-Colorado </option>
                <option value="CT-Connecticut ">CT-Connecticut </option>
                <option value="DE-Delaware ">DE-Delaware </option>
                <option value="FL-Florida ">FL-Florida </option>
                <option value="GA-Georgia ">GA-Georgia </option>
                <option value="HI-Hawaii ">HI-Hawaii </option>
                <option value="ID-Idaho ">ID-Idaho </option>
                <option value="IL-Illinois ">IL-Illinois </option>
                <option value="IN-Indiana ">IN-Indiana </option>
                <option value="IA-Iowa ">IA-Iowa </option>
                <option value="KS-Kansas ">KS-Kansas </option>
                <option value="KY-Kentucky ">KY-Kentucky </option>
                <option value="LA-Louisiana ">LA-Louisiana </option>
                <option value="ME-Maine ">ME-Maine </option>
                <option value="MD-Maryland ">MD-Maryland </option>
                <option value="MA-Massachusetts ">MA-Massachusetts </option>
                <option value="MI-Michigan ">MI-Michigan </option>
                <option value="MN-Minnesota ">MN-Minnesota </option>
                <option value="MS-Mississippi ">MS-Mississippi </option>
                <option value="MO-Missouri ">MO-Missouri </option>
                <option value="MT-Montana ">MT-Montana </option>
                <option value="NE-Nebraska ">NE-Nebraska </option>
                <option value="NV-Nevada ">NV-Nevada </option>
                <option value="NH-New Hampshire ">NH-New Hampshire </option>
                <option value="NJ-New Jersey ">NJ-New Jersey </option>
                <option value="NM-New Mexico ">NM-New Mexico </option>
                <option value="NY-New York ">NY-New York </option>
                <option value="NC-North Carolina ">NC-North Carolina </option>
                <option value="ND-North Dakota ">ND-North Dakota </option>
                <option value="OH-Ohio ">OH-Ohio </option>
                <option value="OK-Oklahoma ">OK-Oklahoma </option>
                <option value="OR-Oregon ">OR-Oregon </option>
                <option value="PA-Pennsylvania ">PA-Pennsylvania </option>
                <option value="RI-Rhode Island ">RI-Rhode Island </option>
                <option value="SC-South Carolina ">SC-South Carolina </option>
                <option value="SD-South Dakota ">SD-South Dakota </option>
                <option value="TN-Tennessee ">TN-Tennessee </option>
                <option value="TX-Texas ">TX-Texas </option>
                <option value="UT-Utah ">UT-Utah </option>
                <option value="VT-Vermont ">VT-Vermont </option>
                <option value="VA-Virginia ">VA-Virginia </option>
                <option value="WA-Washington ">WA-Washington </option>
                <option value="WV-West Virginia ">WV-West Virginia </option>
                <option value="WI-Wisconsin ">WI-Wisconsin </option>
                <option value="WY-Wyoming">WY-Wyoming</option>
              </select>
            </div>
            <div class="col-xs-4">
                <input type="text" class="form-control" placeholder="Zip + 4">
            </div>
        </div><br>

<div class="row">
            <div class="col-xs-5">
                <input type="text" class="form-control" placeholder="Phone">
            </div>
            <div class="col-xs-3">
                
            </div>
            <div class="col-xs-4">
                
            </div>
        </div><br>
<div class="row">
            <div class="col-xs-2">
                <label class="radio-inline"><input type="radio" value="">Date of Birth</label></div><div class="col-xs-3" style="
    margin-left: -50px;
"><input type="text" class="form-control" data-toggle="tooltip" title="" data-original-title="Enter Date of Birth" placeholder="Date of Birth"></div>
<div class="col-xs-2" style="
">
                <label class="radio-inline"><input type="radio" value="">Age Range</label></div><div class="col-xs-3" style="
    margin-left: -50px;
"><select class="form-control">
                    <option>Select</option>
                </select></div>
        </div>

<div class="row">

            </div>
      
    </form>
<a class="btn btn-link collapsed" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
Additional Search Criteria  <span class="fa  fa-chevron-circle-down"></span> 
            </a>
<div class="col-xs-12 col-lg-12 pull-right" style="
    margin-bottom: 15px;
">
    
    

<div class="pull-right"><a href="javascript:void(0);" class="btn btn-danger" style="
    margin-right: 5px;
">Search</a><button type="submit" class="btn btn-default">Cancel</button></div><br>
 

</div>

</div><div class="col-lg-5"><div class="col-lg-12 col-lg-12 form-right-side"><div class="row pull-right sourcenav" style="
                        
"><a href="#" style="
    margin: 5px;
"> Sample Report </a> |<a href="#" style="
    margin: 5px;
"> Source</a> | <a href="#" style="
    margin: 5px;
"> Make This My Start Page </a></div>
  

  
  <div class="row">
  	<div class="col-xs-12">
    <input type="text" class="form-control" placeholder="Reference ID">
  	</div><br><br>
  
  	<div class="col-md-12" style="
    margin: -8px;
">
    <br><hr style="
"><br>
  </div>


<div class="col-lg-12"> 
<form>
        <div class="row">
            <div class="col-md-12"> 

        <div class="row">
            <div class="col-xs-12">
                <strong> Additional Content</strong>
            </div>
            
            
        </div>
        
        <div class="row">
            <div class="col-xs-7">
                Include Bankruptcies
            </div>
            
            <div class="col-xs-5">
                <div class="btn-group btn-toggle pull-right" style="
"> 
   <button class="btn btn-sm btn-default">ON</button>
    <button class="btn btn-sm active btn-success">OFF</button>
    </div>
            </div>
        </div>
        
         
<div class="row">
            <div class="col-xs-12">
                <strong>Form Settings</strong>
            </div>
            
            
        </div>
<div class="row">
            <div class="col-xs-8">Include similar-sounding last names</div>
            
            <div class="col-xs-4">
                <div class="btn-group btn-toggle pull-right" style="
"> 
   <button class="btn btn-sm btn-default">ON</button>
    <button class="btn btn-sm active btn-success">OFF</button>
    </div>
            </div>
        </div>
<div class="row">
            <div class="col-xs-8">Include nicknames of first name</div>
            
            <div class="col-xs-4">
                <div class="btn-group btn-toggle pull-right" style="
"> 
   <button class="btn btn-sm btn-default">ON</button>
    <button class="btn btn-sm active btn-success">OFF</button>
    </div>
            </div> <br>
        </div>
<div class="row">
            <div class="col-xs-7">
              Single Name entry fields
            </div>
            
            <div class="col-xs-5">
                <div class="btn-group btn-toggle pull-right" style="
"> 
   <button class="btn btn-sm btn-default">ON</button>
    <button class="btn btn-sm active btn-success">OFF</button>
    </div>
            </div>
        </div>

<div class="row">
            <div class="col-xs-7">
               Single City, State, Zip fields
            </div>
            
            <div class="col-xs-5">
                <div class="btn-group btn-toggle pull-right" style="
"> 
   <button class="btn btn-sm btn-default">ON</button>
    <button class="btn btn-sm active btn-success">OFF</button>
    </div>
            </div>
        </div>



    


</div>
            
            
        </div>
        
        <br>
        
         

<br>
<br>
<br>

<br>



    </form>


</div>


  
 
</div></div></div>

  
 
</div>
  </div>
  
  
  </div></div>
        
        
        

        
        


        

        
        
        

        
        

        

        

        
        
        

        

        
        

</div>
    <footer>
                                                Customer Support - 1-866-277-8407<br>
About LexisNexis | Terms &amp; Conditions | Preference | Change Password | Contact Us<br>
Copyright © 2015 LexisNexis. All rights reserved.
     
     
            <!-- /.row -->
        </footer><!-- /.container -->

    <!-- jQuery -->
<script src="<TMPL_VAR HTMLPATH>/v4/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
<script src="<TMPL_VAR HTMLPATH>/v4/js/bootstrap-switch.js"></script>

<!-- Bootstrap Core JavaScript --> 
<script src="<TMPL_VAR HTMLPATH>/v4/js/bootstrap.min.js"></script> 
<script src="<TMPL_VAR HTMLPATH>/v4/js/bootstrap-switch.min.js"></script> 

<!-- script to initialize tool tips ---> 

<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});
</script>

</body></html>