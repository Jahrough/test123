<!-- begin gov/lite/le_search_inputs_tabs.tpl -->

    <table width="740" border="1" cellpadding="5" cellspacing="0" class="inactivetabs" bordercolor="#000000" height="37">
      <tr>
<TMPL_IF NAME=IM_ON_ASSET_SEARCH>

	<TMPL_UNLESS DELETE_MV><td align="center" nowrap <TMPL_IF NAME=DL_REG_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_DL_REG')">Motor<br>Vehicles</a></td></TMPL_UNLESS>
	<TMPL_UNLESS HIDE_RT_MVR><td align="center" nowrap <TMPL_IF NAME=RT_MVR_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_RT_MVR')">Real-Time MVR</a></td></TMPL_UNLESS>
  <TMPL_IF NAME="INS">
	<TMPL_UNLESS DELETE_CARFAX><td align="center" nowrap <TMPL_IF NAME=CARFAX_REPORT>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_CARFAX')">CARFAX</a></td></TMPL_UNLESS>
  </TMPL_IF>
	<TMPL_UNLESS DELETE_ASSESSMENT><td align="center" nowrap <TMPL_IF NAME=PROPERTY_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PROP')">Property<br>Assessments</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_DEEDS><td align="center" nowrap <TMPL_IF NAME=PROPERTY_DEED_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PROP_DEED')">Property<br>Deeds</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_VESSEL><td align="center" nowrap <TMPL_IF NAME=MERCHANT_VESSEL_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_VESSEL')">Watercraft</a></td></TMPL_UNLESS>
	<<TMPL_UNLESS DELETE_AIRCRAFT>td align="center" nowrap <TMPL_IF NAME=AIRCRAFT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_AIRCRAFT')">FAA<br> Aircrafts</a></td></TMPL_UNLESS>
	
<TMPL_IF NAME=DL_REG_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mv_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/motor_vehicle_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_UNLESS HIDE_RT_MVR>
<TMPL_IF NAME=RT_MVR_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/rt_mvr_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/real-timeMVR_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
</TMPL_UNLESS>
<TMPL_IF NAME="INS">
<TMPL_IF NAME=CARFAX_REPORT>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/carfax_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
</TMPL_IF>
<TMPL_IF NAME=PROPERTY_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/assess_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/property_assessment_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=PROPERTY_DEED_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/deeds_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/property_deeds_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=MERCHANT_VESSEL_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','375',0,0,0,0,0,0,'','coverage/watercraft_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/merchant_vessels_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=AIRCRAFT_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/faa_aircraft_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
</TMPL_IF> 

