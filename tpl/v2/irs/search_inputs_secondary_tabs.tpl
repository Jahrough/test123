
<!-- Start irs/search_inputs_secondary_tabs.tpl -->

  <div id="subtab"> 

<TMPL_IF NAME=IM_ON_SEARCH>
  <ul>

  <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH">
  <TMPL_UNLESS DELETE_ADV> 
  <TMPL_IF NAME="ADV_SEARCH">
  	<li class="active"><a trackid="subtab_deep_skip" href="javascript:send_event('SEARCH/SHOW_ADV');">Advanced Person</a></li>
  <TMPL_ELSE>
  	<li><a trackid="subtab_deep_skip" href="javascript:send_event('SEARCH/SHOW_ADV');">Advanced Person</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_IF>

  <TMPL_UNLESS DELETE_PERSON> 
  <TMPL_IF NAME="PERSON_SEARCH">
  	<li class="active"><a trackid="subtab_person" href="javascript:send_event('SEARCH/SHOW_SEARCH');">People</a></li>
  <TMPL_ELSE>
  	<li><a trackid="subtab_person" href="javascript:send_event('SEARCH/SHOW_SEARCH');">People</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_IF SHOW_SOCIAL_REPORT> 
    <TMPL_UNLESS DELETE_SOC_REPORT> 
      <TMPL_IF VIRTUAL_ID_SEARCH>
    <li class="active"><a trackid="subtab_virtual_id" href="javascript:send_event('SEARCH/SHOW_VIRTUAL_ID');">Virtual Identity</a></li>
      <TMPL_ELSE>
    <li><a trackid="subtab_deep_virtual_id" href="javascript:send_event('SEARCH/SHOW_VIRTUAL_ID');">Virtual Identity</a></li>
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
  <TMPL_IF NAME="POWER_BOOLEAN_SEARCH">
        <li class="active"><a trackid="subtab_power_boolean" href="javascript:send_event('SEARCH2/SHOW_POWER_BOOLEAN');">Power Search</a></li>
  <TMPL_ELSE>
        <li><a trackid="subtab_power_boolean" href="javascript:send_event('SEARCH2/SHOW_POWER_BOOLEAN');">Power Search</a></li>
  </TMPL_IF>
    </TMPL_UNLESS>

  <TMPL_UNLESS LE>
  <TMPL_UNLESS GOV>
  <TMPL_UNLESS DELETE_EMAIL> 
  <TMPL_IF NAME="EMAIL_SEARCH">
      	<li class="active"><a trackid="subtab_email" href="javascript:send_event('SEARCH/SHOW_EMAIL');">Email Search</a></li>
  <TMPL_ELSE>
      	<li><a trackid="subtab_email" href="javascript:send_event('SEARCH/SHOW_EMAIL');">Email Search</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

   </ul>
</TMPL_IF>

