<!-- begin le/main_menu.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html><head>
<title>LexisNexis&reg; | Accurint Main Menu</title>

<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/accurintHomePage.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<!--<script src="<TMPL_VAR NAME='JSPATH'>/rotate_banners2.js"></script>-->

<TMPL_INCLUDE NAME="main_menu_banners.tpl">

<script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/misc.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>
<script>
function setup_sections (flag) {
    set_section('peopleheader','peoplelinks','People',flag);
    set_section('phonesheader','phoneslinks','Phones',flag);
    set_section('businessesheader','businesseslinks','Businesses',flag);
    <TMPL_UNLESS DELETE_HEALTHCARE_HEADING>
    set_section('healthcareheader','healthcarelinks','Health Care',flag);
    </TMPL_UNLESS>
    set_section('assetsheader','assetslinks','Assets',flag);
    set_section('courtsheader','courtslinks','Courts',flag);
    set_section('licensesheader','licenseslinks','Licenses',flag);
    <TMPL_UNLESS DELETE_BATCH>
    set_section('batchheader','batchlinks','Batch',flag);
    </TMPL_UNLESS>
    <TMPL_IF SHOW_INTERNATIONAL_SECTION>
    set_section('internationalheader','internationallinks','International',flag);
    </TMPL_IF>
    <TMPL_UNLESS DELETE_TRIMERGE_REPORT>
    set_section('fcraheader','fcralinks','FCRA Gateway',flag);
    </TMPL_UNLESS>
    set_section('myaccountcontenttitle','myaccountcontent','My Account',flag);
    set_section('administrationtitle','administration','Administration',flag);
    set_section('trainingtitle','training','Training &amp; Security',flag);
    set_section('bannerinfotitle','bannerinfo','New Products &amp; Announcements',flag);
    if (cookie_lookup('rollovers') == 1) { $('rollovers').checked = true; }
}

function set_section (headerid,contentid,text,flag) {
    if (flag) {
        if (flag == 'hide') {
            save_cookie(contentid,1,365);
        } else if (flag == 'show') {
            save_cookie(contentid,0,365);
        }
    }
    if (cookie_lookup(contentid) == 1) {
        $(headerid).innerHTML = '<small>[<b>+</b>]</small>&nbsp;' + text;
        $(contentid).style.display = 'none';
    } else {
        $(headerid).innerHTML = '<small>[<b>-</b>]</small>&nbsp;' + text;
        $(contentid).style.display = 'inline';
    }
}

function toggle_section (id) {
    if (cookie_lookup(id) == 1) {
        save_cookie(id,0,365);
    } else {
        save_cookie(id,1,365);
    }
    setup_sections();
}

function toggle_rollovers () {
    if (cookie_lookup('rollovers') == 1) {
        save_cookie('rollovers',0,365);
        $('rollovers').checked = false;
    } else {
        save_cookie('rollovers',1,365);
        $('rollovers').checked = true;
    }
}

function show_section(id) {
    if ((cookie_lookup('rollovers') == 1) && (cookie_lookup(id) == 1)) {
        $(id).style.display = 'inline';
    }
}

function hide_section(id) {
    if ((cookie_lookup('rollovers') == 1) && (cookie_lookup(id) == 1)) {
        $(id).style.display = 'none';
    }
}

<TMPL_IF NAME=LOGOUT_TIMEOUT>
var temp_timeout = setTimeout (function(){ javascript:send_event('LOGOUT'); }, <TMPL_VAR NAME=LOGOUT_TIMEOUT>);
</TMPL_IF>

</script>
</head>

<body onLoad="setup_sections();LN.misc.appInit(<TMPL_IF BLIND>0<TMPL_ELSE>1</TMPL_IF>); <TMPL_IF NAME="ALERTING_NEW_COUNT">menu_prompt('<TMPL_VAR NAME="ALERTING_NEW_COUNT">');</TMPL_IF>">

<!-- BEGIN HD DIV for header -->
<TMPL_INCLUDE NAME="search_header.tpl">

<!-- BEGIN wrapper DIV -->
<div id="wrapper">

    <form name="MAIN_MENU" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <INPUT type=hidden NAME="EVENT" VALUE="">
    <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
    <INPUT type=hidden NAME="HIDE_COURT_POPUP" VALUE="">
    <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="MYACCTAB" VALUE="0">
    <INPUT type=hidden NAME="PMTAB" VALUE="0">
    <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><INPUT type=hidden NAME="ADVANCED_SEARCH" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>"></TMPL_IF>
    <TMPL_IF NAME="ALERTING_NEW_COUNT">
    <INPUT type=hidden NAME="ALERTING_NEW_COUNT" id="ALERTING_NEW_COUNT" VALUE="<TMPL_VAR NAME=ALERTING_NEW_COUNT>">
    </TMPL_IF>


