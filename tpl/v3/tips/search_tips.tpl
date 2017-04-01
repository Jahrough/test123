<!-- begin tips/search_tips.tpl -->
   <!--<h2><TMPL_VAR NAME="PAGE_TITLE"> Tips</h2><br/>-->
  <TMPL_IF NAME=POWER_BOOLEAN_SEARCH><TMPL_INCLUDE NAME="tips/power_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=PERSON_SEARCH><TMPL_INCLUDE NAME="tips/person_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=PERSON_SEARCH_PLUS><TMPL_INCLUDE NAME="tips/person_search_plus_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=FAP_SEARCH><TMPL_INCLUDE NAME="tips/adv_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=ADV_SEARCH><TMPL_INCLUDE NAME="tips/adv_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=PAW_SEARCH><TMPL_INCLUDE NAME="tips/paw_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME="CARRIER_DISCOVERY_REPORT"><TMPL_INCLUDE NAME="tips/carrier_discovery_report_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME="CLAIMS_DISCOVERY_REPORT"><TMPL_INCLUDE NAME="tips/claims_discovery_report_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=INSTANT_ID_REPORT><TMPL_INCLUDE NAME="tips/instant_id_report_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=NEWS_SEARCH><TMPL_INCLUDE NAME="tips/news_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=DEATH_SEARCH><TMPL_INCLUDE NAME="tips/death_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=EMAIL_SEARCH><TMPL_INCLUDE NAME="tips/email_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=SOC_REPORT><TMPL_INCLUDE NAME="tips/social_report_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=SOCIALMEDIA_SEARCH><TMPL_INCLUDE NAME="tips/socialmedia_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=BUS_SEARCH><TMPL_INCLUDE NAME="tips/bus_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=CORPORATION_SEARCH><TMPL_INCLUDE NAME="tips/corporation_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=UCC_SEARCH><TMPL_INCLUDE NAME="tips/ucc_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=WHOIS_SEARCH><TMPL_INCLUDE NAME="tips/whois_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=D_AND_B_SEARCH><TMPL_INCLUDE NAME="tips/d_and_b_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=DELCO_SEARCH><TMPL_INCLUDE NAME="tips/delco_search_tips.tpl"></TMPL_IF>
	<TMPL_IF NAME=BUS_NEWS_SEARCH><TMPL_INCLUDE NAME="tips/bus_news_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=BUS_INSTANT_ID_REPORT><TMPL_INCLUDE NAME="tips/bus_instant_id_report_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=BUS_CREDIT_SEARCH><TMPL_INCLUDE NAME="tips/bus_credit_search_tips.tpl"></TMPL_IF>
<TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_IF NAME=SEC_SEARCH><TMPL_INCLUDE NAME="tips/sec_search_tips.tpl"></TMPL_IF></TMPL_UNLESS>
<TMPL_IF NAME=OSHA_SEARCH><TMPL_INCLUDE NAME="tips/osha_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=DBGLOBAL_SEARCH><TMPL_INCLUDE NAME="tips/dbglobal_search_tips.tpl"></TMPL_IF>
<TMPL_UNLESS RESTRICT_LNLP_CONTENT>
  <TMPL_IF NAME=INSTOPICS_NEWS_SEARCH><TMPL_INCLUDE NAME="tips/news_search_tips.tpl"></TMPL_IF>
  <TMPL_IF NAME=DO_NEWS_SEARCH><TMPL_INCLUDE NAME="tips/news_search_tips.tpl"></TMPL_IF>
  <TMPL_IF NAME=ARCHIVED_NEWS_SEARCH><TMPL_INCLUDE NAME="tips/news_search_tips.tpl"></TMPL_IF>
  <TMPL_IF NAME=TODAYS_NEWS_SEARCH><TMPL_INCLUDE NAME="tips/news_search_tips.tpl"></TMPL_IF>
  <TMPL_IF NAME=US_NEWS_SEARCH><TMPL_INCLUDE NAME="tips/news_search_tips.tpl"></TMPL_IF>
  <TMPL_IF NAME=NON_US_NEWS_SEARCH><TMPL_INCLUDE NAME="tips/news_search_tips.tpl"></TMPL_IF>
  <TMPL_IF NAME=NEG_NEWS_SEARCH><TMPL_INCLUDE NAME="tips/news_search_tips.tpl"></TMPL_IF>
</TMPL_UNLESS>
<TMPL_IF NAME=CARRIER_ID_REPORT><TMPL_INCLUDE NAME="tips/carrier_id_report_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=COMPSEARCH_SEARCH><TMPL_INCLUDE NAME="tips/comp_search_tips.tpl"></TMPL_IF>
<TMPL_IF CONTACT_PLUS_SEARCH><TMPL_INCLUDE NAME="tips/contact_search_tips.tpl"></TMPL_IF>

