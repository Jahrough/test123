<!-- begin xbps/main_menu.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html><head>
<title>LexisNexis&reg; | Accurint for Private Investigations</title>

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
    set_section('assetsheader','assetslinks','Assets',flag);
    set_section('businessesheader','businesseslinks','Businesses',flag);
    set_section('phonesheader','phoneslinks','Phones',flag);
    set_section('licensesheader','licenseslinks','Licenses',flag);
    <TMPL_IF RESTRICT_LNLP_CONTENT>
      set_section('newsheader','newslinks','','restrict');
    <TMPL_ELSE>
      set_section('newsheader','newslinks','News',flag);
    </TMPL_IF>
    set_section('courtsheader','courtslinks','Courts',flag);
    set_section('myaccountcontenttitle','myaccountcontent','My Account',flag);
    set_section('securitytitle','security','Security News',flag);
    set_section('recentContainertitle','recentContainer','Recent Searches',flag);
    set_section('bannerinfotitle','bannerinfo','New Products &amp; Announcements',flag);
    set_section('favoritestitle','favorites','My Favorites',flag);
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
        // $(headerid).innerHTML = text + '&nbsp; <small>[</small><b>+</b><small>]</small>';
        if (flag != 'restrict') {
          $(headerid).innerHTML = '<small>[<b>+</b>]</small>&nbsp;' + text;
        }
        $(contentid).style.display = 'none';
    } else {
        // $(headerid).innerHTML = text + '&nbsp; <small>[</small><b>-</b><small>]</small>';
        if (flag != 'restrict') {
          $(headerid).innerHTML = '<small>[<b>-</b>]</small>&nbsp;' + text;
        }
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

function show_section(id,e) {
    if ((cookie_lookup('rollovers') == 1) && (cookie_lookup(id) == 1)) {
        $(id).style.display = 'inline';
    } else if ((e) && (cookie_lookup('rollovers') == 0) && (cookie_lookup(id) == 1)) {
	set_tip("tip_rem","<br><b>To View This Section:</b><br><br>&nbsp;1) Click section title <b>OR</b><br>&nbsp;2) Click \'Show All\' <b>OR</b><br>&nbsp;3) Check \'Rollovers Enabled\'<br>&nbsp;",e,"relative");setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);
    }
}

function hide_section(id) {
    if ((cookie_lookup('rollovers') == 1) && (cookie_lookup(id) == 1)) {
        $(id).style.display = 'none';
    } else {
	close_tip("tip_rem");
    }
}

<TMPL_IF NAME=LOGOUT_TIMEOUT>
var temp_timeout = setTimeout (function(){ javascript:send_event('LOGOUT'); }, <TMPL_VAR NAME=LOGOUT_TIMEOUT>);
</TMPL_IF>

</script>

</head>

<body onLoad="setup_sections();LN.misc.appInit(<TMPL_IF BLIND>0<TMPL_ELSE><TMPL_IF SKIP_RECENT_SEARCH_AJAX>0<TMPL_ELSE>1</TMPL_IF></TMPL_IF>); <TMPL_IF NAME="ALERTING_NEW_COUNT">menu_prompt('<TMPL_VAR NAME="ALERTING_NEW_COUNT">');</TMPL_IF>">

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
    <INPUT type=hidden NAME="ACTION_ADMIN" VALUE="<TMPL_VAR NAME=ACTION_ADMIN>">


