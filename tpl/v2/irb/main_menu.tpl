<!-- begin irb/main_menu.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html><head>
<title>IRBsearch Main Menu</title>

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

<TMPL_IF NAME=LOGOUT_TIMEOUT>
<script>
var temp_timeout = setTimeout (function(){ javascript:send_event('LOGOUT'); }, <TMPL_VAR NAME=LOGOUT_TIMEOUT>);
</script>
</TMPL_IF>

</head>

<body onLoad="LN.misc.appInit(<TMPL_IF BLIND>0<TMPL_ELSE><TMPL_IF SKIP_RECENT_SEARCH_AJAX>0<TMPL_ELSE>1</TMPL_IF></TMPL_IF>); <TMPL_IF NAME="ALERTING_NEW_COUNT">menu_prompt('<TMPL_VAR NAME="ALERTING_NEW_COUNT">');</TMPL_IF>">

<!-- BEGIN HD DIV for header -->
<TMPL_INCLUDE NAME="search_header.tpl">

<!-- BEGIN wrapper DIV -->
<div id="wrapper">

    <form name="MAIN_MENU" action="<TMPL_VAR NAME=ACTION>" method="post">
    <INPUT type=hidden NAME="EVENT" VALUE="">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
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
    	<strong>Today is <TMPL_VAR NAME=CURRENT_DATE></strong> | <a href="javascript:void(0);" onMouseOver="$('sec_rem').style.display = 'inline';setOpacity('sec_rem',0);fadeIn('sec_rem',100,2);">Security Reminder</a><br>
        You last signed in on <a class="adver" href="javascript:show_post_popup('MYACCOUNT/SHOW_ACTIVITY','MyAccountWin','','',1,1,1,1,1,0,'/app/bps/admin');"><TMPL_VAR NAME=LAST_LOGIN_DATE></a>
      </div>
      <!--
      <div id="quick_search">
        <div class="quickRT"></div>
        <strong>Database Search:</strong>
          <input name="quick_search_text" class="qsinput" value="Enter SSN, Phone #, Address or Company Name" type="text">
          <input name="search" id="searchBtn" value="search" type="button">
      </div>
      -->
      <div id="newsHdr">
        <div class="NewsHeader">
          <h2 align="left">New Products &amp; Announcements</h2>
          <div align="left"><span><a href="javascript:send_event('LOGIN/SHOW_WELCOME');">View Past Announcements</a></span></div>
        </div>
      </div>
      <div id="newsBlock">
        <div class="newsRightBkg">
            <ul>
                <li><strong><a href="javascript:open_banner(0);">Updated Terms and Conditions -- <small>CLICK HERE</small></a></strong></li>
                <li><strong><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/irb_sample_reports.html','HelpWindow',790,600,1,1,1,1,1,0);void(0);">View IRBsearch Sample Reports -- <small>CLICK HERE</small></a></strong></li>
                <li><strong><a href="javascript:open_banner(1);">Business Search now includes "We Also Found" -- <small>CLICK HERE</small></a></strong></li>
            </ul>
            <br>
            <!-- break for padding -->
        </div>
      </div>
      <div id="newsBot">
        <div class="newsBottom"></div>
      </div>
      <div id="clear"></div>