<TMPL_IF NAME=RT_MVR_SEARCH>
  <TMPL_IF XBPS>
    <TMPL_INCLUDE NAME="tips/xbps_rt_mvr_search_tips.tpl">
  <TMPL_ELSE>
  <TMPL_IF INS>
    <TMPL_INCLUDE NAME="tips/ins_rt_mvr_search_tips.tpl">
  <TMPL_ELSE>
  <TMPL_IF LEG>
    <TMPL_INCLUDE NAME="tips/leg_rt_mvr_search_tips.tpl">
  <TMPL_ELSE>
  <TMPL_IF COL>
    <TMPL_INCLUDE NAME="tips/col_rt_mvr_search_tips.tpl">
  <TMPL_ELSE>
  <TMPL_IF FCOL_TCOL>
    <TMPL_INCLUDE NAME="tips/col_rt_mvr_search_tips.tpl">
  <TMPL_ELSE>
    <TMPL_INCLUDE NAME="tips/rt_mvr_search_tips.tpl">
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
</TMPL_IF>

<TMPL_IF NAME=MV_WILDCARD_SEARCH>
  <TMPL_IF XBPS>
    <TMPL_INCLUDE NAME="tips/mvr_wildcard_search_tips.tpl">
  <TMPL_ELSE>
  <TMPL_IF IRB>
    <TMPL_INCLUDE NAME="tips/mvr_wildcard_search_tips.tpl">
  </TMPL_IF>
  </TMPL_IF>
</TMPL_IF>

<TMPL_IF NAME=DL_REG_SEARCH><TMPL_INCLUDE NAME="tips/dl_reg_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=PROPERTY_SEARCH><TMPL_INCLUDE NAME="tips/property_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=PROPERTY_DEED_SEARCH><TMPL_INCLUDE NAME="tips/property_deed_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=MERCHANT_VESSEL_SEARCH><TMPL_INCLUDE NAME="tips/merchant_vessel_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FCRA_MERCHANT_VESSEL_SEARCH><TMPL_INCLUDE NAME="tips/fcra_merchant_vessel_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=AIRCRAFT_SEARCH><TMPL_INCLUDE NAME="tips/aircraft_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FCRA_AIRCRAFT_SEARCH><TMPL_INCLUDE NAME="tips/fcra_aircraft_search_tips.tpl"></TMPL_IF>


<TMPL_IF NAME=LICENSE_SEARCH><TMPL_INCLUDE NAME="tips/license_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=PROF_LICENSE_SEARCH><TMPL_INCLUDE NAME="tips/prof_license_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FAA_PILOT_SEARCH><TMPL_INCLUDE NAME="tips/faa_pilot_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FCRA_FAA_PILOT_SEARCH><TMPL_INCLUDE NAME="tips/fcra_faa_pilot_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=HUNTING_LICENSE_SEARCH><TMPL_INCLUDE NAME="tips/hunting_license_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FCRA_HUNTING_LICENSE_SEARCH><TMPL_INCLUDE NAME="tips/fcra_hunting_license_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=CONCEALED_WEAPON_SEARCH><TMPL_INCLUDE NAME="tips/concealed_weapon_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FCRA_CONCEALED_WEAPON_SEARCH><TMPL_INCLUDE NAME="tips/fcra_concealed_weapon_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=VOTER_REGISTRATION_SEARCH><TMPL_INCLUDE NAME="tips/voter_registration_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FIREARMS_SEARCH><TMPL_INCLUDE NAME="tips/firearms_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FCRA_FIREARMS_SEARCH><TMPL_INCLUDE NAME="tips/fcra_firearms_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=DEA_SEARCH><TMPL_INCLUDE NAME="tips/dea_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=MVR_REPORT><TMPL_INCLUDE NAME="tips/mvr_report_tips.tpl"></TMPL_IF>

<TMPL_IF NAME=OABMS_SEARCH><TMPL_INCLUDE NAME="tips/oabms_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=PROVIDER_SEARCH><TMPL_INCLUDE NAME="tips/provider_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=SANCTION_SEARCH><TMPL_INCLUDE NAME="tips/sanction_search_tips.tpl"></TMPL_IF>

<TMPL_IF NAME=DA_BASIC_SEARCH><TMPL_INCLUDE NAME="tips/da_basic_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=DA_REVERSE_SEARCH><TMPL_INCLUDE NAME="tips/da_reverse_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=DA_WIRELESS_SEARCH><TMPL_INCLUDE NAME="tips/da_wireless_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=CANADIAN_PHONES_SEARCH><TMPL_INCLUDE NAME="tips/canadian_phones_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=PHONE_IDENTIFIER_SEARCH><TMPL_INCLUDE NAME="tips/reverse_phone_search_plus_search_tips.tpl"></TMPL_IF>

