<!-- begin search_inputs_tabs.tpl -->
<!-- START Primary Tabbed Navigation -->
<div id="tabs">
<span></span>
	<ul id="tablist">
	<li class="firstTab"><a trackid="tab_myAccurint" href="http://mbcalbint03/riskmgt_dev/projects/accurint/templates/my-accurint-search-form.htm">My Accurint</a></li>
        <TMPL_IF NAME=IM_ON_SEARCH>
            <TMPL_UNLESS DELETE_PERSON>
		<li class="active"><a trackid="tab_person" href="javascript:send_event('SEARCH/SHOW_SEARCH');">People</a></li>
	    </TMPL_UNLESS>
	<TMPL_ELSE>
		<li><a trackid="tab_person" href="javascript:send_event('SEARCH/SHOW_SEARCH');">People</a></li>
	</TMPL_IF>

        <TMPL_IF NAME=IM_ON_BUS_SEARCH>
	    <TMPL_UNLESS DELETE_BUS>
	        <li class="active"><a trackid="tab_business" href="javascript:send_event('SEARCH/SHOW_BUS');">Business</a></li>
	    </TMPL_UNLESS>
	<TMPL_ELSE>
		<li><a trackid="tab_business" href="javascript:send_event('SEARCH/SHOW_BUS');">Business</a></li>
	</TMPL_IF>

	<TMPL_IF NAME=IM_ON_ASSET_SEARCH>
	  <TMPL_UNLESS DELETE_MV> 
		<li class="active"><a trackid="tab_assets" href="javascript:send_event('WS_SEARCH/SHOW_DL_REG');">Assets</a></li>
	  </TMPL_UNLESS>
	<TMPL_ELSE>
		<li><a trackid="tab_assets" href="javascript:send_event('WS_SEARCH/SHOW_DL_REG');">Assets</a></li>
	</TMPL_IF>

        <TMPL_IF NAME=IM_ON_LICENSE_SEARCH>
	  <TMPL_UNLESS DELETE_DL>
 		<li class="active"><a trackid="tab_licenses" href="javascript:send_event('WS_SEARCH/SHOW_LICENSE');">Licenses</a></li>
	  </TMPL_UNLESS>
	<TMPL_ELSE>
		<li><a trackid="tab_licenses" href="javascript:send_event('WS_SEARCH/SHOW_LICENSE');">Licenses</a></li>
	</TMPL_IF>

        <TMPL_IF NAME=IM_ON_DA_SEARCH>
	  <TMPL_UNLESS DELETE_DA_WIRELESS>
 		<li class="active"><a trackid="tab_phones" href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones</a></li>
	  </TMPL_UNLESS>
	<TMPL_ELSE>
		<li><a trackid="tab_phones" href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones</a></li>
	</TMPL_IF>

        <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>
	  <TMPL_UNLESS DELETE_BANKRUPTCY>
 		<li class="active"><a trackid="tab_courts" href="javascript:send_event('SEARCH/SHOW_BANKRUPTCY');">Courts</a></li>
	  </TMPL_UNLESS>
	<TMPL_ELSE>
		<li><a trackid="tab_courts" href="javascript:send_event('SEARCH/SHOW_BANKRUPTCY');">Courts</a></li>
	</TMPL_IF>
	</ul>
</div>

<!-- Start the secondary tab navigation -->
<!-- Two Open divs have to be created here.. Should be closed Later -->

<div id="tabBkg">
  <div id="tabBkgRight">
    <!--Start Sub Secondary Tab Navigation -->

  <div id="subtab"> 

