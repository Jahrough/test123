
<div class="searchCoverageHelpCon blueFont">
        <TMPL_IF NAME=PERSON_SEARCH> 
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <TMPL_IF IRS>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF GOV>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF LE>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF COL>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF LOC>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');">Help?</a></div>
        <TMPL_ELSE>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('person_help.html','PersonSearch');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF NAME=PAW_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <TMPL_IF TCOL>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/people_at_work_help.html','PeopleAtWork');">Help?</a></div>
        <TMPL_ELSE>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/people_at_work_help.html','PeopleAtWork');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF NAME=INSTANT_ID_REPORT>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('instantid_help.html','PeopleInstantID');">Help?</a></div>
        </TMPL_IF>

      <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
        <TMPL_UNLESS DONT_SHOW_NEWS>
        <TMPL_IF NAME=NEWS_SEARCH>
        <div><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('news_help.html','PeopleInNews');">Help?</a></div>
        </TMPL_IF>
        </TMPL_UNLESS>

        <TMPL_UNLESS DONT_SHOW_NEWS>
        <TMPL_IF NAME=NEG_NEWS_SEARCH>
        <div><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('news_help.html','PeopleInNews');">Help?</a></div>
        </TMPL_IF>
        </TMPL_UNLESS>
      </TMPL_UNLESS>

        <TMPL_IF NAME="ADV_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>
        <TMPL_IF COL>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/<TMPL_VAR NAME=APPLICATION_TYPE>/advanced_person_help.html');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/deep_skip_help.html');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF IRS>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/<TMPL_VAR NAME=APPLICATION_TYPE>/advanced_person_help.html','AdvancedPersonSearch');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF GOV>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/<TMPL_VAR NAME=APPLICATION_TYPE>/advanced_person_help.html','AdvancedPersonSearch');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF LE>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/<TMPL_VAR NAME=APPLICATION_TYPE>/advanced_person_help.html','AdvancedPersonSearch');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF XBPS>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('person_investigations_help.html','AdvancedPersonSearch');">Help?</a></div>
        <TMPL_ELSE>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('advanced_person_help.html','AdvancedPersonSearch');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>

            <TMPL_UNLESS HIDE_RT_MVR>
            <TMPL_IF NAME=RT_MVR_SEARCH>
        <TMPL_IF XBPS>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('vehicle_investigations_help.html','RealTimeMotorVehicleRegistration');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF INS>
        <div><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/ins/rt_mvr_coverage.html','HTMLCoverage','800','600',0,0,0,1,1,0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('real-timeMVR_help.html','RealTimeMotorVehicleRegistration');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF COL>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></div>

    <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('motor_vehicle_help.html','MotorVehicle');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></div>

    <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/motor_vehicle_help.html','MotorVehicle');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF LEG>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></div>

    <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('leg/motor_vehicle_gateway_help.html','MotorVehicle');">Help?</a></div>
        <TMPL_ELSE>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('real-timeMVR_help.html','RealTimeMotorVehicleRegistration');">Help?</a></div>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_UNLESS>

    <TMPL_UNLESS DO_NOT_DISPLAY_COMBINED_MVR>
      <TMPL_IF NAME=COMBINED_MVR_WC_SEARCH>
          <div class="motorVehicleSearch"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/adv_mv_coverage','CoverageWindow');">Coverage</a></div>
          <div class="motorVehicleSearch"><a style="cursor: help;" href="javascript:void(0);" title="View Search Help" onClick="open_help('v3/advanced_motor_vehicle_help.html','CombinedMotorVehicleRegistrations');">Help?</a></div>
          <div class="wildcardSearch"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/adv_mv_coverage','CoverageWindow');">Coverage</a></div>
          <div class="wildcardSearch"><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/mvr_wildcard_help.html','CombinedMotorVehicleRegistrations');">Help?</a></div>
      </TMPL_IF>
      <TMPL_IF NAME=COMBINED_MVR_MV_SEARCH>
          <div class="motorVehicleSearch"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/adv_mv_coverage','CoverageWindow');">Coverage</a></div>
          <div class="motorVehicleSearch"><a style="cursor: help;" href="javascript:void(0);" title="View Search Help" onClick="open_help('v3/advanced_motor_vehicle_help.html','CombinedMotorVehicleRegistrations');">Help?</a></div>
          <div class="wildcardSearch"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/adv_mv_coverage','CoverageWindow');">Coverage</a></div>
          <div class="wildcardSearch"><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/mvr_wildcard_help.html','CombinedMotorVehicleRegistrations');">Help?</a></div>
      </TMPL_IF>
      <TMPL_IF NAME=COMBINED_MVR_SEARCH>
          <div class="motorVehicleSearch"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/adv_mv_coverage','CoverageWindow');">Coverage</a></div>
          <div class="motorVehicleSearch"><a style="cursor: help;" href="javascript:void(0);" title="View Search Help" onClick="open_help('v3/advanced_motor_vehicle_help.html','CombinedMotorVehicleRegistrations');">Help?</a></div>
          <div class="wildcardSearch"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/adv_mv_coverage','CoverageWindow');">Coverage</a></div>
          <div class="wildcardSearch"><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/mvr_wildcard_help.html','CombinedMotorVehicleRegistrations');">Help?</a></div>
     </TMPL_IF>
    </TMPL_UNLESS>

        <TMPL_IF NAME=LICENSE_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','565','760',0,0,0,1,1,0,'','coverage/dl_coverage');">Coverage</a></div>

        <TMPL_IF TCOL>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/dl_help.html','DriversLicense');">Help?</a></div>
        <TMPL_ELSE>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/dl_help.html','DriversLicense');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF NAME=PROF_LICENSE_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','450',0,0,0,1,1,0,'','coverage/prof_licenses_coverage');">Coverage</a></div>

        <TMPL_IF TCOL>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/prof_license_help.html','LicensesProfessional');">Help?</a></div>
        <TMPL_ELSE>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/prof_license_help.html','LicensesProfessional');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF NAME=BANKRUPTCY_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/bankruptcy_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('bankruptcy_help.html','Bankruptcy');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=FAA_PILOT_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/faa_pilots_help.html','FAA_Pilot');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=ACCIDENT_SEARCH>
        <TMPL_IF NAME=NAT_ACC_ENABLE>
            <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','500','500',0,0,0,0,0,0,'','coverage/nat_mv_acc_coverage');">Coverage</a></div>
    
            <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/national_accidents_help.html','FLAccidents');">Help?</a></div>
        <TMPL_ELSE>
            <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/fl_coverage');">Coverage</a></div>
    
            <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('accidents_help.html','FLAccidents');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME=CRIM_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','900','650',0,0,0,1,1,0,'','coverage/crim_coverage');">Coverage</a></div>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/criminal_help.html','Criminal');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=PATRIOTACT_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','525','400',0,0,0,0,0,0,'','coverage/patriot_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('patriot_act_help.html','Patriot');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=CIVIL_COURT_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','850','600',0,0,0,1,1,0,'','coverage/civil_court_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/civil_court_help.html','CivilCourts');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=PROPERTY_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/assess_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('property_assessment_help.html','PropertyAssessments');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=PROPERTY_DEED_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/deeds_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('property_deeds_help.html','PropertyDeeds');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=REAL_PROPERTY_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/real_property_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_IF TCOL>tcol/real_property_locator_help.html<TMPL_ELSE><TMPL_IF GOV>gov/<TMPL_ELSE><TMPL_IF LE>le/</TMPL_IF></TMPL_IF>real_property_help.html</TMPL_IF>','RealProperty');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=DL_REG_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/mv_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/motor_vehicle_help.html','MotorVehicle');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="INS">
        <TMPL_IF NAME="CARFAX_REPORT">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('carfax_help.html');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME="LEG">
        <TMPL_IF NAME="CARFAX_REPORT">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('carfax_help.html');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME=MERCHANT_VESSEL_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/watercraft_coverage');">Coverage</a></div>
        <TMPL_IF NAME="GOV">
	<div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/gov/watercraft_help.html','Watercraft');">Help?</a></div>
	<TMPL_ELSE>
	<TMPL_IF NAME="LE">
	<div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/le/watercraft_help.html','Watercraft');">Help?</a></div>
	<TMPL_ELSE>
	<div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('watercraft_help.html','Watercraft');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME=AIRCRAFT_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/faa_aircraft_help.html','FAA_Aircraft');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=MV_WILDCARD_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/mvr_wildcard_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('mvr_wildcard_help.html','WildcardMotorVehicle');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF SEXPREDATOR_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/sexual_offenders_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_IF LE>le/<TMPL_ELSE><TMPL_IF GOV>gov/<TMPL_ELSE><TMPL_IF TCOL>/tcol></TMPL_IF></TMPL_IF></TMPL_IF>sexual_offenders_help.html','SexualOffender');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="OFFICIAL_RECORDS_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','510',0,0,0,1,1,0,'','coverage/official_records_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/official_records_help.html','OfficialRecords');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME="MARRIAGE_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','350',0,0,0,1,1,0,'','coverage/marriages_divorces_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/marriages_divorces_help.html','MarriageDivorce');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=FCRA_BANKRUPTCY_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/bankruptcy_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/bankruptcy_help.html','Bankruptcy');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=FCRA_FAA_PILOT_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('faa_pilots_help.html','FAA_Pilot');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=FCRA_CRIM_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','900','650',0,0,0,1,1,0,'','coverage/crim_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/criminal_help.html','Criminal');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=FCRA_REAL_PROPERTY_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/real_property_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/real_property_search_help.html','RealProperty');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=FCRA_MERCHANT_VESSEL_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','375',0,0,0,1,1,0,'','coverage/watercraft_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/watercraft_help.html','Watercraft');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=FCRA_AIRCRAFT_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/faa_aircraft_help.html','FAA_Aircraft');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="FCRA_MARRIAGE_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','350',0,0,0,1,1,0,'','coverage/marriages_divorces_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/marriages_divorces_help.html','MarriageDivorce');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="FCRA_LIENS_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','360',0,0,0,0,0,0,'','coverage/liens_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/judgment_lien_help.html','LiensJudgments');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="FCRA_HUNTING_LICENSE_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/hunting_fishing_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/hunting_fishing_help.html','HuntingFishing');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="FCRA_CONCEALED_WEAPON_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','350',0,0,0,1,1,0,'','coverage/concealed_weapons_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('concealed_weapons_help.html','ConcealedWeapons');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="FCRA_FIREARMS_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/federal_firearms_help.html','Firearms');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF FCRA_SEXPREDATOR_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/sexual_offenders_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/sexual_offenders_help.html','SexualOffender');">Help?</a></div>
        </TMPL_IF>

                <TMPL_IF NAME="JAILBOOKING_SEARCH">
                <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','600',0,0,0,1,1,0,'','coverage/jail_bookings_coverage');">Coverage</a></div>
		<TMPL_UNLESS LE><div><a href="javascript:void();">DPPA/GLBA</a></div></TMPL_UNLESS>
                <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('jail_bookings_help.html','MarriageDivorce');">Help?</a></div>
                </TMPL_IF>



        <TMPL_IF NAME="FORECLOSURE_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/foreclosures_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/foreclosure_help.html','Foreclosures');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="LIEN_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','360',0,0,0,0,0,0,'','coverage/liens_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('lien_judgment_help.html','LiensJudgments');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="BLJ_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','360',0,0,0,1,1,0,'','coverage/bankruptcies_liens_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/<TMPL_VAR NAME=APPLICATION_TYPE>/bankruptcy_lien_judgment_help.html','BankruptciesLiensJudgments');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="HUNTING_LICENSE_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/hunting_fishing_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/hunting_fishing_help.html','HuntingFishing');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="CONCEALED_WEAPON_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','350',0,0,0,1,1,0,'','coverage/concealed_weapons_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/concealed_weapons_help.html','ConcealedWeapons');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="VOTER_REGISTRATION_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/voter_registrations_coverage');">Coverage</a></div>
        <TMPL_IF IRS>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('irs/voter_registrations_help.html','VoterRegistration');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF TCOL>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/voter_registrations_help.html','VoterRegistration');">Help?</a></div>
        <TMPL_ELSE>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/voter_registrations_help.html','VoterRegistration');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME="FIREARMS_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/federal_firearms_help.html','Firearms');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="DEA_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/dea_controlled_help.html','DEA');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=MVR_REPORT>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mvr_coverage','CoverageWindow');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('locating_mvr.html','MotorVehicleDrivingRecord');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="RT_PHONE_SEARCH">
	<div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','550',0,0,0,1,1,0,'','coverage/rt_phone_coverage');">Coverage</a></div>
        <TMPL_IF NAME="GOV">
	<div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/gov/real_time_phone_help.html','RT_Phone');">Help?</a></div>
	<TMPL_ELSE>
	<TMPL_IF NAME="LE">
	<div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/le/real_time_phone_help.html','RT_Phone');">Help?</a></div>
	<TMPL_ELSE>
	<div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/real_time_phone_help.html','RT_Phone');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME="DA_BASIC_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <TMPL_IF LOC>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('loc/phone_help.html','Phones_Basic');">Help?</a></div>
        <TMPL_ELSE>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/da_help.html','Phones_Basic');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME="DA_REVERSE_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/da_help.html#reverse','Phones_Reverse');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="DA_WIRELESS_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('phones_plus_help.html','Phones_Plus');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF ENABLE_LOCATE_PLUS_SEARCH>
        <TMPL_IF NAME="LOCATE_PLUS_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/phone_network_gateway_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('phone_network_gateway_help.html');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME="INS">
        <TMPL_IF NAME="RATE_EVASION_REPORT">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/rate_evasion_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('howto_ree/howto_ree.html');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>

      <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
        <TMPL_IF NAME="TODAYS_NEWS_SEARCH">
        <div><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/140956.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('irs/find_todays_search_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME="US_NEWS_SEARCH">
        <div><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/140954.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('irs/find_usnews_search_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME="NON_US_NEWS_SEARCH">
        <div><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/140955.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('irs/find_non_usnews_search_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME="ARCHIVED_NEWS_SEARCH">
        <div><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('irs/find_archived_news_search_help.html');">Help?</a></div>
        </TMPL_IF>
      </TMPL_UNLESS>
        <TMPL_IF NAME="PROVIDER_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_IF NAME="LEG">leg<TMPL_ELSE>hea</TMPL_IF>/provider_search_help.html');">Help?</a></div>
        </TMPL_IF>
                <TMPL_IF NAME="SANCTION_SEARCH">
                <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>
        
                <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_IF NAME="LEG">leg<TMPL_ELSE>hea</TMPL_IF>/provider_sanction_search_help.html');">Help?</a></div>
                </TMPL_IF>

                <TMPL_IF NAME=IND_QUALIFIER_REPORT>
                <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ind_qualifier_coverage');">Coverage</a></div>
        
                <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('healthcare_provider_report_help.html');">Help?</a></div>
                </TMPL_IF>
        <TMPL_IF NAME="PROVIDER_REPORT_CARD">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('provider_report_card_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=BUS_QUALIFIER_REPORT>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/bus_qualifier_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('healthcare_business_report_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=SHOW_INTL_INSTANTID>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/intl_instantid_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('instantid_int_help.html');">Help?</a></div>
        </TMPL_IF>
        
        <TMPL_IF NAME=CORPORATION_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/corp_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/corporations_help.html','Corporations');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=UCC_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ucc_coverage','CoverageWindow');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/<TMPL_VAR NAME=APPLICATION_TYPE>/ucc_help.html','UCC_Filings');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=BUS_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <TMPL_IF COL>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('col/business_help.html','BusinessSearch');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('tcol/business_help.html','BusinessSearch');">Help?</a></div>
        <TMPL_ELSE>
        <TMPL_IF LOC>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('loc/business_help.html','BusinessSearch');">Help?</a></div>
        <TMPL_ELSE>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/<TMPL_VAR NAME=APPLICATION_TYPE>/business_help.html','BusinessSearch');">Help?</a></div>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME=WHOIS_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/internet_domains_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/internet_domains_help.html','InternetDomains');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=BUS_CREDIT_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('business_credit_help.html','BusinessCredit');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=D_AND_B_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/DB_records_help.html','DunBradstreet');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=DELCO_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/delaware_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/delaware_corporations_help.html','DelawareCorp');">Help?</a></div>
        </TMPL_IF>

       <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
        <TMPL_UNLESS DONT_SHOW_NEWS>
        <TMPL_IF NAME=BUS_NEWS_SEARCH>
        <div><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('news_help.html','BusinessInNews');">Help?</a></div>
        </TMPL_IF>
        </TMPL_UNLESS>

        <TMPL_IF NAME=SEC_SEARCH>
        <div><a href="javascript:void(0);" onClick="general_win('https://risk.nexis.com/AMLSolutions/help/SEC_Filings_Source.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('irs/find_sec_filings_search_help.html');">Help?</a></div>
        </TMPL_IF>
      </TMPL_UNLESS>
        <TMPL_IF NAME=EXPERIAN_SEARCH>
        <div><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/166420.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('irs/find_experian_search_help.html');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=TRADEMARK_SEARCH>
        <div><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/154566.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('irs/find_trademark_search_help.html');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=FICTIOUS_SEARCH>
        <div><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/148505.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('find_fictitious_bus_search_help.html');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=FEIN_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','475','250',0,0,0,0,0,0,'','coverage/all50_plus_dc_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('fein_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=BUS_INSTANT_ID_REPORT>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/<TMPL_VAR NAME=APPLICATION_TYPE>/business_instantid_help.html','Bus_InstantID');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=RISKVIEW_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('riskview_auto_finance_help.html');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=EQUIFAX_RECOVERY_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:general_win('<TMPL_VAR NAME=PDFPATH>/equifax/equifax_recovery_report.pdf','EquifaxRecoveryReport','','',1,1,1,1,1,0);void(0);">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=OSHA_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('osha_investigative_reports_help.html');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=DBGLOBAL_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/dbglobal_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('d_b_global_market_identifiers_help.html');;">Help?</a></div>
        </TMPL_IF>
      <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
        <TMPL_IF NAME="INSTOPICS_NEWS_SEARCH">
        <div><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('insurance_topics_news_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME="PSPR_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=DO_NEWS_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/obituary_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('deaths_obituaries_news_help.html');">Help?</a></div>
        </TMPL_IF>
      </TMPL_UNLESS>

        <TMPL_IF NAME="FED_CIVIL_COURT_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/fedcivil_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('federal_civil_courts_help.html');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="FED_CRIM_COURT_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/fedcrim_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/federal_criminal_courts_help.html');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME="COURT_CASE_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/courtcasetopic_coverage');">Coverage</a></div>
        </TMPL_IF>

        <TMPL_IF NAME="MP_PROVIDERS_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mp_providers_coverage');">Coverage</a></div>
        </TMPL_IF>

        <TMPL_IF NAME="MP_SPECIALITIES_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mp_specialites_coverage');">Coverage</a></div>
        </TMPL_IF>

        <TMPL_IF NAME="MP_HOSPITALS_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mp_hospitals_coverage');">Coverage</a></div>
        </TMPL_IF>

        <TMPL_IF NAME="OABMS_SEARCH">
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/oabms_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('american_board_medical_specialists_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=AVM_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','525',0,0,0,1,1,0,'','coverage/avm_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('irs/AVM_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=DEATH_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/death_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/locat_death_rcds.html','DeathRecords');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=EMAIL_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('email_address_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=SOC_REPORT>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','530','350',0,0,0,1,1,0,'','coverage/soc_report_coverage');">Coverage</a></div>

    <TMPL_IF GOV>
    <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('virtual_identity_help.html','soc_net_report');">Help?</a></div>
    <TMPL_ELSE>
    <TMPL_IF LE>
    <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('virtual_identity_help.html','soc_net_report');">Help?</a></div>
    <TMPL_ELSE>
    <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('social_network_help.html','soc_net_report');">Help?</a></div>
    </TMPL_IF>
    </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF NAME=VIRTUAL_ID_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','530','350',0,0,0,1,1,0,'','coverage/virtual_id_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('virtual_identity_help.html','soc_net_report');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=LOCATION_REPORT_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('location_search_report_help.html','location_report');">Help?</a></div>        
        </TMPL_IF>


        <TMPL_IF NAME=PERSON_DTR_REPORT>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=CANADIAN_PHONES_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ca_phone_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/<TMPL_VAR NAME=APPLICATION_TYPE>/canadian_phones_help.html','ca_phone_records');">Help?</a></div>
        </TMPL_IF>


    <TMPL_IF NAME=REAL_TIME_PERSON_SEARCH>
    <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/rt_person_coverage');">Coverage</a></div>
    <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/<TMPL_VAR NAME=APPLICATION_TYPE>/real_time_person_help.html','RealTimePersonSearch');">Help?</a></div>
    </TMPL_IF>

    <TMPL_IF NAME=COMPSEARCH_SEARCH>
    <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/comp_search_coverage');">Coverage</a></div>
    <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('comp_search_help.html','comp_search');">Help?</a></div>
    </TMPL_IF>
    
    <TMPL_IF NAME=CARRIER_DISCOVERY_REPORT>
        <!--
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/carrier_discovery_coverage');">Coverage</a></div>

        -->
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('carrier_discovery_help.html');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=CLAIMS_DISCOVERY_REPORT>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('claims_discovery_help.html');">Help?</a></div>
        </TMPL_IF>
        <TMPL_IF NAME=POWER_BOOLEAN_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/power_search_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=WORKPLACE_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('<TMPL_IF TCOL>tcol/</TMPL_IF>workplace_Locator_help.html','Workplace');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=PASSPORT_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','837','500',0,0,0,1,1,0,'','coverage/passport_validation_coverage');">Coverage</a></div>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('passport_validation_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=CARRIER_ID_REPORT>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('carrier_id_help.html');">Help?</a></div>
        </TMPL_IF>

                <TMPL_IF NAME=POLICE_RECORDS_AUTO_ACCIDENT_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_ALL_VEHICLES_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_ARREST_RECORD_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_AUTOPSY_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_AUTO_THEFT_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_AUTO_THEFT_RECOVERY_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_BIRTH_CERTIFICATE_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_CITATION_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_DEATH_CERTIFICATE_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_DUI_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_EMS_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_FACE_SHEET_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_FIRE_BLDG_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_FIRE_CAR_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_HOMICIDE_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_INS_VERIFY_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_ISSUE_LETTER_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_OTHER_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_PHOTOS_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_RECONSTRUCTION_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_REGISTERED_VEHICLE_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_SUPPLEMENTAL_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_BURGLARY_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_TITLE_HISTORY_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_TOXICOLOGY_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_VANDALISM_SEARCH>
        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('police_records_help.html');">Help?</a></div>
                </TMPL_IF>
<TMPL_IF CONTACT_PLUS_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('contact_plus_help.html');">Help?</a></div>
</TMPL_IF>

        <TMPL_IF NAME=INTPROFLIC_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','470','350',0,0,0,0,0,0,'','coverage/intl_prof_licenses_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('le/int_prof_licenses_help.html','Professional Certifications');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=INTDOCKETS_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','780','670',0,0,0,1,1,0,'','coverage/intl_dockets_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('le/int_dockets_help.html','Court Dockets');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=NPI_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/npi_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('npi_help.html');">Help?</a></div>
        </TMPL_IF>
        
        <TMPL_IF NAME=CLIA_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/clia_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('locating_clia_help.html');">Help?</a></div>
        </TMPL_IF>

        <TMPL_IF NAME=NCPDP_SEARCH>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/ncpdp_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('v3/<TMPL_VAR NAME=APPLICATION_TYPE>/locating_ncpdp_help.html');">Help?</a></div>
        </TMPL_IF>

	<TMPL_IF NAME=DISCLOSED_ENTITY_REPORT>
	<div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('disclosed_entity_help.html');">Help?</a></div>
	</TMPL_IF>

        <TMPL_IF NAME=FIRST_PURSUIT>
        <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/firstpursuit_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('first_pursuit_help.html');">Help?</a></div>
        </TMPL_IF>
        
        <TMPL_IF NAME=ID_VERIFY>
	 <div><a href="javascript:void(0);" title="View Search Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></div>

        <div><a style="cursor: help;" href="javascript:void(0);" title="View Search Help"  onClick="open_help('idv_help.html');">Help?</a></div>
        </TMPL_IF>
</div>
