<!-- begin col/main_menu.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html><head>
<title>LexisNexis&reg; | Accurint Main Menu</title>

<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/accurintHomePage.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/fcol/quick_search.js"></script>
<!--<script src="<TMPL_VAR NAME='JSPATH'>/rotate_banners2.js"></script>-->

<TMPL_INCLUDE NAME="main_menu_banners.tpl">

<script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/misc.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>

<TMPL_IF NAME=LOGOUT_TIMEOUT>
<script>
var temp_timeout = setTimeout (function(){ javascript:send_event('LOGOUT'); }, <TMPL_VAR NAME=LOGOUT_TIMEOUT>);
</script>
</TMPL_IF>

<script>
var cap_notice = '<div style=\'width: 215px\'><br /><b>NOTE:</b><br /><br />You have exceeded the Search Threshold.&nbsp; Please contact your Company Administrator for assistance.<br /><br /></div>';
var security_notice = '<div style=\'width: 215px\'><br /><center><img src=\'<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif\' border=\'0\'>&nbsp; &nbsp; <b>SECURITY REMINDER</b>&nbsp; &nbsp; <img src=\'<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif\' border=\'0\'></center><br />If your last login session was not on <b><TMPL_VAR NAME=LAST_LOGIN_DATE></b>, please contact your system administrator.<br /><br /></div>';
var plus_notice = '<div><br /><center><img src=\'<TMPL_VAR NAME=IMGPATH>/main/plus.gif\' border=\'0\'>&nbsp; &nbsp; <b>NEW -- Introducing the Plus family of locate searches!</b>&nbsp; &nbsp; <img src=\'<TMPL_VAR NAME=IMGPATH>/main/plus.gif\' border=\'0\'></center><br />These searches combine the best data and search logic from three of our most critical searches -- Person Search, Deep Skip and Phones Plus. More data in Fewer Clicks with Better Results.<br /><br /></div>';
</script>

<!-- Custom Logo for Home Page -->
<style>
#hd { background:url(<TMPL_VAR NAME=IMGPATH>/fcol/1/ln_logo_home.gif) no-repeat; }
</style>

</head>

<body onLoad="LN.misc.appInit(<TMPL_IF BLIND>0<TMPL_ELSE><TMPL_IF SKIP_RECENT_SEARCH_AJAX>0<TMPL_ELSE>1</TMPL_IF></TMPL_IF>); <TMPL_IF NAME="ALERTING_NEW_COUNT">menu_prompt('<TMPL_VAR NAME="ALERTING_NEW_COUNT">');</TMPL_IF>">

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
    <INPUT type=hidden NAME="ACTION_ADMIN" VALUE="<TMPL_VAR NAME=ACTION_ADMIN>">
    <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><INPUT type=hidden NAME="ADVANCED_SEARCH" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>"></TMPL_IF>
    <TMPL_IF NAME="ALERTING_NEW_COUNT">
    <INPUT type=hidden NAME="ALERTING_NEW_COUNT" id="ALERTING_NEW_COUNT" VALUE="<TMPL_VAR NAME=ALERTING_NEW_COUNT>">
    </TMPL_IF>


<table width="100%">
  <tbody><tr>
    <td id="containerLeft" align="left" valign="top">

      <div class="greeting">
    	<strong>Today is <TMPL_VAR NAME=CURRENT_DATE></strong> | <a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',security_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">Security Reminder</a><br>
        You last signed in on <a class="adver" href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);"><TMPL_VAR NAME=LAST_LOGIN_DATE></a>
      </div>
      <div id="right_qs">
      <div style="">
      <TMPL_INCLUDE name="quick_search.tpl">
      </div>
      </div>

      <div id="newsHdr">
        <div class="NewsHeader">
          <h2 align="left">New Products &amp; Announcements</h2>
          <div align="left"><span><a href="javascript:send_event('LOGIN/SHOW_WELCOME');">View Past Announcements</a></span></div>
        </div>
      </div>
      <div id="newsBlock">
        <div class="newsRightBkg">
            <ul>
                <li><strong><a href="javascript:open_banner(5);">Have you tried our new Social Media Locator Search?</a></strong></li>
		<li><strong><a href="javascript:open_banner(4);">Important Security Message</a></strong></li>
                <li><strong><a href="javascript:open_banner(1);">Before you search on a celebrity -- <small>CLICK HERE</small></a></strong></li>
                <li><strong><a href="javascript:open_banner(2);">Did You Know? LexisNexis offers Phone Feedback! -- <small>CLICK HERE FOR DETAILS</small></a></strong></li>
            </ul>
            <br>
            <!-- break for padding -->