<TMPL_IF NAME=IM_ON_SEARCH>
  <ul>

  <TMPL_UNLESS DELETE_PERSON> 
  <TMPL_IF NAME="PERSON_SEARCH">
  	<li class="active"><a trackid="subtab_person" href="javascript:send_event('SEARCH/SHOW_SEARCH');">People</a></li>
  <TMPL_ELSE>
  	<li><a trackid="subtab_person" href="javascript:send_event('SEARCH/SHOW_SEARCH');">People</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH">
  <TMPL_UNLESS DELETE_ADV> 
  <TMPL_IF NAME="ADV_SEARCH">
  	<li class="active"><a trackid="subtab_deep_skip" href="javascript:send_event('SEARCH/SHOW_ADV');">Deep Skip</a></li>
  <TMPL_ELSE>
  	<li><a trackid="subtab_deep_skip" href="javascript:send_event('SEARCH/SHOW_ADV');">Deep Skip</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_IF>

  <TMPL_UNLESS DELETE_PAW> 
  <TMPL_IF NAME="PAW_SEARCH">
  	<li class="active"><a trackid="subtab_paw" href="javascript:send_event('SEARCH/SHOW_PAW');">People At Work</a></li>
  <TMPL_ELSE>
  	<li><a trackid="subtab_deep_paw" href="javascript:send_event('SEARCH/SHOW_PAW');">People At Work</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS HIDE_INSTANTID>
  <TMPL_UNLESS DELETE_INSTANT_ID> 
  <TMPL_IF NAME="INSTANT_ID_REPORT">
      	<li class="active"><a trackid="subtab_instant_id" href="javascript:send_event('SEARCH/SHOW_INSTANT_ID');">InstantID</a></li>
  <TMPL_ELSE>
      	<li><a trackid="subtab_instant_id" href="javascript:send_event('SEARCH/SHOW_INSTANT_ID');">InstantID</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

  <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
  <TMPL_UNLESS DONT_SHOW_NEWS>
  <TMPL_UNLESS DELETE_NEWS> 
  <TMPL_IF NAME="NEWS_SEARCH">
      	<li class="active"><a trackid="subtab_news" href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></li>
  <TMPL_ELSE>
      	<li><a trackid="subtab_" href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DEATH> 
  <TMPL_IF NAME="DEATH_SEARCH">
      	<li class="active"><a trackid="subtab_death" href="javascript:send_event('WS_SEARCH/SHOW_DEATH');">Death Records</a></li>
  <TMPL_ELSE>
      	<li><a trackid="subtab_death" href="javascript:send_event('WS_SEARCH/SHOW_DEATH');">Death Records</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_POWER_BOOLEAN> 
  <TMPL_IF NAME="BOOLEAN_SEARCH">
        <li class="active"><a trackid="subtab_boolean" href="javascript:send_event('SEARCH2/SHOW_BOOLEAN');">Power Search</a></li>
  <TMPL_ELSE>
        <li><a trackid="subtab_death" href="javascript:send_event('SEARCH2/SHOW_BOOLEAN');">Power Search</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <!--<TMPL_UNLESS LE>
  <TMPL_UNLESS GOV>
  <TMPL_UNLESS DELETE_EMAIL> 
  <TMPL_IF NAME="EMAIL_SEARCH">
      	<li class="active"><a trackid="subtab_email" href="javascript:send_event('SEARCH/SHOW_EMAIL');"></a></li>
  <TMPL_ELSE>
      	<li><a trackid="subtab_email" href="javascript:send_event('SEARCH/SHOW_EMAIL');"></a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>
  </TMPL_UNLESS>-->

   </ul>
</TMPL_IF>