<table width="100%">
  <tbody><tr>
    <td id="containerLeft" align="left" valign="top">

      <div class="greeting">
        <strong>Today is <TMPL_VAR NAME=CURRENT_DATE></strong> | <a href="javascript:void(0);" onMouseOver="set_tip('tip_rem','<div style=\'width: 215px\'><br/><center><img src=\'<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif\' border=\'0\'>&nbsp; &nbsp; <b>SECURITY REMINDER</b>&nbsp; &nbsp; <img src=\'<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif\' border=\'0\'></center><br />If your last login session was not on <b><TMPL_VAR NAME=LAST_LOGIN_DATE></b>, please contact your system administrator.<br /><br /></div>',event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">Security Reminder</a><br>
        You last signed in on <a class="adver" href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);"><TMPL_VAR NAME=LAST_LOGIN_DATE></a>
      </div>
      <div onMouseOver="show_section('bannerinfo');" onMouseOut="hide_section('bannerinfo');">
      <div id="newsHdr">
        <div class="NewsHeader">
          <h2 align="left" id="bannerinfotitle" style="cursor: pointer;" onClick="toggle_section('bannerinfo');"></h2>
          <div align="left"><span><a href="javascript:send_event('LOGIN/SHOW_WELCOME');">View Past Announcements</a></span></div>
        </div>
      </div>
      <div id="newsBlock">
        <div class="newsRightBkg">
          <div id="bannerinfo">
            <ul>
		<li><strong><a href="javascript:open_banner(2);">Important Security enhancement - Multi Factor Authentication</a></strong></li>
		<li><strong><a href="javascript:open_banner(3);">Important Security Message</a></strong></li>
                <li><strong><a href="https://learn.lexisnexis.com/lexisnexis/user_activity_info.aspx?id=432" target="_blank">Learn More! Click here to download a complimentary Get Started Guide.</a></strong></li>
		<li><strong><a href="javascript:open_banner(0);">Go Mobile with Accurint&reg; -- Click Here</a></strong></li>
            </ul>
            <br>
<TMPL_IF DOWNGRADE_USER_TO_5B>
  <TMPL_INCLUDE NAME="downgrade_user_to_5b.tpl">
</TMPL_IF>
          </div>
            <!-- break for padding -->
        </div>
      </div>
      <div id="newsBot">
        <div class="newsBottom"></div>
      </div>
      </div>
      <div id="clear"></div>

<!-- START Accurint searches table -->
     <table id="searches" cellpadding="2" cellspacing="0">
      <tbody>
      <tr>

          <td colspan="7">
<h2>
My Accurint <span class="smallblack">- Favorite Searches </span>
</h2>
      </td>
      </tr>

      <tr>
        <td colspan="7" style="padding-bottom:10px">
        <span>
            <table border="0" cellspacing="0" cellpadding="2" id="fav">
              <tr>
            <td>|</td>
            <TMPL_LOOP FAV_LOOP>
              <TMPL_UNLESS HIDE>
                <td valign="top">
                  <TMPL_IF DISABLED>
                    <TMPL_VAR SLABEL>
                  <TMPL_ELSE>
                    <a href="javascript:myacc('<TMPL_VAR SEVENT>');"><TMPL_VAR SLABEL></a>
                  </TMPL_IF>
                </td>
                <td valign="top">|</td>
              </TMPL_UNLESS>
            </TMPL_LOOP>
         </tr>
            </table>
        </span>
        <TMPL_IF FAV_DISABLED>
        <div class="medblack" style="color:#ed1c24; padding-left:12px">
        A favorite search is no longer available and has been disabled in My Accurint.<br />
        If this is incorrect please contact your Administrator.
        </div>
        </TMPL_IF>
         </td>
      </tr>
<tr>
<td>
</td>
</tr>      
<tr>
  <td colspan="7">
  <div style="color: #000000;"><br><b>Default Landing Page After Sign In: &nbsp;
  <small><INPUT TYPE=RADIO NAME="DEFAULT_TO_MAIN_MENU" onclick="toggle_default_to_main_menu(0);" VALUE='0' <TMPL_UNLESS NAME=DEFAULT_TO_MAIN_MENU>CHECKED</TMPL_UNLESS>>&nbsp;<a href="javascript:void(0);" onclick="document.MAIN_MENU.DEFAULT_TO_MAIN_MENU[0].checked=true;toggle_default_to_main_menu(0);" onMouseOver="set_tip('tip_rem','<br><b>My Accurint</b><br>Click to set your default <b>landing page</b> after your next<br>sign in to the <b>\'My Accurint - Favorite Searches\'</b><br>section. This selection is saved automatically and is<br>active upon your next sign in.<br><br>',event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">My Accurint</a>&nbsp;&nbsp; <INPUT TYPE=RADIO NAME="DEFAULT_TO_MAIN_MENU" onclick="toggle_default_to_main_menu(1);" VALUE='1' <TMPL_IF NAME=DEFAULT_TO_MAIN_MENU>CHECKED</TMPL_IF>>&nbsp;<a href="javascript:void(0);" onclick="document.MAIN_MENU.DEFAULT_TO_MAIN_MENU[1].checked=true;toggle_default_to_main_menu(1);" onMouseOver="set_tip('tip_rem','<br><b>Main Menu</b><br>Click to set your default <b>landing page</b> after your next<br>sign in to the <b>\'Main Menu\'</b> (this page). This selection is<br>saved automatically and is active upon your next sign in.<br><br>',event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">Main Menu (This Page)</a></b></small>
  <br><br>
  </div>
  </td>
