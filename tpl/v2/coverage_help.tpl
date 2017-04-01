<!-- begin coverage_help.tpl -->

<script>

var help_html_file = '';
var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
var help_path = '<TMPL_VAR NAME=HLPPATH>';

function open_help(help_html) {
    help_html_file = help_html;
    if (vertical != 'irs') {
        show_post_popup('LOGIN/SHOW_POPUP','HelpWindow',780,600,1,1,1,1,1,0,'','show_help_option')
    } else {
        general_win('<TMPL_VAR NAME=HLPPATH>/' + help_html,'HelpWindow',780,600,1,1,1,1,1,0);
    }
}

</script>

         <table border="0" cellpadding="2" cellspacing="0">
          <tr>
        <TMPL_IF NAME=PERSON_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF IRS>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GOV>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF LE>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF COL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/person_help.html','PersonSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF LNP>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/person_help.html','PersonSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF LOC>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');">Help?</a></td>
        <TMPL_ELSE>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('person_help.html','PersonSearch');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF NAME="FAP_SEARCH">
        <TMPL_IF FCOL>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/deep_skip_help.html');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF NAME=PAW_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF LNP>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/people_at_work_help.html','PeopleAtWork');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/people_at_work_help.html','PeopleAtWork');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/people_at_work_help.html','PeopleAtWork');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/people_at_work_help.html','PeopleAtWork');">Help?</a></td>
        <TMPL_ELSE>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('people_at_work_help.html','PeopleAtWork');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF NAME=INSTANT_ID_REPORT>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('instantid_help.html','PeopleInstantID');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=PASSPORT_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','837','500',0,0,0,1,1,0,'','coverage/passport_validation_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('passport_validation_help.html','passport_validation_help');">Help?</a></td>
        </TMPL_IF>

        <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
        <TMPL_UNLESS DONT_SHOW_NEWS>
        <TMPL_IF NAME=NEWS_SEARCH>
        <td><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('news_help.html','PeopleInNews');">Help?</a></td>
        </TMPL_IF>
        </TMPL_UNLESS>
        </TMPL_UNLESS>

        <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
        <TMPL_UNLESS DONT_SHOW_NEWS>
        <TMPL_IF NAME=NEG_NEWS_SEARCH>
        <td><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('news_help.html','PeopleInNews');">Help?</a></td>
        </TMPL_IF>
        </TMPL_UNLESS>
        </TMPL_UNLESS>

	<TMPL_IF NAME="PERSON_SEARCH_PLUS">
	    <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
	</TMPL_IF>

        <TMPL_IF NAME="ADV_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF COL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/advanced_person_help.html');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF LNP>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/deep_skip_help.html');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/deep_skip_help.html');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/deep_skip_help.html');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/deep_skip_help.html');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF IRS>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/advanced_person_help.html','AdvancedPersonSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GOV>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/advanced_person_help.html','AdvancedPersonSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF LE>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/advanced_person_help.html','AdvancedPersonSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF XBPS>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('person_investigations_help.html','AdvancedPersonSearch');">Help?</a></td>
        <TMPL_ELSE>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('advanced_person_help.html','AdvancedPersonSearch');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
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
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('vehicle_investigations_help.html','RealTimeMotorVehicleRegistration');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF INS>
        <td><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/ins/rt_mvr_coverage.html','HTMLCoverage','800','600',0,0,0,1,1,0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('real-timeMVR_help.html','RealTimeMotorVehicleRegistration');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF COL>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></td>
        <td width="1">|</td>
    <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('motor_vehicle_help.html','MotorVehicle');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF LNP>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></td>
        <td width="1">|</td>
    <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/motor_vehicle_help.html','MotorVehicle');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></td>
        <td width="1">|</td>
    <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/motor_vehicle_help.html','MotorVehicle');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></td>
        <td width="1">|</td>
    <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/motor_vehicle_help.html','MotorVehicle');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></td>
        <td width="1">|</td>
    <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/motor_vehicle_help.html','MotorVehicle');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF LEG>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></td>
        <td width="1">|</td>
    <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('leg/motor_vehicle_gateway_help.html','MotorVehicle');">Help?</a></td>
        <TMPL_ELSE>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/rt_mvr_coverage','CoverageWindow');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('real-timeMVR_help.html','RealTimeMotorVehicleRegistration');">Help?</a></td>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_UNLESS>

        <TMPL_IF NAME=LICENSE_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','620','760',0,0,0,1,1,0,'','coverage/dl_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF LNP>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/dl_help.html','DriversLicense');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/dl_help.html','DriversLicense');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/dl_help.html','DriversLicense');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/dl_help.html','DriversLicense');">Help?</a></td>
        <TMPL_ELSE>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('dl_help.html','DriversLicense');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF NAME=PROF_LICENSE_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','450',0,0,0,1,1,0,'','coverage/prof_licenses_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF LNP>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/prof_license_help.html','LicensesProfessional');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/prof_license_help.html','LicensesProfessional');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/prof_license_help.html','LicensesProfessional');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/prof_license_help.html','LicensesProfessional');">Help?</a></td>
        <TMPL_ELSE>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('prof_license_help.html','LicensesProfessional');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF NAME=BANKRUPTCY_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/bankruptcy_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('bankruptcy_help.html','Bankruptcy');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=FAA_PILOT_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('faa_pilots_help.html','FAA_Pilot');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=ACCIDENT_SEARCH>
        <TMPL_IF NAME=NAT_ACC_ENABLE>
            <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','500','500',0,0,0,0,0,0,'','coverage/nat_mv_acc_coverage');">Coverage</a></td>
            <td width="1">|</td>
            <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('national_accidents_help.html','FLAccidents');">Help?</a></td>
        <TMPL_ELSE>
            <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/fl_coverage');">Coverage</a></td>
            <td width="1">|</td>
            <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('accidents_help.html','FLAccidents');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME=CRIM_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','900','650',0,0,0,1,1,0,'','coverage/crim_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('criminal_help.html','Criminal');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=PATRIOTACT_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','525','400',0,0,0,0,0,0,'','coverage/patriot_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>patriot_act_help.html','Patriot');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=CIVIL_COURT_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','850','600',0,0,0,1,1,0,'','coverage/civil_court_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('civil_court_help.html','CivilCourts');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=PROPERTY_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/assess_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('property_assessment_help.html','PropertyAssessments');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=PROPERTY_DEED_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/deeds_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('property_deeds_help.html','PropertyDeeds');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=REAL_PROPERTY_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/real_property_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF LNP>tcol/real_property_locator_help.html<TMPL_ELSE><TMPL_IF TCOL>tcol/real_property_locator_help.html<TMPL_ELSE><TMPL_IF FCOL>fcol/real_property_locator_help.html<TMPL_ELSE><TMPL_IF GCOL>gcol/real_property_locator_help.html<TMPL_ELSE><TMPL_IF GOV>gov/<TMPL_ELSE><TMPL_IF LE>le/</TMPL_IF></TMPL_IF>real_property_help.html</TMPL_IF></TMPL_IF></TMPL_IF></TMPL_IF>','RealProperty');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=DL_REG_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/mv_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('motor_vehicle_help.html','MotorVehicle');">Help?</a></td>
        </TMPL_IF>
        
        <TMPL_IF NAME=SOCIALMEDIA_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/socialmedia_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td>
        <a style="cursor: help;" href="javascript:void(0);" onClick="open_help('social_media_help.html','SocialMedia');">Help?</a>
        </td>
        </TMPL_IF>
        
        <TMPL_IF NAME="INS">
        <TMPL_IF NAME="CARFAX_REPORT">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('carfax_help.html');">Help?</a></td>
        </TMPL_IF>


        </TMPL_IF>
        <TMPL_IF NAME="LEG">
        <TMPL_IF NAME="CARFAX_REPORT">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('carfax_help.html');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME=MERCHANT_VESSEL_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/watercraft_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('watercraft_help.html','Watercraft');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=AIRCRAFT_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('faa_aircraft_help.html','FAA_Aircraft');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=MV_WILDCARD_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/mvr_wildcard_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('mvr_wildcard_help.html','WildcardMotorVehicle');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF SEXPREDATOR_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/sexual_offenders_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF LE>le/<TMPL_ELSE><TMPL_IF GOV>gov/<TMPL_ELSE><TMPL_IF TCOL>tcol/<TMPL_ELSE><TMPL_IF FCOL>fcol/</TMPL_IF></TMPL_IF></TMPL_IF></TMPL_IF>sexual_offenders_help.html','SexualOffender');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="OFFICIAL_RECORDS_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','510',0,0,0,1,1,0,'','coverage/official_records_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('official_records_help.html','OfficialRecords');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME="MARRIAGE_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','680','720',0,0,0,1,1,0,'','coverage/marriages_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('marriages_divorces_help.html','MarriageDivorce');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=FCRA_BANKRUPTCY_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/bankruptcy_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/bankruptcy_help.html','Bankruptcy');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/bankruptcy_help.html','Bankruptcy');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/bankruptcy_help.html','Bankruptcy');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME=FCRA_FAA_PILOT_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>faa_pilots_help.html','FAA_Pilot');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=FCRA_CRIM_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','900','650',0,0,0,1,1,0,'','coverage/crim_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/criminal_help.html','Criminal');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/criminal_help.html','Criminal');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/criminal_help.html','Criminal');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME=FCRA_REAL_PROPERTY_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/real_property_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/real_property_search_help.html','RealProperty');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/real_property_search_help.html','RealProperty');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/real_property_search_help.html','RealProperty');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME=FCRA_MERCHANT_VESSEL_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','375',0,0,0,1,1,0,'','coverage/watercraft_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/watercraft_help.html','Watercraft');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/watercraft_help.html','Watercraft');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/watercraft_help.html','Watercraft');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME=FCRA_AIRCRAFT_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/faa_aircraft_help.html','FAA_Aircraft');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/faa_aircraft_help.html','FAA_Aircraft');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/faa_aircraft_help.html','FAA_Aircraft');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME="FCRA_MARRIAGE_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','680','720',0,0,0,1,1,0,'','coverage/marriages_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/marriages_divorces_help.html','MarriageDivorce');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/marriages_divorces_help.html','MarriageDivorce');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/marriages_divorces_help.html','MarriageDivorce');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME="FCRA_LIENS_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','360',0,0,0,0,0,0,'','coverage/liens_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/judgment_lien_help.html','LiensJudgments');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/judgment_lien_help.html','LiensJudgments');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/judgment_lien_help.html','LiensJudgments');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME="FCRA_HUNTING_LICENSE_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/hunting_fishing_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>hunting_fishing_help.html','HuntingFishing');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="FCRA_CONCEALED_WEAPON_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','575','325',0,0,0,1,1,0,'','coverage/concealed_weapons_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>concealed_weapons_help.html','ConcealedWeapons');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="FCRA_FIREARMS_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/federal_firearms_help.html','Firearms');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/federal_firearms_help.html','Firearms');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/federal_firearms_help.html','Firearms');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF FCRA_SEXPREDATOR_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','820','740',0,0,0,1,1,0,'','coverage/sexual_offenders_fcra_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/sexual_offenders_help.html','SexualOffender');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/sexual_offenders_help.html','SexualOffender');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/sexual_offenders_help.html','SexualOffender');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>

                <TMPL_IF NAME="JAILBOOKING_SEARCH">
                <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','600',0,0,0,1,1,0,'','coverage/jail_bookings_coverage');">Coverage</a></td>
		<td width="1">|</td>
                <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('jail_bookings_help.html','MarriageDivorce');">Help?</a></td>
                </TMPL_IF>



        <TMPL_IF NAME="FORECLOSURE_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/foreclosures_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('foreclosure_help.html','Foreclosures');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="LIEN_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','360',0,0,0,0,0,0,'','coverage/liens_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('lien_judgment_help.html','LiensJudgments');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="BLJ_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','360',0,0,0,1,1,0,'','coverage/bankruptcies_liens_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('bankruptcy_lien_judgment_help.html','BankruptciesLiensJudgments');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="HUNTING_LICENSE_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/hunting_fishing_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('hunting_fishing_help.html','HuntingFishing');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="CONCEALED_WEAPON_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','575','325',0,0,0,1,1,0,'','coverage/concealed_weapons_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('concealed_weapons_help.html','ConcealedWeapons');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="VOTER_REGISTRATION_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/voter_registrations_coverage');">Coverage</a></td>
        <TMPL_IF IRS>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/voter_registrations_help.html','VoterRegistration');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF LNP>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/voter_registrations_help.html','VoterRegistration');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/voter_registrations_help.html','VoterRegistration');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/voter_registrations_help.html','VoterRegistration');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/voter_registrations_help.html','VoterRegistration');">Help?</a></td>
        <TMPL_ELSE>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('voter_registrations_help.html','VoterRegistration');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME="FIREARMS_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('federal_firearms_help.html','Firearms');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="DEA_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('dea_controlled_help.html','DEA');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=MVR_REPORT>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mvr_coverage','CoverageWindow');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('locating_mvr.html','MotorVehicleDrivingRecord');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="RT_PHONE_SEARCH">
		<td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','550',0,0,0,1,1,0,'','coverage/rt_phone_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_UNLESS GCOL>
        	<td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('real_time_phone_help.html','RT_Phone');">Help?</a></td>
        <TMPL_ELSE>
        	<td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('v3/gov/real_time_phone_help.html','RT_Phone');">Help?</a></td>
        </TMPL_UNLESS>
        </TMPL_IF>
        <TMPL_IF NAME="DA_BASIC_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF LOC>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('loc/phone_help.html','Phones_Basic');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/da_help.html','Phones_Basic');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/da_help.html','Phones_Basic');">Help?</a></td>
        <TMPL_ELSE>
	<td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('da_help.html','Phones_Basic');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME="DA_REVERSE_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>da_help.html#reverse','Phones_Reverse');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="DA_WIRELESS_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('phones_plus_help.html','Phones_Plus');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF ENABLE_LOCATE_PLUS_SEARCH>
        <TMPL_IF NAME="LOCATE_PLUS_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/phone_network_gateway_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('phone_network_gateway_help.html');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME="INS">
        <TMPL_IF NAME="RATE_EVASION_REPORT">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/rate_evasion_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('howto_ree/howto_ree.html');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>

      <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
        <TMPL_IF NAME="TODAYS_NEWS_SEARCH">
        <td><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/140956.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_todays_search_help.html');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME="US_NEWS_SEARCH">
        <td><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/140954.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_usnews_search_help.html');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME="NON_US_NEWS_SEARCH">
        <td><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/140955.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_non_usnews_search_help.html');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME="ARCHIVED_NEWS_SEARCH">
        <td><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_archived_news_search_help.html');">Help?</a></td>
        </TMPL_IF>
      </TMPL_UNLESS>
        <TMPL_IF NAME="PROVIDER_SEARCH">
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF NAME="LEG">leg<TMPL_ELSE>hea</TMPL_IF>/provider_search_help.html');">Help?</a></td>
        </TMPL_IF>
                <TMPL_IF NAME="SANCTION_SEARCH">
                <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
                <td width="1">|</td>
                <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF NAME="LEG">leg<TMPL_ELSE>hea</TMPL_IF>/provider_sanction_search_help.html');">Help?</a></td>
                </TMPL_IF>

                <TMPL_IF NAME=IND_QUALIFIER_REPORT>
                <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ind_qualifier_coverage');">Coverage</a></td>
                <td width="1">|</td>
                <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('healthcare_provider_report_help.html');">Help?</a></td>
                </TMPL_IF>

        <TMPL_IF NAME=BUS_QUALIFIER_REPORT>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/bus_qualifier_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('healthcare_business_report_help.html');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=SHOW_INTL_INSTANTID>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/intl_instantid_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('instantid_int_help.html');">Help?</a></td>
        </TMPL_IF>
        
        <TMPL_IF NAME=CORPORATION_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/corp_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>corporations_help.html','Corporations');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=UCC_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ucc_coverage','CoverageWindow');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>ucc_help.html','UCC_Filings');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=BUS_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <TMPL_IF COL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('col/business_help.html','BusinessSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF LNP>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/business_help.html','BusinessSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/business_help.html','BusinessSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF FCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fcol/business_help.html','BusinessSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/business_help.html','BusinessSearch');">Help?</a></td>
        <TMPL_ELSE>
        <TMPL_IF LOC>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('loc/business_help.html','BusinessSearch');">Help?</a></td>
        <TMPL_ELSE>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('business_help.html','BusinessSearch');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME=WHOIS_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/internet_domains_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>internet_domains_help.html','InternetDomains');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=BUS_CREDIT_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
	<TMPL_IF TCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('tcol/business_credit_help.html','BusinessCredit');">Help?</a></td>
	<TMPL_ELSE>
	<TMPL_IF GCOL>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gcol/business_credit_help.html','BusinessCredit');">Help?</a></td>
	<TMPL_ELSE>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('business_credit_help.html','BusinessCredit');">Help?</a></td>
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF NAME=D_AND_B_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>DB_records_help.html','DunBradstreet');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=DELCO_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/delaware_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>delaware_corporations_help.html','DelawareCorp');">Help?</a></td>
        </TMPL_IF>

        <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
        <TMPL_UNLESS DONT_SHOW_NEWS>
        <TMPL_IF NAME=BUS_NEWS_SEARCH>
        <td><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('news_help.html','BusinessInNews');">Help?</a></td>
        </TMPL_IF>
        </TMPL_UNLESS>
        </TMPL_UNLESS>

        <TMPL_IF NAME=SEC_SEARCH>
        <td><a href="javascript:void(0);" onClick="general_win('https://risk.nexis.com/AMLSolutions/help/SEC_Filings_Source.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_sec_filings_search_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=EXPERIAN_SEARCH>
        <td><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/166420.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_experian_search_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=TRADEMARK_SEARCH>
        <td valign="bottom"><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/154566.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_trademark_search_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=FICTIOUS_SEARCH>
        <td valign="bottom"><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/148505.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>find_fictitious_bus_search_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=FEIN_SEARCH>
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','475','250',0,0,0,0,0,0,'','coverage/all50_plus_dc_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('fein_help.html');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=BUS_INSTANT_ID_REPORT>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('business_instantid_help.html','Bus_InstantID');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=RISKVIEW_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('riskview_auto_finance_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=EQUIFAX_RECOVERY_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:general_win('<TMPL_VAR NAME=PDFPATH>/equifax/equifax_recovery_report.pdf','EquifaxRecoveryReport','','',1,1,1,1,1,0);void(0);">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=OSHA_SEARCH>
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('osha_investigative_reports_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=DBGLOBAL_SEARCH>
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/dbglobal_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('d_b_global_market_identifiers_help.html');;">Help?</a></td>
        </TMPL_IF>
        <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
        <TMPL_IF NAME="INSTOPICS_NEWS_SEARCH">
        <td><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('insurance_topics_news_help.html');">Help?</a></td>
        </TMPL_IF>
        </TMPL_UNLESS>

        <TMPL_IF NAME="PSPR_SEARCH">
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        </TMPL_IF>
        <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
        <TMPL_IF NAME=DO_NEWS_SEARCH>
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/obituary_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('deaths_obituaries_news_help.html');">Help?</a></td>
        </TMPL_IF>
        </TMPL_UNLESS>

        <TMPL_IF NAME="FED_CIVIL_COURT_SEARCH">
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/fedcivil_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('federal_civil_courts_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="FED_CRIM_COURT_SEARCH">
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/fedcrim_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('federal_criminal_courts_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME="COURT_CASE_SEARCH">
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/courtcasetopic_coverage');">Coverage</a></td>
        </TMPL_IF>

        <TMPL_IF NAME="MP_PROVIDERS_SEARCH">
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mp_providers_coverage');">Coverage</a></td>
        </TMPL_IF>

        <TMPL_IF NAME="MP_SPECIALITIES_SEARCH">
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mp_specialites_coverage');">Coverage</a></td>
        </TMPL_IF>

        <TMPL_IF NAME="MP_HOSPITALS_SEARCH">
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mp_hospitals_coverage');">Coverage</a></td>
        </TMPL_IF>

        <TMPL_IF NAME="OABMS_SEARCH">
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/oabms_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('american_board_medical_specialists_help.html');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=AVM_SEARCH>
        <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','525',0,0,0,1,1,0,'','coverage/avm_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/AVM_help.html');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=DEATH_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/death_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>locat_death_rcds.html','DeathRecords');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=EMAIL_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('email_address_help.html');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=SOC_REPORT>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','530','350',0,0,0,1,1,0,'','coverage/soc_report_coverage');">Coverage</a></td>
        <td width="1">|</td>
    <TMPL_IF GOV>
    <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('virtual_identity_help.html','soc_net_report');">Help?</a></td>
    <TMPL_ELSE>
    <TMPL_IF LE>
    <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('virtual_identity_help.html','soc_net_report');">Help?</a></td>
    <TMPL_ELSE>
    <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/</TMPL_IF></TMPL_IF>social_network_help.html','soc_net_report');">Help?</a></td>
    </TMPL_IF>
    </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF NAME=VIRTUAL_ID_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','530','350',0,0,0,1,1,0,'','coverage/virtual_id_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('virtual_identity_help.html','soc_net_report');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=PERSON_DTR_REPORT>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=CANADIAN_PHONES_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ca_phone_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF GCOL>gcol/</TMPL_IF>canadian_phones_help.html','ca_phone_records');">Help?</a></td>
        </TMPL_IF>


    <TMPL_IF NAME=REAL_TIME_PERSON_SEARCH>
    <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/rt_person_coverage');">Coverage</a></td>
    <td width="1">|</td>
    <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('real_time_person_help.html','RealTimePersonSearch');">Help?</a></td>
    </TMPL_IF>

    <TMPL_IF NAME=COMPSEARCH_SEARCH>
    <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','500',0,0,0,1,1,0,'','coverage/comp_search_coverage');">Coverage</a></td>
    <td width="1">|</td>
    <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('comp_search_help.html','comp_search');">Help?</a></td>
    </TMPL_IF>
    
    <TMPL_IF NAME=CARRIER_DISCOVERY_REPORT>
        <!--
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/carrier_discovery_coverage');">Coverage</a></td>
        <td width="1">|</td>
        -->
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('carrier_discovery_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=CLAIMS_DISCOVERY_REPORT>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('claims_discovery_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=POWER_BOOLEAN_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/power_search_help.html');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=WORKPLACE_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF LNP>tcol/<TMPL_ELSE><TMPL_IF TCOL>tcol/<TMPL_ELSE><TMPL_IF FCOL>fcol/<TMPL_ELSE><TMPL_IF GCOL>tcol/</TMPL_IF></TMPL_IF></TMPL_IF></TMPL_IF>workplace_Locator_help.html','Workplace');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=CARRIER_ID_REPORT>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('carrier_id_help.html');">Help?</a></td>
        </TMPL_IF>

                <TMPL_IF NAME=POLICE_RECORDS_AUTO_ACCIDENT_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_ALL_VEHICLES_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_ARREST_RECORD_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_AUTOPSY_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_AUTO_THEFT_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_AUTO_THEFT_RECOVERY_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_BIRTH_CERTIFICATE_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_CITATION_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_DEATH_CERTIFICATE_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_DUI_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_EMS_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_FACE_SHEET_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_FIRE_BLDG_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_FIRE_CAR_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_HOMICIDE_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_INS_VERIFY_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_ISSUE_LETTER_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_OTHER_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_PHOTOS_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_RECONSTRUCTION_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_REGISTERED_VEHICLE_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_SUPPLEMENTAL_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_BURGLARY_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_TITLE_HISTORY_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_TOXICOLOGY_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
                <TMPL_IF NAME=POLICE_RECORDS_VANDALISM_SEARCH>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');">Help?</a></td>
                </TMPL_IF>
        <TMPL_IF CONTACT_PLUS_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('contact_plus_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF SHOW_PREMISES>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('premise_report_help.html');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=INTPROFLIC_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','470','350',0,0,0,0,0,0,'','coverage/intl_prof_licenses_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('le/int_prof_licenses_help.html','Professional Certifications');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=INTDOCKETS_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','780','670',0,0,0,1,1,0,'','coverage/intl_dockets_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('le/int_dockets_help.html','Court Dockets');">Help?</a></td>
        </TMPL_IF>

        <TMPL_IF NAME=NPI_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/npi_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('npi_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=ID_VERIFY>
<td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('idv_help.html');">Help?</a></td>
        </TMPL_IF>        
        <TMPL_IF NAME=CLIA_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/clia_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('locating_clia_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=FIRST_PURSUIT>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/firstpursuit_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('first_pursuit_help.html');">Help?</a></td>
        </TMPL_IF>
        <TMPL_IF NAME=NCPDP_SEARCH>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/ncpdp_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('locating_ncpdp_help.html');">Help?</a></td>
        </TMPL_IF>
	<TMPL_IF NAME=DISCLOSED_ENTITY_REPORT>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('disclosed_entity_help.html');">Help?</a></td>
	</TMPL_IF>
	<TMPL_IF NAME=PROVIDER_REPORT_CARD>
        <td><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');">Coverage</a></td>
        <td width="1">|</td>
        <td><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('provider_report_card_help.html');">Help?</a></td>
	</TMPL_IF>
        </table>

<!-- end coverage_help.tpl -->