<TMPL_IF NAME=IM_ON_SEARCH>
	<TMPL_UNLESS DELETE_PERSON><td align="center" nowrap  <TMPL_IF NAME=PERSON_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_SEARCH')">Person<br>Search</a></td></TMPL_UNLESS>
        <TMPL_UNLESS HIDE_RT_PERSON><TMPL_UNLESS DELETE_RT_PERSON><td align="center" nowrap  <TMPL_IF NAME=REAL_TIME_PERSON_SEARCH>class="activetabs"</TMPL_IF>> <a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_REAL_TIME_PERSON')">Real-Time<br>Person Search</a></td></TMPL_UNLESS></TMPL_UNLESS>
	<TMPL_IF NAME="ENABLE_ADVANCED_SEARCH">
        <TMPL_UNLESS DELETE_ADV>
	<TMPL_IF NAME="COL">
	<td align="center" nowrap  <TMPL_IF NAME=ADV_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_ADV')">Deep Skip<br>Search</a></td>
	<TMPL_ELSE>
	<td align="center" nowrap  <TMPL_IF NAME=ADV_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_ADV')">Advanced<br>Person Search</a></td>
	</TMPL_IF>
        </TMPL_UNLESS>
	</TMPL_IF>
	<TMPL_UNLESS DELETE_PAW><td align="center" nowrap  <TMPL_IF NAME=PAW_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PAW')">People At<br>Work Search</a></td></TMPL_UNLESS>
	<TMPL_UNLESS HIDE_INSTANTID>
	<TMPL_UNLESS DELETE_INSTANT_ID><td align="center" nowrap  <TMPL_IF NAME=INSTANT_ID_REPORT>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_INSTANT_ID')">InstantID</a></td></TMPL_UNLESS>
	</TMPL_UNLESS>

	<TMPL_UNLESS NAME="INS">
	<TMPL_UNLESS DONT_SHOW_NEWS>
	<TMPL_UNLESS DELETE_NEWS><td align="center" nowrap  <TMPL_IF NAME=NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_NEWS')">People in<br>the News</a></td></TMPL_UNLESS>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
	
	<TMPL_IF NAME="INS">
	<TMPL_UNLESS DELETE_PSPR><td align="center" nowrap  <TMPL_IF NAME=PSPR_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PSPR')">People Statewide<br>Public Records</a></td></TMPL_UNLESS>
	</TMPL_IF>

  <TMPL_UNLESS DONT_SHOW_DEATH>
  <TMPL_UNLESS DELETE_DEATH><td align="center" nowrap  <TMPL_IF NAME=DEATH_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_DEATH')">Death<br>Records</a></td></TMPL_UNLESS>
  </TMPL_UNLESS>

  <TMPL_UNLESS GOV><TMPL_UNLESS LE><TMPL_UNLESS DELETE_EMAIL><td align="center" nowrap  <TMPL_IF NAME=EMAIL_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_EMAIL')">Email<br>Search</a></td></TMPL_UNLESS></TMPL_UNLESS></TMPL_UNLESS>

  <TMPL_IF NAME="PERSON_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/gov/person_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>

 <TMPL_IF NAME="REAL_TIME_PERSON_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/rt_person_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/real_time_person_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>

  <TMPL_IF NAME="PAW_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/people_at_work_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>
  
  <TMPL_IF NAME="INSTANT_ID_REPORT">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/instantid_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>

  <TMPL_IF NAME="ADV_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/gov/advanced_person_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>

  <TMPL_IF NAME="INS">
  <TMPL_IF NAME="RATE_EVASION_REPORT">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/rate_evasion_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/howto_ree/howto_ree.html','HelpWindow',780,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>
  <TMPL_IF NAME="PSPR_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/all50_virgin_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/statewide_public_records_help.html','HelpWindow',780,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>

  <TMPL_IF NAME="FED_CIVIL_COURT_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/fedcivil_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/federal_civil_courts_help.html','HelpWindow',780,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>
  <TMPL_IF NAME="FED_CRIM_COURT_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/fedcrim_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/federal_criminal_courts_help.html','HelpWindow',780,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>

  <TMPL_IF NAME="COURT_CASE_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/courtcasetopic_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/howto_ree/howto_ree.html','HelpWindow',780,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>

  </TMPL_IF>
  
  <TMPL_UNLESS DONT_SHOW_NEWS>
  <TMPL_IF NAME="NEWS_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/news_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>
  </TMPL_UNLESS>


   <TMPL_IF NAME="DEATH_SEARCH">
<td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/death_coverage');">Coverage</a></td>
 <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/locat_death_rcds.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>

   <TMPL_UNLESS LE>
   <TMPL_IF NAME="EMAIL_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/email_address_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

		      

</TMPL_IF>