<TMPL_IF DOWNGRADE_USER_TO_5B>
  <TMPL_INCLUDE NAME="downgrade_user_to_5b.tpl">
</TMPL_IF>
<TMPL_IF SHOW_PHONE_FEEDBACK>
        <div class="feedback">
          <strong>Phone Feedback:</strong>
          <TMPL_VAR NAME=COMPANY_NAME> has submitted <TMPL_VAR NAME=COMPANY_FEEDBACK>
            feedbacks in <TMPL_VAR NAME=FEEDBACK_TIMEFRAME>.<br/>
          <TMPL_VAR NAME=USER_NAME> has submitted <TMPL_VAR NAME=USER_FEEDBACK> feedbacks in
            <TMPL_VAR NAME=FEEDBACK_TIMEFRAME>.
	    <!--
	    <div class="smallfont1"><br><strong>NOTE:</strong>&nbsp; Accurint does not constitute a "consumer report" as that term is defined in the federal Fair Credit Reporting Act,<br>15 USC 1681 et seq. (FCRA). Accordingly, Accurint may not be used in whole or in part as a factor in determining eligibility<br>for credit, insurance, employment or another permissible purpose under the FCRA.</div>
	    -->
        </div>
</TMPL_IF>

        </div>
      </div>
      <div id="newsBot">
        <div class="newsBottom"></div>
      </div>
      <div id="clear"></div>

         <TMPL_INCLUDE NAME="skip_trace/search_inputs_skip_trace.tpl">

<!-- START Accurint searches table -->

