<!-- begin hea/lite/main_menu.tpl -->
<html>
<head>
<title>Main Menu</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="MAIN_MENU" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
  <INPUT type=hidden NAME="HIDE_COURT_POPUP" VALUE="">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><INPUT type=hidden NAME="ADVANCED_SEARCH" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>"></TMPL_IF>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td height="70" width="191" align="center" class="mainmenuheaderbk">
    <table border="0" cellpadding="2" cellspacing="0" width="191" height="70">
      <tr>
        <td>
        <table border="0" cellpadding="0" cellspacing="0" bgcolor="#ffffff" width="100%" height="66">
          <tr>
            <td bgcolor="#ffffff" align="center" class="logolong">Accurint for<br>Health Care</td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    </td>
    <td valign="bottom" class="mainmenuheaderbk" width="100%">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr bgcolor="#CE0031">
        <td height="4"></td>
      </tr>
      <tr>
        <td height="66" bgcolor="#737373" valign="bottom" width="100%">
        <table width="100%" border="0" cellpadding="5" cellspacing="0">
          <tr>
            <TMPL_INCLUDE NAME="main_menu_dates.tpl">
          </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr class="mainmenuheaderbk">
            <td align="left">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><input class="bs" type="button" value="Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','680','540',1,1,1,1,1,0,'','<TMPL_VAR NAME=APPLICATION_TYPE>/main_coverage');" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td>
                <TMPL_UNLESS IS_RESELLER><TMPL_UNLESS HIDE_PRICES><td><input class="bs" type="button" value="Pricing" onClick="general_win('https://healthcare.lexisnexis.com/price2_health_care.html','PriceSchedule','','',1,1,1,1,1,0);void(0);" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td></TMPL_UNLESS></TMPL_UNLESS>
                <TMPL_UNLESS IS_RESELLER><td><input class="bs" type="button" value="Announcements" onClick="send_event('LOGIN/SHOW_WELCOME');" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td></TMPL_UNLESS>
                <TMPL_UNLESS IS_RESELLER><td><input class="bs" type="button" value="FAQs" onClick="show_post_popup('LOGIN/SHOW_POPUP','FAQMenuWindow','450','500',1,0,0,1,1,0,'','faq');" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td></TMPL_UNLESS>
              </tr>
            </table>
            </td>
            <td align="right">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><input class="bs" type="button" value="Contact Us" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','475','610',1,1,1,1,1,0,'','contact_select');" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td>
		<td><input class="bs" type="button" value="My Account" onClick="show_post_popup('MYACCOUNT/SHOW_PROFILE','MyAccountWin','','',1,1,1,1,1,0);" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td>
                <td><input class="bs" type="button" value="Help" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','680','535',1,1,1,1,1,0,'','<TMPL_VAR NAME=APPLICATION_TYPE>/main_help');" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></a></td>
                <td><input class="bs" type="button" value="Logout" onClick="send_event('LOGOUT');" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td>
              </tr>
            </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>