<TMPL_IF NAME=IM_ON_LEGAL_SEARCH>
        <TMPL_UNLESS DELETE_BANKRUPTCY><td align="center" nowrap <TMPL_IF NAME=BANKRUPTCY_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_BANKRUPTCY')">Bankruptcy</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_CRIM><td align="center" nowrap <TMPL_IF NAME=CRIM_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_CRIM')">State &<br>Local Criminal</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_CIVIL_COURT><td align="center" <TMPL_IF NAME=CIVIL_COURT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT')">Civil<br>Court</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_ACCIDENT><td align="center" nowrap <TMPL_IF NAME=ACCIDENT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_ACCIDENT')">Accident</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_PATRIOTACT><td align="center" nowrap <TMPL_IF NAME=PATRIOTACT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PATRIOTACT')">Patriot<br>Act</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_SEXPREDATOR><td align="center" nowrap <TMPL_IF NAME=SEXPREDATOR_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR')">Sexual<br>Offenders</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_OFFICIAL_RECORDS><td align="center" nowrap <TMPL_IF NAME=OFFICIAL_RECORDS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS')">Official<br>Records</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_MARRIAGE><td align="center" nowrap <TMPL_IF NAME=MARRIAGE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_MARRIAGE')">Marriages /<br> Divorces</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_FORECLOSURE><td align="center" nowrap <TMPL_IF NAME=FORECLOSURE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_FORECLOSURE')">Foreclosures</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_LIEN><td align="center" nowrap <TMPL_IF NAME=LIEN_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_LIENS')">Liens &amp;<br>Judgments</a></td></TMPL_UNLESS>
	<TMPL_IF NAME="INS">
        <TMPL_UNLESS DELETE_FED_CIVIL_COURT><td align="center" nowrap <TMPL_IF NAME=FED_CIVIL_COURT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_FED_CIVIL_COURT')">Federal Civil<br>Court Records</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_FED_CRIM_COURT><td align="center" nowrap <TMPL_IF NAME=FED_CRIM_COURT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_FED_CRIM_COURT')">Federal Criminal<br>Court Records</a></td></TMPL_UNLESS>
	</TMPL_IF>
	<!--
        <TMPL_UNLESS DELETE_COURT_CASE><td align="center" nowrap <TMPL_IF NAME=COURT_CASE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_COURT_CASE')">Court Case<br>by Topic</a></td></TMPL_UNLESS>
	-->
<TMPL_IF NAME=BANKRUPTCY_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/bankruptcy_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/bankruptcy_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=CRIM_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','675','450',1,1,1,1,1,0,'','coverage/crim_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/criminal_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=CIVIL_COURT_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','500',0,0,0,0,0,0,'','coverage/civil_court_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/civil_court_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=ACCIDENT_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/fl_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/accidents_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=PATRIOTACT_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/patriot_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/patriot_act_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=SEXPREDATOR_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/sexual_offenders_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/sexual_offenders_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME="OFFICIAL_RECORDS_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','510',0,0,0,1,1,0,'','coverage/official_records_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/official_records_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME="MARRIAGE_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','350',0,0,0,1,1,0,'','coverage/marriages_divorces_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/marriages_divorces_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME="FORECLOSURE_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/foreclosures_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/foreclosure_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME="LIEN_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','360',0,0,0,0,0,0,'','coverage/liens_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/lien_judgment_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
</TMPL_IF>

<TMPL_IF NAME=IM_ON_DA_SEARCH>
    <TMPL_IF SHOW_RT_PHONE><td align="center" nowrap <TMPL_IF NAME=RT_PHONE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_RT_PHONE')">Real-Time Phones</a></td></TMPL_IF>
    <TMPL_UNLESS NAME="DA_ONLY">
    <TMPL_UNLESS DELETE_DA_WIRELESS><td align="center" nowrap <TMPL_IF NAME=DA_WIRELESS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS')">Phones Plus</a></td></TMPL_UNLESS>
    </TMPL_UNLESS>
    <TMPL_UNLESS DELETE_DA_BASIC><td align="center" nowrap <TMPL_IF NAME=DA_BASIC_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DA_BASIC')">Basic Lookup</a></td></TMPL_UNLESS>
    <TMPL_UNLESS DELETE_DA_REVERSE><td align="center" nowrap <TMPL_IF NAME=DA_REVERSE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DA_REVERSE')">Reverse Lookup</a></td></TMPL_UNLESS>
    <TMPL_IF ENABLE_LOCATE_PLUS_SEARCH><TMPL_UNLESS DELETE_LOCATE_PLUS><td align="center" nowrap <TMPL_IF NAME=LOCATE_PLUS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PNG')">Phone Network Gateway</a></td></TMPL_UNLESS></TMPL_IF>
    <TMPL_UNLESS GOV><TMPL_UNLESS LE>
    <TMPL_UNLESS DELETE_CANADIAN_PHONES><td align="center" nowrap <TMPL_IF NAME=CANADIAN_PHONES_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH2/SHOW_CANADIAN_PHONES')">Canadian Phones</a></td></TMPL_UNLESS>
    </TMPL_UNLESS></TMPL_UNLESS>