<TMPL_IF NAME=BANKRUPTCY_SEARCH><TMPL_INCLUDE NAME="tips/bankruptcy_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FCRA_BANKRUPTCY_SEARCH><TMPL_INCLUDE NAME="tips/fcra_bankruptcy_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=MARRIAGE_SEARCH><TMPL_INCLUDE NAME="tips/marriage_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FCRA_MARRIAGE_SEARCH><TMPL_INCLUDE NAME="tips/fcra_marriage_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=LIEN_SEARCH><TMPL_INCLUDE NAME="tips/lien_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FCRA_LIENS_SEARCH><TMPL_INCLUDE NAME="tips/fcra_lien_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=CRIM_SEARCH><TMPL_INCLUDE NAME="tips/crim_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FCRA_CRIM_SEARCH><TMPL_INCLUDE NAME="tips/fcra_crim_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=CIVIL_COURT_SEARCH><TMPL_INCLUDE NAME="tips/civil_court_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=ACCIDENT_SEARCH><TMPL_INCLUDE NAME="tips/accident_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=PATRIOTACT_SEARCH><TMPL_INCLUDE NAME="tips/patriotact_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=SEXPREDATOR_SEARCH><TMPL_INCLUDE NAME="tips/sexpredator_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FCRA_SEXPREDATOR_SEARCH><TMPL_INCLUDE NAME="tips/fcra_sexpredator_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=OFFICIAL_RECORDS_SEARCH><TMPL_INCLUDE NAME="tips/official_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FORECLOSURE_SEARCH><TMPL_INCLUDE NAME="tips/foreclosure_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FEIN_SEARCH><TMPL_INCLUDE NAME="tips/fein_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FICTIOUS_SEARCH><TMPL_INCLUDE NAME="tips/fictitious_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=BLJ_SEARCH><TMPL_INCLUDE NAME="tips/bankruptcy_liens_judgments_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=REAL_PROPERTY_SEARCH><TMPL_INCLUDE NAME="tips/real_property_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FCRA_REAL_PROPERTY_SEARCH><TMPL_INCLUDE NAME="tips/fcra_real_property_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FED_CIVIL_COURT_SEARCH><TMPL_INCLUDE NAME="tips/fed_civil_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=FED_CRIM_COURT_SEARCH><TMPL_INCLUDE NAME="tips/fed_criminal_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=PERSON_DTR_REPORT><TMPL_INCLUDE NAME="tips/direct_report_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_ALL_VEHICLES_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_ARREST_RECORD_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_AUTO_ACCIDENT_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_AUTOPSY_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_AUTO_THEFT_RECOVERY_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_AUTO_THEFT_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_BIRTH_CERTIFICATE_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_BURGLARY_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_CITATION_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_DEATH_CERTIFICATE_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_DUI_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_EMS_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_FACE_SHEET_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_FIRE_BLDG_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_FIRE_CAR_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_HOMICIDE_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_INS_VERIFY_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_ISSUE_LETTER_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_OTHER_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_PHOTOS_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_RECONSTRUCTION_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_REGISTERED_VEHICLE_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_SUPPLEMENTAL_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_TITLE_HISTORY_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_TOXICOLOGY_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="POLICE_RECORDS_VANDALISM_SEARCH"><TMPL_INCLUDE NAME="tips/police_records_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="IND_QUALIFIER_REPORT"><TMPL_INCLUDE NAME="tips/ind_qualifier_report_tips.tpl"></TMPL_IF>
<TMPL_IF NAME="BUS_QUALIFIER_REPORT"><TMPL_INCLUDE NAME="tips/bus_qualifier_report_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=WORKPLACE_SEARCH><TMPL_INCLUDE NAME="tips/workplace_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=NPI_SEARCH><TMPL_INCLUDE NAME="tips/npi_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=CLIA_SEARCH><TMPL_INCLUDE NAME="tips/clia_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=NCPDP_SEARCH><TMPL_INCLUDE NAME="tips/ncpdp_search_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=DISCLOSED_ENTITY_REPORT><TMPL_INCLUDE NAME="tips/disclosed_entity_report_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=PROVIDER_REPORT_CARD><TMPL_INCLUDE NAME="tips/provider_report_card_tips.tpl"></TMPL_IF>
<TMPL_IF NAME=RT_PHONE_SEARCH><TMPL_INCLUDE NAME="tips/rt_phones_search_tips.tpl"></TMPL_IF>
<!-- end tips/search_tips.tpl -->