<TMPL_IF NAME=IM_ON_BUS_SEARCH>
  <ul>

  <TMPL_UNLESS DELETE_BUS>
  <TMPL_IF NAME=BUS_SEARCH>
    <li class="active"><a trackid="subtab_bus" href="javascript:send_event('SEARCH/SHOW_BUS');">Business Search</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_bus" href="javascript:send_event('SEARCH/SHOW_BUS');">Business Search</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_CORPORATION>
  <TMPL_IF NAME=CORPORATION_SEARCH>
    <li class="active"><a trackid="subtab_corp_filings" href="javascript:send_event('SEARCH/SHOW_CORPORATION');">Corporation Filings</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_corp_filings" href="javascript:send_event('SEARCH/SHOW_CORPORATION');">Corporation Filings</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_UCC>
  <TMPL_IF NAME=UCC_SEARCH>
    <li class="active"><a trackid="subtab_ucc" href="javascript:send_event('SEARCH/SHOW_UCC');">UCC Filings</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_ucc" href="javascript:send_event('SEARCH/SHOW_UCC');">UCC Filings</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_WHOIS>
  <TMPL_IF NAME=WHOIS_SEARCH>
    <li class="active"><a trackid="subtab_who_is" href="javascript:send_event('SEARCH/SHOW_WHOIS');">Who Is</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_who_is" href="javascript:send_event('SEARCH/SHOW_WHOIS');">Who Is</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_D_AND_B>
  <TMPL_IF NAME=D_AND_B_SEARCH>
    <li class="active"><a trackid="subtab_d_and_b" href="javascript:send_event('SEARCH/SHOW_D_AND_B');">Dun & Bradstreet</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_d_and_b" href="javascript:send_event('SEARCH/SHOW_D_AND_B');">Dun & Bradstreet</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DELCO>
  <TMPL_IF NAME=DELCO_SEARCH>
    <li class="active"><a trackid="subtab_delco" href="javascript:send_event('SEARCH/SHOW_DELCO');">Delaware Corporations</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_delco" href="javascript:send_event('SEARCH/SHOW_DELCO');">Delaware Corporations</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

 <!--<TMPL_UNLESS DONT_SHOW_NEWS>
  <TMPL_UNLESS DELETE_BUS_NEWS>
  <TMPL_IF NAME=BUS_NEWS_SEARCH>
    <li class="active"><a trackid="subtab_bus_in_news" href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_bus_in_news" href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

  
  <TMPL_UNLESS HIDE_BUS_INSTANTID>
  <TMPL_UNLESS DELETE_BUS_INSTANT_ID>
  <TMPL_IF NAME="BUS_INSTANT_ID_REPORT">
    <li class="active"><a trackid="subtab_bus_instant_id" href="javascript:send_event('SEARCH/SHOW_BUS_INSTANT_ID');">Business InstantID</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_bus_instant_id" href="javascript:send_event('SEARCH/SHOW_BUS_INSTANT_ID');">Business InstantID</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

  <TMPL_UNLESS HIDE_BUS_CREDIT>
  <TMPL_UNLESS DELETE_BUS_CREDIT>
  <TMPL_IF NAME=BUS_CREDIT_SEARCH>
    <li class="active"><a trackid="subtab_bus_credit" href="javascript:send_event('SEARCH/');">Business Credit</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_bus_credit" href="javascript:send_event('SEARCH/SHOW_BUS_CREDIT');">Business Credit</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>-->

 </ul>
</TMPL_IF>


<TMPL_IF NAME=IM_ON_ASSET_SEARCH>
 <ul>

  <TMPL_UNLESS DELETE_MV> 
  <TMPL_IF NAME=DL_REG_SEARCH>
    <li class="active"><a trackid="subtab_mv" href="javascript:send_event('WS_SEARCH/SHOW_DL_REG');">Motor Vehicles</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_mv" href="javascript:send_event('WS_SEARCH/SHOW_DL_REG');">Motor Vehicles</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_ASSESSMENT> 
  <TMPL_IF NAME=PROPERTY_SEARCH>
    <li class="active"><a trackid="subtab_prop" href="javascript:send_event('SEARCH/SHOW_PROP');">Property Assessments</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_prop" href="javascript:send_event('SEARCH/SHOW_PROP');">Property Assessments</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DEEDS> 
  <TMPL_IF NAME=PROPERTY_DEED_SEARCH>
    <li class="active"><a trackid="subtab_deeds" href="javascript:send_event('SEARCH/SHOW_PROP_DEED');">Property Deeds</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_deeds" href="javascript:send_event('SEARCH/SHOW_PROP_DEED');">Property Deeds</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_VESSEL> 
  <TMPL_IF NAME=MERCHANT_VESSEL_SEARCH>
    <li class="active"><a trackid="subtab_watercraft" href="javascript:send_event('SEARCH/SHOW_VESSEL');">Watercraft</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_watercraft" href="javascript:send_event('SEARCH/SHOW_VESSEL');">Watercraft</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_AIRCRAFT> 
  <TMPL_IF NAME=AIRCRAFT_SEARCH>
    <li class="active"><a trackid="subtab_aircraft" href="javascript:send_event('SEARCH/SHOW_AIRCRAFT');">FAA Aircraft</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_aircraft" href="javascript:send_event('SEARCH/SHOW_AIRCRAFT');">FAA Aircraft</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

 </ul>
</TMPL_IF> 