<TMPL_IF NAME=IM_ON_BUS_SEARCH>
  <ul>

  <TMPL_UNLESS DELETE_BUS>
  <TMPL_IF NAME=BUS_SEARCH>
    <li class="active"><a trackid="subtab_bus" href="javascript:send_event('SEARCH/SHOW_BUS');">Business</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_bus" href="javascript:send_event('SEARCH/SHOW_BUS');">Business</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_CORPORATION>
  <TMPL_IF NAME=CORPORATION_SEARCH>
    <li class="active"><a trackid="subtab_corp_filings" href="javascript:send_event('SEARCH/SHOW_CORPORATION');">Corporation</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_corp_filings" href="javascript:send_event('SEARCH/SHOW_CORPORATION');">Corporation</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_UCC>
  <TMPL_IF NAME=UCC_SEARCH>
    <li class="active"><a trackid="subtab_ucc" href="javascript:send_event('SEARCH/SHOW_UCC');">UCC Filings</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_ucc" href="javascript:send_event('SEARCH/SHOW_UCC');">UCC Filings</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
  <TMPL_UNLESS DELETE_SEC>
  <TMPL_IF NAME=SEC_SEARCH>
    <li class="active"><a trackid="subtab_bus_sec" href="javascript:send_event('SEARCH/SHOW_SEC');">SEC Filings Search</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_bus_sec" href="javascript:send_event('SEARCH/SHOW_SEC');">SEC Filings Search</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_BUS_CREDIT>
  <TMPL_IF NAME=BUS_CREDIT_SEARCH>
    <li class="active"><a trackid="subtab_experian_business" href="javascript:send_event('SEARCH/SHOW_EXPERIAN');">Experian Business</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_experian_business" href="javascript:send_event('SEARCH/SHOW_EXPERIAN');">Experian Business</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_IF NAME=TRADEMARK_SEARCH>
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME=FICTIOUS_SEARCH>
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
    <li>
  </TMPL_IF>
  </TMPL_IF>
  <a trackid="subtab_more" onMouseOut='$("moreBusSearches").style.display = "none";' onmouseover='this.style.cursor="pointer";$("moreBusSearches").style.display = "block";$("moreBusSearches").style.left = (findPos(this) -8) + "px";setOpacity("moreBusSearches",0);fadeIn("moreBusSearches",100,2);'>More Searches <img src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro_blue.gif" alt="More Business Searches" width="10" height="6" /></a></li>

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

  <TMPL_UNLESS DELETE_REAL_PROPERTY> 
  <TMPL_IF NAME=REAL_PROPERTY_SEARCH>
    <li class="active"><a trackid="subtab_realproperty" href="javascript:send_event('SEARCH/SHOW_REAL_PROPERTY');">Property (Property Assessments, Deeds &amp; Mortgages)</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_realproperty" href="javascript:send_event('SEARCH/SHOW_REAL_PROPERTY');">Property (Property Assessments, Deeds &amp; Mortgages)</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_AVM>
  <TMPL_IF NAME=AVM_SEARCH>
    <li class="active"><a trackid="tab_avms" href="javascript:send_event('SEARCH/SHOW_AVM');">Automated Valuation Models</a></li>
  <TMPL_ELSE>
    <li><a trackid="tab_avms" href="javascript:send_event('SEARCH/SHOW_AVM');">Automated Valuation Models</a></li>
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

  <TMPL_IF NAME="CONCEALED_WEAPON_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="VOTER_REGISTRATION_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="FIREARMS_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE> 
  <TMPL_IF NAME="DEA_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE> 
  <TMPL_IF NAME="MVR_REPORT">
    <li class="active" id="subtab_more">
  <TMPL_ELSE> 
    <li>
  </TMPL_IF> 
  </TMPL_IF> 
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  <a trackid="subtab_more" onMouseOut='$("moreLicenseSearches").style.display = "none";' onmouseover='this.style.cursor="pointer";$("moreLicenseSearches").style.display = "block";$("moreLicenseSearches").style.left = (findPos(this) -8) + "px";setOpacity("moreLicenseSearches",0);fadeIn("moreLicenseSearches",100,2);'>More Searches <img src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro_blue.gif" alt="More License Searches" width="10" height="6" /></a></li>

 </ul>
</TMPL_IF>


<TMPL_IF NAME=IM_ON_DA_SEARCH>
 <ul>

  <!--
  <TMPL_UNLESS DELETE_RT_PHONE>
  <TMPL_IF NAME=RT_PHONE_SEARCH>
    <li class="active"><a trackid="subtab_rt_phone" href="javascript:send_event('SEARCH/SHOW_RT_PHONE');">Real-Time Phones</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_rt_phone" href="javascript:send_event('SEARCH/SHOW_RT_PHONE');">Real-Time Phones</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  -->
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

  <TMPL_UNLESS DELETE_DA_REVERSE> 
  <TMPL_IF NAME=DA_REVERSE_SEARCH>
    <li class="active"><a trackid="subtab_reverse_lookup" href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_reverse_lookup" href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>


 </ul>
</TMPL_IF>

