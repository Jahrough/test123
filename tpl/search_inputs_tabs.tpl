<!-- begin search_inputs_tabs.tpl -->

<TMPL_IF NAME=IM_ON_ASSET_SEARCH>
  <TMPL_UNLESS DELETE_MV> 
  <TMPL_IF NAME=DL_REG_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/mv_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('WS_SEARCH/SHOW_DL_REG');" onMouseOver="dl_registration.src='<TMPL_VAR NAME=IMGPATH>/mv_tab_over.gif';showalt('Motor Vehicles','dl_registration');" onMouseOut="dl_registration.src='<TMPL_VAR NAME=IMGPATH>/mv_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="dl_registration" src="<TMPL_VAR NAME=IMGPATH>/mv_tab_on.gif" id="dl_registration"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS COL>
  <TMPL_UNLESS HIDE_RT_MVR> 
  <TMPL_IF NAME=RT_MVR_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/rt_mvr_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_RT_MVR');" onMouseOver="rt_mvr.src='<TMPL_VAR NAME=IMGPATH>/rt_mvr_tab_over.gif';showalt('Real-Time MVR','rt_mvr');" onMouseOut="rt_mvr.src='<TMPL_VAR NAME=IMGPATH>/rt_mvr_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="rt_mvr" src="<TMPL_VAR NAME=IMGPATH>/rt_mvr_tab_on.gif" id="rt_mvr"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_ASSESSMENT> 
  <TMPL_IF NAME=PROPERTY_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/property_assessment_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_PROP');" onMouseOver="property.src='<TMPL_VAR NAME=IMGPATH>/property_assessment_tab_over.gif';showalt('Property Assessments','property');" onMouseOut="property.src='<TMPL_VAR NAME=IMGPATH>/property_assessment_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="property" src="<TMPL_VAR NAME=IMGPATH>/property_assessment_tab_on.gif" id="property"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DEEDS> 
  <TMPL_IF NAME=PROPERTY_DEED_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/property_deeds_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_PROP_DEED');" onMouseOver="propertydeed.src='<TMPL_VAR NAME=IMGPATH>/property_deeds_tab_over.gif';showalt('Property Deeds','propertydeed');" onMouseOut="propertydeed.src='<TMPL_VAR NAME=IMGPATH>/property_deeds_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="propertydeed" src="<TMPL_VAR NAME=IMGPATH>/property_deeds_tab_on.gif" id="propertydeed"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_VESSEL> 
  <TMPL_IF NAME=MERCHANT_VESSEL_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/watercraft_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('WS_SEARCH/SHOW_VESSEL');" onMouseOver="vessel.src='<TMPL_VAR NAME=IMGPATH>/watercraft_tab_over.gif';showalt('Watercraft','vessel');" onMouseOut="vessel.src='<TMPL_VAR NAME=IMGPATH>/watercraft_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="vessel" src="<TMPL_VAR NAME=IMGPATH>/watercraft_tab_on.gif" id="vessel"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_AIRCRAFT> 
  <TMPL_IF NAME=AIRCRAFT_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/aircraft_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_AIRCRAFT');" onMouseOver="aircraft.src='<TMPL_VAR NAME=IMGPATH>/aircraft_tab_over.gif';showalt('FAA Aircraft','aircraft');" onMouseOut="aircraft.src='<TMPL_VAR NAME=IMGPATH>/aircraft_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="aircraft" src="<TMPL_VAR NAME=IMGPATH>/aircraft_tab_on.gif" id="aircraft"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_IF LE>
  <TMPL_UNLESS DELETE_MV_WILDCARD> 
  <TMPL_IF NAME=MV_WILDCARD_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/wild_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH2/SHOW_MV_WILDCARD');" onMouseOver="mv_wildcard.src='<TMPL_VAR NAME=IMGPATH>/wild_tab_over.gif';showalt('Motor Vehicles Wildcard Search','mv_wildcard');" onMouseOut="mv_wildcard.src='<TMPL_VAR NAME=IMGPATH>/wild_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="mv_wildcard" src="<TMPL_VAR NAME=IMGPATH>/wild_tab_on.gif" id="mv_wildcard"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_IF>

</TMPL_IF> 