<TMPL_IF NAME="DA_WIRELESS_SEARCH">
    <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/phone_base_coverage');">Coverage</a></td>
    <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/phones_plus_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>

<TMPL_IF NAME="DA_BASIC_SEARCH">
    <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/phone_base_coverage');">Coverage</a></td>
    <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/da_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME="DA_REVERSE_SEARCH">
    <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/phone_base_coverage');">Coverage</a></td>
    <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/da_help.html#reverse','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF ENABLE_LOCATE_PLUS_SEARCH>
<TMPL_IF NAME="LOCATE_PLUS_SEARCH">
    <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/phone_network_gateway_coverage');">Coverage</a></td>
    <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/phone_network_gateway_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
</TMPL_IF>
<TMPL_IF SHOW_RT_PHONE>
  <TMPL_IF RT_PHONE_SEARCH>
    <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','390',0,0,0,0,0,0,'','coverage/rt_phone_coverage');">Coverage</a></td>
    <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/real_time_phone_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>
</TMPL_IF>

<TMPL_UNLESS GOV><TMPL_UNLESS LE>
<TMPL_IF NAME="CANADIAN_PHONES_SEARCH">
    <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ca_phone_coverage');">Coverage</a></td>
    <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/canadian_phones_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
</TMPL_UNLESS></TMPL_UNLESS>

</TMPL_IF>


<TMPL_IF NAME=IM_ON_LICENSE_SEARCH>
        <TMPL_UNLESS DELETE_DL><td align="center" nowrap <TMPL_IF NAME=LICENSE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_LICENSE')">Driver<br>Licenses</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_PROF_LICENSE><td align="center" nowrap <TMPL_IF NAME=PROF_LICENSE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE')">Professional<br>Licenses</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_FAA_PILOT><td align="center" nowrap <TMPL_IF NAME=FAA_PILOT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_FAA_PILOT')">FAA<br>Pilots</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_HUNTING_LICENSE><td align="center" nowrap <TMPL_IF NAME=HUNTING_LICENSE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE')">Hunting &<br>Fishing</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_CONCEALED_WEAPON><td align="center" nowrap <TMPL_IF NAME=CONCEALED_WEAPON_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON')">Concealed<br>Weapons</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_VOTER_REGISTRATION><td align="center" nowrap <TMPL_IF NAME=VOTER_REGISTRATION_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_VOTER_REGISTRATION')">Voter<br>Registrations</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_FIREARMS><td align="center" nowrap <TMPL_IF NAME=FIREARMS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_FIREARMS')">Federal Firearms<br>& Explosives</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_DEA><td align="center" nowrap <TMPL_IF NAME=DEA_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DEA')">DEA Controlled<br>Substances</a></td></TMPL_UNLESS>
        <TMPL_UNLESS DELETE_MVR><td align="center" nowrap <TMPL_IF NAME=MVR_REPORT>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_MVR')">MVR<br>Report</a></td></TMPL_UNLESS>