<table width="100%">
  <tbody><tr>
    <td id="containerLeft" align="left" valign="top">

      <div class="greeting">
    	<strong>Today is <TMPL_VAR NAME=CURRENT_DATE></strong> | <a href="javascript:void(0);" onMouseOver="set_tip('tip_rem','<div style=\'width: 215px\'><br/><center><img src=\'<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif\' border=\'0\'>&nbsp; &nbsp; <b>SECURITY REMINDER</b>&nbsp; &nbsp; <img src=\'<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif\' border=\'0\'></center><br />If your last login session was not on <b><TMPL_VAR NAME=LAST_LOGIN_DATE></b>, please contact your system administrator.<br /><br /></div>',event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">Security Reminder</a><br>
        You last signed in on <a class="adver" href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);"><TMPL_VAR NAME=LAST_LOGIN_DATE></a>
      </div>
      <!--
      <div id="quick_search">
        <div class="quickRT"></div>
        <strong>Database Search:</strong>
          <input name="quick_search_text" class="qsinput" value="Enter SSN, Phone #, Address or Company Name" type="text">
          <input name="search" id="searchBtn" value="search" type="button">
      </div>
      -->
     <table id="searches" cellpadding="2" cellspacing="0">
      <tr>
         <td colspan="7">
         <!--<div style="font-weight: bold;color: #000000;"><br>Home Page Section Controls: &nbsp;-->
         <h2>Home Page Section Controls: &nbsp;
         <small>
         <a href="javascript:setup_sections('show');" onMouseOver="set_tip('tip_rem','<br><b>[+] Show All</b><br>Show all expandable sections.<br><br>',event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">[+] Show All</a>
         <big>|</big>
         <a href="javascript:setup_sections('hide');" onMouseOver="set_tip('tip_rem','<br><b>[-] Hide All</b><br>Hide all collapsible sections.<br><br>',event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">[-] Hide All</a>
         <big>|</big>
         <input type="checkbox" id="rollovers" onClick="toggle_rollovers();"> <a href="javascript:toggle_rollovers();" onMouseOver="set_tip('tip_rem','<div style=\'width: 215px\'><br><b>Rollovers Enabled</b><br>When checked, show content when pointer rolls over each hidden section heading.<br><br></div>',event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">Rollovers Enabled</a>
         </small>
	 </h2>
	 <!--</div>-->
         </td>
      </tr>
    </table>

      <!--<div onMouseOver="show_section('bannerinfo',event);" onMouseOut="hide_section('bannerinfo');">-->
      <div onMouseOver="show_section('bannerinfo',event);" onMouseOut="hide_section('bannerinfo');">
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
              <li><strong><a href="javascript:open_banner(0);">Have you tried our New Social Media Locator Search?</a></strong></li>
              <li><strong><a href="javascript:open_banner(4);">Important Security enhancement - Multi Factor Authentication</a></strong></li>
              <li><strong><a href="javascript:open_banner(5);">Now even MORE contact information from the LexisNexis<sup>&reg;</sup> Batch Wizard!</a></strong></li>
	      <li><strong><a href="javascript:open_banner(3);">Important Security Message</a></strong></li>
              <li><strong><a href="javascript:open_banner(1);">Did You Know? PeopleWise<sup><small>TM</small></sup> is a consumer site for personal searches on People, Businesses, Properties and Neighborhoods.</a></strong></li>
              <li><strong><a href="javascript:open_banner(2);">LexisNexis&reg; Training Center.</a></strong></li>
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


      <!-- <div onMouseOver="show_section('favorites',event);" onMouseOut="hide_section('favorites');"> -->
      <div onMouseOver="show_section('favorites',event);" onMouseOut="hide_section('favorites');">
      <div id="newsHdr">
        <div class="NewsHeader">
          <h2 align="left" id="favoritestitle" style="cursor: pointer;" onClick="toggle_section('favorites');"></h2>
	  <div class="NewsHeaderText" align="left">Up to six of your favorite searches in one easy-to-find place!</div>
        </div>
      </div>
      <div id="newsBlock">
        <div class="newsRightBkg">
          <div id="favorites">
            <span>
            <table border="0" cellspacing="0" cellpadding="2" id="fav">
              <tr>
                    <td nowrap >&nbsp;|</td>
                 <TMPL_LOOP FAV_LOOP>
                    <td nowrap valign="top">
		    <small>
                    <TMPL_IF DISABLED><TMPL_VAR SLABEL>
                    <TMPL_ELSE><a href="javascript:myacc('<TMPL_VAR SEVENT>');"><TMPL_VAR SLABEL></a></TMPL_IF>
                    </small>
		    </td>
                    <td nowrap valign="top">|&nbsp;</td>
                 </TMPL_LOOP>
             </tr>
            </table>
            </span>
            <TMPL_IF FAV_DISABLED>
                <div class="medblack" style="color:#ed1c24; padding-left:12px">
                A favorite search is no longer available and has been disabled in My Favorites.<br />
                If this is incorrect please contact your Administrator.
                </div>
            </TMPL_IF>
	  </div>
        </div>
      </div>
      <div id="newsBot">
        <div class="newsBottom"></div>
      </div>
      </div>
      <div id="clear"></div>


    <!-- START Accurint searches table -->
     <table id="searches" cellpadding="2" cellspacing="0">
      <tr>
         <td valign="top" width="23%">&nbsp;
         <div id="hpColHdr" onMouseOver="show_section('peoplelinks',event);" onMouseOut="hide_section('peoplelinks');">
         <h4 id="peopleheader" style="cursor: pointer;" onClick="toggle_section('peoplelinks');"></h4>
         <div id="peoplelinks">
         <ul>
	    <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><li><TMPL_IF DISABLE_ADV>Person Investigations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ADV');">Person Investigations</a></TMPL_IF></li></TMPL_IF>
        <TMPL_UNLESS DELETE_CONTACT_PLUS>
            <li><TMPL_IF DISABLE_CONTACT_PLUS>Contact Plus Search<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_CONTACT_PLUS');">Contact Plus Search</a></TMPL_IF></li>
        </TMPL_UNLESS>
            <li><TMPL_IF DISABLE_PAW>People at Work<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PAW');">People at Work</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_WORKPLACE>Workplace Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_WORKPLACE');">Workplace Locator</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_INSTANT_ID>InstantID<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_INSTANT_ID');">InstantID</a></TMPL_IF></li>
           <TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_UNLESS DONT_SHOW_NEWS><li><TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_DEATH>Death Records<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_DEATH');">Death Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_EMAIL>Email Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_EMAIL');">Email Search</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_PERSON_DTR>Direct To Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PERSON_DTR');">Direct To Report</a></TMPL_IF></li>
            <TMPL_IF SHOW_SOCIAL_MEDIA_LOCATOR><li><TMPL_IF DISABLE_SOCIALMEDIA>Social Media Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SOCIALMEDIA');">Social&nbsp;Media Locator</a>&nbsp;&nbsp;<font color="#ed1c24"><b>NEW!</b></font></TMPL_IF></li></TMPL_IF>
            <TMPL_IF SHOW_SOCIAL_REPORT><li><TMPL_IF DISABLE_SOC_REPORT>Social Network Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SOC');">Social Network Report</a></TMPL_IF></li></TMPL_IF>
          <TMPL_UNLESS IS_RESELLER>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('BATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">People Batching</a><TMPL_ELSE>People Batching</TMPL_UNLESS></li>
          </TMPL_UNLESS>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('PHONEBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,0,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Waterfall Phones and Address Batching</a><TMPL_ELSE>Waterfall Phones and Address Batching</TMPL_UNLESS></li>
            <TMPL_UNLESS DISABLE_BATCH>            
            <TMPL_UNLESS DELETE_CONTACT_PLUS>
            <li>
                <TMPL_IF DISABLE_CONTACT_PLUS>
                  Contact Plus Phones and Address Batching<strong><font color="#ed1c24">&nbsp;NEW!</font></strong>
                <TMPL_ELSE>
                  <a href="javascript:show_post_popup('CONTACTPLUSPHONEADDRESSBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');" title="Contact Plus Search">Contact Plus Phones and Address Batching</a><strong><font color="#ed1c24">&nbsp;NEW!</font></strong>
                </TMPL_IF>
            </li>
            </TMPL_UNLESS>
            </TMPL_UNLESS>                        
          <TMPL_IF IS_BATCH_ADMIN>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('SURECONTACTBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">SureContact Batch</a><TMPL_ELSE>SureContact Batch</TMPL_UNLESS></li>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('SUREPLACEMENTBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">SurePlacement Batch</a><TMPL_ELSE>SurePlacement Batch</TMPL_UNLESS></li>
            <li><TMPL_UNLESS DISABLE_WATCHDOG><a href="javascript:show_post_popup('WATCHDOG/START','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Watchdog</a><TMPL_ELSE><a href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/watchdog/watchdog_ad.html','WatchDogPopupWin','550','',0,0,0,1,1,0);void(0);")>Watchdog</a></TMPL_UNLESS></li>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('INSTANTIDBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">InstantID Batch</a><TMPL_ELSE>InstantID Batch</TMPL_UNLESS></li>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('PHONESPLUSBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Phones Plus Batching</a><TMPL_ELSE>Phone Plus Batching</TMPL_UNLESS></li>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('OFACBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">USA PATRIOT Act Batch</a><TMPL_ELSE>USA PATRIOT Act Batch</TMPL_UNLESS></li>
          </TMPL_IF>
          <TMPL_IF ALLOW_CDM>
               <INPUT type=hidden NAME="CDM_COMPANY_ID" VALUE="">
               <li><a href="javascript:show_post_popup('CDM/START_CDM','Core_Data_Management',1150,800,1,1,1,1,1,0);">Core Data Management</a></li>
          </TMPL_IF>
         </ul>
	 </div>
	 <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
	 </div>
         <div id="hpColHdr" onMouseOver="show_section('assetslinks',event);" onMouseOut="hide_section('assetslinks');">
         <h4 id="assetsheader" style="cursor: pointer;" onClick="toggle_section('assetslinks');"></h4>
         <div id="assetslinks">
          <ul>
            <li><TMPL_IF DISABLE_RT_MVR>Vehicle Investigations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_RT_MVR');">Vehicle Investigations</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CARFAX><img src="<TMPL_VAR NAME=IMGPATH>/carfax_logo_small.gif" width="60" height="17" border="0"><TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CARFAX');"><img src="<TMPL_VAR NAME=IMGPATH>/carfax_logo_small.gif" width="60" height="17" border="0"></a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_REAL_PROPERTY>Real Property (Property Assessments, Deeds &amp; Mortgages)<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_REAL_PROPERTY');">Real Property (Property Assessments, Deeds &amp; Mortgages)</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_VESSEL>Watercraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VESSEL');">Watercraft</a></TMPL_IF></li>

            <li><TMPL_IF DISABLE_AIRCRAFT>FAA Aircraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_AIRCRAFT');">FAA Aircraft</a></TMPL_IF></li>
            <TMPL_UNLESS DELETE_MV_WILDCARD>
              <li><TMPL_IF DISABLE_MV_WILDCARD>MVR Wildcard Search<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_MV_WILDCARD');">MVR Wildcard Search</a></TMPL_IF></li>
            </TMPL_UNLESS>

         </ul>
	 </div>
	 <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
	 </div>
         </td>
         <td valign="top">&nbsp;</td>
         <td valign="top" width="23%">&nbsp;
         <div id="hpColHdr" onMouseOver="show_section('businesseslinks',event);" onMouseOut="hide_section('businesseslinks');">
         <h4 id="businessesheader" style="cursor: pointer;" onClick="toggle_section('businesseslinks');"></h4>
         <div id="businesseslinks">
         <ul>
            <li><TMPL_IF DISABLE_BUS>Business Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS');">Business Search</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CORPORATION>Corporate Records<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_CORPORATION');">Corporate Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_UCC>National UCC Filings<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_UCC');">National UCC Filings</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_WHOIS>Internet Domains<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_WHOIS');">Internet Domains</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_D_AND_B>Dun &amp; Bradstreet<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_D_AND_B');">Dun &amp; Bradstreet</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DELCO>Delaware  Corporations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DELCO');">Delaware  Corporations</a></TMPL_IF></li>
            <TMPL_UNLESS IS_RESELLER><li><TMPL_IF DISABLE_BUS_CREDIT>Business Credit<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_CREDIT');">Business Credit</a></TMPL_IF></li></TMPL_UNLESS>

            <TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_UNLESS DONT_SHOW_NEWS><li><TMPL_IF DISABLE_BUS_NEWS>Businesses in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS>

            <li><TMPL_IF DISABLE_BUS_INSTANT_ID>Business InstantID<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_INSTANT_ID');">Business InstantID</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_FEIN>Federal Employer ID Numbers (FEIN)<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_FEIN');">Federal Employer ID Numbers (FEIN)</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_FICTIOUS>Fictitious Business Names<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FICTIOUS');">Fictitious Business Name</a></TMPL_IF></li>
         </ul>
         </div>
	 <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
         </div>
         <div id="hpColHdr" onMouseOver="show_section('phoneslinks',event);" onMouseOut="hide_section('phoneslinks');">
         <h4 id="phonesheader" style="cursor: pointer;" onClick="toggle_section('phoneslinks');"></h4>
         <div id="phoneslinks">
         <ul>
            <li><TMPL_IF DISABLE_DA_WIRELESS>Phones Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DA_BASIC>Basic Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DA_REVERSE>Reverse Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></TMPL_IF></li>
            <TMPL_UNLESS DO_NOT_DISPLAY_PHONE_IDENTIFIER_SEARCH><li><TMPL_IF DISABLE_PHONE_IDENTIFIER_SEARCH>Reverse Phone Search Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PHONE_IDENTIFIER');" onMouseOver="set_tip('tip_rem',p  lus_notice,event,'right',450);setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">Reverse Phone Search <font color="#ed1c24"><b>Plus</b></font></a></TMPL_IF></li></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_CANADIAN_PHONES>Canadian Phones<TMPL_ELSE><a href="javascript:cp_modal('Canadian Phones Legal Disclaimer','',0.6,1,1,700);">Canadian Phones</a></TMPL_IF></li>
         </ul>
	 </div>
	 <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
	 </div>
         </td>
         <td valign="top">&nbsp;</td>
         <td valign="top" width="23%">&nbsp;
         <div id="hpColHdr" onMouseOver="show_section('licenseslinks',event);" onMouseOut="hide_section('licenseslinks');">
         <h4 id="licensesheader" style="cursor: pointer;" onClick="toggle_section('licenseslinks');"></h4>
         <div id="licenseslinks">
         <ul>
           <li><TMPL_IF DISABLE_DL>Driver Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_LICENSE');">Driver Licenses</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_PROF_LICENSE>Professional Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_FAA_PILOT>FAA Pilots<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FAA_PILOT');">FAA Pilots</a></TMPL_IF></li>

           <li><TMPL_IF DISABLE_HUNTING_LICENSE>Hunting/Fishing Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE');">Hunting/Fishing Licenses</a></TMPL_IF></li>

           <li><TMPL_IF DISABLE_CONCEALED_WEAPON>Concealed Weapons Permits<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON');">Concealed Weapons Permits</a></TMPL_IF></li>

           <li><TMPL_IF DISABLE_VOTER_REGISTRATION>Voter Registrations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registrations</a></TMPL_IF></li>

           <li><TMPL_IF DISABLE_FIREARMS>Federal Firearms &amp; Explosives<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FIREARMS');">Federal Firearms &amp; Explosives</a></TMPL_IF></li>

           <li><TMPL_IF DISABLE_DEA>DEA Controlled Substances<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DEA');">DEA Controlled Substances</a></TMPL_IF></li>
           <!--<TMPL_UNLESS IS_RESELLER><li><TMPL_IF DISABLE_MVR>MVR Reports (Driving Records)<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_MVR');">MVR Reports (Driving Records)</a></TMPL_IF></li></TMPL_UNLESS>-->
         </ul>
         </div>
	 <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
         </div>
     <TMPL_IF RESTRICT_LNLP_CONTENT>
         <h4 id="newsheader" hide_section('newslinks')></h4>
         <div id="newslinks">
         </div>
         <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
     <TMPL_ELSE>
         <div id="hpColHdr" onMouseOver="show_section('newslinks',event);" onMouseOut="hide_section('newslinks');">
         <h4 id="newsheader" style="cursor: pointer;" onClick="toggle_section('newslinks');"></h4>
         <div id="newslinks">
         <ul>
            <li><TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_BUS_NEWS>Businesses in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_LN_NEGATIVE_NEWS>Negative News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NEG_NEWS');">Negative News</a></TMPL_IF></li>
	    <li><TMPL_IF DISABLE_INSTOPICS_NEWS>Insurance Topics in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_INSTOPICS_NEWS');">Insurance Topics in the News</a></TMPL_IF></li>
	    <li><TMPL_IF DISABLE_DO_NEWS>Deaths & Obituaries in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DO_NEWS');">Deaths & Obituaries in the News</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_ARCHIVED_NEWS>Archived News <TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ARCHIVED_NEWS');">Archived News</a></TMPL_IF></li>
         </ul>
	 </div>
	 <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
         </div>
     </TMPL_IF>
	 </td>
         <td valign="top">&nbsp;</td>
         <td valign="top" width="23%">&nbsp;
         <div id="hpColHdr" onMouseOver="show_section('courtslinks',event);" onMouseOut="hide_section('courtslinks');">
         <h4 id="courtsheader" style="cursor: pointer;" onClick="toggle_section('courtslinks');"></h4>
         <div id="courtslinks">
         <ul>
            <li><TMPL_IF DISABLE_BLJ>Bankruptcies, Liens &amp; Judgments<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BLJ');">Bankruptcies, Liens &amp; Judgments</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CRIM>Criminal Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CRIM');">Criminal Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CIVIL_COURT>Civil Courts<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT');">Civil Courts</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_ACCIDENT>Florida Accidents<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ACCIDENT');">Florida Accidents</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_PATRIOTACT>USA PATRIOT Act<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');">USA PATRIOT Act</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_SEXPREDATOR>Sexual Offenders<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR');">Sexual Offenders</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_OFFICIAL_RECORDS>Official Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS');">Official Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_MARRIAGE>Marriages/Divorces<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_MARRIAGE');">Marriages/Divorces</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_FORECLOSURE>Foreclosures<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a></TMPL_IF></li>
              <TMPL_UNLESS IS_RESELLER>
	      <TMPL_IF SHOW_CS_REPORT>
            <li>
	      <TMPL_IF DISABLE_COURT>
              <a href="javascript:court_ad()">Court Search Wizard</a>
              <TMPL_ELSE>
              <a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','CourtPopupWin','600','600',0,0,0,1,1,0,'','court_wizard_select');">Court Search Wizard</a>
            </li>
              </TMPL_IF>
              </TMPL_IF>
              </TMPL_UNLESS>
         </ul>
	 </div>
	 <div><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="1" height="5" width="1" /></div>
	 </div>
	</td>
     </tr>
     <tr>
         <td valign="top">&nbsp;</td>
         <td valign="top">&nbsp;</td>
         <td valign="top">&nbsp;</td>
         <td valign="top">&nbsp;</td>
         <td valign="top">&nbsp;</td>
         <td valign="top">&nbsp;</td>
         <td valign="top">&nbsp;</td>
     </tr>
 </tbody></table>
 <!-- END Accurint searches table -->