<TMPL_IF NAME=IM_ON_LICENSE_SEARCH>
 <ul>

  <TMPL_UNLESS DELETE_DL> 
  <TMPL_IF NAME="LICENSE_SEARCH">
    <li class="active"><a trackid="subtab_dl_license" href="javascript:send_event('SEARCH/SHOW_LICENSE');">Driver Licenses</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_dl_license" href="javascript:send_event('SEARCH/SHOW_LICENSE');">Driver Licenses</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_PROF_LICENSE> 
  <TMPL_IF NAME="PROF_LICENSE_SEARCH">
    <li class="active"><a trackid="subtab_prof_license" href="javascript:send_event('SEARCH/SHOW_PROF_LICENSE');">Professional Licenses</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_prof_license" href="javascript:send_event('SEARCH/SHOW_PROF_LICENSE');">Professional Licenses</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_FAA_PILOT> 
  <TMPL_IF NAME="FAA_PILOT_SEARCH">
    <li class="active"><a trackid="subtab_faa" href="javascript:send_event('SEARCH/SHOW_FAA_PILOT');">FAA Pilots</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_faa" href="javascript:send_event('SEARCH/SHOW_FAA_PILOT');">FAA Pilots</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_HUNTING_LICENSE> 
  <TMPL_IF NAME="HUNTING_LICENSE_SEARCH">
    <li class="active"><a trackid="subtab_hunt_fish_license" href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE');">Hunting/Fishing Licenses</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_hunt_fish_license" href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE');">Hunting/Fishing Licenses</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_CONCEALED_WEAPON> 
  <TMPL_IF NAME="CONCEALED_WEAPON_SEARCH">
    <li class="active"><a trackid="subtab_con_weapons" href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON');">Concealed Weapons Permits</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_con_weapons" href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON');">Concealed Weapons Permits</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_VOTER_REGISTRATION> 
  <TMPL_IF NAME="VOTER_REGISTRATION_SEARCH">
    <li class="active"><a trackid="subtab_voter" href="javascript:send_event('SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registrations</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_voter" href="javascript:send_event('SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registrations</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <!--<TMPL_UNLESS DELETE_FIREARMS> 
  <TMPL_IF NAME="FIREARMS_SEARCH">
    <li class="active"><a trackid="subtab_firearms" href="javascript:send_event('SEARCH/SHOW_FIREARMS');">Federal Firearms & Explosives</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_firearms" href="javascript:send_event('SEARCH/SHOW_FIREARMS');">Federal Firearms & Explosives</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DEA> 
  <TMPL_IF NAME="DEA_SEARCH">
    <li class="active"><a trackid="subtab_dea" href="javascript:send_event('SEARCH/SHOW_DEA');">DEA Controlled Substances</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_dea" href="javascript:send_event('SEARCH/SHOW_DEA');">DEA Controlled Substances</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS IRB>
  <TMPL_UNLESS DELETE_MVR> 
  <TMPL_IF NAME="MVR_REPORT">
    <li class="active"><a trackid="subtab_mvr" href="javascript:send_event('SEARCH/SHOW_MVR');">MVR Reports</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_mvr" href="javascript:send_event('SEARCH/SHOW_MVR');">MVR Reports</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>-->

 </ul>
</TMPL_IF>


<TMPL_IF NAME=IM_ON_DA_SEARCH>
 <ul>

<TMPL_UNLESS NAME="DA_ONLY">
  <TMPL_UNLESS DELETE_DA_WIRELESS> 
  <TMPL_IF NAME=DA_WIRELESS_SEARCH>
    <li class="active"><a trackid="subtab_da_wireless" href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_da_wireless" href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
</TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DA_BASIC> 
  <TMPL_IF NAME=DA_BASIC_SEARCH>
    <TMPL_IF NAME="DA_ONLY"><script>erase_cookie('token');</script></TMPL_IF>
    <li class="active"><a trackid="subtab_basic_lookup" href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_basic_lookup" href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_PHONE_IDENTIFIER_SEARCH> 
  <TMPL_IF NAME=PHONE_IDENTIFIER_SEARCH>
    <li class="active"><a trackid="subtab_phone_identifier" href="javascript:send_event('SEARCH2/SHOW_PHONE_IDENTIFIER');">Reverse Phone Search Plus</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_phone_identifier" href="javascript:send_event('SEARCH2/SHOW_PHONE_IDENTIFIER');">Reverse Phone Search Plus</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DA_REVERSE> 
  <TMPL_IF NAME=DA_REVERSE_SEARCH>
    <li class="active"><a trackid="subtab_reverse_lookup" href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_reverse_lookup" href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_IF ENABLE_LOCATE_PLUS_SEARCH>
  <TMPL_UNLESS DELETE_LOCATE_PLUS> 
  <TMPL_IF NAME=LOCATE_PLUS_SEARCH>
    <li class="active"><a trackid="subtab_png" href="javascript:send_event('SEARCH/SHOW_PNG');">Phone Network Gateway</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_png" href="javascript:send_event('SEARCH/SHOW_PNG');">Phone Network Gateway</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_IF>

  <TMPL_UNLESS LE>
  <TMPL_UNLESS GOV>
  <TMPL_UNLESS DELETE_CANADIAN_PHONES> 
  <TMPL_IF NAME=CANADIAN_PHONES_SEARCH>
    <li class="active"><a trackid="subtab_canadian_phones" href="javascript:cp_modal('Canadian Phones Legal Disclaimer','',0.6,1,1,700);">Canadian Phones</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_canadian_phones" href="javascript:cp_modal('Canadian Phones Legal Disclaimer','',0.6,1,1,700);">Canadian Phones</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

 </ul>