<TMPL_IF NAME=IM_ON_SEARCH>

  <TMPL_UNLESS DELETE_PERSON> 
  <TMPL_IF NAME="PERSON_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/person_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_SEARCH');" onMouseOver="person.src='<TMPL_VAR NAME=IMGPATH>/person_tab_over.gif';showalt('Person','person');" onMouseOut="person.src='<TMPL_VAR NAME=IMGPATH>/person_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="person" src="<TMPL_VAR NAME=IMGPATH>/person_tab_on.gif" id="person"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS HIDE_RT_PERSON>
  <TMPL_UNLESS DELETE_RT_PERSON>
  <TMPL_IF NAME="REAL_TIME_PERSON_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/real_person_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_REAL_TIME_PERSON');" onMouseOver="real_person.src='<TMPL_VAR NAME="IMGPATH">/real_person_tab_over.gif';showalt('Real-Time Person Search','real_person');" onMouseOut="real_person.src='<TMPL_VAR NAME=IMGPATH>/real_person_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="real_person" src="<TMPL_VAR NAME=IMGPATH>/real_person_tab_on.gif" id="real_person"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

  <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH">
  <TMPL_UNLESS DELETE_ADV> 
  <TMPL_IF NAME="ADV_SEARCH">
  <TMPL_IF COL>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/adv_person_tab_up.gif"></td>
    <TMPL_ELSE>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/adv_person_tab_up.gif"></td>
    </TMPL_IF>
  <TMPL_ELSE>
  <TMPL_IF COL>
    <td><a href="javascript:send_event('SEARCH/SHOW_ADV');" onMouseOver="adv_person.src='<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/adv_person_tab_over.gif';showalt('Deep Skip Search','adv_person');" onMouseOut="adv_person.src='<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/adv_person_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="adv_person" src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/adv_person_tab_on.gif" id="deep"></a></td>
    <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_ADV');" onMouseOver="adv_person.src='<TMPL_VAR NAME=IMGPATH>/adv_person_tab_over.gif';showalt('Advanced Person Search','adv_person');" onMouseOut="adv_person.src='<TMPL_VAR NAME=IMGPATH>/adv_person_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="adv_person" src="<TMPL_VAR NAME=IMGPATH>/adv_person_tab_on.gif" id="adv_person"></a></td>
    </TMPL_IF>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_IF>

  <TMPL_UNLESS DELETE_PAW> 
  <TMPL_IF NAME="PAW_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/people_at_work_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_PAW');" onMouseOver="paw.src='<TMPL_VAR NAME=IMGPATH>/people_at_work_tab_over.gif';showalt('People at Work','paw');" onMouseOut="paw.src='<TMPL_VAR NAME=IMGPATH>/people_at_work_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="paw" src="<TMPL_VAR NAME=IMGPATH>/people_at_work_tab_on.gif" id="paw"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  
  <TMPL_UNLESS HIDE_INSTANTID>
  <TMPL_UNLESS DELETE_INSTANT_ID> 
  <TMPL_IF NAME="INSTANT_ID_REPORT">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/instantid_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_INSTANT_ID');" onMouseOver="instantid.src='<TMPL_VAR NAME=IMGPATH>/instantid_tab_over.gif';showalt('InstantID','instantid');" onMouseOut="instantid.src='<TMPL_VAR NAME=IMGPATH>/instantid_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="instantid" src="<TMPL_VAR NAME=IMGPATH>/instantid_tab_on.gif" id="instantid"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

  
  <TMPL_UNLESS DONT_SHOW_NEWS>
  <TMPL_UNLESS DELETE_NEWS> 
  <TMPL_IF NAME="NEWS_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/news_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_NEWS');" onMouseOver="news.src='<TMPL_VAR NAME=IMGPATH>/news_tab_over.gif';showalt('News','news');" onMouseOut="news.src='<TMPL_VAR NAME=IMGPATH>/news_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="news" src="<TMPL_VAR NAME=IMGPATH>/news_tab_on.gif" id="news"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DEATH> 
  <TMPL_IF NAME="DEATH_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/death_cert_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('WS_SEARCH/SHOW_DEATH');" onMouseOver="death.src='<TMPL_VAR NAME=IMGPATH>/deathcert_tab_over.gif';showalt('Death Records','death');" onMouseOut="death.src='<TMPL_VAR NAME=IMGPATH>/deathcert_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="death" src="<TMPL_VAR NAME=IMGPATH>/deathcert_tab_on.gif" id="death"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS LE>
  <TMPL_UNLESS GOV>
  <TMPL_UNLESS DELETE_EMAIL> 
  <TMPL_IF NAME="EMAIL_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/email_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_EMAIL');" onMouseOver="email.src='<TMPL_VAR NAME=IMGPATH>/email_tab_over.gif';showalt('Email','email');" onMouseOut="email.src='<TMPL_VAR NAME=IMGPATH>/email_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="email" src="<TMPL_VAR NAME=IMGPATH>/email_tab_on.gif" id="email"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

