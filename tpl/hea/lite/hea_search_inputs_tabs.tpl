<!-- begin hea/lite/hea_search_inputs_tabs.tpl -->

    <table width="740" border="1" cellpadding="5" cellspacing="0" class="inactivetabs" bordercolor="#000000" height="37">
      <tr>
      <TMPL_IF NAME=IM_ON_BUS_SEARCH>
	<td align="center" nowrap <TMPL_IF NAME=BUS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_BUS')">Business</a></td>
	<td align="center" nowrap <TMPL_IF NAME=CORPORATION_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_CORPORATION')">Corporations</a></td>
	<td align="center" nowrap <TMPL_IF NAME=UCC_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_UCC')">UCC<br>Filings</a></td>
	<td align="center" nowrap <TMPL_IF NAME=WHOIS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_WHOIS')">Internet<br>Domains</a></td>
	<td align="center" nowrap <TMPL_IF NAME=D_AND_B_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_D_AND_B')">Dun &amp;<br>Bradstreet</a></td> 
	<td align="center" nowrap <TMPL_IF NAME=DELCO_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DELCO')">Delaware<br>Corporations</a></td>
  <TMPL_UNLESS HIDE_BUS_INSTANTID>
	<td align="center" nowrap <TMPL_IF NAME=BUS_INSTANT_ID_REPORT>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_BUS_INSTANT_ID')">Businesses<br>InstantID</a></td>
  </TMPL_UNLESS>
	<TMPL_UNLESS DELETE_DBGLOBAL><td align="center" nowrap <TMPL_IF NAME=DBGLOBAL_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DBGLOBAL')">D & B Global<br>Market Identifiers</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_SEC><td  align="center" nowrap <TMPL_IF NAME=SEC_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_SEC')">SEC<br>Filings</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_OSHA><td align="center" nowrap <TMPL_IF NAME=OSHA_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_OSHA')">OSHA Investigative<br>Reports</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_BUS_CREDIT><td align="center" nowrap <TMPL_IF NAME=BUS_CREDIT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_BUS_CREDIT')">Business Credit</a></td></TMPL_UNLESS>
        <!--
	<td  align="center" nowrap <TMPL_IF NAME=EXPERIAN_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_EXPERIAN')">Experian<br>Business Search</a></td>
	<td  align="center" nowrap <TMPL_IF NAME=FICTIOUS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_FICTIOUS')">Fictitious Business<br>Name Information</a></td>
	-->

	 <TMPL_IF NAME=FICTIOUS_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/148505.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/irs/find_fictitious_bus_search_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
	</TMPL_IF>

	<TMPL_IF NAME=EXPERIAN_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/166420.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/irs/find_experian_search_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
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

<TMPL_IF NAME=CORPORATION_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/corp_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/corporations_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=UCC_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/ucc_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/ucc_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=BUS_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/business_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=WHOIS_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/internet_domains_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=D_AND_B_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/DB_records_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
 <TMPL_IF NAME=DELCO_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/delaware_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/delaware_corporations_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
