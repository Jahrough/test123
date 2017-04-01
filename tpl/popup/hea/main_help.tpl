<html>
<head>
<title>Help Menu</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

<script Language="JavaScript">
var help_path = '<TMPL_VAR NAME=HLPPATH>'
function open_help(help_url) {
    general_win(help_path + '/' + help_url,'HelpWindow',780,490,1,1,1,1,1,0);
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

<center>

<table height="420" border="0" cellpadding="5" cellspacing="0">
  <tr>

    <td align="left" valign="top" width="120" height="100%">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">

      <tr>
        <td valign="top" align="left" width="120">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr class="genericborder">
            <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
            <td height="40" colspan="3" align="center" valign="middle" class="unifont12white" width="100%"><b>health<br>care</b></td>
            <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
          </tr>
          <tr>
            <td bgcolor="white" valign="top" align="left" colspan="3">
            <table border="0" cellpadding="0" cellspacing="0" height="425">
              <tr>
                <td valign="top">
		<table border="0" cellpadding="0" cellspacing="5" width="117">
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('hea/provider_search_help.html');">Provider Search</a></td>
                  </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('hea/provider_sanction_search_help.html');">Provider Sanction Search</a></td>
                  </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('dea_controlled_help.html');">DEA Controlled Substances</a></td>
                  </tr>
		</table>
                </td>
              </tr>
            </table>
            </td>
          </tr>
          <tr class="genericborder">
            <td height="1" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="1" width="1"></td>
          </tr>
        </table>
        </td>
      </tr>

    </table>
    </td>

    <td align="left" valign="top" width="120" height="100%">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">

      <tr>
        <td valign="top" align="left" width="120" height="100%">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
          <tr class="genericborder">
            <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
            <td height="40" colspan="3" align="center" valign="middle" class="unifont12white" width="100%"><b>people</b></td>
            <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
          </tr>
          <tr>
            <td bgcolor="white" valign="top" align="left" colspan="3">
            <table border="0" cellpadding="0" cellspacing="0" height="200">
              <tr>
                <td valign="top">
                <table border="0" cellpadding="0" cellspacing="5" width="117">
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('person_help.html');">Person Search</a></td>
                  </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('advanced_person_help.html');">Advanced Person Search</a></td>
                  </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('people_at_work_help.html');">People at Work</a></td>
                  </tr>
                  <TMPL_UNLESS HIDE_INSTANTID>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu"  href="javascript:open_help('instantid_help.html');">InstantID</a></td>
                  </tr>
                  </TMPL_UNLESS>
                  <tr>
                     <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                     <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('patriot_act_help.html');">USA PATRIOT Act</a></td>
                  </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('voter_registrations_help.html');">Voter Registrations</a></td>
                  </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('accidents_help.html');">Florida Accidents</a></td>
                  </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('sexual_offenders_help.html');">Sexual Offenders</a></td>
                  </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('locat_death_rcds.html');">Death Records Search</a></td>
                  </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('email_address_help.html');">Email Search</a></td>
                  </tr>
                </table>
                </td>
              </tr>
            </table>
            </td>
          </tr>
          <tr class="genericborder">
            <td height="1" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="1" width="1"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
	<td height="10"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="10" width="1"></td>
      </tr>
      <tr>
        <td valign="bottom" align="left" width="120" height="100%">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
          <tr class="genericborder">
            <td rowspan="3" class="unifont2">&nbsp;</td>
            <td height="40" align="center" valign="middle" class="unifont12white"><b>news</b></td>
            <td rowspan="3" class="unifont2">&nbsp;</td>
          </tr>
          <tr>
            <td bgcolor="white" valign="top" align="left">
            <table border="0" cellpadding="0" cellspacing="0" height="100">
              <tr>
                <td valign="top">
                <table border="0" cellpadding="0" cellspacing="5" width="117">
            		  <tr>
            		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu"  href="javascript:open_help('news_help.html');">People in the News</a></td>
            		  </tr>
          	      <tr>
          	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu"  href="javascript:open_help('news_help.html');">Businesses in the News</a></td>
          	      </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('hea/insurance_topics_news_help.html');">Insurance Topics</a></td>
                  </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('deaths_obituaries_news_help.html');">Death & Obituaries</a></td>
                  </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('irs/find_archived_news_search_help.html');">Archived News Search</a></td>
              </tr>

                </table>
                </td>
              </tr>
            </table>
            </td>
          </tr>
          <tr class="genericborder">
            <td height="1" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="1" width="1"></td>
          </tr>
        </table>
        </td>
      </tr>

    </table>
    </td>

    <td align="left" valign="top" width="120" height="100%">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">

      <tr>
        <td valign="top" align="left" width="120">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr class="genericborder">
            <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
            <td height="40" colspan="3" align="center" valign="middle" class="unifont12white" width="100%"><b>businesses</b></td>
            <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
          </tr>
          <tr>
            <td bgcolor="white" valign="top" align="left" colspan="3">
            <table border="0" cellpadding="0" cellspacing="0" height="155">
              <tr>
                <td valign="top">
                <table border="0" cellpadding="0" cellspacing="5" width="117">
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('business_help.html');">Business Search</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('corporations_help.html');">Corporation Filings</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('ucc_help.html');">National UCC Filings</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('internet_domains_help.html');">Internet Domains</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('DB_records_help.html');">Dun &amp; Bradstreet</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('delaware_corporations_help.html');">Delaware Corporations</a></td>
                  </tr>
		  <TMPL_UNLESS HIDE_BUS_INSTANTID>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu"  href="javascript:open_help('business_instantid_help.html');">Business InstantID</a></td>
              </tr>
		  </TMPL_UNLESS>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('d_b_global_market_identifiers_help.html');">D &amp; B Global Market Identifiers</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('sec_filings_help.html');">SEC Filings</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('osha_investigative_reports_help.html');">OSHA Investigative Reports</a></td>
              </tr>
	        </table>
                </td>
              </tr>
            </table>
            </td>
          </tr>
          <tr class="genericborder">
            <td height="1" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="1" width="1"></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
	<td height="10"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="10" width="1"></td>
      </tr>
      <tr>
        <td valign="bottom" align="left" width="120" height="100%">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
          <tr class="genericborder">
            <td rowspan="3" class="unifont2">&nbsp;</td>
            <td height="40" align="center" valign="middle" class="unifont12white"><b>assets</b></td>
            <td rowspan="3" class="unifont2">&nbsp;</td>
          </tr>
          <tr>
            <td bgcolor="white" valign="top" align="left">
            <table border="0" cellpadding="0" cellspacing="0" height="135">
              <tr>
                <td valign="top">
                <table border="0" cellpadding="0" cellspacing="5" width="117">
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('motor_vehicle_help.html');">Motor Vehicles</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('property_assessment_help.html');">Property Assessments</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('property_deeds_help.html');">Property Deeds</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('merchant_vessels_help.html');">Watercraft</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('faa_aircraft_help.html');">FAA Aircraft</a></td>
                  </tr>
	        </table>
                </td>
              </tr>
            </table>
            </td>
          </tr>
          <tr class="genericborder">
            <td height="1" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="1" width="1"></td>
          </tr>
        </table>
        </td>
      </tr>

    </table>
    </td>

    <td align="left" valign="top" width="120" height="100%">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">

      <tr>
        <td valign="top" align="left" width="120" height="100%">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
          <tr class="genericborder">
            <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
            <td height="40" colspan="3" align="center" valign="middle" class="unifont12white" width="100%"><b>licenses</b></td>
            <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
          </tr>
          <tr>
            <td bgcolor="white" valign="top" align="left" colspan="3">
            <table border="0" cellpadding="0" cellspacing="0" height="339">
              <tr>
                <td valign="top">
                <table border="0" cellpadding="0" cellspacing="5" width="117">
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('dl_help.html');">Driver Licenses</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('faa_pilots_help.html');">FAA Pilots</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('hunting_fishing_help.html');">Hunting/Fishing Licenses</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('concealed_weapons_help.html');">Concealed Weapons Permits</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('federal_firearms_help.html');">Federal Firearms &amp; Explosives</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('locating_mvr.html');">MVR Reports<br>(Driving Records)</a></td>
                  </tr>
		  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	            <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('prof_license_help.html');">Professional Licenses</a></td>
	          </tr>
	        </table>
                </td>
              </tr>
            </table>
            </td>
          </tr>
          <tr class="genericborder">
            <td height="1" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="1" width="1"></td>
          </tr>
        </table>
        </td>
      </tr>

    </table>
    </td>

    <td align="left" valign="top" width="120" height="100%">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">

      <tr>
        <td valign="top" align="left" width="120">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr class="genericborder">
            <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
            <td height="40" colspan="3" align="center" valign="middle" class="unifont12white" width="100%"><b>courts</b></td>
            <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
          </tr>
          <tr>
            <td bgcolor="white" valign="top" align="left" colspan="3">
            <table border="0" cellpadding="0" cellspacing="0" height="230">
              <tr>
                <td valign="top">
                <table border="0" cellpadding="0" cellspacing="5" width="117">
                  <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	            <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('bankruptcy_help.html');">Bankruptcy</a></td>
		  </tr>
                  <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	            <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('criminal_help.html');">Criminal Records</a></td>
		  </tr>
                  <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	            <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('civil_court_help.html');">Civil Courts</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('official_records_help.html');">Official Records</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('marriages_divorces_help.html');">Marriages / Divorces</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('foreclosure_help.html');">Foreclosures</a></td>
                  </tr>
	          <tr>
	            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('lien_judgment_help.html');">Liens &amp; Judgments</a></td>
                  </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('federal_civil_courts_help.html');">Federal Civil Court Records</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('federal_criminal_courts_help.html');">Federal Criminal Court Records</a></td>
              </tr>

		</table>
                </td>
              </tr>
            </table>
            </td>
          </tr>
          <tr class="genericborder">
            <td height="1" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="1" width="1"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
	<td height="10"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="10" width="1"></td>
      </tr>

      <tr>
        <td valign="bottom" align="left" width="120" height="100%">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
      <tr class="genericborder">
		<td rowspan="3" class="unifont2">&nbsp;</td>
            <td height="40" align="center" valign="middle" class="unifont12white"><b>phones</b></td>
            <td rowspan="3" class="unifont2">&nbsp;</td>
          </tr>
          <tr>
            <td bgcolor="white" valign="top" align="left">
            <table border="0" cellpadding="0" cellspacing="0" height="60">
              <tr>
                <td valign="top">
                <table border="0" cellpadding="0" cellspacing="5" width="117">
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('phones_plus_help.html');">Phones Plus</a></td>
                  </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('da_help.html');">Basic Lookup</a></td>
                  </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('da_help.html#reverse');">Reverse Lookup</a></td>
                  </tr>
		<TMPL_UNLESS DELETE_CANADIAN_PHONES>
	          <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('canadian_phones_help.html');">Canadian Phones</a></td>
		  </tr>
		</TMPL_UNLESS>
                </table>
                </td>
              </tr>
            </table>
            </td>
          </tr>
          <tr class="genericborder">
            <td height="1" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="1" width="1"></td>
          </tr>
        </table>
        </td>
      </tr>

    </table>
    </td>
  </tr>
</table>
</form>
</body>
</html>