</TMPL_IF>

<TMPL_IF NAME=IM_ON_LEGAL_SEARCH>

  <TMPL_UNLESS DELETE_BANKRUPTCY> 
  <TMPL_IF NAME="BANKRUPTCY_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/bankruptcy_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_BANKRUPTCY');" onMouseOver="bk.src='<TMPL_VAR NAME=IMGPATH>/bankruptcy_tab_over.gif';showalt('Bankruptcy','bk');" onMouseOut="bk.src='<TMPL_VAR NAME=IMGPATH>/bankruptcy_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="bk" src="<TMPL_VAR NAME=IMGPATH>/bankruptcy_tab_on.gif" id="bk"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_CRIM> 
  <TMPL_IF NAME="CRIM_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/criminal_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_CRIM');" onMouseOver="criminal.src='<TMPL_VAR NAME=IMGPATH>/criminal_tab_over.gif';showalt('Criminal Records','criminal');" onMouseOut="criminal.src='<TMPL_VAR NAME=IMGPATH>/criminal_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="criminal" src="<TMPL_VAR NAME=IMGPATH>/criminal_tab_on.gif" id="criminal"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_CIVIL_COURT> 
  <TMPL_IF NAME="CIVIL_COURT_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/civil_court_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT');" onMouseOver="civil_court.src='<TMPL_VAR NAME=IMGPATH>/civil_court_tab_over.gif';showalt('Civil Courts','civil_court');" onMouseOut="civil_court.src='<TMPL_VAR NAME=IMGPATH>/civil_court_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="civil_court" src="<TMPL_VAR NAME=IMGPATH>/civil_court_tab_on.gif" id="civil_court"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_ACCIDENT> 
  <TMPL_IF NAME="ACCIDENT_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/accident_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_ACCIDENT');" onMouseOver="accident.src='<TMPL_VAR NAME=IMGPATH>/accident_tab_over.gif';showalt('Florida Accidents','accident');" onMouseOut="accident.src='<TMPL_VAR NAME=IMGPATH>/accident_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="accident" src="<TMPL_VAR NAME=IMGPATH>/accident_tab_on.gif" id="accident"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_PATRIOTACT> 
  <TMPL_IF NAME="PATRIOTACT_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/patriot_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');" onMouseOver="patriot.src='<TMPL_VAR NAME=IMGPATH>/patriot_tab_over.gif';showalt('USA PATRIOT Act','patriot');" onMouseOut="patriot.src='<TMPL_VAR NAME=IMGPATH>/patriot_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="patriot" src="<TMPL_VAR NAME=IMGPATH>/patriot_tab_on.gif" id="patriot"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_SEXPREDATOR> 
  <TMPL_IF NAME="SEXPREDATOR_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/sexual_predator_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR');" onMouseOver="sexual_predator.src='<TMPL_VAR NAME=IMGPATH>/sexual_predator_tab_over.gif';showalt('Sexual Offenders','sexual_predator');" onMouseOut="sexual_predator.src='<TMPL_VAR NAME=IMGPATH>/sexual_predator_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="sexual_predator" src="<TMPL_VAR NAME=IMGPATH>/sexual_predator_tab_on.gif" id="sexual_predator"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_OFFICIAL_RECORDS> 
  <TMPL_IF NAME="OFFICIAL_RECORDS_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/official_records_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS');" onMouseOver="official_records.src='<TMPL_VAR NAME=IMGPATH>/official_records_tab_over.gif';showalt('Official Records','official_records');" onMouseOut="official_records.src='<TMPL_VAR NAME=IMGPATH>/official_records_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="official_records" src="<TMPL_VAR NAME=IMGPATH>/official_records_tab_on.gif" id="official_records"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_MARRIAGE> 
  <TMPL_IF NAME="MARRIAGE_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/marriage_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_MARRIAGE');" onMouseOver="marriage.src='<TMPL_VAR NAME=IMGPATH>/marriage_tab_over.gif';showalt('Marriages / Divorces','marriage');" onMouseOut="marriage.src='<TMPL_VAR NAME=IMGPATH>/marriage_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="marriage" src="<TMPL_VAR NAME=IMGPATH>/marriage_tab_on.gif" id="marriage"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_FORECLOSURE> 
  <TMPL_IF NAME="FORECLOSURE_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/foreclosure_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_FORECLOSURE');" onMouseOver="foreclosure.src='<TMPL_VAR NAME=IMGPATH>/foreclosure_tab_over.gif';showalt('Foreclosures','foreclosure');" onMouseOut="foreclosure.src='<TMPL_VAR NAME=IMGPATH>/foreclosure_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="foreclosure" src="<TMPL_VAR NAME=IMGPATH>/foreclosure_tab_on.gif" id="foreclosure"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_LIEN> 
  <TMPL_IF NAME="LIEN_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/liens_judge_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_LIENS');" onMouseOver="lj.src='<TMPL_VAR NAME=IMGPATH>/liens_judge_tab_over.gif';showalt('Liens & Judgments','lj');" onMouseOut="lj.src='<TMPL_VAR NAME=IMGPATH>/liens_judge_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="lj" src="<TMPL_VAR NAME=IMGPATH>/liens_judge_tab_on.gif" id="lj"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <!--
  <TMPL_UNLESS DELETE_COURT_CASE> 
  <TMPL_IF NAME="COURT_CASE_SEARCH">
	<td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/ccbt_tab_up.gif"></td>
      <TMPL_ELSE>
	<td><a href="javascript:send_event('SEARCH/SHOW_COURT_CASE');" onMouseOver="ctcase.src='<TMPL_VAR NAME=IMGPATH>/ccbt_tab_over.gif';showalt('Court Case by Type','ctcase');" onMouseOut="ctcase.src='<TMPL_VAR NAME=IMGPATH>/ccbt_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="ctcase" src="<TMPL_VAR NAME=IMGPATH>/ccbt_tab_on.gif" id="ctcase"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  -->