<div align="center">
<table border="0" cellpadding="0" cellspacing="5" height="440" width="754">
  <tr>
    <!-- Begin Column #1 -->
    <td valign="top" height="250" style="height: 100%">
    <!-- Begin Health Care -->
    <table border="0" cellpadding="0" cellspacing="0" width="119">
      <tr class="genericborder">
        <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
        <td height="40" align="center" valign="middle" class="unifont12white" width="100%"><b>health<br>care</b></td>
        <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" width="117" valign="top" align="center" height="487">
        <table border="0" cellpadding="0" cellspacing="5" width="100%">
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" class="smallfont1grey"><TMPL_IF DISABLE_PROVIDER>Provider Search<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_PROVIDER');">Provider Search</a></TMPL_IF></td>
          </tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" class="smallfont1grey"><TMPL_IF DISABLE_SANCTION>Provider Sanction Search<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_SANCTION');">Provider Sanction Search</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_DEA>DEA Controlled Substances<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_DEA');">DEA Controlled Substances</a></TMPL_IF></td>
          </tr>
          <!--
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:alert('OIG');">OIG</a></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:alert('Medical Malpractice');">Medical Malpractice</a></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:alert('NPDB');">NPDB</a></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:alert('HIPDB');">HIPDB</a></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:alert('UPIN');">UPIN</a></td>
          </tr>
          -->
          <!--
          <tr>
            <td valign="top" align="left" width="101" class="smallfont1" colspan="2" nowrap="1"><b>Self Reported Data</b></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_MEDICAL_LICENSE>Medical License Search<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_MEDICAL_LICENSE');">Nationwide Directory of Medical Licenses</a></TMPL_IF></td>
          </tr>
          -->
        </table>
        </td>
      </tr>
      <tr class="genericborder">
        <td height="14" class="unifont2">&nbsp;</td>
      </tr>
    </table>
    <!-- End Health Care -->
    </td>
    <!-- End Column #1 -->

    <!-- Begin Column #2 -->
    <td valign="top">
    <!-- Begin People -->
    <table border="0" cellpadding="0" cellspacing="0" width="119">
      <tr class="genericborder">
        <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
        <td height="40" align="center" valign="middle" class="unifont12white" width="100%"><b>people</b></td>
        <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" width="117" valign="top" align="center" height="213">
        <table border="0" cellpadding="0" cellspacing="5" width="100%">
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" class="smallfont1grey"><TMPL_IF DISABLE_PERSON>Person Search<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_SEARCH');">Person Search</a></TMPL_IF></td>
          </tr>
          <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH">
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="113" class="smallfont1grey"><TMPL_IF DISABLE_ADV>Advanced Person Search<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_ADV');">Advanced Person Search</a></TMPL_IF></td>
          </tr>
          </TMPL_IF>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" class="smallfont1grey"><TMPL_IF DISABLE_PAW>People at Work<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_PAW');">People at Work</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" class="smallfont1grey"><TMPL_IF DISABLE_INSTANT_ID>InstantID<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_INSTANT_ID');">InstantID</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_PATRIOTACT>Patriot Act<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');">Patriot Act</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_VOTER_REGISTRATION>Voter Registrations<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registrations</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_ACCIDENT>Florida Accidents<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_ACCIDENT');">Florida Accidents</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_SEXPREDATOR>Sexual Offenders<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR');">Sexual Offenders</a></TMPL_IF></td>
          </tr>

	  <tr>
	    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	    <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_DEATH>Death Records<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_DEATH');">Death Records</a></TMPL_IF></td>
	  </tr>
	  <tr>
	    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	    <td valign="top" align="left" class="smallfont1grey"><TMPL_IF DISABLE_EMAIL>Email Search<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_EMAIL');">Email Search</a></TMPL_IF></td>
	  </tr>
	</table>
        </td>
      </tr>
      <tr class="genericborder">
        <td height="14" class="unifont2">&nbsp;</td>
      </tr>
    </table>
    <!-- End People -->
    <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="5" border="0"><br>
    <!-- Begin News -->
    <table border="0" cellpadding="0" cellspacing="0" width="119">
      <tr class="genericborder">
        <td rowspan="3" class="unifont2">&nbsp;</td>
        <td height="40" align="center" valign="middle" class="unifont12white"><b>news</b></td>
        <td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" width="117" valign="top" align="center" height="215">
        <table border="0" cellpadding="0" cellspacing="5" width="100%">
	<TMPL_UNLESS DONT_SHOW_NEWS>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" class="smallfont1grey"><TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_BUS_NEWS>Businesses in the News<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></TMPL_IF></td>
          </tr>
	  </TMPL_UNLESS>
	  <tr>
	  <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	  <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_INSTOPICS_NEWS>Insurance Topics in the News<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_INSTOPICS_NEWS');">Insurance Topics in the News</a></TMPL_IF></td>
	  </tr>
	  <tr>
	  <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	  <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_DO_NEWS>Deaths & Obituaries in the News<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_DO_NEWS');">Deaths & Obituaries in the News</a></TMPL_IF></td>
	  </tr>
	  <!--
            <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_TODAYS_NEWS>Health Care News
            <TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_TODAYS_NEWS');">Health Care News</a></TMPL_IF></td>
            </tr>
	  -->
            <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_ARCHIVED_NEWS>Archived News
            <TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_ARCHIVED_NEWS');">Archived News</a></TMPL_IF></td>
            </tr>

        </table>
        </td>
      </tr>
      <tr class="genericborder">
        <td height="14" class="unifont2">&nbsp;</td>
      </tr>
    </table>
    <!-- End News -->
    </td>
    <!-- End Column #2 -->

    <!-- Begin Column #3 -->
    <td valign="top">
    <!-- Begin Business -->
    <table border="0" cellpadding="0" cellspacing="0" width="119">
      <tr class="genericborder">
        <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
        <td height="40" align="center" valign="middle" class="unifont12white" width="100%"><b>businesses</b></td>
        <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" width="117" valign="top" align="center" height="310">
        <table border="0" cellpadding="0" cellspacing="5" width="100%">
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_BUS>Business Search<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_BUS');">Business Search</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_CORPORATION>Corporation Filings<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_CORPORATION');">Corporation Filings</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_UCC>National UCC Filings<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_UCC');">National UCC Filings</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_WHOIS>Internet Domains<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_WHOIS');">Internet Domains</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_D_AND_B>Dun &amp; Bradstreet<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_D_AND_B');">Dun &amp; Bradstreet</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_DELCO>Delaware Corporations<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_DELCO');">Delaware Corporations</a></TMPL_IF></td>
          </tr>
	  <TMPL_UNLESS IS_RESELLER>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_BUS_CREDIT>Business Credit<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_BUS_CREDIT');">Business Credit</a></TMPL_IF></td>
          </tr>
	  </TMPL_UNLESS>
	  <tr>
	    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	    <td valign="top" align="left" class="smallfont1grey"><TMPL_IF DISABLE_BUS_INSTANT_ID>Business InstantID<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_BUS_INSTANT_ID');">Business InstantID</a></TMPL_IF></td>
	  </tr>
	  <tr>
	    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	    <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_DBGLOBAL>D & B Global Market Identifiers<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_DBGLOBAL');">D & B Global Market Identifiers</a></TMPL_IF></td>
	  </tr>
	  <tr>
	    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	    <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_UNLESS DISABLE_SEC><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_SEC');">SEC Filings Search</a><TMPL_ELSE>SEC Filings Search</TMPL_UNLESS></td>
	  </tr>
	  <tr>
	    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	    <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_OSHA>OSHA Investigative Reports<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_OSHA');">OSHA Investigative Reports</a></TMPL_IF></td>
	  </tr>
	  <!--
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_UNLESS DISABLE_EXPERIAN><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_EXPERIAN');">Experian Business Search</a><TMPL_ELSE>Experian Business Search</TMPL_UNLESS></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_UNLESS DISABLE_FICTIOUS><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_FICTIOUS');">Fictitious Business Name Information</a><TMPL_ELSE>Fictitious Business Name Information</TMPL_UNLESS></td>
              </tr>
	  -->

        </table>
        </td>
      </tr>
      <tr class="genericborder">
        <td height="14" class="unifont2">&nbsp;</td>
      </tr>
    </table>
    <!-- End Business -->
    <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="5" border="0"><br>
    <!-- Begin Assets -->
    <table border="0" cellpadding="0" cellspacing="0" width="119">
      <tr class="genericborder">
        <td rowspan="3" class="unifont2">&nbsp;</td>
        <td height="40" align="center" valign="middle" class="unifont12white"><b>assets</b></td>
        <td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" width="117" valign="top" align="center" height="118">
        <table border="0" cellpadding="0" cellspacing="5" width="100%">
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_MV>Motor Vehicles<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_DL_REG');">Motor Vehicles</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_ASSESSMENT>Property Assessments<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_PROP');">Property Assessments</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_DEEDS>Property Deeds<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_PROP_DEED');">Property Deeds</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_VESSEL>Watercraft<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_VESSEL');">Watercraft</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_AIRCRAFT>FAA Aircraft<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_AIRCRAFT');">FAA Aircraft</a></TMPL_IF></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr class="genericborder">
        <td height="14" class="unifont2">&nbsp;</td>
      </tr>
    </table>
    <!-- End Assets -->
    </td>
    <!-- End Column #3 -->
    
    <!-- Begin Column #4 -->
    <td valign="top">
    <!-- Begin Licenses -->
    <table border="0" cellpadding="0" cellspacing="0" width="119">
      <tr class="genericborder">
        <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
        <td height="40" align="center" valign="middle" class="unifont12white" width="100%"><b>licenses</b></td>
        <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" width="117" valign="top" align="center" height="240">
        <table border="0" cellpadding="0" cellspacing="5" width="100%">
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_DL>Driver Licenses<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_LICENSE');">Driver Licenses</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_FAA_PILOT>FAA Pilots<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_FAA_PILOT');">FAA Pilots</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_HUNTING_LICENSE>Hunting/Fishing Licenses<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE');">Hunting/Fishing Licenses</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_CONCEALED_WEAPON>Concealed<br>&nbsp;Weapons Permits<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON');">Concealed<br>&nbsp;Weapons Permits</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_FIREARMS>Federal Firearms &amp; Explosives<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_FIREARMS');">Federal Firearms &amp; Explosives</a></TMPL_IF></td>
          </tr>
        <TMPL_UNLESS IS_RESELLER>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_MVR>MVR Reports (Driving Records)<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_MVR');">MVR Reports (Driving Records)</a></TMPL_IF></td>
          </tr>
        </TMPL_UNLESS>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_PROF_LICENSE>Professional Licenses<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a></TMPL_IF></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr class="genericborder">
        <td height="14" class="unifont2">&nbsp;</td>
      </tr>
    </table>
    <!-- End  Licenses -->
    <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="5" border="0"><br>
    <!-- Begin Record Retrieval -->
    <table border="0" cellpadding="0" cellspacing="0" width="119">
      <tr class="genericborder">
        <td rowspan="3" class="unifont2">&nbsp;</td>
        <td height="40" align="center" valign="middle" class="unifont12white"><b>record<br>retrieval</b></td>
        <td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" width="117" valign="top" align="center" height="60">
        <table border="0" cellpadding="0" cellspacing="5" width="100%">
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey">
             <TMPL_IF NAME="EMSI_APPROVED">
            <TMPL_IF DISABLE_EMSI>Medical, Employment or Business Records<TMPL_ELSE><a class="mainmenu" href="javascript:med_win('<TMPL_VAR NAME=ACTION>?EVENT=SEARCH/SHOW_EMSI&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>','MedWin');" >Medical, Employment or Business Records</a></TMPL_IF>
             <TMPL_ELSE> 
            <a class="mainmenu"href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','EnableWindow',620,550,0,0,0,0,0,0,'','emsi_enable_main');">Medical, Employment or Business Records</a>
            </TMPL_IF>
            </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr class="genericborder">
        <td height="14" class="unifont2">&nbsp;</td>
      </tr>
    </table>
    <!-- End Record Retrieval -->
    <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="5" border="0"><br>
    <!-- Begin Security -->
    <table border="0" cellpadding="0" cellspacing="0" width="119">
      <tr class="genericborder">
        <td rowspan="3" class="unifont2">&nbsp;</td>
        <td height="40" align="center" valign="middle" class="unifont12white"><b>security</b></td>
        <td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" width="117" valign="top" align="center" height="69">
        <table border="0" cellpadding="0" cellspacing="5" width="100%">
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:void(0)" onClick="window.open('http://www.accurint.com/security_center');" title="Security Center">Security Center</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:void(0)" onClick="general_win('http://www.accurint.com/security/Securityv1.htm','SecurityPresentation','1100','700',0,0,0,1,1,0);void(0);" title="Security Presentation">Security Presentation</a></td>
              </tr>
	</table>
        </td>
      </tr>
      <tr class="genericborder">
        <td height="14" class="unifont2">&nbsp;</td>
      </tr>
    </table>
    <!-- End Security -->
 
    </td>
    <!-- End Column #4 -->

    <!-- Begin Column #5 -->
    <td valign="top">
    <!-- Begin Courts -->
    <table border="0" cellpadding="0" cellspacing="0" width="119">
      <tr class="genericborder">
        <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
        <td height="40" align="center" valign="middle" class="unifont12white" width="100%"><b>courts</b></td>
        <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" width="117" valign="top" align="center" height="316">
        <table border="0" cellpadding="0" cellspacing="5" width="100%">
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_BANKRUPTCY>Bankruptcy<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_BANKRUPTCY');">Bankruptcy</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_CRIM>State & Local<br>Criminal Records<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_CRIM');">State & Local<br>Criminal Records</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_CIVIL_COURT>State Civil Courts<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT');">State Civil Courts</a></TMPL_IF></td>
          </tr>
          <TMPL_UNLESS IS_RESELLER><TMPL_IF SHOW_CS_REPORT><tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_COURT><a class="mainmenu" href="javascript:court_ad()">Court Search<br>&nbsp;Wizard</a><TMPL_ELSE><TMPL_IF SKIP_COURT_POPUP><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_SEARCH')">Court Search<br>&nbsp;Wizard</a><TMPL_ELSE><a class="mainmenu" href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/court/court_howto_continue.html','CourtPopupWin','740','',1,1,1,1,1);void(0);">Court Search<br>&nbsp;Wizard</a></TMPL_IF></TMPL_IF></td>
          </tr></TMPL_IF></TMPL_UNLESS>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_OFFICIAL_RECORDS>Official Records<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS');">Official Records</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_MARRIAGE>Marriages / Divorces<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_MARRIAGE');">Marriages / Divorces</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_FORECLOSURE>Foreclosures<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_LIEN>Liens &amp; Judgments<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_LIENS');">Liens &amp; Judgments</a></TMPL_IF></td>
          </tr>
	  <tr>
	    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	    <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_FED_CRIM_COURT>Federal Criminal Court Records<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_FED_CRIM_COURT');">Federal Criminal Court Records</a></TMPL_IF></td>
	  </tr>
	  <tr>
	    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	    <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_FED_CIVIL_COURT>Federal Civil Court Records<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_FED_CIVIL_COURT');">Federal Civil Court Records</a></TMPL_IF></td>
	  </tr>
        </table>
        </td>
      </tr>
      <tr class="genericborder">
        <td height="14" class="unifont2">&nbsp;</td>
      </tr>
     </table>
    <!-- End Courts -->
    <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="5" border="0"><br>
    <!-- Begin SIRIS -->
    <table border="0" cellpadding="0" cellspacing="0" width="119">
      <tr class="genericborder">
        <td rowspan="3" class="unifont2">&nbsp;</td>
        <td height="40" align="center" valign="middle" class="unifont12white"><b>SIRIS</b></td>
        <td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" width="117" valign="top" align="center" height="112">
        <table border="0" cellpadding="0" cellspacing="5" width="100%">
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="https://nhcaa.lexisnexis.com" target="_blank">SIRIS</a></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr class="genericborder">
        <td height="14" class="unifont2">&nbsp;</td>
      </tr>
    </table>
    <!-- End SIRIS -->
    </td>
    <!-- End Column #5 -->

    <!-- Begin Column #6 -->
    <td valign="top">
    <!-- Begin DA -->
    <table border="0" cellpadding="0" cellspacing="0" width="119">
       <tr class="genericborder">
        <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
        <td height="40" align="center" valign="middle" class="unifont12white" width="100%"><b>phones</b></td>
        <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" width="117" valign="top" align="center" height="125">
        <table border="0" cellpadding="0" cellspacing="5" width="100%">
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_DA_WIRELESS>Phones Plus<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></TMPL_IF></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_DA_BASIC>Basic Lookup<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></TMPL_IF></td>
          </tr>
          <!--
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_CELL_REVERSE>Reverse Cell Phone Lookup<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_CELL_REVERSE');">Reverse Cell Phone Lookup</a></TMPL_IF></td>
          </tr>
          -->
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_IF DISABLE_DA_REVERSE>Reverse Lookup<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></TMPL_IF></td>
          </tr>
	  <tr>
	    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	    <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_CANADIAN_PHONES>Canadian Phones<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH2/SHOW_CANADIAN_PHONES');">Canadian Phones</a></TMPL_IF></td>
	  </tr>
        </table>
        </td>
      </tr>
      <tr class="genericborder">
        <td height="14" class="unifont2">&nbsp;</td>
      </tr>
     </table>
    <!-- End DA -->
    <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="5" border="0"><br>
    <!-- Begin Batching -->
    <table border="0" cellpadding="0" cellspacing="0" width="119">
      <tr class="genericborder">
        <td rowspan="3" class="unifont2">&nbsp;</td>
        <td height="40" align="center" valign="middle" class="unifont12white"><b>batching</b></td>
        <td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" width="117" valign="top" align="center" height="303">
        <table border="0" cellpadding="0" cellspacing="5" width="100%">
          <!--
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:alert('Address Cleaning');">Address Cleaning</a></td>
          </tr>
          -->
          <TMPL_UNLESS IS_RESELLER>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" class="smallfont1grey"><TMPL_UNLESS DISABLE_BATCH><a class="mainmenu" href="javascript:show_post_popup('BATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">People Batch</a><TMPL_ELSE>People Batch</TMPL_UNLESS></td>
          </tr>
          </TMPL_UNLESS>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" class="smallfont1grey"><TMPL_UNLESS DISABLE_BATCH><a class="mainmenu" href="javascript:show_post_popup('PHONEBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Phone</a><TMPL_ELSE>Phone</TMPL_UNLESS></td>
          </tr>
<TMPL_IF IS_BATCH_ADMIN>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_UNLESS DISABLE_BATCH><a class="mainmenu" href="javascript:show_post_popup('PHONESPLUSBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Phones Plus Batching</a><TMPL_ELSE>Phones Plus Batching</TMPL_UNLESS></td>
          </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_UNLESS DISABLE_BATCH><a class="mainmenu" href="javascript:show_post_popup('OFACBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Patriot Act Batching</a><TMPL_ELSE>Patriot Act Batching</TMPL_UNLESS></td>
          </tr>
	  <tr>
	    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
	    <td valign="top" align="left" class="smallfont1grey"><TMPL_UNLESS DISABLE_BATCH><a class="mainmenu" href="javascript:show_post_popup('INSTANTIDBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">InstantID Batch</a><TMPL_ELSE>InstantID Batch</TMPL_UNLESS></td>
	  </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_UNLESS DISABLE_BATCH><a class="mainmenu" href="javascript:show_post_popup('BATCH/BUS_START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Business Batch</a><TMPL_ELSE>Business Batch</TMPL_UNLESS></td>
          </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1grey"><TMPL_UNLESS DISABLE_BATCH><a class="mainmenu" href="javascript:show_post_popup('BATCH/BUS_DUEX_START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Business Collectors</a><TMPL_ELSE>Business Collectors</TMPL_UNLESS></td>
                  </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" class="smallfont1grey"><TMPL_UNLESS DISABLE_BATCH><a class="mainmenu" href="javascript:show_post_popup('INSTANTIDBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Business InstantID</a><TMPL_ELSE>Business InstantID</TMPL_UNLESS></td>
              </tr>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" class="smallfont1grey"><TMPL_UNLESS DISABLE_WATCHDOG><a class="mainmenu" href="javascript:show_post_popup('WATCHDOG/START','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Accurint Watchdog</a><TMPL_ELSE><a class="mainmenu" href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/watchdog/watchdog_ad.html','WatchDogPopupWin','550','',0,0,0,1,1,0);void(0);")>Accurint Watchdog</a></TMPL_UNLESS></td>
          </tr>
	  <TMPL_UNLESS IS_RESELLER>
          <tr>
            <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
            <td valign="top" align="left" class="smallfont1grey"><TMPL_UNLESS DISABLE_BATCH><a class="mainmenu" href="javascript:show_post_popup('SURECONTACTBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">SureContact Batch</a><TMPL_ELSE>SureContact Batch</TMPL_UNLESS></td>
          </tr>
          </TMPL_UNLESS>
</TMPL_IF>

        </table>
        </td>
      </tr>
      <tr class="genericborder">
        <td height="14" class="unifont2">&nbsp;</td>
      </tr>
    </table>
    <!-- End Batching -->
    </td>
    <!-- End Column #6 -->

  </tr>
</table>

<table border="0" cellpadding="5" cellspacing="0" width="764">
  <tr>
    <td class="smallfont1">Accurint does not constitute a "consumer report" as that term is defined in the federal Fair Credit Reporting Act, 15 USC 1681 et seq. (FCRA). Accordingly, Accurint may not be used in whole or in part as a factor in determining eligibility for credit, insurance, employment or another permissible purpose under the FCRA.</td>
    <td width="202" height="40" valign="bottom" align="right" class="logobrand">LexisNexis<span style="font-size: 12pt;">&nbsp;<sup>&#0174;</sup></td>
  </tr>
</table>

</form> 
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</body>
</html>
<!-- end hea/lite/main_menu.tpl -->