</tr>

      <tr>
         <td colspan="7">
         <div style="font-weight: bold;color: #000000;">Available Accurint Searches: &nbsp;
         <small>
         <a href="javascript:setup_sections('show');" onMouseOver="set_tip('tip_rem','<br><b>[+] Show All</b><br>Show all expandable sections.<br><br>',event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">[+] Show All</a>
         <big>|</big>
         <a href="javascript:setup_sections('hide');" onMouseOver="set_tip('tip_rem','<br><b>[-] Hide All</b><br>Hide all collapsible sections.<br><br>',event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">[-] Hide All</a>
         <big>|</big>
         <input style="vertical-align: bottom;" type="checkbox" id="rollovers" onClick="toggle_rollovers();"> <a href="javascript:toggle_rollovers();" onMouseOver="set_tip('tip_rem','<div style=\'width: 215px\'><br><b>Rollovers Enabled</b><br>When checked, show content when pointer rolls over hidden sections.<br><br></div>',event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">Rollovers Enabled</a>
         </small></div>
         </td>
      </tr>

      <tr>
         <td width="23%" valign="top">&nbsp;
         <div id="hpColHdr" onMouseOver="show_section('peoplelinks');" onMouseOut="hide_section('peoplelinks');">
         <h4 id="peopleheader" style="cursor: pointer;" onClick="toggle_section('peoplelinks');"></h4>
         <div id="peoplelinks">
     <ul>
            <TMPL_IF ENABLE_ADVANCED_SEARCH><li><TMPL_IF DISABLE_ADV>Advanced Person<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ADV');">Advanced Person</a></TMPL_IF></li></TMPL_IF>
            <li><TMPL_IF DISABLE_PERSON>Person Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEARCH');">Person Search</a></TMPL_IF></li>
            <TMPL_IF SHOW_SM_MONITOR_LINK>
            <TMPL_UNLESS DELETE_CUSTOM_SM_MONITOR>
            <TMPL_UNLESS DELETE_SM_MONITOR>
            <li><TMPL_IF DISABLE_SM_MONITOR>Accurint&reg; Social Media Analytics<TMPL_ELSE><a href="javascript:show_post_popup('SEARCH/SHOW_SM_MONITOR_DISCLAIMER','SMMonitorWin','900','580',1,1,1,1,1,0);">Accurint&reg; Social Media Analytics</a></TMPL_IF></li>
            </TMPL_UNLESS>
            </TMPL_UNLESS>
            </TMPL_IF>
            <TMPL_IF SHOW_SOCIAL_REPORT>
            <li><TMPL_IF DISABLE_SOC_REPORT>Virtual Identity<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VIRTUAL_ID');">Virtual Identity</a></TMPL_IF></li>
            </TMPL_IF>
            <li><TMPL_IF DISABLE_PAW>People at Work<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PAW');">People at Work</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DEATH>Death Records<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_DEATH');">Death Records</a></TMPL_IF></li>
      <TMPL_UNLESS HIDE_RT_PERSON><TMPL_UNLESS DELETE_CUSTOM_RT_PERSON><TMPL_UNLESS DELETE_RT_PERSON><li><TMPL_IF DISABLE_RT_PERSON>Real-Time Person Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_REAL_TIME_PERSON');">Real-Time Person Search</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS></TMPL_UNLESS>
      <TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_UNLESS DONT_SHOW_NEWS><TMPL_UNLESS DELETE_CUSTOM_NEWS><li><TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS></TMPL_UNLESS>
            <TMPL_UNLESS DELETE_CUSTOM_EMAIL><li><TMPL_IF DISABLE_EMAIL>Email Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_EMAIL');">Email Search</a></TMPL_IF></li></TMPL_UNLESS>

      <li><TMPL_IF DISABLE_PERSON_DTR>Direct-to-Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PERSON_DTR');">Direct-to-Report</a></TMPL_IF></li>
            <TMPL_UNLESS DELETE_POWER_BOOLEAN><li><TMPL_IF DISABLE_POWER_BOOLEAN>Power Search<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_POWER_BOOLEAN');">Power Search</a></TMPL_IF></li></TMPL_UNLESS>

<TMPL_UNLESS DELETE_CUSTOM_WORKPLACE>
<TMPL_IF SHOW_WORKPLACE_SEARCH>
<TMPL_UNLESS DELETE_WORKPLACE>
      <li><TMPL_IF DISABLE_WORKPLACE>Workplace Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_WORKPLACE');">Workplace Locator</a></TMPL_IF></li>
