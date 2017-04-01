<!-- begin ins/main_menu.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html><head>
<title>LexisNexis&reg; | Accurint Main Menu</title>

<link href="<tmpl_var csspath>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/accurintHomePage.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<!--<script src="<TMPL_VAR NAME='JSPATH'>/rotate_banners2.js"></script>-->

<TMPL_INCLUDE NAME="main_menu_banners.tpl">

<script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/misc.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>

<TMPL_IF NAME=LOGOUT_TIMEOUT>
<script>
var temp_timeout = setTimeout (function(){ javascript:send_event('LOGOUT'); }, <TMPL_VAR NAME=LOGOUT_TIMEOUT>);
</script>
</TMPL_IF>

</head>

<body onLoad="LN.misc.appInit(<TMPL_IF BLIND>0<TMPL_ELSE><TMPL_IF SKIP_RECENT_SEARCH_AJAX>0<TMPL_ELSE>1</TMPL_IF></TMPL_IF>); <TMPL_IF NAME="ALERTING_NEW_COUNT">menu_prompt('<TMPL_VAR NAME="ALERTING_NEW_COUNT">');</TMPL_IF>">

<!-- BEGIN HD DIV for header -->
<TMPL_INCLUDE NAME="search_header.tpl">

<!-- BEGIN wrapper DIV -->
<div id="wrapper">

    <form name="MAIN_MENU" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <INPUT type=hidden NAME="EVENT" VALUE="">
    <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
    <INPUT type=hidden NAME="HIDE_COURT_POPUP" VALUE="">
    <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="MYACCTAB" VALUE="0">
    <INPUT type=hidden NAME="PMTAB" VALUE="0">
    <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><INPUT type=hidden NAME="ADVANCED_SEARCH" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>"></TMPL_IF>
    <TMPL_IF NAME="ALERTING_NEW_COUNT">
    <INPUT type=hidden NAME="ALERTING_NEW_COUNT" id="ALERTING_NEW_COUNT" VALUE="<TMPL_VAR NAME=ALERTING_NEW_COUNT>">
    </TMPL_IF>
    <INPUT type=hidden NAME="ACTION_ADMIN" VALUE="<TMPL_VAR NAME=ACTION_ADMIN>">


<table width="100%">
  <tbody><tr>
    <td id="containerLeft" align="left" valign="top">

      <div class="greeting">
    	<strong>Today is <TMPL_VAR NAME=CURRENT_DATE></strong> | <a href="javascript:void(0);" onMouseOver="$('sec_rem').style.display = 'inline';setOpacity('sec_rem',0);fadeIn('sec_rem',100,2);">Security Reminder</a><br>
        You last signed in on <a class="adver" href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);"><TMPL_VAR NAME=LAST_LOGIN_DATE></a>
      </div>
      <!--
      <div id="quick_search">
        <div class="quickRT"></div>
        <strong>Database Search:</strong>
          <input name="quick_search_text" class="qsinput" value="Enter SSN, Phone #, Address or Company Name" type="text">
          <input name="search" id="searchBtn" value="search" type="button">
      </div>
      -->
      <div id="newsHdr">
        <div class="NewsHeader">
          <h2 align="left">New Products &amp; Announcements</h2>
          <div align="left"><span><a href="javascript:send_event('LOGIN/SHOW_WELCOME');">View Past Announcements</a></span></div>
        </div>
      </div>
      <div id="newsBlock">
        <div class="newsRightBkg">
            <ul>
		<li><strong><a href="javascript:open_banner(1);">Now even more right-party contacts from the LexisNexis&reg; Batch Wizard!</a></strong></li>
		<li><strong><a href="javascript:open_banner(3);">Important Security enhancement - Multi Factor Authentication</a></strong></li>
		<li><strong><a href="javascript:open_banner(2);">Important Security Message</a></strong></li>
                <li><strong><a href="http://www.accurint.com/pdf/accurintguide.pdf" target="_blank">Learn More! Click here to download a complimentary Getting Started Guide.</a></strong></li>
		<li><strong><a href="javascript:open_banner(0);">Prescription History Reports Now Available -- <small>CLICK HERE TO LEARN MORE</small></a></strong></li>
            </ul>
            <br>
            <!-- break for padding -->