<TMPL_IF NAME=LICENSE_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','760',0,0,0,1,1,0,'','coverage/dl_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/dl_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=PROF_LICENSE_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','420',0,0,0,1,1,0,'','coverage/prof_licenses_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/prof_license_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=FAA_PILOT_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/faa_pilots_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=HUNTING_LICENSE_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/hunting_fishing_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/hunting_fishing_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=CONCEALED_WEAPON_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/concealed_weapons_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/concealed_weapons_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=VOTER_REGISTRATION_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/voter_registrations_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/voter_registrations_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=FIREARMS_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_plus_dc_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/federal_firearms_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=DEA_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_plus_dc_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/dea_controlled_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=MVR_REPORT>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mvr_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/locating_mvr.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
</TMPL_IF>

<TMPL_IF NAME=IM_ON_BUS_SEARCH>
	<TMPL_UNLESS DELETE_BUS><td align="center" nowrap <TMPL_IF NAME=BUS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_BUS')">Business</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_CORPORATION><td align="center" nowrap <TMPL_IF NAME=CORPORATION_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_CORPORATION')">Corporations</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_UCC><td align="center" nowrap <TMPL_IF NAME=UCC_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_UCC')">UCC<br>Filings</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_WHOIS><td align="center" nowrap <TMPL_IF NAME=WHOIS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_WHOIS')">Internet<br>Domains</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_D_AND_B><td align="center" nowrap <TMPL_IF NAME=D_AND_B_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_D_AND_B')">Dun &amp;<br>Bradstreet</a></td> </TMPL_UNLESS>
	<TMPL_UNLESS DELETE_DELCO><td align="center" nowrap <TMPL_IF NAME=DELCO_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DELCO')">Delaware<br>Corporations</a></td></TMPL_UNLESS>
  <TMPL_UNLESS INS>
	<TMPL_UNLESS DONT_SHOW_NEWS>
	<TMPL_UNLESS DELETE_BUS_NEWS><td  align="center" nowrap <TMPL_IF NAME=BUS_NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_BUS_NEWS')">Businesses<br>in the News</a></td></TMPL_UNLESS>
	</TMPL_UNLESS>
  </TMPL_UNLESS>
  <TMPL_UNLESS HIDE_BUS_INSTANTID>
  <TMPL_UNLESS DELETE_BUS_INSTANT_ID><td align="center" nowrap <TMPL_IF NAME=BUS_INSTANT_ID_REPORT>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_BUS_INSTANT_ID')">Businesses<br>InstantID</a></td></TMPL_UNLESS>
  </TMPL_UNLESS>
	<TMPL_UNLESS DELETE_BUS_CREDIT><td align="center" nowrap <TMPL_IF NAME=BUS_CREDIT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_BUS_CREDIT')">Business<br>Credit</a></td></TMPL_UNLESS>
	<TMPL_IF INS>
	<TMPL_UNLESS DELETE_SEC><td  align="center" nowrap <TMPL_IF NAME=SEC_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_SEC')">SEC<br>Filings</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_OSHA><td align="center" nowrap <TMPL_IF NAME=OSHA_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_OSHA')">OSHA Investigative<br>Reports</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_DBGLOBAL><td align="center" nowrap <TMPL_IF NAME=DBGLOBAL_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DBGLOBAL')">D & B Global><br>Market Identifiers</a></td></TMPL_UNLESS>
	</TMPL_IF>




<TMPL_IF NAME=BUS_CREDIT_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/business_credit_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=CORPORATION_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/corp_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/corporations_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=UCC_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ucc_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/ucc_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=BUS_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/gov/business_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=WHOIS_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/internet_domains_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/internet_domains_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=D_AND_B_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/DB_records_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
 <TMPL_IF NAME=DELCO_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/delaware_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/delaware_corporations_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
 <TMPL_UNLESS INS>
 <TMPL_UNLESS DONT_SHOW_NEWS>
 <TMPL_IF NAME=BUS_NEWS_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
	<td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/news_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