</TMPL_UNLESS>
</TMPL_IF>
</TMPL_UNLESS>
      <TMPL_UNLESS HIDE_PASSPORT_SEARCH>
      <li><TMPL_IF DISABLE_PASSPORT_SEARCH>Passport Validation<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PASSPORT_VALIDATION');">Passport Validation</a></TMPL_IF>&nbsp;<font color="#ed1c24"><b>NEW!</b></font></li>
      </TMPL_UNLESS>
      <TMPL_UNLESS DO_NOT_DISPLAY_KBA>
 	  <TMPL_UNLESS DELETE_CUSTOM_KBA>
	  <li><TMPL_IF DISABLE_KBA>ID Verification Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ID_VERIFY');">ID Verification Report</a></TMPL_IF></li>
	  </TMPL_UNLESS>
	  </TMPL_UNLESS>
            </ul>
         </div>
     <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
     </div>
         <div id="hpColHdr" onMouseOver="show_section('phoneslinks');" onMouseOut="hide_section('phoneslinks');">
         <h4 id="phonesheader" style="cursor: pointer;" onClick="toggle_section('phoneslinks');"></h4>
         <div id="phoneslinks">
     <ul>
            <TMPL_UNLESS DELETE_CUSTOM_DA_WIRELESS><li><TMPL_IF DISABLE_DA_WIRELESS>Phones Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></TMPL_IF></li></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_DA_BASIC>Basic Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></TMPL_IF></li>
  <TMPL_IF SHOW_RT_PHONE>
            <TMPL_UNLESS DELETE_CUSTOM_RT_PHONE><li><TMPL_IF DISABLE_RT_PHONE>Real-Time Phones<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_RT_PHONE');">Real-Time Phones</a></TMPL_IF></li></TMPL_UNLESS>
  </TMPL_IF>
            <li><TMPL_IF DISABLE_DA_REVERSE>Reverse Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></TMPL_IF></li>
            <TMPL_UNLESS DELETE_CUSTOM_CANADIAN_PHONES><li><TMPL_IF DISABLE_CANADIAN_PHONES>Canadian Phones<TMPL_ELSE><a href="javascript:cp_modal('Canadian Phones Legal Disclaimer','',0.6,1,1,700);">Canadian Phones</a></TMPL_IF></li></TMPL_UNLESS>
         </ul>
         </div>
     <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
     </div>

         <TMPL_UNLESS DELETE_BATCH>
   <div id="hpColHdr" onMouseOver="show_section('batchlinks');" onMouseOut="hide_section('batchlinks');">
         <h4 id="batchheader" style="cursor: pointer;" onClick="toggle_section('batchlinks');"></h4>
         <div id="batchlinks">
          <ul>
        <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('BATCH/SERVICES','BatchServices',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');" title="View Online Batch Services">Online Batch Services</a><TMPL_ELSE>Online Batch Services</TMPL_UNLESS></li>
         </ul>
   </div>
   <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
   </div>
         </TMPL_UNLESS>


     </td>
         <td valign="top">&nbsp;</td>
         <td width="23%" valign="top">&nbsp;
         <div id="hpColHdr" onMouseOver="show_section('businesseslinks');" onMouseOut="hide_section('businesseslinks');">
         <h4 id="businessesheader" style="cursor: pointer;" onClick="toggle_section('businesseslinks');"></h4>
         <div id="businesseslinks">
         <ul>
            <li><TMPL_IF DISABLE_BUS>Business Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS');">Business Search</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CORPORATION>Corporation Filings<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_CORPORATION');">Corporation Filings</a></TMPL_IF></li>
            <TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_UNLESS DELETE_CUSTOM_BUS_NEWS><TMPL_UNLESS DONT_SHOW_NEWS><li><TMPL_IF DISABLE_BUS_NEWS>Businesses in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS></TMPL_UNLESS>
      <li><TMPL_IF DISABLE_UCC>National UCC Filings<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_UCC');">National UCC Filings</a></TMPL_IF></li>
      <TMPL_UNLESS IS_RESELLER><li><TMPL_IF DISABLE_BUS_CREDIT>Business Credit<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_CREDIT');">Business Credit</a></TMPL_IF></li></TMPL_UNLESS>
            <TMPL_UNLESS DELETE_CUSTOM_D_AND_B><li><TMPL_IF DISABLE_D_AND_B>Dun &amp; Bradstreet<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_D_AND_B');">Dun &amp; Bradstreet</a></TMPL_IF></li></TMPL_UNLESS>
            <TMPL_UNLESS DELETE_CUSTOM_DELCO><li><TMPL_IF DISABLE_DELCO>Delaware  Corporations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DELCO');">Delaware  Corporations</a></TMPL_IF></li></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_WHOIS>Internet Domains<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_WHOIS');">Internet Domains</a></TMPL_IF></li>
        <li><TMPL_UNLESS DISABLE_FICTIOUS><a href="javascript:send_event('SEARCH/SHOW_FICTIOUS');">Fictitious Business Name</a><TMPL_ELSE>Fictitious Business Name</TMPL_UNLESS></li>
        <li><TMPL_IF DISABLE_FEIN>Federal Employer ID Numbers (FEIN)<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_FEIN');">Federal Employer ID Numbers (FEIN)</a></TMPL_IF></li>
         </ul>
         </div>
     <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
         </div>
         <TMPL_UNLESS DELETE_HEALTHCARE_HEADING>
         <div id="hpColHdr" onMouseOver="show_section('healthcarelinks');" onMouseOut="hide_section('healthcarelinks');">
         <h4 id="healthcareheader" style="cursor: pointer;" onClick="toggle_section('healthcarelinks');"></h4>
         <div id="healthcarelinks">
         <ul>
           <TMPL_UNLESS DELETE_CUSTOM_PROVIDER><li><TMPL_IF DISABLE_PROVIDER>Provider Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PROVIDER');">Provider Search</a></TMPL_IF></li></TMPL_UNLESS>
           <TMPL_UNLESS DELETE_CUSTOM_SANCTION><li><TMPL_IF DISABLE_SANCTION>Provider Sanction Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SANCTION');">Provider Sanction Search</a></TMPL_IF></li></TMPL_UNLESS>
           <TMPL_UNLESS DELETE_IND_QUALIFIER_REPORTS><li><TMPL_IF DISABLE_IND_QUALIFIER_REPORTS>Comprehensive Health Care Provider Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_IND_QUALIFIER');">Comprehensive Health Care Provider Report</a></TMPL_IF></li></TMPL_UNLESS>
           <TMPL_UNLESS DELETE_BUS_QUALIFIER_REPORTS><li><TMPL_IF DISABLE_BUS_QUALIFIER_REPORTS>Comprehensive Health Care Business Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_QUALIFIER');">Comprehensive Health Care Business Search</a></TMPL_IF></li></TMPL_UNLESS>
           <TMPL_UNLESS DELETE_CUSTOM_OABMS><li><TMPL_IF DISABLE_OABMS>American Board of Medical Specialties<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_OABMS');">American Board of Medical Specialties</a></TMPL_IF></li></TMPL_UNLESS>
           <TMPL_UNLESS DELETE_CUSTOM_NPI_SEARCH><li><TMPL_IF DISABLE_NPI_SEARCH>NPI Data Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NPI');">NPI Data Search</a></TMPL_IF></li></TMPL_UNLESS>
           <TMPL_UNLESS DELETE_CUSTOM_CLIA_SEARCH><li><TMPL_IF DISABLE_CLIA_SEARCH>CLIA Certificate Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CLIA');">CLIA Certificate Search</a></TMPL_IF></li></TMPL_UNLESS>
           <TMPL_UNLESS DELETE_CUSTOM_NCPDP_SEARCH><li><TMPL_IF DISABLE_NCPDP_SEARCH>NCPDP Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NCPDP');">NCPDP Search</a></TMPL_IF></li></TMPL_UNLESS>
           <li><TMPL_IF DISABLE_DISCLOSED_ENTITY_REPORT>Disclosed Entity Report<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_DISCLOSED_ENTITY');">Disclosed Entity Report</a></TMPL_IF></li>
           <TMPL_UNLESS DELETE_PROVIDER_REPORT_CARD><li><TMPL_IF DISABLE_PROVIDER_REPORT_CARD>Provider Report Card<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PROVIDER_REPORT_CARD');">Provider Report Card</a></TMPL_IF></li></TMPL_UNLESS>
   </ul>
         </div>
     <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
         </div>
         </TMPL_UNLESS>
   </td>
         <td valign="top">&nbsp;</td>
         <td width="23%" valign="top">&nbsp;
         <div id="hpColHdr" onMouseOver="show_section('assetslinks');" onMouseOut="hide_section('assetslinks');">
         <h4 id="assetsheader" style="cursor: pointer;" onClick="toggle_section('assetslinks');"></h4>
         <div id="assetslinks">
          <ul>
            <li><TMPL_IF DISABLE_MV>Motor Vehicles<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DL_REG');">Motor Vehicles</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_REAL_PROPERTY>Property (Property Assessments, Deeds &amp; Mortgages)<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_REAL_PROPERTY');">Property (Property Assessments, Deeds &amp; Mortgages)</a></TMPL_IF></li>
	    <li><TMPL_IF DISABLE_AVM>Automated Valuation Models<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_AVM');">Automated Valuation Models</a></TMPL_IF></li>
        <TMPL_UNLESS DELETE_MV_WILDCARD><li><TMPL_IF DISABLE_MV_WILDCARD>MVR Wildcard Search<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH2/SHOW_MV_WILDCARD');">MVR Wildcard Search</a></TMPL_IF></li></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_VESSEL>Watercraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VESSEL');">Watercraft</a></TMPL_IF></li>
            <TMPL_UNLESS DELETE_CUSTOM_RT_MVR><TMPL_UNLESS HIDE_RT_MVR><li><TMPL_IF DISABLE_RT_MVR>Real-Time Motor Vehicle Registrations<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_RT_MVR');">Real-Time Motor Vehicle Registrations</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_AIRCRAFT>FAA Aircraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_AIRCRAFT');">FAA Aircraft</a></TMPL_IF></li>
         </ul>
         </div>
     <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
         </div>
         <div id="hpColHdr" onMouseOver="show_section('courtslinks');" onMouseOut="hide_section('courtslinks');">
         <h4 id="courtsheader" style="cursor: pointer;" onClick="toggle_section('courtslinks');"></h4>
         <div id="courtslinks">
         <ul>
            <li><TMPL_IF DISABLE_CRIM>Criminal Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CRIM');">Criminal Records</a></TMPL_IF></li>
            <TMPL_UNLESS DELETE_CUSTOM_JAILBOOKING>
               <TMPL_IF SHOW_JAIL_BOOKING_SEARCH><li><TMPL_IF DISABLE_JAILBOOKING>Jail Bookings<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_JAILBOOKING');">Jail Bookings</a></TMPL_IF></li></TMPL_IF>
            </TMPL_UNLESS>
            <li><TMPL_IF DISABLE_MARRIAGE>Marriages/Divorces<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_MARRIAGE');">Marriages/Divorces</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_BLJ>Bankruptcies, Liens &amp; Judgments<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BLJ');">Bankruptcies, Liens &amp; Judgments</a></TMPL_IF></li>
        <li><TMPL_IF DISABLE_CIVIL_COURT>Civil Courts<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT');">Civil Courts</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_SEXPREDATOR>Sexual Offenders<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR');">Sexual Offenders</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_OFFICIAL_RECORDS>Official Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS');">Official Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_FORECLOSURE>Foreclosures<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_ACCIDENT>National Motor Vehicle Accidents<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ACCIDENT');">National Motor Vehicle Accidents</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_PATRIOTACT>USA PATRIOT Act<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');">USA PATRIOT Act</a></TMPL_IF></li>

        <TMPL_IF APPRISS_APPROVED>
        <TMPL_UNLESS DELETE_APPRISS>
          <li><TMPL_IF DISABLE_APPRISS>JusticeXchange<TMPL_ELSE><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','JusticeXchange',620,550,0,0,0,0,0,0,'','appriss_go');">JusticeXchange</a></TMPL_IF></li>
        </TMPL_UNLESS>
        </TMPL_IF>

              <TMPL_UNLESS DELETE_CUSTOM_COURT_WIZARD>
              <TMPL_UNLESS IS_RESELLER>
              <TMPL_IF SHOW_CS_REPORT>
            <li>
              <TMPL_IF DISABLE_COURT>
				  <TMPL_IF SMM_ONLY>
				  	Court Search Wizard
				  <TMPL_ELSE>
				        <TMPL_IF ATACRAIDS_ONLY>
				             Court Search Wizard
        				<TMPL_ELSE>
				  	     <a href="javascript:court_ad()">Court Search Wizard</a>
				        </TMPL_IF>
				  </TMPL_IF>
              <TMPL_ELSE>
              <a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','CourtPopupWin','600','600',0,0,0,1,1,0,'','court_wizard_select_individual');">Court Search Wizard</a>
              </TMPL_IF>
            </li>
            <TMPL_IF SHOW_ASOS_BATCH>
              <TMPL_IF ALLOW_ASOS_BATCH>
                <li>
                  <TMPL_UNLESS DISABLE_ASOS_BATCH>
                      <a href="javascript:show_post_popup('BATCH/SHOW_ASOS','asosPopupWin','600','600',0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>','');">Advanced Sex Offender Solution (ASOS)</a>
                  <TMPL_ELSE>
                       Advanced Sex Offender Solution (ASOS)    
                  </TMPL_UNLESS>
                </li>
              </TMPL_IF>
            </TMPL_IF>
              </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>

         </ul>
     </div>
     <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
     </div>
         </td>
         <td valign="top">&nbsp;</td>
         <td width="23%" valign="top">&nbsp;
         <div id="hpColHdr" onMouseOver="show_section('licenseslinks');" onMouseOut="hide_section('licenseslinks');">
         <h4 id="licensesheader" style="cursor: pointer;" onClick="toggle_section('licenseslinks');"></h4>
         <div id="licenseslinks">
         <ul>
           <li><TMPL_IF DISABLE_DL>Drivers Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_LICENSE');">Drivers Licenses</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_PROF_LICENSE>Professional Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_VOTER_REGISTRATION>Voter Registrations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registrations</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_HUNTING_LICENSE>Hunting/Fishing Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE');">Hunting/Fishing Licenses</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_CONCEALED_WEAPON>Concealed Weapons Permits<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON');">Concealed Weapons Permits</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_FAA_PILOT>FAA Pilots<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FAA_PILOT');">FAA Pilots</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_DEA>DEA Controlled Substances<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DEA');">DEA Controlled Substances</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_FIREARMS>Federal Firearms &amp; Explosives<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FIREARMS');">Federal Firearms &amp; Explosives</a></TMPL_IF></li>
           <TMPL_UNLESS DELETE_CUSTOM_MVR><TMPL_UNLESS IS_RESELLER><li><TMPL_IF DISABLE_MVR>MVR Reports (Driving Records)<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_MVR');">MVR Reports (Driving Records)</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS>
         </ul>
         </div>
     <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
         </div>