<!-- START searches table -->
     <table id="searches" cellpadding="2" cellspacing="0">
      <tbody>
        <tr>   
          <td colspan="7"><p>&nbsp;</p><div id="searchTitle">My Favorite Searches</div></td>
        </tr>
      <tr>
        <td colspan="7" style="padding-bottom:10px">
	<span>
            <table border="0" cellspacing="0" cellpadding="2" id="fav">
              <tr>
                <td>|</td>
                 <TMPL_LOOP FAV_LOOP>
		    <td valign="top">
		    <TMPL_IF DISABLED><TMPL_VAR SLABEL>
		    <TMPL_ELSE><a href="javascript:myacc('<TMPL_VAR SEVENT>');"><TMPL_VAR SLABEL></a></TMPL_IF>
		    </td> <td valign="top">|</td>
		 </TMPL_LOOP>    
	     </tr>
            </table>
	 </span> <TMPL_IF FAV_DISABLED>  
                 <div class="medblack" style="color:#CC0033; padding-left:12px">
		 A favorite search is no longer available and has been disabled in My Favorite Searches. <br />
		 If this is incorrect please contact your Administrator.</div>            
		 </TMPL_IF>
         <p>&nbsp;</p>
	 </td>
      </tr>
      
      <tr>
         <td width="23%" valign="top">
	 <div id="hpColHdr">
	 <h4>People</h4>
         <ul>
            <li><TMPL_IF DISABLE_PERSON>Person Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEARCH');">Person Search</a></TMPL_IF></li>
            <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><li><TMPL_IF DISABLE_ADV>Advanced Person<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ADV');">Advanced Person</a></TMPL_IF></li></TMPL_IF>
            <li><TMPL_IF DISABLE_PAW>People at Work<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PAW');">People at Work</a></TMPL_IF></li>
	    <li><TMPL_IF DISABLE_INSTANT_ID>InstantID<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_INSTANT_ID');">InstantID</a></TMPL_IF></li>
           <TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_UNLESS DONT_SHOW_NEWS><li><TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></TMPL_IF></li></TMPL_UNLESS> </TMPL_UNLESS>
            <li><TMPL_IF DISABLE_DEATH>Death Records<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_DEATH');">Death Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_EMAIL>Email Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_EMAIL');">Email Search</a></TMPL_IF></li>
            <TMPL_IF SHOW_SOCIAL_MEDIA_LOCATOR><li><TMPL_IF DISABLE_SOCIALMEDIA>Social Media Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SOCIALMEDIA');">Social&nbsp;Media Locator</a>&nbsp;&nbsp;<font color="#ed1c24"><b>NEW!</b></font></TMPL_IF></li></TMPL_IF>
            <TMPL_IF SHOW_SOCIAL_REPORT><li><TMPL_IF DISABLE_SOC_REPORT>Social Network Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SOC');">Social Network Report</a></TMPL_IF></li></TMPL_IF>
	    <!--
          <TMPL_UNLESS IS_RESELLER>
	    <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('BATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">People Batching</a><TMPL_ELSE>People Batching</TMPL_UNLESS></li>
	  </TMPL_UNLESS>
	    <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('PHONEBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,0,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Phone Batching</a><TMPL_ELSE>Phone Batching</TMPL_UNLESS></li>
	  <TMPL_IF IS_BATCH_ADMIN>
	    <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('SURECONTACTBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">SureContact Batch</a><TMPL_ELSE>SureContact Batch</TMPL_UNLESS></li>
	    <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('SUREPLACEMENTBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">SurePlacement Batch</a><TMPL_ELSE>SurePlacement Batch</TMPL_UNLESS></li>
	    <li><TMPL_UNLESS DISABLE_WATCHDOG><a href="javascript:show_post_popup('WATCHDOG/START','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Accurint Watchdog</a><TMPL_ELSE><a href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/watchdog/watchdog_ad.html','WatchDogPopupWin','550','',0,0,0,1,1,0);void(0);")>Accurint Watchdog</a></TMPL_UNLESS></li>
	    <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('INSTANTIDBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">InstantID Batch</a><TMPL_ELSE>InstantID Batch</TMPL_UNLESS></li>
	    <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('PHONESPLUSBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Phones Plus Batching</a><TMPL_ELSE>Phone Plus Batching</TMPL_UNLESS></li>
	    <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('OFACBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">USA PATRIOT Act Batch</a><TMPL_ELSE>USA PATRIOT Act Batch</TMPL_UNLESS></li>
	  </TMPL_IF>
	  -->

            </ul>
         </div>
	 <div id="hpColHdr">
	 <h4>Phones</h4>
         <ul>
            <li><TMPL_IF DISABLE_DA_WIRELESS>Phones Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DA_BASIC>Basic Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DA_REVERSE>Reverse Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></TMPL_IF></li>
            <TMPL_UNLESS DO_NOT_DISPLAY_PHONE_IDENTIFIER_SEARCH><li><TMPL_IF DISABLE_PHONE_IDENTIFIER_SEARCH>Reverse Phone Search Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PHONE_IDENTIFIER');" onMouseOver="set_tip('tip_rem',plus_notice,event,'right',450);setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');">Reverse Phone Search <font color="#ed1c24"><b>Plus</b></font></a></TMPL_IF></li></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_CANADIAN_PHONES>Canadian Phones<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_CANADIAN_PHONES');">Canadian Phones</a></TMPL_IF></li>
         </ul>
	 </div>
         </td>
	 <td width="2%" valign="top">&nbsp;</td>
	 <td width="23%" valign="top">
	 <div id="hpColHdr">
	 <h4>Businesses</h4>
         <ul>
            <li><TMPL_IF DISABLE_BUS>Business Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS');">Business Search</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CORPORATION>Corporate Filings<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_CORPORATION');">Corporate Filings</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_UCC>National UCC Filings<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_UCC');">National UCC Filings</a></TMPL_IF></li>
	    <TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_UNLESS DONT_SHOW_NEWS><li><TMPL_IF DISABLE_BUS_NEWS>Businesses in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_WHOIS>Internet Domains<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_WHOIS');">Internet Domains</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_D_AND_B>Dun &amp; Bradstreet<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_D_AND_B');">Dun &amp; Bradstreet</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DELCO>Delaware  Corporations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DELCO');">Delaware  Corporations</a></TMPL_IF></li>
	    <li><TMPL_IF DISABLE_BUS_INSTANT_ID>Business InstantID<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_INSTANT_ID');">Business InstantID</a></TMPL_IF></li>
         </ul>
	 </div>
         <div id="hpColHdr">
	 <h4>Assets</h4>
          <ul>
            <li><TMPL_IF DISABLE_MV>Motor Vehicles<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DL_REG');">Motor Vehicles</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_ASSESSMENT>Property Assessments<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PROP');">Property Assessments</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DEEDS>Property Deeds<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PROP_DEED');">Property Deeds</a></TMPL_IF></li>
            <TMPL_UNLESS DELETE_MV_WILDCARD> 
               <li><TMPL_IF DISABLE_MV_WILDCARD>MVR Wildcard Search<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_MV_WILDCARD');">MVR Wildcard Search</a></TMPL_IF></li>
            </TMPL_UNLESS>
            <TMPL_UNLESS HIDE_RT_MVR><li><TMPL_IF DISABLE_RT_MVR>Real-Time Vehicle Registrations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_RT_MVR');">Real-Time Vehicle Registrations</a></TMPL_IF></li></TMPL_UNLESS>
            <li><TMPL_IF DISABLE_VESSEL>Watercraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VESSEL');">Watercraft</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_AIRCRAFT>FAA Aircraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_AIRCRAFT');">FAA Aircraft</a></TMPL_IF></li>

         </ul>
	 </div>
         </td>
	 <td width="2%" valign="top">&nbsp;</td>
	 <td width="23%" valign="top">
	 <div id="hpColHdr">
	 <h4>Licenses</h4>
         <ul>
           <li><TMPL_IF DISABLE_DL>Drivers Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_LICENSE');">Drivers Licenses</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_PROF_LICENSE>Professional Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_VOTER_REGISTRATION>Voter Registrations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registrations</a></TMPL_IF></li>
           <!-- <TMPL_UNLESS IS_RESELLER><li><TMPL_IF DISABLE_MVR>Driving Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_MVR');">Driving Records</a></TMPL_IF></li></TMPL_UNLESS> -->
           <li><TMPL_IF DISABLE_CONCEALED_WEAPON>Concealed Weapons Permits<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON');">Concealed Weapons Permits</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_FAA_PILOT>FAA Pilots<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FAA_PILOT');">FAA Pilots</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_HUNTING_LICENSE>Hunting/Fishing Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE');">Hunting/Fishing Licenses</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_DEA>DEA Controlled Substances<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DEA');">DEA Controlled Substances</a></TMPL_IF></li>
           <li><TMPL_IF DISABLE_FIREARMS>Federal Firearms &amp; Explosives<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FIREARMS');">Federal Firearms &amp; Explosives</a></TMPL_IF></li>
         </ul>
	 </div>
         </td>
	 <td width="2%" valign="top">&nbsp;</td>
	 <td width="23%" valign="top">
	 <div id="hpColHdr">
	 <h4>Courts</h4>
         <ul>
            <li><TMPL_IF DISABLE_BANKRUPTCY>Bankruptcy<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BANKRUPTCY');">Bankruptcy</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CRIM>Criminal Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CRIM');">Criminal Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CIVIL_COURT>Civil Courts<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT');">Civil Courts</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_ACCIDENT>Florida Accidents<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ACCIDENT');">Florida Accidents</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_PATRIOTACT>USA PATRIOT Act<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');">USA PATRIOT Act</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_SEXPREDATOR>Sexual Offenders<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR');">Sexual Offenders</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_OFFICIAL_RECORDS>Official Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS');">Official Records</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_MARRIAGE>Marriages/Divorces<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_MARRIAGE');">Marriages/Divorces</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_FORECLOSURE>Foreclosures<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_LIEN>Liens &amp; Judgments<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_LIENS');">Liens &amp; Judgments</a></TMPL_IF></li>

              <TMPL_UNLESS IS_RESELLER>
              <TMPL_IF SHOW_CS_REPORT>
            <li>
              <TMPL_IF DISABLE_COURT>
              <a href="javascript:court_ad()">Court Search Wizard</a>
              <TMPL_ELSE>
              <a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','CourtPopupWin','600','600',0,0,0,1,1,0,'','court_wizard_select');">Court Search Wizard</a>
              </TMPL_IF>
            </li>
              </TMPL_IF>
              </TMPL_UNLESS>

         </ul>
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

	<!-- Start Security section -->
	<div id="myAccount">
	  <div class="myAccountHdr">Security</div>
	  <ul>
	    <li><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=PDFPATH>/irb/IRB_Security_Awareness.pdf','SecurityAwareness','1000','760',0,0,0,1,1,0);void(0);" title="Security Awareness">Security Awareness</a></li>
	  </ul>
	</div>	
	<div id="myAccountBot"></div>
	<!-- End Security section -->

	<!-- Start Recent Searches section -->
	<TMPL_INCLUDE NAME="search_inputs_recent_searches.tpl">
	<!-- END DIV for right column content container --></td>
</div>
</tr>
</tbody></table>
</div><!-- END wrapper DIV -->
<div id="sec_rem" onMouseOver="this.style.display = 'inline';" onMouseOut="this.style.display = 'none';">
<br/>
<center><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'>&nbsp; &nbsp; <b>SECURITY REMINDER</b>&nbsp; &nbsp; <img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></center><br />
If your last login session was not on <b><TMPL_VAR NAME=LAST_LOGIN_DATE></b>, please contact your system administrator.<br /><br />
</div>

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
<!-- end irb/main_menu.tpl -->