<table id="searches" cellpadding="2" cellspacing="0">
 <tbody>
   <tr>
      <td width="49%" valign="top">
        <div class="hpColHdr">
          <h4>Contact & Locate (Non-FCRA)</h4>
          
          <div class="product_pad">
            <strong>People Searches</strong>
            <ul>
              <TMPL_UNLESS DO_NOT_DISPLAY_PERSON_SEARCH_PLUS><li><TMPL_IF DISABLE_PERSON_SEARCH_PLUS>Person Search Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PERSON_SEARCH_PLUS');"  onMouseOver="set_tip('tip_rem',plus_notice,event,'right',450);setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">Person Search <font color="#ed1c24"><b>Plus</b></font></a></TMPL_IF></li></TMPL_UNLESS>
              <TMPL_UNLESS DO_NOT_DISPLAY_PERSON><li><TMPL_IF DISABLE_PERSON>Find a Person<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FAP');">Find a Person</a></TMPL_IF></li></TMPL_UNLESS>
              <TMPL_UNLESS DELETE_CONTACT_PLUS>
              <li><TMPL_IF CONTACTPLUS_CAP_MET>Contact Plus&nbsp;<a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_CONTACT_PLUS>Contact Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_CONTACT_PLUS');" onMouseOver="set_tip('tip_rem',plus_notice,event,'right',450);setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">Contact <font color="#ed1c24"><b>Plus</b></font></a></TMPL_IF></TMPL_IF></li>
              </TMPL_UNLESS>
               <TMPL_UNLESS DO_NOT_DISPLAY_ADV>
               <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><li><TMPL_IF DISABLE_ADV>Deep Skip Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ADV');">Deep Skip Search</a></TMPL_IF></li></TMPL_IF>
              </TMPL_UNLESS>
              <TMPL_IF ALLOW_PREMISES_REPORT><li><TMPL_IF DISABLE_PREMISES_REPORT>Premises Association Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PREMISES');">Premises Association Report</a></TMPL_IF></li></TMPL_IF>
              <li><TMPL_IF WORKPLACE_SEARCH_CAP_MET>Workplace Locator&nbsp;<a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_WORKPLACE>Workplace Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_WORKPLACE');">Workplace Locator</a></TMPL_IF></TMPL_IF></li>
            <TMPL_IF SHOW_SOCIAL_MEDIA_LOCATOR><li><TMPL_IF DISABLE_SOCIALMEDIA>Social Media Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SOCIALMEDIA');">Social&nbsp;Media Locator</a>&nbsp;&nbsp;<font color="#ed1c24"><b>NEW!</b></font></TMPL_IF></li></TMPL_IF>
              <TMPL_IF SHOW_SOCIAL_REPORT><li><TMPL_IF SOCIALNETWORK_CAP_MET>Social Network Report &nbsp; <a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_SOC_REPORT>Social Network Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SOC');">Social Network Report</a></TMPL_IF></TMPL_IF></li></TMPL_IF> 
	      <li><TMPL_IF DISABLE_PAW>People at Work Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PAW');">People at Work Locator</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_PATRIOTACT>USA PATRIOT Act<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');">USA PATRIOT Act</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_PROF_LICENSE>Professional Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_DL>Driver Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_LICENSE');">Driver Licenses</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_VOTER_REGISTRATION>Voter Registration Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registration Locator</a></TMPL_IF></li>
	      <li><TMPL_IF PROPERTYSEARCH_CAP_MET>Real Property Locator&nbsp;<a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_REAL_PROPERTY>Real Property Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_REAL_PROPERTY');">Real Property Locator</a></TMPL_IF></TMPL_IF></li>
              <li><TMPL_IF MVSEARCH_CAP_MET>Motor Vehicle Locator&nbsp;<a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_RT_MVR>Motor Vehicle Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_RT_MVR');">Motor Vehicle Locator</a></TMPL_IF></TMPL_IF></li>
	      <li>
	      <TMPL_IF DISABLE_INSTANT_ID>InstantID<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_INSTANT_ID');">InstantID</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_DEATH>Death Records<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_DEATH');">Death Records</a></TMPL_IF></li>
              <li><TMPL_IF NAME=EMAILSEARCH_CAP_MET>Email Search &nbsp; <a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_EMAIL>Email Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_EMAIL');">Email Search</a></TMPL_IF></TMPL_IF></li> 
              <TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_UNLESS DONT_SHOW_NEWS><li><TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS>
              <TMPL_UNLESS RESTRICT_LNLP_CONTENT><li><TMPL_IF DISABLE_DO_NEWS>Deaths &amp; Obituaries in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DO_NEWS');">Deaths &amp; Obituaries in the News</a></TMPL_IF></li></TMPL_UNLESS>
              <TMPL_IF ALLOW_FIRSTPURSUIT_SEARCHES>
              <li><TMPL_IF DISABLE_FIRSTPURSUIT_SEARCHES>LexisNexis&reg; FirstPursuit&reg;<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FIRST_PURSUIT');" title="LexisNexis(R) First Pursuit">LexisNexis&reg; FirstPursuit&reg;<b><font color="#ed1c24">&nbsp;NEW!</font></b></a></TMPL_IF></li>
              </TMPL_IF>
            </ul>
            
            <TMPL_UNLESS DO_NOT_DISPLAY_ALL_PHONES>
            <strong>Phones</strong>
            <ul>
	      <TMPL_UNLESS DO_NOT_DISPLAY_DA_WIRELESS><li><TMPL_IF DIRASSTWIRELESS_CAP_MET>Phones Plus &nbsp;<a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_DA_WIRELESS>Phones Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></TMPL_IF></TMPL_IF></li></TMPL_UNLESS>
	      <TMPL_UNLESS DO_NOT_DISPLAY_DA_BASIC><li><TMPL_IF DISABLE_DA_BASIC>Basic Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></TMPL_IF></li></TMPL_UNLESS>
	      <TMPL_UNLESS DO_NOT_DISPLAY_DA_REVERSE><li><TMPL_IF DISABLE_DA_REVERSE>Reverse Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></TMPL_IF></li></TMPL_UNLESS>
	      <TMPL_UNLESS DO_NOT_DISPLAY_PHONE_IDENTIFIER_SEARCH><li><TMPL_IF DISABLE_PHONE_IDENTIFIER_SEARCH>Reverse Phone Search Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PHONE_IDENTIFIER');" onMouseOver="set_tip('tip_rem',plus_notice,event,'right',450);setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">Reverse Phone Search <font color="#ed1c24"><b>Plus</b></font></a></TMPL_IF></li></TMPL_UNLESS>
	      <TMPL_UNLESS DO_NOT_DISPLAY_CANADIAN_PHONES><li><TMPL_IF DISABLE_CANADIAN_PHONES>Canadian Phones<TMPL_ELSE><a href="javascript:cp_modal('Canadian Phones Legal Disclaimer','',0.6,1,1,700);">Canadian Phones</a></TMPL_IF></li></TMPL_UNLESS>
            </ul>
            </TMPL_UNLESS>
            
            <strong>Business Searches</strong>
            <ul>
	      <li><TMPL_IF DISABLE_BUS>Find a Business<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS');">Find a Business</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_CORPORATION>Corporate Filings<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_CORPORATION');">Corporate Filings</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_UCC>National UCC Filings<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_UCC');">National UCC Filings</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_WHOIS>Internet Domains<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_WHOIS');">Internet Domains</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_D_AND_B>Dun &amp; Bradstreet<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_D_AND_B');">Dun &amp; Bradstreet</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_DELCO>Delaware  Corporations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DELCO');">Delaware  Corporations</a></TMPL_IF></li>
	      <TMPL_UNLESS IS_RESELLER><li><TMPL_IF DISABLE_BUS_CREDIT>Business Credit<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_CREDIT');">Business Credit</a></TMPL_IF></li></TMPL_UNLESS>
	      <TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_UNLESS DONT_SHOW_NEWS><li><TMPL_IF DISABLE_BUS_NEWS>Businesses in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS>
	      <li><TMPL_IF DISABLE_BUS_INSTANT_ID>Business InstantID<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_INSTANT_ID');">Business InstantID</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_FICTIOUS>Fictitious Business Names<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FICTIOUS');">Fictitious Business Name</a></TMPL_IF></li>
            </ul>
            
            <strong>Batch</strong>
            <ul>
	      <li><TMPL_IF DISABLE_BATCH>Batch Addresses and Phones Wizard<TMPL_ELSE><a href="javascript:show_post_popup('AHASBATCH/SERVICES','BatchServices',800,600,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Batch Addresses and Phones Wizard</a></TMPL_IF></li>
              <TMPL_IF ALLOW_CDM>
               <INPUT type=hidden NAME="CDM_COMPANY_ID" VALUE="">
               <li><a href="javascript:show_post_popup('CDM/START_CDM','Core_Data_Management',1150,800,1,1,1,1,1,0);">Core Data Management</a></li>
              </TMPL_IF>
            </ul>
          </div>
          
        </div>
      </td>
      <td width="2%" valign="top">&nbsp;</td>
      <td width="49%" valign="top">
        <div class="hpColHdrGrn">
          <h4>Decisioning (FCRA)</h4>
          
          <div class="product_pad">
            <strong>Courts</strong>
            <ul>
              <li><TMPL_IF DISABLE_FCRA_BANKRUPTCY>Bankruptcies<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_FCRA_BANKRUPTCY');">Bankruptcies</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_FCRA_LIEN>Judgments &amp; Liens<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_FCRA_LIENS');">Judgments &amp; Liens</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_FCRA_MARRIAGE>Marriages/Divorces<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FCRA_MARRIAGE');">Marriages/Divorces</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_FCRA_SEXPREDATOR>Sexual Offenders<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FCRA_SEXPREDATOR');">Sexual Offenders</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_FCRA_CRIM>Criminal Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FCRA_CRIM');">Criminal Records</a></TMPL_IF></li>
            </ul>
            
            <strong>Assets</strong>
            <ul>
              <li><TMPL_IF PROPERTYSEARCH_CAP_MET>Real Property <span class="smalltxt">(Assessments, Deeds, and Mortgages)</span>&nbsp;<a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_FCRA_REAL_PROPERTY>Real Property <span class="smalltxt">(Assessments, Deeds, and Mortgages)</span><TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FCRA_REAL_PROPERTY');">Real Property <span class="smalltxt">(Assessments, Deeds, and Mortgages)</span></a></TMPL_IF></TMPL_IF></li>
              <li><TMPL_IF DISABLE_FCRA_VESSEL>Watercraft<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_FCRA_VESSEL');">Watercraft</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_FCRA_AIRCRAFT>FAA Aircraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FCRA_AIRCRAFT');">FAA Aircraft</a></TMPL_IF></li>
              <TMPL_UNLESS IS_RESELLER>
	      <li><TMPL_IF ALLOW_EQUIFAX_RECOVERY_REPORT><a href="javascript:show_post_popup('SEARCH/SHOW_EQUIFAX_RECOVERY_PERMISSION','EquifaxWin','900','580',1,1,1,1,1,0);" title="Equifax Recovery Report">Equifax Recovery Report (FCRA)</a><TMPL_ELSE><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/fcol/equifax_grayout.html','EquifaxWin','900','580',1,1,1,1,1,0);void(0);" title="Equifax Recovery Report" targe="_blank">Equifax Recovery Report (FCRA)</a></TMPL_IF></li>
              </TMPL_UNLESS>
            </ul>
            
            <strong>Licenses</strong>
            <ul>
              <li><TMPL_IF DISABLE_FCRA_HUNTING_LICENSE>Hunting/Fishing Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FCRA_HUNTING_LICENSE');">Hunting/Fishing Licenses</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_FCRA_CONCEALED_WEAPON>Concealed Weapons Permits<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FCRA_CONCEALED_WEAPON');">Concealed Weapons Permits</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_FCRA_FAA_PILOT>FAA Pilots<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FCRA_FAA_PILOT');">FAA Pilots</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_FCRA_FIREARMS>Federal Firearms &amp; Explosives<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FCRA_FIREARMS');">Federal Firearms &amp; Explosives</a></TMPL_IF></li>
              <!--
              <li> <a href="#">Moving Violations Reports</a></li>
              -->
            </ul>
            
            <TMPL_IF ALLOW_FIRSTPURSUIT_FCRA_SEARCHES>
            <strong>FCRA Gateway</strong>
            <ul>
                <li><TMPL_IF DISABLE_CREDITPURSUIT_SEARCHES>LexisNexis&reg; Credit Pursuit<TMPL_ELSE><a href="javascript:show_post_popup('SEARCH/SHOW_CREDIT_PURSUIT','CreditPursuitWin',900,800,0,0,0,1,1,0);">LexisNexis&reg; Credit Pursuit<b><font color="#ed1c24">&nbsp;NEW!</font></b></a></TMPL_IF></li>
            </ul>
            </TMPL_IF>
          </div>

        </div>
       <TMPL_IF ENABLE_WEBAR> 
        <div class="hpColHdr">
          <h4>Other Products</h4>
          
          <div class="product_pad">
            <ul>