<TMPL_IF NAME=BUS_INSTANT_ID_REPORT>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/business_instantid_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
</TMPL_IF>
      </TMPL_IF>

      
      
      <TMPL_IF NAME=IM_ON_ASSET_SEARCH>
      	<td align="center" nowrap <TMPL_IF NAME=DL_REG_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_DL_REG')">Motor<br>Vehicles</a></td>
      	<td align="center" nowrap <TMPL_IF NAME=PROPERTY_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PROP')">Property<br>Assessments</a></td>
      	<td align="center" nowrap <TMPL_IF NAME=PROPERTY_DEED_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PROP_DEED')">Property<br>Deeds</a></td>
      	<td align="center" nowrap <TMPL_IF NAME=MERCHANT_VESSEL_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_VESSEL')">Watercraft</a></td>
      	<td align="center" nowrap <TMPL_IF NAME=AIRCRAFT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_AIRCRAFT')">FAA<br>Aircrafts</a></td>
      <TMPL_IF NAME=DL_REG_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/mv_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/motor_vehicle_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=PROPERTY_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/assess_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/property_assessment_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=PROPERTY_DEED_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/deeds_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/property_deeds_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=MERCHANT_VESSEL_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,375,0,0,0,0,0,0,'','coverage/watercraft_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/merchant_vessels_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=AIRCRAFT_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/faa_aircraft_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      </TMPL_IF>
      
      <TMPL_IF NAME=IM_ON_SEARCH>
      	<td align="center" nowrap  <TMPL_IF NAME=PERSON_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_SEARCH')">Person<br>Search</a></td>
      	<td align="center" nowrap  <TMPL_IF NAME=ADV_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_ADV')">Advanced<br>Person</a></td>
      	<td align="center" nowrap  <TMPL_IF NAME=PAW_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PAW')">People<br>At Work</a></td>
      	<TMPL_UNLESS HIDE_INSTANTID>
      	<td align="center" nowrap  <TMPL_IF NAME=INSTANT_ID_REPORT>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_INSTANT_ID')">InstantID</a></td>
      	</TMPL_UNLESS>
        <td align="center" nowrap <TMPL_IF NAME=PATRIOTACT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PATRIOTACT')">Patriot<br>Act</a></td>
        <td align="center" nowrap <TMPL_IF NAME=VOTER_REGISTRATION_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_VOTER_REGISTRATION')">Voter<br>Registrations</a></td>
        <td align="center" nowrap <TMPL_IF NAME=ACCIDENT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_ACCIDENT')">Accident</a></td>
        <td align="center" nowrap <TMPL_IF NAME=SEXPREDATOR_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR')">Sexual<br>Offenders</a></td>
	<TMPL_UNLESS DONT_SHOW_DEATH>
	<TMPL_UNLESS DELETE_DEATH><td align="center" nowrap  <TMPL_IF NAME=DEATH_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_DEATH')">Death<br>Records</a></td></TMPL_UNLESS>
	</TMPL_UNLESS>

        <TMPL_UNLESS DELETE_EMAIL><td align="center" nowrap  <TMPL_IF NAME=EMAIL_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_EMAIL')">Email<br>Search</a></td></TMPL_UNLESS>


      <TMPL_IF NAME="PERSON_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/person_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME="ADV_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/advanced_person_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME="PAW_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/people_at_work_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME="INSTANT_ID_REPORT">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/instantid_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=PATRIOTACT_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/patriot_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/patriot_act_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=VOTER_REGISTRATION_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/voter_registrations_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/voter_registrations_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=ACCIDENT_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/fl_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/accidents_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=SEXPREDATOR_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/sexual_offenders_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/sexual_offenders_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME="DEATH_SEARCH">
         <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/death_coverage');">Coverage</a></td>
	 <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/locat_death_rcds.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME="EMAIL_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/email_address_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>

      </TMPL_IF>

      <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>
        <td align="center" nowrap <TMPL_IF NAME=BANKRUPTCY_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_BANKRUPTCY')">Bankruptcy</a></td>
        <td align="center" nowrap <TMPL_IF NAME=CRIM_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_CRIM')">State and Local<br>Criminal Records</a></td>
        <td align="center" nowrap <TMPL_IF NAME=CIVIL_COURT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT')">State and Local<br>Civil Court</a></td>
        <td align="center" nowrap <TMPL_IF NAME=OFFICIAL_RECORDS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS')">Official<br>Records</a></td>
        <td align="center" nowrap <TMPL_IF NAME=MARRIAGE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_MARRIAGE')">Marriages /<br> Divorces</a></td>
        <td align="center" nowrap <TMPL_IF NAME=FORECLOSURE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_FORECLOSURE')">Foreclosures</a></td>
        <td align="center" nowrap <TMPL_IF NAME=LIEN_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_LIENS')">Liens &amp;<br>Judgments</a></td>
	<TMPL_UNLESS DELETE_FED_CRIM_COURT><td align="center" nowrap <TMPL_IF NAME=FED_CRIM_COURT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_FED_CRIM_COURT')">Federal Criminal<br>Court Records</a></td></TMPL_UNLESS>
	<TMPL_UNLESS DELETE_FED_CIVIL_COURT><td align="center" nowrap <TMPL_IF NAME=FED_CIVIL_COURT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_FED_CIVIL_COURT')">Federal Civil<br>Court Records</a></td></TMPL_UNLESS>

  <TMPL_IF NAME="FED_CIVIL_COURT_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/fedcivil_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/federal_civil_courts_help.html','HelpWindow',780,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>
  <TMPL_IF NAME="FED_CRIM_COURT_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/fedcrim_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/federal_criminal_courts_help.html','HelpWindow',780,490,1,1,1,1,1,0);void(0);">Help</a></td>
  </TMPL_IF>

      <TMPL_IF NAME=BANKRUPTCY_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/bankruptcy_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/bankruptcy_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=CRIM_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',600,450,1,1,1,1,1,0,'','coverage/crim_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/criminal_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=CIVIL_COURT_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',600,500,0,0,0,0,0,0,'','coverage/civil_court_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/civil_court_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME="OFFICIAL_RECORDS_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,510,0,0,0,1,1,0,'','coverage/official_records_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/official_records_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME="MARRIAGE_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',600,350,0,0,0,1,1,0,'','coverage/marriages_divorces_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/marriages_divorces_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME="FORECLOSURE_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/foreclosures_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/foreclosure_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME="LIEN_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',600,360,0,0,0,0,0,0,'','coverage/liens_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/lien_judgment_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      </TMPL_IF>

      <TMPL_IF NAME=IM_ON_LICENSE_SEARCH>
        <td align="center" nowrap <TMPL_IF NAME=LICENSE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('WS_SEARCH/SHOW_LICENSE')">Driver<br>Licenses</a></td>
        <td align="center" nowrap <TMPL_IF NAME=MVR_REPORT>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_MVR')">MVR<br>Report</a></td>
        <td align="center" nowrap <TMPL_IF NAME=FAA_PILOT_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_FAA_PILOT')">FAA<br>Pilots</a></td>
        <td align="center" nowrap <TMPL_IF NAME=HUNTING_LICENSE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE')">Hunting &<br>Fishing</a></td>
        <td align="center" nowrap <TMPL_IF NAME=CONCEALED_WEAPON_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON')">Concealed<br>Weapons</a></td>
        <td align="center" nowrap <TMPL_IF NAME=FIREARMS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_FIREARMS')">Federal Firearms<br>& Explosives</a></td>
        <td align="center" nowrap <TMPL_IF NAME=PROF_LICENSE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE')">Professional<br>Licenses</a></td>

      <TMPL_IF NAME=PROF_LICENSE_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',600,420,0,0,0,1,1,0,'','coverage/prof_licenses_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/prof_license_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=LICENSE_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,760,0,0,0,1,1,0,'','coverage/dl_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/dl_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=MVR_REPORT>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/mvr_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/accidents_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=FAA_PILOT_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/faa_pilots_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=HUNTING_LICENSE_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/hunting_fishing_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/hunting_fishing_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=CONCEALED_WEAPON_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/concealed_weapons_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/concealed_weapons_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=FIREARMS_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_plus_dc_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/federal_firearms_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      </TMPL_IF>
      
      <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>
        <td align="center" nowrap <TMPL_IF NAME=PROVIDER_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PROVIDER')">Provider</a></td>
        <td align="center" nowrap <TMPL_IF NAME=SANCTION_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_SANCTION')">Provider<br>Sanction</a></td>
        <td align="center" nowrap <TMPL_IF NAME=DEA_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DEA')">DEA Controlled<br>Substances</a></td>
      <TMPL_IF NAME=PROVIDER_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/hea/provider_search_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=SANCTION_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/hea/provider_sanction_search_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME=DEA_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/all50_plus_dc_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/dea_controlled_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      </TMPL_IF>
      
      <TMPL_IF NAME=IM_ON_NEWS_SEARCH>
        <TMPL_UNLESS DONT_SHOW_NEWS>
        <td align="center" nowrap  <TMPL_IF NAME=NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_NEWS')">People in<br>the News</a></td>
        <td  align="center" nowrap <TMPL_IF NAME=BUS_NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_BUS_NEWS')">Businesses in<br>the News</a></td>
        </TMPL_UNLESS>
	<td align="center" nowrap  <TMPL_IF NAME=INSTOPICS_NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_INSTOPICS_NEWS')">Insurance topics<br>in the News</a></td>
	<td align="center" nowrap  <TMPL_IF NAME=DO_NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DO_NEWS')">Deaths & Obituaries<br>in the News</a></td>
	<!--
	<td align="center" nowrap <TMPL_IF NAME=TODAYS_NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_TODAYS_NEWS')">Health Care<br>News</a></td>
	-->
	<td align="center" nowrap <TMPL_IF NAME=ARCHIVED_NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_ARCHIVED_NEWS')">Archived<br>News</a></td>
        
	<TMPL_IF NAME="NEWS_SEARCH">
          <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
          <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/news_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=BUS_NEWS_SEARCH>
          <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
          <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/news_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
        </TMPL_IF>
	<TMPL_IF NAME="INSTOPICS_NEWS_SEARCH">
	<td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
	<td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/insurance_topics_news_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
	</TMPL_IF>

	<TMPL_IF NAME="DO_NEWS_SEARCH">
	<td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
	<td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs"  href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/deaths_obituaries_news_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
	</TMPL_IF>

	<TMPL_IF NAME=TODAYS_NEWS_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/140956.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/irs/find_todays_search_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
	</TMPL_IF>

	<TMPL_IF NAME=ARCHIVED_NEWS_SEARCH>
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/irs/find_archived_news_search_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
	</TMPL_IF>
	
      </TMPL_IF>
      
      <TMPL_IF NAME=IM_ON_DA_SEARCH>
          <TMPL_UNLESS NAME="DA_ONLY">
	  <TMPL_UNLESS DELETE_DA_WIRELESS><td align="center" nowrap <TMPL_IF NAME=DA_WIRELESS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS')">Phones Plus</a></td></TMPL_UNLESS>
	  </TMPL_UNLESS>
        <td align="center" nowrap <TMPL_IF NAME=DA_BASIC_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DA_BASIC')">Basic Lookup</a></td>
        <td align="center" nowrap <TMPL_IF NAME=DA_REVERSE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_DA_REVERSE')">Reverse Lookup</a></td>
        <TMPL_UNLESS DELETE_CANADIAN_PHONES><td align="center" nowrap <TMPL_IF NAME=CANADIAN_PHONES_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH2/SHOW_CANADIAN_PHONES')">Canadian Phones</a></td></TMPL_UNLESS>
      <TMPL_IF NAME="DA_BASIC_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/phone_base_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/da_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      <TMPL_IF NAME="DA_REVERSE_SEARCH">
        <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,0,0,0,'','coverage/phone_base_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/da_help.html#reverse','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
<TMPL_IF NAME="DA_WIRELESS_SEARCH">
    <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/phone_base_coverage');">Coverage</a></td>
        <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/phones_plus_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
	</TMPL_IF>
	      <TMPL_IF NAME="CANADIAN_PHONES_SEARCH">
	 <td width="10%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ca_phone_coverage');">Coverage</a></td>
	 <td width="6%" class="utiltabs" align="center" nowrap><a class="searchtabs" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/canadian_phones_help.html','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Help</a></td>
      </TMPL_IF>
      </TMPL_IF>
      </tr>
    </table>

<!-- end hea/lite/hea_search_inputs_tabs.tpl -->
