<html>
<head>
<title>Help Menu</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script Language="JavaScript">

var help_html_file = '';
var help_flash_file = '';

var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';

function open_help(help_html,help_flash) {
    help_html_file = help_html;
    if (vertical == 'bps' && help_flash) {
        help_flash_file = help_flash;
        show_post_popup('LOGIN/SHOW_POPUP','HelpWindow',780,490,1,1,1,1,1,0,'','show_help_option')
    } else {
        general_win('<TMPL_VAR NAME=HLPPATH>/' + help_html,'HelpWindow',780,490,1,1,1,1,1,0);
    }
}

</script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<form name="MAIN_HELP" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

<table border="0" cellpadding="0" cellspacing="0" width="100%" class="mainmenuheaderbk">
  <tr style="height: 30px">
    <td align="center" class="logohelpcoverage"><b>HELP MENU</b></td>
  </tr>
</table>
	
<br>

<center>

<table border="0" cellpadding="5" cellspacing="0">
  <tr>
    <td valign="top">
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="0" cellspacing="0" width="117">
	  <tr class="people" style="height: 30px;">
	    <td rowspan="3" class="unifont2">&nbsp;</td>
	    <td align="center" valign="middle" class="unifont12white"><b>people</b></td>
	    <td rowspan="3" class="unifont2">&nbsp;</td>
	  </tr>
	  <tr>
	    <td bgcolor="white" valign="top" align="left">
	    <table border="0" cellpadding="0" cellspacing="0" width="117" height="223">
	      <tr>
	        <td valign="top" align="left">
		<table border="0" cellpadding="0" cellspacing="5" width="117">
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('le/person_help.html','PersonSearch');">Person Search</a></td>
		  </tr>
		 <TMPL_UNLESS HIDE_RT_PERSON>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('real_time_person_help.html','RealTimePersonSearch');">Real-Time Person Search</a></td>
		  </tr>
		  </TMPL_UNLESS>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('le/advanced_person_help.html','AdvancedPersonSearch');">Advanced Person Search</a></td>
		  </tr>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('people_at_work_help.html','PeopleAtWork');">People at Work</a></td>
		  </tr>
		  <TMPL_UNLESS HIDE_INSTANTID>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu"  href="javascript:open_help('instantid_help.html','PeopleInstantID');">InstantID</a></td>
                  </tr>
		  </TMPL_UNLESS>
		  <TMPL_UNLESS DONT_SHOW_NEWS>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu"  href="javascript:open_help('news_help.html','PeopleInNews');">People in the News</a></td>
		  </tr>
		  </TMPL_UNLESS>
		  <TMPL_UNLESS IRB>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('batch/batch_how_to.html');">Batch 'How-To' Help</a></td>
		  </tr>
		  </TMPL_UNLESS>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('locat_death_rcds.html','DeathRecords');">Death Records Search</a></td>
		  </tr>
		</table>
		</td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	  <tr class="people" style="height: 15px;">
	    <td class="unifont2" colspan="3">&nbsp;</td>
	  </tr>
	</table>
	</td>
      </tr>
      <tr style="height: 10px;">
        <td class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top">
	<table border="0" cellpadding="0" cellspacing="0" width="117">
	  <tr class="da" style="height: 30px;">
	    <td rowspan="3" class="unifont2">&nbsp;</td>
	    <td align="center" valign="middle" class="unifont12white"><b>phones</b></td>
	    <td rowspan="3" class="unifont2">&nbsp;</td>
	  </tr>
	  <tr>
	    <td bgcolor="white" valign="top" align="left">
	    <table border="0" cellpadding="0" cellspacing="0" width="117" height="124">
	      <tr height="100">
	        <td height="100" valign="top" align="left">
		<table border="0" cellpadding="0" cellspacing="5" width="117">
      <TMPL_IF SHOW_RT_PHONE>
      <tr>
        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
        <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('real_time_phone_help.html');">Real-Time Phones</a></td>
      </tr>
      </TMPL_IF>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('phones_plus_help.html','Phones_Plus');">Phones Plus</a></td>
		  </tr>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('da_help.html','Phones_Basic');">Basic Lookup</a></td>
		  </tr>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('da_help.html#reverse','Phones_Reverse');">Reverse Lookup</a></td>
		  </tr>
      <TMPL_IF ENABLE_LOCATE_PLUS_SEARCH>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('phone_network_gateway_help.html');">Phone Network Gateway</a></td>
		  </tr>
      </TMPL_IF>
		</table>
		</td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	  <tr class="da" style="height: 15px;">
	    <td class="unifont2" colspan="3">&nbsp;</td>
	  </tr>
	</table>
	</td>
      </tr>
    </table>
    </td>
    <td valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="117">
      <tr class="business" style="height: 30px;">
        <td rowspan="3" class="unifont2">&nbsp;</td>
        <td align="center" valign="middle" class="unifont12white"><b>business</b></td>
        <td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" valign="top" align="left">
        <table border="0" cellpadding="0" cellspacing="0" width="117" height="402">
          <tr height="65">
            <td height="65" valign="top" align="left">
            <table border="0" cellpadding="0" cellspacing="5" width="117">
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('le/business_help.html','BusinessSearch');">Business Search</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('corporations_help.html','Corporations');">Corporation Filings</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('ucc_help.html','UCC_Filings');">National UCC Filings</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('internet_domains_help.html','InternetDomains');">Internet Domains</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('DB_records_help.html','DunBradstreet');">Dun &amp; Bradstreet</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('delaware_corporations_help.html','DelawareCorp');">Delaware Corporations</a></td>
              </tr>
	      <TMPL_UNLESS HIDE_BUS_CREDIT>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu"  href="javascript:open_help('business_credit_help.html','BusinessCredit');">Business Credit</a></td>
              </tr>
		  </TMPL_UNLESS>
	      <TMPL_UNLESS DONT_SHOW_NEWS>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu"  href="javascript:open_help('news_help.html','BusinessInNews');">Businesses in the News</a></td>
	      </tr>
	      </TMPL_UNLESS>
		  <TMPL_UNLESS HIDE_BUS_INSTANTID>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu"  href="javascript:open_help('business_instantid_help.html','Bus_InstantID');">Business InstantID</a></td>
              </tr>
		  </TMPL_UNLESS>
            </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr class="business" style="height: 15px;">
        <td class="unifont2" colspan="3">&nbsp;</td>
      </tr>
    </table>
    </td>
    <td valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="117">
      <tr class="asset" style="height: 30px;">
        <td rowspan="3" class="unifont2">&nbsp;</td>
        <td align="center" valign="middle" class="unifont12white"><b>assets</b></td>
        <td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" valign="top" align="left">
        <table border="0" cellpadding="0" cellspacing="0" width="117" height="402">
          <tr height="65">
            <td height="65" valign="top" align="left">
            <table border="0" cellpadding="0" cellspacing="5" width="117">
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('motor_vehicle_help.html','MotorVehicle');">Motor Vehicles</a></td>
              </tr>
              <TMPL_UNLESS HIDE_RT_MVR>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('real-timeMVR_help.html','Real-Time Motor Vehicle Registrations');">Real-Time Motor Vehicle Registrations</a></td>
              </tr>
              </TMPL_UNLESS>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('property_assessment_help.html','PropertyAssessments');">Property Assessments</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('property_deeds_help.html','PropertyDeeds');">Property Deeds</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('merchant_vessels_help.html','Watercraft');">Watercraft</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('faa_aircraft_help.html','FAA_Aircraft');">FAA Aircraft</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('mvr_wildcard_help.html','WildcardMotorVehicle');">MVR Wildcard</a></td>
              </tr>
            </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr class="asset" style="height: 15px;">
        <td class="unifont2" colspan="3">&nbsp;</td>
      </tr>
    </table>
    </td>
    <td valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="117">
      <tr class="license" style="height: 30px;">
        <td rowspan="3" class="unifont2">&nbsp;</td>
        <td align="center" valign="middle" class="unifont12white"><b>licenses</b></td>
        <td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" valign="top" align="left">
        <table border="0" cellpadding="0" cellspacing="0" width="117" height="402">
          <tr height="65">
            <td height="65" valign="top" align="left">
            <table border="0" cellpadding="0" cellspacing="5" width="117">
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('dl_help.html','DriversLicense');">Driver Licenses</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('prof_license_help.html','LicensesProfessional');">Professional Licenses</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('faa_pilots_help.html','FAA_Pilot');">FAA Pilots</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('hunting_fishing_help.html','HuntingFishing');">Hunting/Fishing Licenses</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('concealed_weapons_help.html','ConcealedWeapons');">Concealed Weapons Permits</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('voter_registrations_help.html','VoterRegistration');">Voter Registrations</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('federal_firearms_help.html','Firearms');">Federal Firearms &amp; Explosives</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('dea_controlled_help.html','DEA');">DEA Controlled Substances</a></td>
              </tr>
	      <TMPL_UNLESS IRB>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('locating_mvr.html','MotorVehicleDrivingRecord');">MVR Reports<br>(Driving Records)</a></td>
	      </tr>
	      </TMPL_UNLESS>
            </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr class="license" style="height: 15px;">
        <td class="unifont2" colspan="3">&nbsp;</td>
      </tr>
    </table>
    </td>
    <td valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="117">
      <tr class="court" style="height: 30px;">
        <td rowspan="3" class="unifont2">&nbsp;</td>
        <td align="center" valign="middle" class="unifont12white"><b>courts</b></td>
        <td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" valign="top" align="left">
        <table border="0" cellpadding="0" cellspacing="0" width="117" height="402">
          <tr height="65">
            <td height="65" valign="top" align="left">
            <table border="0" cellpadding="0" cellspacing="5" width="117">
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('bankruptcy_help.html','Bankruptcy');">Bankruptcy</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('criminal_help.html','Criminal');">Criminal Records</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('civil_court_help.html','CivilCourts');">Civil Courts</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('accidents_help.html','FLAccidents');">Florida Accidents</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('patriot_act_help.html','patriot');">USA PATRIOT Act</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('sexual_offenders_help.html','SexualOffender');">Sexual Offenders</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('official_records_help.html','OfficialRecords');">Official Records</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('marriages_divorces_help.html','MarriageDivorce');">Marriages / Divorces</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('foreclosure_help.html','Foreclosures');">Foreclosures</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('lien_judgment_help.html','LiensJudgments');">Liens &amp; Judgments</a></td>
              </tr>
            </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr class="court" style="height: 15px;">
        <td class="unifont2" colspan="3">&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</center>
</form>
</body>
</html>

