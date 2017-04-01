<!-- begin equifaxcreditsearch/coverage_help.tpl -->

<script>


var help_html_file = '';
var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
var help_path = '<TMPL_VAR NAME=HLPPATH>';

function open_help(help_html) {
    help_html_file = help_html;
    if (vertical != 'irs') {
	show_post_popup('LOGIN/SHOW_POPUP','HelpWindow',780,600,1,1,1,1,1,0,'','show_help_option')
        show_post_popup('LOGIN/SHOW_POPUP','HelpWindow',780,600,1,1,1,1,1,0,'','show_help_option')
    } else {
        general_win('<TMPL_VAR NAME=HLPPATH>/' + help_html,'HelpWindow',780,600,1,1,1,1,1,0);
    }
}

var help_file_type = '';
if (vertical == 'bps') { help_file_type = '_bps'; }

</script>

  <tr>
    <TMPL_IF NAME=PERSON_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Person Search Coverage Area" title="Person Search Coverage Area"></a></td>
    <TMPL_IF IRS><!-- IRS specific help -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="Person Search Help" alt="Person Search Help"></a></td>
    <TMPL_ELSE>
    <TMPL_IF LE><!-- LE specific help -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="Person Search Help" alt="Person Search Help"></a></td>
    <TMPL_ELSE>
    <TMPL_IF GOV><!-- GOV specific help -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="Person Search Help" alt="Person Search Help"></a></td>
    <TMPL_ELSE>
    <TMPL_IF COL><!-- COL specific help -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/person_help.html','PersonSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="Person Search Help" alt="Person Search Help"></a></td>
    <TMPL_ELSE>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('person_help.html','PersonSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="Person Search Help" alt="Person Search Help"></a></td>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
    
    <TMPL_IF NAME=PAW_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" title="People At Work Search Coverage Area" alt="People At Work Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('people_at_work_help.html','PeopleAtWork');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="People At Work Search Help" alt="People At Work Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=INSTANT_ID_REPORT>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" title="InstantID Coverage Area" alt="InstantID Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('instantid_help' + help_file_type + '.html','PeopleInstantID');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="InstantID Help" alt="InstantID Help"></a></td>
    </TMPL_IF>

  <TMPL_UNLESS DONT_SHOW_NEWS>
    <TMPL_IF NAME=NEWS_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" title="People in the News Coverage Area" alt="People in the News Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('news_help.html','PeopleInNews');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="People in the News Help" alt="People in the News Help"></a></td>
    </TMPL_IF>
  </TMPL_UNLESS>

    <TMPL_IF NAME="ADV_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" title="<TMPL_UNLESS COL>Advanced Person Search </TMPL_UNLESS>Coverage Area" alt="<TMPL_UNLESS COL>Advanced Person Search </TMPL_UNLESS>Coverage Area"></a></td>
    <TMPL_IF COL><!-- COL specific help -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/advanced_person_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="Deep Skip Search Help" alt="Deep Skip Search Help"></a></td>
    <TMPL_ELSE>
    <TMPL_IF IRS><!-- IRS specific help -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/advanced_person_help.html','AdvancedPersonSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="Advanced Person Search Help" alt="Advanced Person Search Help"></a></td>
    <TMPL_ELSE>
    <TMPL_IF LE><!-- LE specific help -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/advanced_person_help.html','AdvancedPersonSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="Advanced Person Search Help" alt="Advanced Person Search Help"></a></td>
    <TMPL_ELSE>
    <TMPL_IF GOV><!-- GOV specific help -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_VAR NAME=APPLICATION_TYPE>/advanced_person_help.html','AdvancedPersonSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="Advanced Person Search Help" alt="Advanced Person Search Help"></a></td>
    <TMPL_ELSE>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('advanced_person_help.html','AdvancedPersonSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="Advanced Person Search Help" alt="Advanced Person Search Help"></a></td>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>

    <TMPL_IF NAME=LICENSE_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','760',0,0,0,1,1,0,'','coverage/dl_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" title="Driver Licenses Coverage Area" alt="Driver Licenses Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('dl_help.html','DriversLicense');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" title="Driver Licenses Search Help" alt="Driver Licenses Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=PROF_LICENSE_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','420',0,0,0,1,1,0,'','coverage/prof_licenses_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" title="Professional Licenses Coverage Area" alt="Professional Licenses Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('prof_license_help.html','LicensesProfessional');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Professional License Search Help" title="Professional License Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=BANKRUPTCY_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/bankruptcy_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Bankruptcy Search Coverage Area" title="Bankruptcy Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('bankruptcy_help.html','Bankruptcy');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Bankruptcy Search Help" title="Bankruptcy Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=FAA_PILOT_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="FAA Pilots Coverage Area" title="FAA Pilots Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('faa_pilots_help.html','FAA_Pilot');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="FAA Pilots Search Help" title="FAA Pilots Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=ACCIDENT_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/fl_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Florida Accidents Coverage Area" title="Florida Accidents Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('accidents_help.html','FLAccidents');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Florida Accidents Help" title="Florida Accidents Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=CRIM_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','675','450',1,1,1,1,1,0,'','coverage/crim_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Criminal Records Coverage Area" title="Criminal Records Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('criminal_help.html','Criminal');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Criminal Records Search Help" title="Criminal Records Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=PATRIOTACT_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','525','400',0,0,0,0,0,0,'','coverage/patriot_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="USA PATRIOT Act Coverage" title="USA PATRIOT Act Coverage"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('patriot_act_help.html','patriot');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="USA PATRIOT Act Search Help" title="USA PATRIOT Act Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=CIVIL_COURT_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','500',0,0,0,0,0,0,'','coverage/civil_court_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Civil Courts Search Coverage" title="Civil Courts Search Coverage"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('civil_court_help.html','CivilCourts');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Civil Courts Search Help" title="Civil Courts Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=PROPERTY_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/assess_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif"  alt="Property Assessments Coverage Area" title="Property Assessments Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('property_assessment_help.html','PropertyAssessments');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Property Assessment Search Help" title="Property Assessment Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=PROPERTY_DEED_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/deeds_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Property Deeds Coverage Area" title="Property Deeds Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('property_deeds_help.html','PropertyDeeds');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Property Deeds Search Help" title="Property Deeds Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=DL_REG_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mv_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Motor Vehicle Registrations Coverage Area" title="Motor Vehicle Registrations Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('motor_vehicle_help.html','MotorVehicle');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Vehicle Registrations Search Help" title="Vehicle Registrations Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="INS">
    <TMPL_IF NAME="CARFAX_REPORT">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="CARFAX Coverage Area" title="CARFAX Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('carfax_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="CARFAX Help" title="CARFAX Help"></a></td>
    </TMPL_IF>
    </TMPL_IF>
    <TMPL_IF NAME="LEG">
    <TMPL_IF NAME="CARFAX_REPORT">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="CARFAX Coverage Area" title="CARFAX Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('carfax_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="CARFAX Help" title="CARFAX Help"></a></td>
    </TMPL_IF>
    </TMPL_IF>
    <TMPL_IF NAME=MERCHANT_VESSEL_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','375',0,0,0,0,0,0,'','coverage/watercraft_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Watercraft Coverage Area" title="Watercraft Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('watercraft_help.html','Watercraft');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Watercraft Search Help" title="Watercraft Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=AIRCRAFT_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="FAA Aircraft Search Coverage Area" title="FAA Aircraft Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('faa_aircraft_help.html','FAA_Aircraft');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="FAA Aircraft Search Help" title="FAA Aircraft Search Help"></a></td>
    </TMPL_IF>
   <TMPL_IF SEXPREDATOR_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/sexual_offenders_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Sexual Offenders Search Coverage Area" title="Sexual Offenders Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('sexual_offenders_help.html','SexualOffender');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Sexual Offenders Search Help" title="Sexual Offenders Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="OFFICIAL_RECORDS_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','510',0,0,0,1,1,0,'','coverage/official_records_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Official Records Search Coverage Area" title="Official Records Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('official_records_help.html','OfficialRecords');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Official Records Search Help" title="Official Records Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="MARRIAGE_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','350',0,0,0,1,1,0,'','coverage/marriages_divorces_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Marriages / Divorces Coverage Area" title="Marriages / Divorces Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('marriages_divorces_help.html','MarriageDivorce');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Marriages / Divorces Search Help" title="Marriages / Divorces Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="FORECLOSURE_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/foreclosures_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Foreclosure Search Coverage Area" title="Foreclosure Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('foreclosure_help.html','Foreclosures');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Foreclosure Search Help" title="Foreclosure Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="LIEN_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','360',0,0,0,0,0,0,'','coverage/liens_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Lien Search Coverage Area" title="Lien Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('lien_judgment_help.html','LiensJudgments');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Lien Search Help" title="Lien Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="HUNTING_LICENSE_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/hunting_fishing_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Hunting &amp; Fishing Licenses Search Coverage Area" title="Hunting &amp; Fishing Licenses Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('hunting_fishing_help.html','HuntingFishing');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Hunting &amp; Fishing Licenses Search Help" title="Hunting &amp; Fishing Licenses Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="CONCEALED_WEAPON_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/concealed_weapons_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Concealed Weapons Search Coverage Area" title="Concealed Weapons Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('concealed_weapons_help.html','ConcealedWeapons');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Concealed Weapons Search Help" title="Concealed Weapons Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="VOTER_REGISTRATION_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/voter_registrations_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Voter Registrations Search Coverage Area" title="Voter Registrations Search Coverage Area"></a></td>
      <TMPL_IF IRS>
      <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/voter_registrations_help.html','VoterRegistration');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Voter Registrations Search Help" title="Voter Registrations Search Help"></a></td>
      <TMPL_ELSE>
      <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('voter_registrations_help.html','VoterRegistration');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Voter Registrations Search Help" title="Voter Registrations Search Help"></a></td>
      </TMPL_IF>
    </TMPL_IF>
    <TMPL_IF NAME="FIREARMS_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_plus_dc_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Federal Firearms &amp; Explosives Search Coverage Area" title="Federal Firearms &amp; Explosives Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('federal_firearms_help.html','Firearms');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Federal Firearms &amp; Explosives Search Help" title="Federal Firearms &amp; Explosives Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="DEA_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_plus_dc_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="DEA Controlled Substance Licenses Search Coverage Area" title="DEA Controlled Substance Licenses Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('dea_controlled_help.html','DEA');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="DEA Controlled Substance Licenses Search Help" title="DEA Controlled Substance Licenses Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=MVR_REPORT>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mvr_coverage','CoverageWindow');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Motor Vehicle Driving Records Coverage Area" title="Motor Vehicle Driving Records Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('locating_mvr.html','MotorVehicleDrivingRecord');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Motor Vehicle Driving Records Help" title="Motor Vehicle Driving Records Help"></a></td>
    </TMPL_IF>
    <TMPL_UNLESS HIDE_RT_MVR>
    <TMPL_IF NAME="GOV">
    <TMPL_IF NAME=RT_MVR_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/rt_mvr_coverage','CoverageWindow');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Real-Time Motor Vehicle Registration Coverage Area" title="Real-Time Motor Vehicle Registration Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('real-timeMVR_help.html','RealTimeMotorVehicleRegistration');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Real-Time Motor Vehicle Registration Help" title="Real-Time Motor Vehicle Registration Help"></a></td>
    </TMPL_IF>
    </TMPL_IF>
    <TMPL_IF NAME="LE">
    <TMPL_IF NAME="RT_MVR_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/rt_mvr_coverage','CoverageWindow');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Real-Time Motor Vehicle Registration Coverage Area" title="Real-Time Motor Vehicle Registration Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('real-timeMVR_help.html','RealTimeMotorVehicleRegistration');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Real-Time Motor Vehicle Registration Help" title="Real-Time Motor Vehicle Registration Help"></a></td>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_UNLESS>
    <TMPL_IF NAME="RT_PHONE_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','390',0,0,0,1,1,0,'','coverage/rt_phone_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Real-Time Phone Search Coverage Area" title="Real-Time Phone Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('real_time_phone_help.html','RT_Phone');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Real-Time Phone Search Help" title="Real-Time Phone Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="DA_BASIC_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/phone_base_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Basic Lookup Coverage Area" title="Basic Lookup Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('da_help.html','Phones_Basic');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Basic Lookup Help" title="Basic Lookup Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="DA_REVERSE_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/phone_base_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Reverse Lookup Coverage Area" title="Reverse Lookup Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('da_help.html#reverse','Phones_Reverse');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Reverse Lookup Help" title="Reverse Lookup Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="DA_WIRELESS_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/phone_base_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Phones Plus Coverage Area" title="Phones Plus Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('phones_plus_help.html','Phones_Plus');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Phones Plus Help" title="Phones Plus Help"></a></td>
    </TMPL_IF>
    <TMPL_IF ENABLE_LOCATE_PLUS_SEARCH>
    <TMPL_IF NAME="LOCATE_PLUS_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/phone_network_gateway_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Phone Network Gateway Coverage Area" title="Phone Network Gateway Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('phone_network_gateway_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Phone Network Gateway Help" title="Phone Network Gateway Help"></a></td>
    </TMPL_IF>
    </TMPL_IF>
    <TMPL_IF NAME="INS">
    <TMPL_IF NAME="RATE_EVASION_REPORT">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/rate_evasion_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Rate Evasion Coverage Area" title="Rate Evasion Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('howto_ree/howto_ree.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Rate Evasion Help" title="Rate Evasion Help"></a></td>
    </TMPL_IF>
    </TMPL_IF>

    <TMPL_IF NAME="TODAYS_NEWS_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/140956.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Todays News Coverage Area" title="Todays News Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_todays_search_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Todays News Help" title="Todays News Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME="US_NEWS_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/140954.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="US Publication News Coverage Area" title="US Publication News Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_usnews_search_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="US Publication News Help" title="US Publication News Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME="NON_US_NEWS_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/140955.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Non US Publication News Coverage Area" title="Non US Publication News Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_non_usnews_search_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Non US Publication News Help" title="Non US Publication News Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME="ARCHIVED_NEWS_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Archived News Coverage Area" title="Archived News Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_archived_news_search_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Archived News Help" title="Archived News Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="PROVIDER_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Provider Search Coverage Area" title="Provider Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF NAME="LEG">leg<TMPL_ELSE>hea</TMPL_IF>/provider_search_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Provider Search Help" title="Provider Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="SANCTION_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Provider Sanction Search Coverage Area" title="Provider Sanction Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('<TMPL_IF NAME="LEG">leg<TMPL_ELSE>hea</TMPL_IF>/provider_sanction_search_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Provider Sanction Search Help" title="Provider Sanction Search Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME=CORPORATION_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/corp_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Corporations Search Coverage Area" title="Corporations Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('corporations_help.html','Corporations');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Corporations Search Help" title="Corporations Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=UCC_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ucc_coverage','CoverageWindow');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="UCC Search Coverage Area" title="UCC Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('ucc_help.html','UCC_Filings');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="UCC Search Help" title="UCC Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=BUS_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Business Search Coverage Area" title="Business Search Coverage Area"></a></td>
    <TMPL_IF IRS><!-- IRS specific help -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/business_help.html','BusinessSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Business Search Help" title="Business Search Help"></a></td>
    <TMPL_ELSE>
    <TMPL_IF LE><!-- LE specific help -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('le/business_help.html','BusinessSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Business Search Help" title="Business Search Help"></a></td>
    <TMPL_ELSE>
    <TMPL_IF GOV><!-- GOV specific help -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('gov/business_help.html','BusinessSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Business Search Help" title="Business Search Help"></a></td>
    <TMPL_ELSE>
    <TMPL_IF COL><!-- COL specific help -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('col/business_help.html','BusinessSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Business Search Help" title="Business Search Help"></a></td>
    <TMPL_ELSE>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('business_help.html','BusinessSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Business Search Help" title="Business Search Help"></a></td>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
    <TMPL_IF NAME=WHOIS_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/internet_domains_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Internet Domains Search Coverage Area" title="Internet Domains Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('internet_domains_help.html','InternetDomains');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Internet Domains Search Help" title="Internet Domains Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=BUS_CREDIT_SEARCH>
    <TMPL_IF NAME="IRS">
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Experian Business Search Coverage Area" title="Experian Business Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/business_credit_help.html','BusinessCredit');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Experian Business Search Help" title="Experian Business Search Help"></a></td>
    <TMPL_ELSE>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Business Credit Search Coverage Area" title="Business Credit Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('business_credit_help.html','BusinessCredit');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Business Credit Search Help" title="Business Credit Search Help"></a></td>
    </TMPL_IF>
    </TMPL_IF>
    <TMPL_IF NAME=D_AND_B_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Dun &amp; Bradstreet Coverage Area" title="Dun &amp; Bradstreet Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('DB_records_help.html','DunBradstreet');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Dun &amp; Bradstreet Help" title="Dun &amp; Bradstreet Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=DELCO_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/delaware_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Delaware Corporation Search Coverage Area" title="Delaware Corporation Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('delaware_corporations_help.html','DelawareCorp');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Delaware Corporations Search Help" title="Delaware Corporations Search Help"></a></td>
    </TMPL_IF>

   <TMPL_UNLESS DONT_SHOW_NEWS>
    <TMPL_IF NAME=BUS_NEWS_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Businesses in the News Coverage Area" title="Businesses in the News Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('news_help.html','BusinessInNews');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Businesses in the News Help" title="Businesses in the News Help"></a></td>
    </TMPL_IF>
   </TMPL_UNLESS>

   <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
    <TMPL_IF NAME=SEC_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="general_win('https://risk.nexis.com/AMLSolutions/help/SEC_Filings_Source.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="SEC Filings Coverage Area" title="SEC Filings Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_sec_filings_search_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="SEC Filings Help" title="SEC Filings Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=TRADEMARK_SEARCH>
    <td class="no-print" valign="bottom"><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/154566.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Trademark Search Coverage Area" title="Trademark Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_trademark_search_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Trademark Search Help" title="Trademark Search Help"></a></td>
    </TMPL_IF>
   </TMPL_UNLESS>
    <TMPL_IF NAME=FICTIOUS_SEARCH>
    <td class="no-print" valign="bottom"><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/148505.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Fictious Business Name Information Coverage Area" title="Fictious Business Name Information Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/find_fictitious_bus_search_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Fictious Business Name Information Help" title="Fictious Business Name Information Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME=BUS_INSTANT_ID_REPORT>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Business Search Coverage Area" title="Business Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('business_instantid_help.html','Bus_InstantID');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Business Search Help" title="Business Search Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=EQUIFAX_RECOVERY_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Equifax Recovery Report Coverage Area" title="Equifax Recovery Report Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:general_win('<TMPL_VAR NAME=PDFPATH>/equifax/equifax_recovery_report.pdf','EquifaxRecoveryReport','','',1,1,1,1,1,0);void(0);"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Equifax Recovery Report Help" title="Equifax Recovery Report Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME=OSHA_SEARCH>
    <td class="no-print" valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="OSHA Investigative Reports Coverage Area" title="OSHA Investigative Reports Coverage Area"></a><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('osha_investigative_reports_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="OSHA Investigative Reports Help" title="OSHA Investigative Reports Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=DBGLOBAL_SEARCH>
    <td class="no-print" valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/dbglobal_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="D & B Global Market Identifiers Coverage Area" title="D & B Global Market Identifiers Coverage Area"></a><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('d_b_global_market_identifiers_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="D & B Global Market Identifiers Help" title="D & B Global Market Identifiers Help"></a></td>
    </TMPL_IF>
  <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
    <TMPL_IF NAME="INSTOPICS_NEWS_SEARCH">
    <td class="no-print"><a href="javascript:void(0);" onClick="general_win('http://www.lexisnexis.com/hottopics/helpfiles/8399.htm','CoverageWindow',790,490,1,1,1,1,1,0);void(0);"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Insurance Topics in News Coverage Area" title="Insurance Topics in News Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('insurance_topics_news_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Insurance Topics in News Help" title="Insurance Topics in News Help"></a></td>
    </TMPL_IF>
  </TMPL_UNLESS>
    
    <TMPL_IF NAME="PSPR_SEARCH">
    <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Public Statewide Public Records Coverage Area" title="Public Statewide Public Records Coverage Area"></a><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('statewide_public_records_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Public Statewide Public Records Help" title="Public Statewide Public Records Help"></a></td>
    </TMPL_IF>
  <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
    <TMPL_IF NAME=DO_NEWS_SEARCH>
    <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/obituary_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Deaths & Obituaries in the News Coverage Area" title="Deaths & Obituaries in the News Coverage Area"></a><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('deaths_obituaries_news_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Deaths & Obituaries in the News Help" title="Deaths & Obituaries in the News Help"></a></td>
    </TMPL_IF>
  </TMPL_UNLESS>

    <TMPL_IF NAME="FED_CIVIL_COURT_SEARCH">
    <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/fedcivil_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Federal Civil Court Coverage Area" title="Federal Civil Court Coverage Area"></a><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('federal_civil_courts_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Federal Civil Court Help" title="Federal Civil Court Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="FED_CRIM_COURT_SEARCH">
    <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/fedcrim_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Federal Criminal Court Coverage Area" title="Federal Criminal Court Coverage Area"></a><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('federal_criminal_courts_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Federal Criminal Court Help" title="Federal Criminal Court Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME="COURT_CASE_SEARCH">
    <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/courtcasetopic_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Court Case by Topic Coverage Area" title="Court Case by Topic Coverage Area"></a><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('howto_ree/howto_ree.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Court Case by Topic Help" title="Court Case by Topic Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME="MP_PROVIDERS_SEARCH">
    <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mp_providers_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Medical Professions Providers Search Coverage Area" title="Medical Professions Providers Search Coverage Area"></a><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('medical_professions_providers_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Medical Professions Providers Search Help" title="Medical Professions Providers Search Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME="MP_SPECIALITIES_SEARCH">
    <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mp_specialites_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Medical Professions Specialties Search Coverage Area" title="Medical Professions Specialties Search Coverage Area"></a><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('medical_professions_specialties_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Medical Professions Specialties Search Help" title="Medical Professions Specialties Search Help"></a></td>
    </TMPL_IF>
    
    <TMPL_IF NAME="MP_HOSPITALS_SEARCH">
    <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mp_hospitals_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Medical Professions Hospitals Search Coverage Area" title="Medical Professions Hospitals Search Coverage Area"></a><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('medical_professions_hospitals_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Medical Professions Hospitals Search Help" title="Medical Professions Hospitals Search Help"></a></td>
    </TMPL_IF>
    
    <TMPL_IF NAME=AVM_SEARCH>
    <td valign="bottom"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','600','525',0,0,0,1,1,0,'','coverage/avm_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Automated Valuation Models Report Coverage Area" title="Automated Valuation Models Report Coverage Area"></a><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('irs/AVM_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Automated Valuation Models Report Help" title="Automated Valuation Models Report Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME=DEATH_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/death_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Death Records Search Coverage Area" title="Death Records Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('locat_death_rcds.html','DeathRecords');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Death Search Help" title="Death Search Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME=EMAIL_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Email Search Coverage Area" title="Email Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('email_address_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Email Search Help" title="Email Search Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME=CARRIER_DISCOVERY_REPORT>
    <!-- <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/all50_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Carrier Discovery Report Coverage Area" title="Carrier Discovery Report Coverage Area"></a></td> -->
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('carrier_discovery_help.html');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Carrier Discovery Report Help" title="Email Search Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME=CANADIAN_PHONES_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ca_phone_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Canadian Phones Search Coverage Area" title="Canadian Phones Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('canadian_phones_help.html','ca_phone_records');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Canadian Phones Search Help" title="Canadian Phones Search Help"></a></td>
    </TMPL_IF>

    <TMPL_IF NAME=REAL_TIME_PERSON_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/rt_person_coverage','CoverageWindow');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Real-Time Person Search Coverage Area" title="Real-Time Person Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('real_time_person_help.html','RealTimePersonSearch');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Real-Time Person Search Help" title="Real-Time Person Search Help"></a></td>
    </TMPL_IF>

    <TMPL_IF LE>	
    <TMPL_IF NAME=MV_WILDCARD_SEARCH>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/mvr_wildcard_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="MVR Wildcard Search Coverage Area" title="MVR Wildcard Search Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('mvr_wildcard_help.html','WildcardMotorVehicle');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="MVR Wildcard Search Help" title="MVR Wildcard Search Help"></a></td>
    </TMPL_IF>
    </TMPL_IF>

    <TMPL_IF GOV>	
    <TMPL_IF NAME=IND_QUALIFIER_REPORT>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/ind_qualifier_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Comprehensive Health Care Provider Report Coverage Area" title="Comprehensive Health Care Provider Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('healthcare_provider_report_help.html','Health Care');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Comprehensive Health Care Provider Report Help" title="Comprehensive Health Care Provider Report Help"></a></td>
    </TMPL_IF>
    <TMPL_IF NAME=BUS_QUALIFIER_REPORT>
    <td class="no-print"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,0,0,0,'','coverage/bus_qualifier_coverage');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/coverage.gif" alt="Comprehensive Health Care Business Report Coverage Area" title="Comprehensive Health Care Business Coverage Area"></a></td>
    <td class="no-print"><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('healthcare_business_report_help.html','Health Care');"><img border="0" height="18" width="43" src="<TMPL_VAR NAME=IMGPATH>/help1.gif" alt="Comprehensive Health Care Business Report Help" title="Comprehensive Health Care Business Report Help"></a></td>
    </TMPL_IF>
    </TMPL_IF>

  </tr>
<!-- end equifaxcreditsearch/coverage_help.tpl -->