<TMPL_IF SHOW_INTERNATIONAL_SECTION>

         <div id="hpColHdr" onMouseOver="show_section('internationallinks');" onMouseOut="hide_section('internationallinks');">
         <h4 id="internationalheader" style="cursor: pointer;" onClick="toggle_section('internationallinks');"></h4>
         <div id="internationallinks">
          <ul>
<TMPL_IF SHOW_INTDOCKETS_SEARCH>          
            <li><TMPL_IF DISABLE_INTDOCKETS>Court Dockets<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_INTDOCKETS');">Court Dockets</a></TMPL_IF></li>
</TMPL_IF>            
<TMPL_IF SHOW_INTPROFLIC_SEARCH>
            <li><TMPL_IF DISABLE_INTPROFLIC>Professional Certifications<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_INTPROFLIC');">Professional Certifications</a></TMPL_IF></li>
</TMPL_IF>            
         </ul>
     </div>
     <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
     </div>
</TMPL_IF>


<TMPL_UNLESS DELETE_TRIMERGE_REPORT>

    <div id="fcraHdBkGrd" onMouseOver="show_section('fcralinks');" onMouseOut="hide_section('fcralinks');">
      <h4 id="fcraheader" style="cursor: pointer;" onClick="toggle_section('fcralinks');"></h4>
        <div id="fcralinks">
          <ul>
  <TMPL_UNLESS DISABLE_TRIMERGE_REPORT>
  	<TMPL_IF SHOW_TRIMERGE_REPORTS_ESP>
            <li>
              <b><font color="#ed1c24">&nbsp;NEW!</font></b>
              <a href="javascript:show_post_popup('SEARCH/SHOW_TRIMERGE_ESP','TrimergeESPShow',800,800,0,0,0,1,1,0);">Tri-Merge Credit Report</a>
            </li>
  	<TMPL_ELSE>
            <li>
              <b><font color="#ed1c24">&nbsp;NEW!</font></b>
              <TMPL_IF OFFLINE_TRIMERGE_REPORT>Tri-Merge Credit Report<TMPL_ELSE><a href="javascript:show_post_popup('TM/SHOW','TrimergeReport',800,722,0,0,0,1,1,0,'<TMPL_VAR ACTION_REPORT>');">Tri-Merge Credit Report</a></TMPL_IF>
            </li>
    </TMPL_IF>
  </TMPL_UNLESS>
          </ul>
        </div>
      <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
    </div>