<TMPL_UNLESS RESTRICT_LNLP_CONTENT>
<TMPL_IF NAME=IM_ON_NEWS_SEARCH>
<ul>
  <TMPL_UNLESS DELETE_TODAYS_NEWS>
  <TMPL_IF NAME=TODAYS_NEWS_SEARCH>
    <li class="active"><a trackid="tab_todays_news" href="javascript:send_event('SEARCH/SHOW_TODAYS_NEWS');">Todays News</a></li>
  <TMPL_ELSE>
    <li><a trackid="tab_todays_news" href="javascript:send_event('SEARCH/SHOW_TODAYS_NEWS');">Todays News</a></li>
  </TMPL_IF>
  </TMPL_UNLESS> 

  <TMPL_UNLESS DELETE_US_NEWS>
  <TMPL_IF NAME=US_NEWS_SEARCH>
    <li class="active"><a trackid="tab_us_news" href="javascript:send_event('SEARCH/SHOW_US_NEWS');">U.S. News Publications</a></li>
  <TMPL_ELSE>
    <li><a trackid="tab_us_news" href="javascript:send_event('SEARCH/SHOW_US_NEWS');">U.S. News Publications</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_NON_US_NEWS>
  <TMPL_IF NAME=NON_US_NEWS_SEARCH>
    <li class="active"><a trackid="tab_non_us_news" href="javascript:send_event('SEARCH/SHOW_NON_US_NEWS');">Non-U.S. News Publications</a></li>
  <TMPL_ELSE>
    <li><a trackid="tab_non_us_news" href="javascript:send_event('SEARCH/SHOW_NON_US_NEWS');">Non-U.S. News Publications</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_ARCHIVED_NEWS>
  <TMPL_IF NAME=ARCHIVED_NEWS_SEARCH>
    <li class="active"><a trackid="tab_archived_news" href="javascript:send_event('SEARCH/SHOW_ARCHIVED_NEWS');">Archived News</a></li>
  <TMPL_ELSE>
    <li><a trackid="tab_archived_news" href="javascript:send_event('SEARCH/SHOW_ARCHIVED_NEWS');">Archived News</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
</ul>
</TMPL_IF>
</TMPL_UNLESS>

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

  <TMPL_IF NAME="SEXPREDATOR_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="OFFICIAL_RECORDS_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="MARRIAGE_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="FORECLOSURE_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="LIEN_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
    <li>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>

  <a trackid="subtab_more" onMouseOut='$("moreLegalSearches").style.display = "none";' onmouseover='this.style.cursor="pointer";$("moreLegalSearches").style.display = "block";$("moreLegalSearches").style.left = (findPos(this) -8) + "px";setOpacity("moreLegalSearches",0);fadeIn("moreLegalSearches",100,2);'>More Searches <img src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro_blue.gif" alt="More Legal Searches" width="10" height="6" /></a></li>

 </ul>
</TMPL_IF>

<TMPL_IF NAME=IM_ON_MYACCURINT>

    <a href="javascript:misc_win('MISC/SHOW_ADD_REMOVE','AddRemoveFavs',775,525)"><span style="cursor:pointer; cursor:hand; color: blue;font-weight:bold;">Add/Remove Tabs</span></a>

<script>

    var myaccountlabel = new Array;
    var linkhtml = new Array;
    var firstlevel = 0;
    var cnt = 0;
    var active = 0;
    var tabcharlength = 0;

    <TMPL_LOOP SUBTAB_LOOP>
        myaccountlabel[cnt] = '<TMPL_VAR LBL>';
        linkhtml[cnt] = '<li<TMPL_IF ACTIVE> class="active"</TMPL_IF>><a href="javascript:myacc(\'<TMPL_VAR EVT>\');"><TMPL_VAR LBL></a></li>';
        firstlevel ++;
        cnt ++;
        <TMPL_IF ACTIVE>active = cnt;</TMPL_IF>
    </TMPL_LOOP>

    for (var i = 0; i < cnt; i++) {
        tabcharlength += myaccountlabel[i].length;
        if (tabcharlength > 82) {
            firstlevel = i;
            break;
        }
    }

    document.write('<ul>');
    for (var i = 0; i < firstlevel; i++) {
        document.write(linkhtml[i]);
    }
    if (cnt > firstlevel) {
        var tabstatus = '<li>';
        if (active > firstlevel) { tabstatus = '<li class="active" id="subtab_more">'; }
        document.write(tabstatus + '<a trackid="subtab_more" onMouseOut=\'$("moreMASearches").style.display = "none";\' onmouseover=\'this.style.cursor="pointer";$("moreMASearches").style.display = "block";$("moreMASearches").style.left = (findPos(this) -8) + "px";setOpacity("moreMASearches",0);fadeIn("moreMASearches",100,2);\'>More Searches <img src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro_blue.gif" alt="More Searches" width="10" height="6" /></a></li>');
    }
    document.write('</ul>');