</TMPL_IF>

      	<!--<li class="active"><a trackid="subtab_" href="javascript:send_event('SEARCH/');"></a></li>-->

<TMPL_IF NAME=IM_ON_LEGAL_SEARCH>
 <ul>

  <TMPL_UNLESS DELETE_BANKRUPTCY> 
  <TMPL_IF NAME="BANKRUPTCY_SEARCH">
    <li class="active"><a trackid="subtab_bankruptcy" href="javascript:send_event('SEARCH/SHOW_BANKRUPTCY');">Bankruptcy</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_bankruptcy" href="javascript:send_event('SEARCH/SHOW_BANKRUPTCY');">Bankruptcy</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_CRIM> 
  <TMPL_IF NAME="CRIM_SEARCH">
    <li class="active"><a trackid="subtab_crim" href="javascript:send_event('SEARCH/SHOW_CRIM');">Criminal Records</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_crim" href="javascript:send_event('SEARCH/SHOW_CRIM');">Criminal Records</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_CIVIL_COURT> 
  <TMPL_IF NAME="CIVIL_COURT_SEARCH">
    <li class="active"><a trackid="subtab_civil_courts" href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT');">Civil Courts</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_civil_courts" href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT');">Civil Courts</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_ACCIDENT> 
  <TMPL_IF NAME="ACCIDENT_SEARCH">
    <li class="active"><a trackid="subtab_accident" href="javascript:send_event('SEARCH/SHOW_ACCIDENT');">Florida Accidents</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_accident" href="javascript:send_event('SEARCH/SHOW_ACCIDENT');">Florida Accidents</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_PATRIOTACT> 
  <TMPL_IF NAME="PATRIOTACT_SEARCH">
    <li class="active"><a trackid="subtab_patriot_act" href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');">USA PATRIOT Act</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_patriot_act" href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');">USA PATRIOT Act</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_SEXPREDATOR> 
  <TMPL_IF NAME="SEXPREDATOR_SEARCH">
    <li class="active"><a trackid="subtab_sex_pred" href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR');">Sexual Offenders</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_sex_pred" href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR');">Sexual Offenders</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_OFFICIAL_RECORDS> 
  <TMPL_IF NAME="OFFICIAL_RECORDS_SEARCH">
    <li class="active"><a trackid="subtab_official_records" href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS');">Official Records</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_official_records" href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS');">Official Records</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <!--<TMPL_UNLESS DELETE_MARRIAGE> 
  <TMPL_IF NAME="MARRIAGE_SEARCH">
    <li class="active"><a trackid="subtab_marriage" href="javascript:send_event('SEARCH/SHOW_MARRIAGE');">Marriages / Divorces</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_marriage" href="javascript:send_event('SEARCH/SHOW_MARRIAGE');">Marriages / Divorces</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_FORECLOSURE> 
  <TMPL_IF NAME="FORECLOSURE_SEARCH">
    <li class="active"><a trackid="subtab_foreclosure" href="javascript:send_event('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_foreclosure" href="javascript:send_event('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_LIEN> 
  <TMPL_IF NAME="LIEN_SEARCH">
    <li class="active"><a trackid="subtab_liens" href="javascript:send_event('SEARCH/SHOW_LIENS');">Liens & Judgments</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_liens" href="javascript:send_event('SEARCH/SHOW_LIENS');">Liens & Judgments</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>-->

  <TMPL_UNLESS DELETE_JAILBOOKING> 
  <TMPL_IF NAME="JAILBOOKING_SEARCH">
    <li class="active"><a trackid="subtab_jailbooking" href="javascript:send_event('SEARCH/SHOW_JAILBOOKING');">Jail Bookings</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_jailbooking" href="javascript:send_event('SEARCH/SHOW_JAILBOOKING');">Jail Bookings</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>



 </ul>
</TMPL_IF>


</div>

<!-- end search_inputs_tabs.tpl -->