</TMPL_UNLESS>

   </td>
       </tbody>
     </table>
 <!-- END Accurint searches table -->
</td>
    <td valign="top">


<div id="containerRight">

    <!-- Start My Account section -->
    <TMPL_INCLUDE NAME="search_inputs_myaccount_menu.tpl">
    <!-- End My Account section -->

        <!-- Start Admin section -->
        <div id="myAccount" onMouseOver="show_section('administration');" onMouseOut="hide_section('administration');">
          <div id="administrationtitle" class="myAccountHdr" style="cursor: pointer;" onClick="toggle_section('administration');"></div>
          <div id="administration">
      <ul>
        <TMPL_UNLESS BILLING_END_USER>
        <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_PROFILE','MyAccountWin','','',1,1,1,1,1,0)">Summary</a></li>
        </TMPL_UNLESS>
        <TMPL_IF NAME=SA><li><a href="javascript:show_post_popup('MANAGE/MANAGE_ACCOUNTS','MyAccountWin','','',1,1,1,1,1,0);">Manage Users</a> </li></TMPL_IF>

		<TMPL_IF NAME=SA><li><a href="javascript:show_post_popup('MANAGE/MANAGE_GROUPS','MyAccountWin','','',1,1,1,1,1,0);">Manage Groups</a> </li></TMPL_IF>

        <TMPL_IF NAME=SA><TMPL_UNLESS NAME="MANAGE_COMPANY_DISABLED">
        <li><a href="javascript:show_post_popup('SECURITY/SHOW_COMPANY_SECURITY','MyAccountWin','','',1,1,1,1,1,0);">Manage Company</a></li>
        </TMPL_UNLESS></TMPL_IF>
        <TMPL_IF SA><li><a href="javascript:show_post_popup('BILLING/SUMMARY','MyAccountWin','','',1,1,1,1,1,0);">Billing Info</a></li></TMPL_IF>