</script>

</TMPL_IF>

</div>

<TMPL_IF NAME=IM_ON_MYACCURINT>
<div id="moreMASearches" class="moreSearchesTab" onmouseout='$("moreMASearches").style.display = "none";' onmouseover='this.style.cursor="pointer";$("moreMASearches").style.display = "block";'>
  <div id="navlist">
    <ul style="font-size:11px">
    <script>
    for (var i = firstlevel; i < cnt; i++) {
        document.write(linkhtml[i]);
    }
    </script>
    </ul>
  </div>
  <br />
</div>
</TMPL_IF>


<div id="moreBusSearches" class="moreSearchesTab" onmouseout='document.getElementById("moreBusSearches").style.display = "none";' onmouseover='this.style.cursor="pointer";document.getElementById("moreBusSearches").style.display = "block";'>
    <div id="navlist">
      <ul style="font-size:11px">
	  
    <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
	  <TMPL_UNLESS DELETE_TRADEMARK>
	  <TMPL_IF NAME=TRADEMARK_SEARCH>
	    <li class="active"><a trackid="subtab_bus_trademarks" href="javascript:send_event('SEARCH/SHOW_TRADEMARK');">Trademarks Search</a></li>
	  <TMPL_ELSE>
	    <li><a trackid="subtab_bus_trademarks" href="javascript:send_event('SEARCH/SHOW_TRADEMARK');">Trademarks Search</a></li>
	  </TMPL_IF>
	  </TMPL_UNLESS>
    </TMPL_UNLESS>

	  <TMPL_UNLESS DELETE_FICTIOUS>
	  <TMPL_IF NAME=FICTIOUS_SEARCH>
	    <li class="active"><a trackid="subtab_bus_fictious" href="javascript:send_event('SEARCH/SHOW_FICTIOUS');">Fictitious Business Name Search</a></li>
	  <TMPL_ELSE>
	    <li><a trackid="subtab_bus_fictious" href="javascript:send_event('SEARCH/SHOW_FICTIOUS');">Fictitious Business Name Search</a></li>
	  </TMPL_IF>
	  </TMPL_UNLESS>

      </ul>
    </div>
    <br />
</div>


<div id="moreLegalSearches" class="moreSearchesTab" onmouseout='document.getElementById("moreLegalSearches").style.display = "none";' onmouseover='this.style.cursor="pointer";document.getElementById("moreLegalSearches").style.display = "block";'>
    <div id="navlist">
      <ul style="font-size:11px">
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

  <TMPL_UNLESS DELETE_MARRIAGE>
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
  </TMPL_UNLESS>
      </ul>
    </div>
    <br />
</div>


<div id="moreLicenseSearches" class="moreSearchesTab" onmouseout='document.getElementById("moreLicenseSearches").style.display = "none";' onmouseover='this.style.cursor="pointer";document.getElementById("moreLicenseSearches").style.display = "block";'>
    <div id="navlist">
      <ul style="font-size:11px">

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

	  <TMPL_UNLESS DELETE_FIREARMS> 
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
	  </TMPL_UNLESS>

      </ul>
    </div>
    <br />
</div>

<!-- end irs/search_inputs_secondary_tabs.tpl -->
