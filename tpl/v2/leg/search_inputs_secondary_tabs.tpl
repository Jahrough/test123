
<!-- Start leg/search_inputs_secondary_tabs.tpl -->

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
  	<li class="active"><a trackid="subtab_deep_skip" href="javascript:send_event('SEARCH/SHOW_ADV');">Advanced Person</a></li>
  <TMPL_ELSE>
  	<li><a trackid="subtab_deep_skip" href="javascript:send_event('SEARCH/SHOW_ADV');">Advanced Person</a></li>
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

  <TMPL_UNLESS HIDE_WORKPLACE>
  <TMPL_UNLESS DELETE_WORKPLACE>
  <TMPL_IF SHOW_WORKPLACE_SEARCH>
  <TMPL_IF NAME="WORKPLACE_SEARCH">
        <li class="active"><a trackid="subtab_workplace" href="javascript:send_event('SEARCH/SHOW_WORKPLACE');">Workplace Locator</a></li>
  <TMPL_ELSE>
        <li><a trackid="subtab_workplace" href="javascript:send_event('SEARCH/SHOW_WORKPLACE');">Workplace Locator</a></li>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

  <TMPL_IF NAME="SOC_REPORT">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="POLICE_RECORDS_AUTO_ACCIDENT_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="POLICE_RECORDS_ARREST_RECORD_SEARCH">
	<li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="POLICE_RECORDS_BIRTH_CERTIFICATE_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="POLICE_RECORDS_DEATH_CERTIFICATE_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="POLICE_RECORDS_DUI_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="POLICE_RECORDS_HOMICIDE_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
    <li>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  <a trackid="subtab_more" onMouseOut='$("morePeopleSearches").style.display = "none";' onmouseover='this.style.cursor="pointer";$("morePeopleSearches").style.display = "block";$("morePeopleSearches").style.left = (findPos(this)-8) + "px";setOpacity("morePeopleSearches",0);fadeIn("morePeopleSearches",100,2);'>More Searches <img src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro_blue.gif" alt="More People Searches" width="10" height="6" /></a></li>
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
    <li class="active"><a trackid="subtab_corp_filings" href="javascript:send_event('SEARCH/SHOW_CORPORATION');">Corp. Filings</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_corp_filings" href="javascript:send_event('SEARCH/SHOW_CORPORATION');">Corp. Filings</a></li>
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
    <li <TMPL_IF NAME=WHOIS_SEARCH>class="active" </TMPL_IF>><a trackid="subtab_ucc" href="javascript:send_event('SEARCH/SHOW_WHOIS');">Internet Domains</a></li>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_D_AND_B>
  <TMPL_IF NAME=D_AND_B_SEARCH>
    <li class="active"><a trackid="subtab_d_and_b" href="javascript:send_event('SEARCH/SHOW_D_AND_B');">D&amp;B</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_d_and_b" href="javascript:send_event('SEARCH/SHOW_D_AND_B');">D&amp;B</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DELCO>
  <TMPL_IF NAME=DELCO_SEARCH>
    <li class="active"><a trackid="subtab_delco" href="javascript:send_event('SEARCH/SHOW_DELCO');">Delaware Corp's</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_delco" href="javascript:send_event('SEARCH/SHOW_DELCO');">Delaware Corp's</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>


  <TMPL_IF NAME=BUS_NEWS_SEARCH>
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="BUS_CREDIT_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="PROVIDER_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
  <TMPL_IF NAME="SANCTION_SEARCH">
    <li class="active" id="subtab_more">
  <TMPL_ELSE>
    <li>
  </TMPL_IF>
  </TMPL_IF>
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

  <TMPL_UNLESS DELETE_CARFAX>
  <TMPL_IF NAME=CARFAX_REPORT>
    <li class="active"><a trackid="subtab_cfax" href="javascript:send_event('SEARCH/SHOW_CARFAX');">Carfax</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_cfax" href="javascript:send_event('SEARCH/SHOW_CARFAX');">Carfax</a></li>
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

  <TMPL_UNLESS HIDE_RT_MVR> 
  <TMPL_IF NAME=RT_MVR_SEARCH>
    <li class="active"><a trackid="subtab_rt_mvr" href="javascript:send_event('SEARCH/SHOW_RT_MVR');">Motor Vehicle Gateway</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_rt_mvr" href="javascript:send_event('SEARCH/SHOW_RT_MVR');">Motor Vehicle Gateway</a></li>
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
  <TMPL_UNLESS DELETE_CUSTOM_RT_PHONE>
  <TMPL_IF NAME=SHOW_RT_PHONE>
    <li<TMPL_IF NAME=RT_PHONE_SEARCH> class="active"</TMPL_IF>><a trackid="subtab_realtime_phone" href="javascript:send_event('SEARCH/SHOW_RT_PHONE');">Real-Time Phones</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DA_REVERSE> 
  <TMPL_IF NAME=DA_REVERSE_SEARCH>
    <li class="active"><a trackid="subtab_reverse_lookup" href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></li>
  <TMPL_ELSE>
    <li><a trackid="subtab_reverse_lookup" href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>

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

  <a trackid="subtab_more" onMouseOut='$("moreLegalSearches").style.display = "none";' onmouseover='this.style.cursor="pointer";$("moreLegalSearches").style.display = "block";$("moreLegalSearches").style.left = (findPos(this) -8) + "px";setOpacity("moreLegalSearches",0);fadeIn("moreLegalSearches",100,2);'>More Searches <img src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro_blue.gif" alt="More Courts Searches" width="10" height="6" /></a></li>

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
        if (tabcharlength > 90) {
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
        document.write(tabstatus + '<a trackid="subtab_more" onMouseOut=\'$("moreMASearches").style.display = "none";\' onmouseover=\'this.style.cursor="pointer";$("moreMASearches").style.display = "block";$("moreMASearches").style.left = (findPos(this) -8) + "px";setOpacity("moreMASearches",0);fadeIn("moreMASearches",100,2);\'>More <img src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro_blue.gif" alt="More Searches" width="10" height="6" /></a></li>');
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

<div id="morePeopleSearches" class="moreSearchesTab" onmouseout='document.getElementById("morePeopleSearches").style.display = "none";' onmouseover='this.style.cursor="pointer";document.getElementById("morePeopleSearches").style.display = "block";'>
    <div id="navlist">
      <ul style="font-size:11px">
      
    <TMPL_IF SHOW_SOCIAL_MEDIA_LOCATOR>
    <TMPL_UNLESS DELETE_SOCIALMEDIA> 
    <TMPL_IF NAME="SOC_REPORT">
                <li class="active"><a trackid="subtab_socialmedia" href="javascript:send_event('SEARCH/SHOW_SOCIALMEDIA');">Social Media Locator</a></li>
    <TMPL_ELSE>
                <li><a trackid="subtab_socialmedia" href="javascript:send_event('SEARCH/SHOW_SOCIALMEDIA');">Social Media Locator</a></li>
    </TMPL_IF>
    </TMPL_UNLESS>
    </TMPL_IF>



  <TMPL_IF SHOW_SOCIAL_REPORT>
  <TMPL_UNLESS DELETE_SOC>
  <TMPL_IF NAME="SOC_REPORT">
       <li class="active"><a trackid="subtab_soc" href="javascript:send_event('SEARCH/SHOW_SOC');">Social Network Report</a></li>
  <TMPL_ELSE>
       <li><a trackid="subtab_soc" href="javascript:send_event('SEARCH/SHOW_SOC');">Social Network Report</a></li>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_IF>

  <TMPL_UNLESS HIDE_POLICE_RECORDS>
  <TMPL_UNLESS DISABLE_POLICE_RECORDS>
  <TMPL_UNLESS POLICE_RECORDS_USER_ROLES_VIEW_ONLY>
  <TMPL_IF NAME="POLICE_RECORDS_AUTO_ACCIDENT_SEARCH">
        <li class="active"><a trackid="subtab_police_records" href="javascript:send_event('SEARCH/SHOW_POLICE_RECORDS_AUTO_ACCIDENT');">Police Records</a></li>
  <TMPL_ELSE>
  <TMPL_IF NAME="POLICE_RECORDS_ARREST_RECORD_SEARCH">
        <li class="active"><a trackid="subtab_police_records" href="javascript:send_event('SEARCH/SHOW_POLICE_RECORDS_ARREST_RECORD');">Police Records</a></li>
  <TMPL_ELSE>
  <TMPL_IF NAME="POLICE_RECORDS_BIRTH_CERTIFICATE_SEARCH">
        <li class="active"><a trackid="subtab_police_records" href="javascript:send_event('SEARCH/SHOW_POLICE_RECORDS_BIRTH_CERTIFICATE');">Police Records</a></li>
  <TMPL_ELSE>
  <TMPL_IF NAME="POLICE_RECORDS_DEATH_CERTIFICATE_SEARCH">
        <li class="active"><a trackid="subtab_police_records" href="javascript:send_event('SEARCH/SHOW_POLICE_RECORDS_DEATH_CERTIFICATE');">Police Records</a></li>
  <TMPL_ELSE>
  <TMPL_IF NAME="POLICE_RECORDS_DUI_SEARCH">
        <li class="active"><a trackid="subtab_police_records" href="javascript:send_event('SEARCH/SHOW_POLICE_RECORDS_DUI');">Police Records</a></li>
  <TMPL_ELSE>
  <TMPL_IF NAME="POLICE_RECORDS_HOMICIDE_SEARCH">
        <li class="active"><a trackid="subtab_police_records" href="javascript:send_event('SEARCH/SHOW_POLICE_RECORDS_HOMICIDE');">Police Records</a></li>
  <TMPL_ELSE>
        <li><a trackid="subtab_police_records" href="javascript:send_event('SEARCH/SHOW_POLICE_RECORDS_AUTO_ACCIDENT');">Police Records</a></li>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

      </ul>
    </div>
    <br />
</div>

<div id="moreBusSearches" class="moreSearchesTab" onmouseout='document.getElementById("moreBusSearches").style.display = "none";' onmouseover='this.style.cursor="pointer";document.getElementById("moreBusSearches").style.display = "block";'>
    <div id="navlist">
      <ul style="font-size:11px">
	 <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
	 <TMPL_UNLESS DONT_SHOW_NEWS>
	  <TMPL_UNLESS DELETE_BUS_NEWS>
	  <TMPL_IF NAME=BUS_NEWS_SEARCH>
	    <li class="active"><a trackid="subtab_bus_in_news" href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></li>
	  <TMPL_ELSE>
	    <li><a trackid="subtab_bus_in_news" href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></li>
	  </TMPL_IF>
	  </TMPL_UNLESS>
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
	  </TMPL_UNLESS>

	  <TMPL_UNLESS DELETE_PROVIDER>
	    <li <TMPL_IF PROVIDER_SEARCH>class="active"</TMPL_IF>><a trackid="subtab_provider" href="javascript:send_event('SEARCH/SHOW_PROVIDER');">Provider Search</a></li>
	  </TMPL_UNLESS>

	  <TMPL_UNLESS DELETE_SANCTION>
	    <li <TMPL_IF SANCTION_SEARCH>class="active"</TMPL_IF>><a trackid="subtab_sanction" href="javascript:send_event('SEARCH/SHOW_SANCTION');">Provider Sanction Search</a></li>
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

  <TMPL_UNLESS IS_RESELLER>
  <TMPL_IF SHOW_CS_REPORT>
  <TMPL_IF DISABLE_COURT>
    <li><a href="javascript:court_ad()">Court Search Wizard</a></li>
  <TMPL_ELSE>
    <li><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','CourtPopupWin','600','600',0,0,0,1,1,0,'','court_wizard_select_individual');">Court Search Wizard</a></li>
  </TMPL_IF>
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

<!-- end leg/search_inputs_secondary_tabs.tpl -->