<TMPL_IF CASE_AUDITOR_TAB>
        <li><a href="javascript:show_post_popup('CC/SHOW_AUDIT','MyAccountWin','960','900',1,1,1,1,1,0);">Case Audit</a></li>
</TMPL_IF>
        <li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ACTIVITY','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');">Activity</a></li>
        <TMPL_UNLESS BILLING_END_USER>
        <li><a href="javascript:show_post_popup('SECURITY/SHOW_SECURITY','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');">Company Security</a></li>
        </TMPL_UNLESS>
        <TMPL_IF ENABLE_MULTI_REF_FIELDS>
        	<TMPL_UNLESS DISABLE_MULTI_REF_FIELDS>
				<li><a href="javascript:send_event('MYACCOUNT/SHOW_REF_SELECT');">Change Reference</a></li>
			</TMPL_UNLESS>
        </TMPL_IF>
      </ul>
      </div>
        </div>
    <div id="myAccountBot"></div>
        <!-- End Admin section -->

    <!-- Start Security section -->

    <TMPL_INCLUDE NAME="security_tips_legov.tpl">

        <div id="myAccount" onMouseOver="show_section('training');" onMouseOut="hide_section('training');">
          <div id="trainingtitle" class="myAccountHdr" style="cursor: pointer;" onClick="toggle_section('training');"></div>
          <div id="training">
      <ul>
        <TMPL_UNLESS LNU_SSO>
        <li><a href="javascript:void(0)" onClick="general_win('https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov','GovLearnResource','1100','700',0,1,1,1,1,0);void(0);" title="Government Learning Resource Center">Government Learning<br>&nbsp;&nbsp;&nbsp;Resource Center</a></li>
         <TMPL_ELSE>
        <li><a href="http://learn.lexisnexis.com/lnpsa" target="_blank" title="LexisNexis University School of Law Enforcement">LexisNexis University<br>&nbsp;&nbsp;&nbsp;School of Law Enforcement</a></li>
        </TMPL_UNLESS>
        <TMPL_IF NAME=SA>
            <li><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','AdminContactUsWin','450','500',0,0,0,0,0,0,'','customer_support');">Product Support</a></li>
        </TMPL_IF>
        <TMPL_UNLESS IS_RESELLER>
        <li><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','FAQMenuWindow','450','500',1,0,0,1,1,0,'','faq');" >Frequently Asked Questions</a></li>
        </TMPL_UNLESS>
        <div style="padding-bottom:4px;padding-top:8px"><div style="font:0/0 serif;border-bottom:1px dotted #ed1c24;"></div></div>
        <li><a href="javascript:void(0)" onClick="window.open('http://www.accurint.com/security_center/index.html?source=<TMPL_VAR NAME=APPLICATION_TYPE>');" title="Security Center">Security Center</a>&nbsp;<font color="#ed1c24"><i>Updated</i></font></li>
        <li><a href="javascript:void(0)" onClick="show_legov_tips();" title="Show Security Tips">Security Tips</a>&nbsp;<font color="#ed1c24"><b>NEW!</b></font></li>
      </ul>
      </div>
    </div>
    <div id="myAccountBot"></div>
    <!-- End Security section -->

    <!-- Start Recent Searches section -->
    <!-- Start Right Column Content -->

    <style type="text/css">
    .successstory A:hover {text-decoration: underline;}
    </style>

    <div id="containerRight">
      <div style="background-image:url(<TMPL_VAR NAME=IMGPATH>/success_story.gif);background-repeat:no-repeat;width:230px;height:90px;float:left;margin-top:10px;margin-bottom:10px;">
        <div style="width:220px;margin-left:10px;margin-top:28px;font-size:8pt;">
	We strive to help agencies achieve their goals.&nbsp; If you have a success story, we encourage you to share it with us <span class="successstory"><a href="javascript:show_post_popup('MYACCOUNT/SHOW_SHARE_SUCCESS_EMAIL','ShareSuccess',450,500);">by clicking here!</a></span>
	</div>
      </div>
    </div>

    <TMPL_UNLESS DISABLE_LN_INV_NETWORK>
    <div id="containerRight">
      <TMPL_INCLUDE NAME="investigators_network_ad.tpl">
    </div>
    </TMPL_UNLESS>

    <!-- END DIV for right column content container --></td>