</TMPL_IF>

<TMPL_IF NAME=IM_ON_LICENSE_SEARCH>

  <TMPL_UNLESS DELETE_DL> 
  <TMPL_IF NAME="LICENSE_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/license_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('WS_SEARCH/SHOW_LICENSE');" onMouseOver="license.src='<TMPL_VAR NAME=IMGPATH>/license_tab_over.gif';showalt('Driver Licenses','license');" onMouseOut="license.src='<TMPL_VAR NAME=IMGPATH>/license_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="license" src="<TMPL_VAR NAME=IMGPATH>/license_tab_on.gif" id="license"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_PROF_LICENSE> 
  <TMPL_IF NAME="PROF_LICENSE_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/prof_license_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE');" onMouseOver="prof_license.src='<TMPL_VAR NAME=IMGPATH>/prof_license_tab_over.gif';showalt('Professional Licenses','prof_license');" onMouseOut="prof_license.src='<TMPL_VAR NAME=IMGPATH>/prof_license_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="prof_license" src="<TMPL_VAR NAME=IMGPATH>/prof_license_tab_on.gif" id="prof_license"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_FAA_PILOT> 
  <TMPL_IF NAME="FAA_PILOT_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/faa_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_FAA_PILOT');" onMouseOver="faa.src='<TMPL_VAR NAME=IMGPATH>/faa_tab_over.gif';showalt('FAA Pilots','faa');" onMouseOut="faa.src='<TMPL_VAR NAME=IMGPATH>/faa_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="faa" src="<TMPL_VAR NAME=IMGPATH>/faa_tab_on.gif" id="faa"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>


  <TMPL_UNLESS DELETE_HUNTING_LICENSE> 
  <TMPL_IF NAME="HUNTING_LICENSE_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/hunting_fishing_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE');" onMouseOver="hunting.src='<TMPL_VAR NAME=IMGPATH>/hunting_fishing_tab_over.gif';showalt('Hunting and Fishing Licenses','hunting');" onMouseOut="hunting.src='<TMPL_VAR NAME=IMGPATH>/hunting_fishing_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="hunting" src="<TMPL_VAR NAME=IMGPATH>/hunting_fishing_tab_on.gif" id="hunting"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_CONCEALED_WEAPON> 
  <TMPL_IF NAME="CONCEALED_WEAPON_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/concealed_weapons_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON');" onMouseOver="concealed_weapons.src='<TMPL_VAR NAME=IMGPATH>/concealed_weapons_tab_over.gif';showalt('Concealed Weapons Permits','concealed_weapons');" onMouseOut="concealed_weapons.src='<TMPL_VAR NAME=IMGPATH>/concealed_weapons_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="concealed_weapons" src="<TMPL_VAR NAME=IMGPATH>/concealed_weapons_tab_on.gif" id="concealed_weapons"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_VOTER_REGISTRATION> 
  <TMPL_IF NAME="VOTER_REGISTRATION_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/voter_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('WS_SEARCH/SHOW_VOTER_REGISTRATION');" onMouseOver="voter.src='<TMPL_VAR NAME=IMGPATH>/voter_tab_over.gif';showalt('Voter Registrations','voter');" onMouseOut="voter.src='<TMPL_VAR NAME=IMGPATH>/voter_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="voter" src="<TMPL_VAR NAME=IMGPATH>/voter_tab_on.gif" id="voter"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_FIREARMS> 
  <TMPL_IF NAME="FIREARMS_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/federal_firearms_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_FIREARMS');" onMouseOver="firearms.src='<TMPL_VAR NAME=IMGPATH>/federal_firearms_tab_over.gif';showalt('Federal Firearms &amp; Explosives','firearms');" onMouseOut="firearms.src='<TMPL_VAR NAME=IMGPATH>/federal_firearms_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="firearms" src="<TMPL_VAR NAME=IMGPATH>/federal_firearms_tab_on.gif" id="firearms"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DEA> 
  <TMPL_IF NAME="DEA_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/dea_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_DEA');" onMouseOver="dea.src='<TMPL_VAR NAME=IMGPATH>/dea_tab_over.gif';showalt('DEA Controlled Substances','dea');" onMouseOut="dea.src='<TMPL_VAR NAME=IMGPATH>/dea_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="dea" src="<TMPL_VAR NAME=IMGPATH>/dea_tab_on.gif" id="dea"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_MVR> 
  <TMPL_IF NAME="MVR_REPORT">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/mvr_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_MVR');" onMouseOver="mvr.src='<TMPL_VAR NAME=IMGPATH>/mvr_tab_over.gif';showalt('MVR Reports (Driving Records)','mvr');" onMouseOut="mvr.src='<TMPL_VAR NAME=IMGPATH>/mvr_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="mvr" src="<TMPL_VAR NAME=IMGPATH>/mvr_tab_on.gif" id="mvr"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