</td>
    <td valign="top">


<div id="containerRight">

	<!-- Start My Account section -->
	<TMPL_INCLUDE NAME="search_inputs_myaccount_menu.tpl">
	<!-- End My Account section -->

	<!-- Start Recent Searches section -->
	<TMPL_INCLUDE NAME="search_inputs_recent_searches.tpl">
	<!-- END DIV for right column content container -->

        <!-- Start Security section -->
        <div id="myAccount" onMouseOver="show_section('security');" onMouseOut="hide_section('security');">
          <span style="color:#ffffff;font-weight:bold;font-size:10pt;cursor: pointer;" id="securitytitle" onClick="toggle_section('security');"></span>
          <div id="security" style="font-size:8pt;">
          <div style="position:relative;top:10px;left:155px;margin-bottom:-35px;width:50px;height:49px;"><img src="<TMPL_VAR NAME=IMGPATH>/security_lock.gif" border="0" /></div>
          <b>New Security Center!</b>
          <br>
          &nbsp; - <a href="javascript:void(0)" onClick="window.open('http://www.accurint.com/security_center/index.html?source=<TMPL_VAR NAME=APPLICATION_TYPE>');" title="Security Center">CLICK HERE</a><br><br>
          <TMPL_INCLUDE NAME="security_tips.tpl">
          </div>
        </div>
        <div id="myAccountBot"></div>
        <!-- End Security section -->

</div>
</td>
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
</body></html>