</div>
</tr>
</tbody></table>
</div><!-- END wrapper DIV -->

<div id="tip_rem"></div>

<div id="systemWorking" style="position:absolute;top:350px;left:450px;z-index:100;display:none;">
<img id="sWimg" src="<TMPL_VAR NAME=IMGPATH>/bg_searching.gif" alt="Running Search.." />
</div>
<!-- START Footer -->
<TMPL_INCLUDE NAME="main_menu_footer.tpl">
<div id="new_alerts"></div>

</form>
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
<TMPL_IF SHOW_CASE_CONNECT>
<script language="javascript" type="text/javascript">
  var Accurint = {};
  Accurint.reportAction = "<TMPL_VAR ACTION_REPORT>";
  Accurint.soundAction = "<TMPL_VAR ACTION_SOUND>";
  Accurint.htmlPath = "<TMPL_VAR HTMLPATH>";
  Accurint.imgPath = "<TMPL_VAR IMGPATH>";
  Accurint.sessionId = "<TMPL_VAR SESSION_ID>";
  Accurint.csrf_token = "<TMPL_VAR CSRF_TOKEN>";
  Accurint.CaseConnect = {};
  Accurint.CaseConnect.extraFeatures = <TMPL_IF CASE_CONNECT_EXTRA>true<TMPL_ELSE>false</TMPL_IF>;
  Accurint.CaseConnect.pollInterval = <TMPL_IF CASE_CONNECT_POLL_INTERVAL><TMPL_VAR CASE_CONNECT_POLL_INTERVAL><TMPL_ELSE>0</TMPL_IF>;
// this needs to be 1, so that right side pod is updated  
//  Accurint.CaseConnect.checkNow = <TMPL_IF CASE_CONNECT_CHECK_NOW><TMPL_VAR CASE_CONNECT_CHECK_NOW><TMPL_ELSE>0</TMPL_IF>;
  Accurint.CaseConnect.checkNow = 1;
</script>
<script src="<TMPL_VAR JSPATH>/Accurint.js" language="Javascript" type="text/javascript"></script>
<script src="<TMPL_VAR JSPATH>/CookieJar.js" language="Javascript" type="text/javascript"></script>
<script src="<TMPL_VAR JSPATH>/Accurint/CaseConnect/Notification.js" language="Javascript" type="text/javascript"></script>
</TMPL_IF>
</body></html>