<TMPL_IF DOWNGRADE_USER_TO_5B>
  <TMPL_INCLUDE NAME="downgrade_user_to_5b.tpl">
</TMPL_IF>
        </div>
      </div>
      <div id="newsBot">
        <div class="newsBottom"></div>
      </div>
      <div id="clear"></div>


<!-- START Accurint searches table -->
     <table id="searches" cellpadding="2" cellspacing="0">
      <tbody><tr>
         <td colspan="7"><h2>Available Accurint Searches</h2></td>
        <tr>
          <td colspan="7"><div id="searchTitle">My Accurint <span class="smallblack">- Favorite Searches</span></div></td>
        </tr>
      <tr>
        <td colspan="7" style="padding-bottom:10px">
	<span>
            <table border="0" cellspacing="0" cellpadding="2" id="fav">
              <tr>
                <td>|</td>
                 <TMPL_LOOP FAV_LOOP>
		    <td valign="top">
		    <TMPL_IF DISABLED><TMPL_VAR SLABEL>
		    <TMPL_ELSE><a href="javascript:myacc('<TMPL_VAR SEVENT>');"><TMPL_VAR SLABEL></a></TMPL_IF>
		    </td> <td valign="top">|</td>
		 </TMPL_LOOP>
	     </tr>
            </table>
	 </span> <TMPL_IF FAV_DISABLED>
                 <div class="medblack" style="color:#ed1c24; padding-left:12px">
		 A favorite search is no longer available and has been disabled in My Accurint. <br />
		 If this is incorrect please contact your Administrator.</div>
		 </TMPL_IF>
         </td>
      </tr>


      <tr>
         <td width="23%"><div id="searchTitle">Health Care</div> </td>
         <td width="2%">&nbsp;</td>
         <td width="23%"><div id="searchTitle">Businesses</div></td>
         <td width="2%">&nbsp;</td>
         <td width="23%"><div id="searchTitle">Licenses</div></td>
         <td width="2%">&nbsp;</td>
         <td><div id="searchTitle">Courts</div></td>
      </tr>
      <tr>
         <td valign="top">
         <ul>
            <li><TMPL_IF DISABLE_PROVIDER>Provider Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PROVIDER');">Provider Search</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_SANCTION>Provider Sanction Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SANCTION');">Provider Sanction Search</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DEA>DEA Controlled Substances<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DEA');">DEA Controlled Substances</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_OABMS>American Board of Medical Specialties<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_OABMS');">American Board of Medical Specialties</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_BUS_QUALIFIER_REPORTS>Comprehensive Health Care Business Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_QUALIFIER');">Comprehensive Health Care Business Search</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_IND_QUALIFIER_REPORTS>Comprehensive Health Care Provider Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_IND_QUALIFIER');">Comprehensive Health Care Provider Report</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_NPI_SEARCH>NPI Data Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NPI');">NPI Data Search</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CLIA_SEARCH>CLIA Certificate Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CLIA');">CLIA Certificate Search</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_NCPDP_SEARCH>NCPDP Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NCPDP');">NCPDP Search</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DISCLOSED_ENTITY>Disclosed Entity Report<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_DISCLOSED_ENTITY');">Disclosed Entity Report</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_PROVIDER_REPORT_CARD>Provider Report Card<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PROVIDER_REPORT_CARD');">Provider Report Card</a></TMPL_IF></li>
         </ul>

         <br>
         <div id="searchTitle">People</div>
         <ul>
            <li><TMPL_IF DISABLE_PERSON>Person Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEARCH');">Person Search</a></TMPL_IF></li>
            <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><li><TMPL_IF DISABLE_ADV>Advanced Person<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ADV');">Advanced Person</a></TMPL_IF></li></TMPL_IF>
            <li><TMPL_IF DISABLE_PAW>People at Work<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PAW');">People at Work</a></TMPL_IF></li>
	    <TMPL_UNLESS NAME=HIDE_CARRIER_DISCOVERY_CONTRIBUTOR><li><TMPL_IF DISABLE_CARRIER_DISCOVERY>Carrier Discovery<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CARRIER_DISCOVERY');">Carrier Discovery</a></TMPL_IF></li></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_INSTANT_ID>InstantID<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_INSTANT_ID');">InstantID</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_PATRIOTACT>USA PATRIOT Act<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');">USA PATRIOT Act</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_VOTER_REGISTRATION>Voter Registrations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registrations</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_SEXPREDATOR>Sexual Offenders<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR');">Sexual Offenders</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DEATH>Death Records<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_DEATH');">Death Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_EMAIL>Email Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_EMAIL');">Email Search</a></TMPL_IF></li>
            <TMPL_IF SHOW_SOCIAL_REPORT><li><TMPL_IF DISABLE_SOC_REPORT>Social Network Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SOC');">Social Network Report</a></TMPL_IF></li></TMPL_IF>
          <TMPL_UNLESS DO_NOT_DISPLAY_KBA>
		  <TMPL_UNLESS DELETE_CUSTOM_KBA>
		  <li><TMPL_IF DISABLE_KBA>ID Verification Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ID_VERIFY');">ID Verification Report</a></TMPL_IF></li>
		  </TMPL_UNLESS>
		  </TMPL_UNLESS>
		  
          </ul>
	 <br>

         <div id="searchTitle">SIRIS</div>
         <ul>
	   <li><a class="mainmenu" href="https://nhcaa.lexisnexis.com" target="_blank">SIRIS</a></li>
	 </ul>
	 <br>

	 </td>
         <td valign="top">&nbsp;</td>
         <td valign="top">
         <ul>
            <li><TMPL_IF DISABLE_BUS>Business Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS');">Business Search</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CORPORATION>Corporation Filings<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_CORPORATION');">Corporation Filings</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_UCC>National UCC Filings<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_UCC');">National UCC Filings</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_WHOIS>Internet Domains<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_WHOIS');">Internet Domains</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_D_AND_B>Dun &amp; Bradstreet<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_D_AND_B');">Dun &amp; Bradstreet</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DELCO>Delaware  Corporations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DELCO');">Delaware  Corporations</a></TMPL_IF></li>
	    <TMPL_UNLESS IS_RESELLER><li><TMPL_IF DISABLE_BUS_CREDIT>Business Credit<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_CREDIT');">Business Credit</a></TMPL_IF></li></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_BUS_INSTANT_ID>Business InstantID<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_INSTANT_ID');">Business InstantID</a></TMPL_IF></li>
            <TMPL_UNLESS RESTRICT_LNLP_CONTENT><li><TMPL_IF DISABLE_DBGLOBAL>D & B Global Market Identifiers<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DBGLOBAL');">D & B Global Market Identifiers</a></TMPL_IF></li></TMPL_UNLESS>
            <TMPL_UNLESS RESTRICT_LNLP_CONTENT><li><TMPL_IF DISABLE_SEC>SEC Filings Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEC');">SEC Filings Search</a></TMPL_IF></li></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_OSHA>OSHA Investigative Reports<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_OSHA');">OSHA Investigative Reports</a></TMPL_IF></li>
         </ul>
         <br>

         <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
         <div id="searchTitle">News</div>
         <ul>
            <li><TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_BUS_NEWS>Businesses in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></TMPL_IF></li>

            <li><TMPL_IF DISABLE_INSTOPICS_NEWS>Insurance Topics in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_INSTOPICS_NEWS');">Insurance Topics in the News</a></TMPL_IF></li>

            <li><TMPL_IF DISABLE_DO_NEWS>Deaths & Obituaries in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DO_NEWS');">Deaths & Obituaries in the News</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_ARCHIVED_NEWS>Archived News <TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ARCHIVED_NEWS');">Archived News</a></TMPL_IF></li>

         </ul>
         </td>
         </TMPL_UNLESS>

	 <td valign="top">&nbsp;</td>
         <td valign="top">
         <ul>
           <li><TMPL_IF DISABLE_DL>Driver Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_LICENSE');">Driver Licenses</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_FAA_PILOT>FAA Pilots<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FAA_PILOT');">FAA Pilots</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_HUNTING_LICENSE>Hunting/Fishing Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE');">Hunting/Fishing Licenses</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_CONCEALED_WEAPON>Concealed Weapons Permits<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON');">Concealed Weapons Permits</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_FIREARMS>Federal Firearms &amp; Explosives<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FIREARMS');">Federal Firearms &amp; Explosives</a></TMPL_IF></li>
           <TMPL_UNLESS IS_RESELLER><li><TMPL_IF DISABLE_MVR>MVR Reports (Driving Records)<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_MVR');">MVR Reports (Driving Records)</a></TMPL_IF></li></TMPL_UNLESS>
           <li><TMPL_IF DISABLE_PROF_LICENSE>Professional Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a></TMPL_IF></li>
         </ul>

         <br>

         <div id="searchTitle">Assets</div>
         <ul>
            <li><TMPL_IF DISABLE_MV>Motor Vehicles<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DL_REG');">Motor Vehicles</a></TMPL_IF></li>
            <TMPL_UNLESS HIDE_RT_MVR><li><TMPL_IF DISABLE_RT_MVR>Real-Time Motor Vehicle Registrations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_RT_MVR');">Real-Time Motor Vehicle Registrations</a></TMPL_IF></li></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_ASSESSMENT>Property Assessments<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PROP');">Property Assessments</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DEEDS>Property Deeds<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PROP_DEED');">Property Deeds</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_VESSEL>Watercraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VESSEL');">Watercraft</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_AIRCRAFT>FAA Aircraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_AIRCRAFT');">FAA Aircraft</a></TMPL_IF></li>

         </ul>
	 <br>
         <TMPL_IF SHOW_IDM_ANALYSIS_SECTION>
           <div id="searchTitle">Analytics</div>
           <ul>
             <TMPL_IF SHOW_IDM_VISUALIZATION>
               <li>
                 <a href="javascript:show_post_popup('SEARCH/SHOW_IDM_VISUALIZATION','IDMVisualizationWin',850,650,1,1,1,1,1,0);">Identity Management Dashboard</a>
               </li>
             </TMPL_IF>
             <TMPL_IF SHOW_BIZ_ANALYTICS_HOLD>  <!-- hold on first release -->
               <li>
                 <a href="javascript:show_post_popup('SEARCH/SHOW_BIZ_ANALYTICS','BusAnalyticsWin',850,650,1,1,1,1,1,0);">Business Analytics Dashboard</a>$
               </li>
             </TMPL_IF>
           </ul>
           <br>
         </TMPL_IF>

         <div id="searchTitle">Record Retrieval</div>
         <ul>
           <TMPL_IF NAME="EMSI_APPROVED">
           <li><TMPL_IF DISABLE_EMSI>Medical, Employment and Business Records<TMPL_ELSE><a href=" javascript:med_win('<TMPL_VAR NAME=ACTION>?EVENT=SEARCH/SHOW_EMSI&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>','MedWin');" >Medical, Employment and Business Records</a></TMPL_IF></li>
           <TMPL_ELSE>
           <li><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','EnableWindow',620,550,0,0,0,0,0,0,'','emsi_enable_main');">Medical, Employment and Business Records</a></li>
           </TMPL_IF>
         </ul>



         </td>
         <td valign="top" width="1%">&nbsp;</td>
         <td valign="top">
         <ul>
            <li><TMPL_IF DISABLE_BANKRUPTCY>Bankruptcy<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BANKRUPTCY');">Bankruptcy</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CRIM>State & Local Criminal Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CRIM');">State & Local Criminal Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CIVIL_COURT>State Civil Courts<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT');">State Civil Courts</a></TMPL_IF></li>
              <TMPL_UNLESS IS_RESELLER>
              <TMPL_IF SHOW_CS_REPORT>
            <li>
              <TMPL_IF DISABLE_COURT>
              <a href="javascript:court_ad()">Court Search Wizard</a>
              <TMPL_ELSE>
              <a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','CourtPopupWin','600','600',0,0,0,1,1,0,'','court_wizard_select_individual');">Court Search Wizard</a>
              </TMPL_IF>
            </li>
              </TMPL_IF>
              </TMPL_UNLESS>
            <li><TMPL_IF DISABLE_OFFICIAL_RECORDS>Official Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS');">Official Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_MARRIAGE>Marriages/Divorces<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_MARRIAGE');">Marriages/Divorces</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_FORECLOSURE>Foreclosures<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_LIEN>Liens &amp; Judgments<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_LIENS');">Liens &amp; Judgments</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_FED_CRIM_COURT>Federal Criminal Court Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FED_CRIM_COURT');">Federal Criminal Court Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_FED_CIVIL_COURT>Federal Civil Court Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FED_CIVIL_COURT');">Federal Civil Court Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_ACCIDENT>National Motor Vehicle Accidents<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ACCIDENT');">National Motor Vehicle Accidents</a></TMPL_IF></li>
            </ul>
         <br>

         <div id="searchTitle">Phones</div>
         <ul>
            <li><TMPL_IF DISABLE_DA_WIRELESS>Phones Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DA_BASIC>Basic Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DA_REVERSE>Reverse Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CANADIAN_PHONES>Canadian Phones<TMPL_ELSE><a href="javascript:cp_modal('Canadian Phones Legal Disclaimer','',0.6,1,1,700);">Canadian Phones</a></TMPL_IF></li>
         </ul>

         <br/>

         <div id="searchTitle">Batching</div>
         <ul>
	  <TMPL_UNLESS IS_RESELLER>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('BATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">People</a><TMPL_ELSE>People</TMPL_UNLESS></li>
          </TMPL_UNLESS>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('PHONEBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Waterfall Phones and Address</a><TMPL_ELSE>Waterfall Phones and Address</TMPL_UNLESS></li>
            <TMPL_UNLESS DELETE_CONTACT_PLUS>
            <li>
              <TMPL_UNLESS DISABLE_BATCH>            
                <TMPL_IF DISABLE_CONTACT_PLUS>
                  Contact Plus Phones and Address<strong><font color="#ed1c24">&nbsp;NEW!</font></strong>
                <TMPL_ELSE>
                  <a href="javascript:show_post_popup('CONTACTPLUSPHONEADDRESSBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');" title="Contact Plus Search">Contact Plus Phones and Address</a><strong><font color="#ed1c24">&nbsp;NEW!</font></strong>
                </TMPL_IF>
              <TMPL_ELSE>
                Contact Plus Phones and Address<strong><font color="#ed1c24">&nbsp;NEW!</font></strong>
              </TMPL_UNLESS>       
            </li>
            </TMPL_UNLESS>             
<TMPL_IF IS_BATCH_ADMIN>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('SURECONTACTBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">SureContact Batch</a><TMPL_ELSE>SureContact Batch</TMPL_UNLESS></li>
            <li><TMPL_UNLESS DISABLE_WATCHDOG><a href="javascript:show_post_popup('WATCHDOG/START','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Accurint Watchdog</a><TMPL_ELSE><a href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/watchdog/watchdog_ad.html','WatchDogPopupWin','550','',0,0,0,1,1,0);void(0);")>Accurint Watchdog</a></TMPL_UNLESS></li>
		<li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('INSTANTIDBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">InstantID</a><TMPL_ELSE>InstantID</TMPL_UNLESS></li>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('PHONESPLUSBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Phones Plus</a><TMPL_ELSE>Phones Plus</TMPL_UNLESS></li>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('OFACBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">USA PATRIOT Act</a><TMPL_ELSE>USA PATRIOT Act</TMPL_UNLESS></li>
                <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('INSTANTIDBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Business InstantID</a><TMPL_ELSE>Business InstantID</TMPL_UNLESS></li>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('BATCH/BUS_START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Business</a><TMPL_ELSE>Business</TMPL_UNLESS></li>

                    <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('BATCH/BUS_DUEX_START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Business Collectors</a><TMPL_ELSE>Business Collectors</TMPL_UNLESS></li>
</TMPL_IF>
            <TMPL_IF ALLOW_CDM>
               <INPUT type=hidden NAME="CDM_COMPANY_ID" VALUE="">
               <li><a href="javascript:show_post_popup('CDM/START_CDM','Core_Data_Management',1150,800,1,1,1,1,1,0);">Core Data Management</a></li>
            </TMPL_IF>
         </ul>

       </td>
     </tr>
     <tr>
         <td valign="top">&nbsp;</td>
         <td valign="top">&nbsp;</td>
         <td valign="top">&nbsp;</td>
         <td valign="top">&nbsp;</td>
         <td valign="top">&nbsp;</td>
         <td valign="top">&nbsp;</td>
         <td valign="top">&nbsp;</td>
     </tr>
 </tbody></table>
 <!-- END Accurint searches table -->
</td>
    <td valign="top">


<div id="containerRight">

	<!-- Start My Account section -->
	<TMPL_INCLUDE NAME="search_inputs_myaccount_menu.tpl">
	<!-- End My Account section -->

	<!-- Start Recent Searches section -->
	<TMPL_INCLUDE NAME="search_inputs_recent_searches.tpl">
	<!-- END DIV for right column content container -->

        <!-- Start Security section -->
        <div id="myAccount">
          <span style="color:#ffffff;font-weight:bold;font-size:10pt;">Security News</span>
          <div style="font-size:8pt;">
          <div style="position:relative;top:10px;left:155px;margin-bottom:-35px;width:50px;height:49px;"><img src="<TMPL_VAR NAME=IMGPATH>/security_lock.gif" border="0" /></div>
          <b>New Security Center!</b><br>&nbsp; - <a href="javascript:void(0)" onClick="window.open('http://www.accurint.com/security_center/index.html?source=<TMPL_VAR NAME=APPLICATION_TYPE>');" title="Security Center">CLICK HERE</a>
          <br><br>
          <TMPL_INCLUDE NAME="security_tips.tpl"></div>
          </div>
        </div>
        <div id="myAccountBot"></div>
        <!-- End Security section -->

</div>
</td>
</tr>
</tbody></table>
</div><!-- END wrapper DIV -->
<div id="sec_rem" onMouseOver="this.style.display = 'inline';" onMouseOut="this.style.display = 'none';">
<br/>
<center><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'>&nbsp; &nbsp; <b>SECURITY REMINDER</b>&nbsp; &nbsp; <img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></center><br />
If your last login session was not on <b><TMPL_VAR NAME=LAST_LOGIN_DATE></b>, please contact
<TMPL_IF NAME="SHOW_ADMIN_CONTACT">
<a href="javascript:show_post_popup('LOGIN/SHOW_ADMIN_POPUP','ADMIN_CONTACT','475','610',0,0,0,1,1,0,'','display_admin_contact');"><b>your system administrator.</b></a>
<TMPL_ELSE>
your system administrator.
</TMPL_IF>
</div>

<div id="systemWorking" style="position:absolute;top:350px;left:450px;z-index:100;display:none;">
<img id="sWimg" src="<TMPL_VAR NAME=IMGPATH>/bg_searching.gif" alt="Running Search.." />
</div>
<!-- START Footer -->
<TMPL_INCLUDE NAME="main_menu_footer.tpl">
<div id="new_alerts"></div>

</form>
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</body></html>