<li><a href="javascript:show_post_popup('SEARCH/SHOW_WEBAR_DISCLAIMER','CollectPointWin','900','580',1,1,1,1,1,0);">Collect Point</a></li>
            </ul>
          </div>
          
        </div>
       </TMPL_IF>
       <TMPL_IF IRS_VERIFY_ONLY>
        <div class="hpColHdr">
          <h4>Verification (Non-FCRA)</h4>

          <div class="product_pad">
              <a href="javascript:send_event('SEARCH/SHOW_IRS_VERIFY');">IRS Verify</a>
          </div>
        </div>
        </TMPL_IF>
      </td>
    </tr>
  </tbody>
</table>

<!-- END Accurint searches table -->

</td>
    <td valign="top">


<div id="containerRight">

	<!-- Start My Account section -->
	<TMPL_INCLUDE NAME="col/search_inputs_myaccount_menu.tpl">
	<!-- End My Account section -->

	<!-- Start Admin section -->
	<div id="myAccount">
		<div class="myAccountHdr">Administration</div>
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

		<li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ACTIVITY','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');">Activity</a></li>
                <TMPL_UNLESS BILLING_END_USER>
		<li><a href="javascript:show_post_popup('SECURITY/SHOW_SECURITY','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');">Company Security</a></li>
                </TMPL_UNLESS>
	</div>
	<div id="myAccountBot"></div>
	<!-- End Admin section -->

	<!-- Start Recent Searches section -->