</TMPL_IF>

<TMPL_IF NAME=IM_ON_DA_SEARCH>

  <TMPL_IF NAME=SHOW_RT_PHONE> 
  <TMPL_IF NAME=RT_PHONE_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/realtime_phones_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_RT_PHONE');" onMouseOver="rtphone.src='<TMPL_VAR NAME=IMGPATH>/realtime_phones_tab_over.gif';showalt('Real-Time Phones','rtphone');" onMouseOut="rtphone.src='<TMPL_VAR NAME=IMGPATH>/realtime_phones_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="rtphone" src="<TMPL_VAR NAME=IMGPATH>/realtime_phones_tab_on.gif" id="rtphone"></a></td>
  </TMPL_IF>
  </TMPL_IF>

<TMPL_UNLESS NAME="DA_ONLY">

  <TMPL_UNLESS DELETE_DA_WIRELESS> 
  <TMPL_IF NAME=DA_WIRELESS_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/da_wireless_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');" onMouseOver="dawireless.src='<TMPL_VAR NAME=IMGPATH>/da_wireless_tab_over.gif';showalt('Phones Plus','dawireless');" onMouseOut="dawireless.src='<TMPL_VAR NAME=IMGPATH>/da_wireless_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="dawireless" src="<TMPL_VAR NAME=IMGPATH>/da_wireless_tab_on.gif" id="dawireless"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

</TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DA_BASIC> 
  <TMPL_IF NAME=DA_BASIC_SEARCH>
    <TMPL_IF NAME="DA_ONLY"><script>erase_cookie('token');</script></TMPL_IF>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/da_basic_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_DA_BASIC');" onMouseOver="basic.src='<TMPL_VAR NAME=IMGPATH>/da_basic_tab_over.gif';showalt('Basic Lookup','basic');" onMouseOut="basic.src='<TMPL_VAR NAME=IMGPATH>/da_basic_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="basic" src="<TMPL_VAR NAME=IMGPATH>/da_basic_tab_on.gif" id="basic"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DA_REVERSE> 
  <TMPL_IF NAME=DA_REVERSE_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/da_reverse_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');" onMouseOver="reverse.src='<TMPL_VAR NAME=IMGPATH>/da_reverse_tab_over.gif';showalt('Reverse Lookup','reverse');" onMouseOut="reverse.src='<TMPL_VAR NAME=IMGPATH>/da_reverse_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="reverse" src="<TMPL_VAR NAME=IMGPATH>/da_reverse_tab_on.gif" id="reverse"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_IF ENABLE_LOCATE_PLUS_SEARCH>
  <TMPL_UNLESS DELETE_LOCATE_PLUS> 
  <TMPL_IF NAME=LOCATE_PLUS_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/locate_plus_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_PNG');" onMouseOver="locate_plus.src='<TMPL_VAR NAME=IMGPATH>/locate_plus_tab_over.gif';showalt('Phone Network Gateway','locate_plus');" onMouseOut="locate_plus.src='<TMPL_VAR NAME=IMGPATH>/locate_plus_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="locate_plus" src="<TMPL_VAR NAME=IMGPATH>/locate_plus_tab_on.gif" id="locate_plus"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_IF>

  <TMPL_UNLESS LE>
  <TMPL_UNLESS GOV>
  <TMPL_UNLESS DELETE_CANADIAN_PHONES> 
  <TMPL_IF NAME=CANADIAN_PHONES_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/canadian_phones_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH2/SHOW_CANADIAN_PHONES');" onMouseOver="canadian_phones.src='<TMPL_VAR NAME=IMGPATH>/canadian_phones_tab_over.gif';showalt('Canadian Phones','canadian_phones');" onMouseOut="canadian_phones.src='<TMPL_VAR NAME=IMGPATH>/canadian_phones_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="canadian_phones" src="<TMPL_VAR NAME=IMGPATH>/canadian_phones_tab_on.gif" id="canadian_phones"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>
  </TMPL_UNLESS>


</TMPL_IF>

<TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>
  <TMPL_UNLESS DELETE_PROVIDER>
  <TMPL_IF NAME="PROVIDER_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/provider_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_PROVIDER');" onMouseOver="provider.src='<TMPL_VAR NAME=IMGPATH>/provider_tab_over.gif';showalt('Provider','provider');" onMouseOut="provider.src='<TMPL_VAR NAME=IMGPATH>/provider_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="provider" src="<TMPL_VAR NAME=IMGPATH>/provider_tab_on.gif" id="provider"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_SANCTION>
  <TMPL_IF NAME="SANCTION_SEARCH">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/provider_sanction_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_SANCTION');" onMouseOver="sanction.src='<TMPL_VAR NAME=IMGPATH>/provider_sanction_tab_over.gif';showalt('Sanction','sanction');" onMouseOut="sanction.src='<TMPL_VAR NAME=IMGPATH>/provider_sanction_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="sanction" src="<TMPL_VAR NAME=IMGPATH>/provider_sanction_tab_on.gif" id="sanction"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
</TMPL_IF>