</TMPL_UNLESS>
</TMPL_UNLESS>
<TMPL_IF NAME=BUS_INSTANT_ID_REPORT>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/business_instantid_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
 <TMPL_IF NAME=SEC_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('https://risk.nexis.com/AMLSolutions/help/SEC_Filings_Source.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
	<td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/irs/find_sec_filings_search_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=OSHA_SEARCH>
<td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_dc_coverage');">Coverage</a></td>
<td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/osha_investigative_reports_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=DBGLOBAL_SEARCH>
<td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/dbglobal_coverage');">Coverage</a></td>
<td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/d_b_global_market_identifiers_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
</TMPL_IF>

<TMPL_IF GOV>

<TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>
    <TMPL_UNLESS DELETE_PROVIDER><td align="center" nowrap <TMPL_IF NAME=PROVIDER_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PROVIDER')">Provider</a></td></TMPL_UNLESS>

    <TMPL_UNLESS DELETE_SANCTION><td align="center" nowrap <TMPL_IF NAME=SANCTION_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_SANCTION')">Provider<br>Sanction</a></td></TMPL_UNLESS>

    <TMPL_UNLESS DELETE_BUS_QUALIFIER><td align="center" nowrap <TMPL_IF NAME=BUS_QUALIFIER_REPORT>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_BUS_QUALIFIER')">Comprehensive Health Care<br>Business Report</a></td></TMPL_UNLESS>
    
    <TMPL_UNLESS DELETE_IND_QUALIFIER><td align="center" nowrap <TMPL_IF NAME=IND_QUALIFIER_REPORT>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_IND_QUALIFIER')">Comprehensive Health Care<br>Provider Report</a></td></TMPL_UNLESS>
    
<TMPL_IF NAME=PROVIDER_SEARCH>
<td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
<td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/hea/provider_search_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=SANCTION_SEARCH>                                                                                         <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
<td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/hea/provider_sanction_search_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=BUS_QUALIFIER_REPORT>
    <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/bus_qualifier_coverage');">Coverage</a></td>
    <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/healthcare_business_report_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=IND_QUALIFIER_REPORT>
    <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ind_qualifier_coverage');">Coverage</a></td>
    <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/healthcare_provider_report_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>

</TMPL_IF>

<TMPL_IF NAME=IM_ON_AVM_SEARCH>

    <TMPL_IF ALLOW_AVM_REPORT><td align="center" nowrap <TMPL_IF NAME=AVM_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_AVM')">Automated<br>Valuation Models</a></td></TMPL_IF>

    <TMPL_IF NAME=AVM_SEARCH>
	<td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','525',0,0,0,0,0,0,'','coverage/avm_coverage');">Coverage</a></td>
	<td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/irs/AVM_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
    </TMPL_IF>

</TMPL_IF>


<TMPL_IF NAME=IM_ON_NEWS_SEARCH>
	<TMPL_UNLESS DELETE_NEWS><td align="center" nowrap  <TMPL_IF NAME=NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_NEWS')">People in<br>the News</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_INSTOPICS_NEWS><td align="center" nowrap  <TMPL_IF NAME=INSTOPICS_NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_INSTOPICS_NEWS')">Insurance topics<br>in the News</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_DO_NEWS><td align="center" nowrap  <TMPL_IF NAME=DO_NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DO_NEWS')">Deaths & Obituaries<br>in the News</a></td></TMPL_UNLESS>

  <TMPL_IF NAME="NEWS_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/news_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>

  <TMPL_IF NAME="INSTOPICS_NEWS_SEARCH">
  <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
  <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/insurance_topics_news_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>

  <TMPL_IF NAME="DO_NEWS_SEARCH">
  <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/obituary_coverage');">Coverage</a></td>
  <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/deaths_obituaries_news_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>
</TMPL_IF>

<TMPL_IF NAME=IM_ON_ANTOOLS_SEARCH>
	<TMPL_UNLESS DELETE_RATE_EVASION><td align="center" nowrap  <TMPL_IF NAME=RATE_EVASION_REPORT>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_RATE_EVASION')">Rate Evasion<br>Evaluation</a></td></TMPL_UNLESS>
</TMPL_IF>
 
</TMPL_IF>  

      </tr>
    </table>
<!-- end gov/lite/le_search_inputs_tabs.tpl -->