<div id="rtcolTabsContainer">
<ul id="rtcolTabs">
    <li class="fc_nfc_active" id="li_recentSearch"><a>NON-FCRA Recent</a></li>
    <li class="fc_nfc_inactive" id="li_fcra_recentSearch"><a>FCRA Recent</a></li> <!-- hide if non-fcra -->
</ul>
</div>

<div id="rpRecentSearch">
<div id="rtcolContent">
<div id="rsContainer">
    <TMPL_INCLUDE NAME="search_inputs_recent_searches_new.tpl">
    <TMPL_INCLUDE NAME="search_inputs_recent_fcra_searches_new.tpl"> <!-- hide if non-fcra -->
</div>
</div>
</div>

<div id="rtcolContentBot"></div>
<div id="clear"></div>

<script>

function show_rs()
{
	$('li_recentSearch').className = 'fc_nfc_active';
	$('nonFcraRecentSearch').style.display = 'block';
	
	// hide next two if non-fcra
	$('li_fcra_recentSearch').className = 'fc_nfc_inactive';
	$('fcraRecentSearch').style.display = 'none';
}
<TMPL_IF NAME="FCRA_MODE">
show_fcra_rs();
<TMPL_ELSE>
show_rs();
</TMPL_IF>

// hide show_fcra_rs() function below if non-fcra as well as two lines below it.
function show_fcra_rs()
{
	$('li_recentSearch').className = 'fc_nfc_inactive';
	$('nonFcraRecentSearch').style.display = 'none';
	$('li_fcra_recentSearch').className = 'fc_nfc_active';
	$('fcraRecentSearch').style.display = 'block';
}
if ($('li_recentSearch')) { $('li_recentSearch').observe('click', show_rs); }
if ($('li_fcra_recentSearch')) { $('li_fcra_recentSearch').observe('click', show_fcra_rs); }

</script>

	<!-- TMPLS_INCLUDE NAME="fcol/search_inputs_recent_searches.tpl"-->
	<!-- END DIV for right column content container -->

        <!-- Start Security section -->
        <div id="myAccount">
          <span style="color:#000000;font-weight:bold;font-size:10pt;">Security News</span>
	  <div style="font-size:8pt;">
	  <div style="position:relative;top:10px;left:155px;margin-bottom:-35px;width:50px;height:49px;"><img src="<TMPL_VAR NAME=IMGPATH>/security_lock.gif" border="0" /></div>
	  <b>New Security Center!</b><br>&nbsp; - <a href="javascript:void(0)" onClick="window.open('http://www.accurint.com/security_center/index.html?source=<TMPL_VAR NAME=APPLICATION_TYPE>');" title="Security Center">CLICK HERE</a>
	  <br><br>
	  <TMPL_INCLUDE NAME="security_tips.tpl"></div>
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