<TMPL_IF NAME=IM_ON_BUS_SEARCH>
  <TMPL_UNLESS DELETE_BUS>
  <TMPL_IF NAME=BUS_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/bus_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_BUS');" onMouseOver="bus.src='<TMPL_VAR NAME=IMGPATH>/bus_tab_over.gif';showalt('Businesses','bus');" onMouseOut="bus.src='<TMPL_VAR NAME=IMGPATH>/bus_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="bus" src="<TMPL_VAR NAME=IMGPATH>/bus_tab_on.gif" id="bus"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_CORPORATION>
  <TMPL_IF NAME=CORPORATION_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/corp_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('WS_SEARCH/SHOW_CORPORATION');" onMouseOver="corp.src='<TMPL_VAR NAME=IMGPATH>/corp_tab_over.gif';showalt('Corporations','corp');" onMouseOut="corp.src='<TMPL_VAR NAME=IMGPATH>/corp_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="corp" src="<TMPL_VAR NAME=IMGPATH>/corp_tab_on.gif" id="corp"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_UCC>
  <TMPL_IF NAME=UCC_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/ucc_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('WS_SEARCH/SHOW_UCC');" onMouseOver="ucc.src='<TMPL_VAR NAME=IMGPATH>/ucc_tab_over.gif';showalt('UCC Filings','ucc');" onMouseOut="ucc.src='<TMPL_VAR NAME=IMGPATH>/ucc_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="ucc" src="<TMPL_VAR NAME=IMGPATH>/ucc_tab_on.gif" id="ucc"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_WHOIS>
  <TMPL_IF NAME=WHOIS_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/whois_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_WHOIS');" onMouseOver="whois.src='<TMPL_VAR NAME=IMGPATH>/whois_tab_over.gif';showalt('Internet Domains','whois');" onMouseOut="whois.src='<TMPL_VAR NAME=IMGPATH>/whois_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="whois" src="<TMPL_VAR NAME=IMGPATH>/whois_tab_on.gif" id="whois"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_D_AND_B>
  <TMPL_IF NAME=D_AND_B_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/dnb_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_D_AND_B');" onMouseOver="dnb.src='<TMPL_VAR NAME=IMGPATH>/dnb_tab_over.gif';showalt('Dun &amp; Bradstreet','dnb');" onMouseOut="dnb.src='<TMPL_VAR NAME=IMGPATH>/dnb_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="dnb" src="<TMPL_VAR NAME=IMGPATH>/dnb_tab_on.gif" id="dnb"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

  <TMPL_UNLESS DELETE_DELCO>
  <TMPL_IF NAME=DELCO_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/delaware_corp_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_DELCO');" onMouseOver="delco.src='<TMPL_VAR NAME=IMGPATH>/delaware_corp_tab_over.gif';showalt('Delaware Corporations','delco');" onMouseOut="delco.src='<TMPL_VAR NAME=IMGPATH>/delaware_corp_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="delco" src="<TMPL_VAR NAME=IMGPATH>/delaware_corp_tab_on.gif" id="delco"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>

 <TMPL_UNLESS DONT_SHOW_NEWS>
  <TMPL_UNLESS DELETE_BUS_NEWS>
  <TMPL_IF NAME=BUS_NEWS_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/news_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');" onMouseOver="bnews.src='<TMPL_VAR NAME=IMGPATH>/news_tab_over.gif';showalt('Business News','bnews');" onMouseOut="bnews.src='<TMPL_VAR NAME=IMGPATH>/news_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="bnews" src="<TMPL_VAR NAME=IMGPATH>/news_tab_on.gif" id="bnews"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

  
  <TMPL_UNLESS HIDE_BUS_INSTANTID>
  <TMPL_UNLESS DELETE_BUS_INSTANT_ID>
  <TMPL_IF NAME="BUS_INSTANT_ID_REPORT">
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/instantid_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_BUS_INSTANT_ID');" onMouseOver="bus_instantid.src='<TMPL_VAR NAME=IMGPATH>/instantid_tab_over.gif';showalt('Business InstantID','bus_instantid');" onMouseOut="bus_instantid.src='<TMPL_VAR NAME=IMGPATH>/instantid_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="bus_instantid" src="<TMPL_VAR NAME=IMGPATH>/instantid_tab_on.gif" id="bus_instantid"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

  <TMPL_UNLESS HIDE_BUS_CREDIT>
  <TMPL_UNLESS DELETE_BUS_CREDIT>
  <TMPL_IF NAME=BUS_CREDIT_SEARCH>
    <td><img width="75" height="46" border="0" src="<TMPL_VAR NAME=IMGPATH>/bus_credit_tab_up.gif"></td>
  <TMPL_ELSE>
    <td><a href="javascript:send_event('SEARCH/SHOW_BUS_CREDIT');" onMouseOver="bus_credit.src='<TMPL_VAR NAME=IMGPATH>/bus_credit_tab_over.gif';showalt('Business Credit','bus_credit');" onMouseOut="bus_credit.src='<TMPL_VAR NAME=IMGPATH>/bus_credit_tab_on.gif';return nd();"><img width="52" height="46" border="0" name="bus_credit" src="<TMPL_VAR NAME=IMGPATH>/bus_credit_tab_on.gif" id="bus_credit"></a></td>
  </TMPL_IF>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

</TMPL_IF>

    <!-- Stretching Begins Here -->
    <td width="100%" height="29" valign="bottom">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" background="<TMPL_VAR NAME=IMGPATH>/stretchbar2.gif">
      <tr height="18">
        <td height="18" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    </td>
    <!-- End Stretching -->

    <td class="no-print" valign="bottom"><img border="0" width="18" height="18" src="<TMPL_VAR NAME=IMGPATH>/search_corner.gif"></td>
<!-- end search_inputs_tabs.tpl -->
