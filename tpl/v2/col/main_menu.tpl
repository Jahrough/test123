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
</script>

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
                <!--<li><strong><a href="javascript:open_banner(6);">Have you tried our new Social Media Locator Search?</a></strong></li>-->
                <li><strong><a href="javascript:open_banner(3);">Now even more right-party contacts from the LexisNexis&reg; Batch Wizard!</a></strong></li>
                <li><strong><a href="javascript:open_banner(5);">Important Security enhancement - Multi Factor Authentication</a></strong></li>
                <li><strong><a href="javascript:open_banner(4);">Important Security Message</a></strong></li>
                <li><strong><a href="http://www.lexisnexis.com/risk/downloads/whitepaper/strategies-for-effective-phone-data-testing-wp.pdf" target="_blank">Take value-add on a test drive. Download Strategies for Effective Phone Data Testing white paper.</a></strong></li>
                <li><strong><a href="https://learn.lexisnexis.com/lexisnexis/resources/documents/LN_Accurint_Collections_GS.pdf" target="_blank">Learn More! Click here to download a complimentary Getting Started Guide.</a></strong></li>
		<TMPL_IF NAME="SA"><li><strong><a href="https://learn.lexisnexis.com/lexisnexis/resources/documents/LN_Accurint_Col_System_Admin_Manage_Groups.pdf" target="_blank">NEW! Manage Groups feature now available for System Administrators -- <small>CLICK HERE</small></a></strong></li></TMPL_IF>
                <li><strong><a href="javascript:open_banner(0);">LexisNexis Accurint for Collections Address and Phone Batch Wizard -- <small>CLICK HERE</small></a></strong></li>
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
        </div>
</TMPL_IF>
<TMPL_IF SHOW_ADDRESS_FEEDBACK>
        <br />
        <div class="feedback">
          <strong>Address Feedback:</strong>
          <TMPL_VAR NAME=COMPANY_NAME> has submitted <TMPL_VAR NAME=COMPANY_ADDRESS_FEEDBACK>
            feedbacks in <TMPL_VAR NAME=FEEDBACK_TIMEFRAME>.<br/>
          <TMPL_VAR NAME=USER_NAME> has submitted <TMPL_VAR NAME=USER_ADDRESS_FEEDBACK> feedbacks in
            <TMPL_VAR NAME=FEEDBACK_TIMEFRAME>.
        </div>
</TMPL_IF>
<TMPL_IF SHOW_PHONE_FEEDBACK>
        <div class="feedback">
	    <div class="smallfont1"><br><strong>NOTE:</strong>&nbsp; Accurint does not constitute a "consumer report" as that term is defined in the federal Fair Credit Reporting Act,<br>15 USC 1681 et seq. (FCRA). Accordingly, Accurint may not be used in whole or in part as a factor in determining eligibility<br>for credit, insurance, employment or another permissible purpose under the FCRA.</div>
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
      <tbody><tr>
         <td colspan="7"><h2>Available Accurint Searches</h2></td>
        <tr>
          <td colspan="7"><div id="searchTitle">My Accurint <span class="smallblack">- Favorite Searches</span></div></td>
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
                 <div class="medblack" style="color:#ed1c24; padding-left:12px">
		 A favorite search is no longer available and has been disabled in My Accurint. <br />
		 If this is incorrect please contact your Administrator.</div>
		 </TMPL_IF>
         </td>
      </tr>


      <tr>
         <td width="23%" valign="top">
	 <div id="hpColHdr">
	 <h4>People</h4>
		 <ul>
		    <li><TMPL_IF DISABLE_PERSON>Person Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEARCH');">Person Search</a></TMPL_IF><TMPL_IF PRICE_CAP_COMPANY>&nbsp;&nbsp;</TMPL_IF></li>
<TMPL_UNLESS DELETE_CONTACT_PLUS>
		    <li><TMPL_IF CONTACTPLUS_CAP_MET>Contact Plus Search &nbsp;<a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_CONTACT_PLUS>Contact Plus Search<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_CONTACT_PLUS');">Contact Plus Search</a></TMPL_IF></TMPL_IF></li>
</TMPL_UNLESS>
		    <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><li><TMPL_IF DISABLE_ADV>Deep Skip Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ADV');">Deep Skip Search</a></TMPL_IF></li></TMPL_IF>
                    <TMPL_IF ALLOW_PREMISES_REPORT><li><TMPL_IF DISABLE_PREMISES_REPORT>Premises Association Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PREMISES');">Premises Association Report</a></TMPL_IF></li></TMPL_IF>
        <TMPL_IF SHOW_COMP_SEARCH><li><TMPL_IF COMPREPORT_CAP_MET>Comprehensive Search &nbsp;<a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_COMPSEARCH>Comprehensive Search<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_COMPSEARCH');">Comprehensive Search</a></TMPL_IF></TMPL_IF></li></TMPL_IF>
		    <li><TMPL_IF DISABLE_PAW>People at Work<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PAW');">People at Work</a></TMPL_IF></li>
		    <li><TMPL_IF WORKPLACE_SEARCH_CAP_MET>Workplace Locator&nbsp;<a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_WORKPLACE>Workplace Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_WORKPLACE');">Workplace Locator</a></TMPL_IF></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_INSTANT_ID>InstantID<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_INSTANT_ID');">InstantID</a></TMPL_IF></li>
		   <TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_UNLESS DONT_SHOW_NEWS><li><TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS>
		    <li><TMPL_IF DISABLE_DEATH>Death Records<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_DEATH');">Death Records</a></TMPL_IF></li>
		    <li><TMPL_IF NAME=EMAILSEARCH_CAP_MET>Email Search &nbsp; <a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_EMAIL>Email Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_EMAIL');">Email Search</a></TMPL_IF></TMPL_IF></li>
		    <TMPL_IF SHOW_SOCIAL_REPORT><li><TMPL_IF SOCIALNETWORK_CAP_MET>Social Network Report &nbsp; <a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_SOC_REPORT>Social Network Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SOC');">Social Network Report</a></TMPL_IF></TMPL_IF></li></TMPL_IF>
            <TMPL_IF ALLOW_FIRSTPURSUIT_SEARCHES>
            <li><TMPL_IF DISABLE_FIRSTPURSUIT_SEARCHES>LexisNexis&reg; FirstPursuit&reg;<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FIRST_PURSUIT');" title="LexisNexis(R) First Pursuit">LexisNexis&reg; FirstPursuit&reg;<b><font color="#ed1c24">&nbsp;NEW!</font></b></a></TMPL_IF></li>
            </TMPL_IF>

            <!-- <TMPL_IF IRS_VERIFY_ONLY><li><a href="javascript:send_event('SEARCH/SHOW_IRS_VERIFY');">IRS Verify</a></li></TMPL_IF> -->

		 </ul>
	 </div>

	<TMPL_UNLESS IS_RESELLER>
		 <div id="hpColHdr">
		 <h4>Credit Links</h4>
			 <ul>
			    <li><TMPL_IF ALLOW_EQUIFAX_RECOVERY_REPORT><a href="javascript:show_post_popup('SEARCH/SHOW_EQUIFAX_RECOVERY_PERMISSION','EquifaxWin','900','580',1,1,1,1,1,0);" title="Equifax Recovery Report">Equifax Recovery Report (FCRA)</a><TMPL_ELSE><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/col/equifax_grayout.html','EquifaxWin','900','580',1,1,1,1,1,0);void(0);" title="Equifax Recovery Report" targe="_blank">Equifax Recovery Report (FCRA)</a></TMPL_IF></li>
			 </ul>
		 </div>
	</TMPL_UNLESS>

		 <div id="hpColHdr">
		 <h4>Batch</h4>
			 <ul>
			    <li><TMPL_IF DISABLE_BATCH>Batch Services<TMPL_ELSE><a href="javascript:show_post_popup('AHASBATCH/SERVICES','BatchServices',800,600,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Batch Services</a></TMPL_IF></li>
                            <TMPL_IF ALLOW_CDM>
                                  <INPUT type=hidden NAME="CDM_COMPANY_ID" VALUE="">
                                  <li><a href="javascript:show_post_popup('CDM/START_CDM','Core_Data_Management',1150,800,1,1,1,1,1,0);">Core Data Management</a></li>
                             </TMPL_IF>
			 </ul>
		 </div>

		<TMPL_IF ENABLE_WEBAR>
		 <div id="hpColHdr">
		 <h4>Other Products</h4>
			 <ul>
			    <li><a href="javascript:show_post_popup('SEARCH/SHOW_WEBAR_DISCLAIMER','CollectPointWin','900','580',1,1,1,1,1,0);">Collect Point</a></li>
			 </ul>
		 </div>
		 </TMPL_IF>


	</td>
         <td width="2%" valign="top">&nbsp;</td>

         <td width="23%" valign="top">
	 <div id="hpColHdr">
	 <h4>Businesses</h4>
	    <ul>
		    <li><TMPL_IF DISABLE_BUS>Business Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS');">Business Search</a></TMPL_IF></li>
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
	</div>


	 <div id="hpColHdr">
	 <h4>Courts</h4>
	    <ul>
		    <li><TMPL_IF DISABLE_BLJ>Bankruptcies, Liens &amp; Judgments<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BLJ');">Bankruptcies, Liens &amp; Judgments</a></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_MARRIAGE>Marriages/Divorces<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_MARRIAGE');">Marriages/Divorces</a></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_CRIM>Criminal Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CRIM');">Criminal Records</a></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_CIVIL_COURT>Civil Courts<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT');">Civil Courts</a></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_ACCIDENT>Florida Accidents<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ACCIDENT');">Florida Accidents</a></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_PATRIOTACT>USA PATRIOT Act<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');">USA PATRIOT Act</a></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_SEXPREDATOR>Sexual Offenders<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR');">Sexual Offenders</a></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_OFFICIAL_RECORDS>Official Records Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS');">Official Records Search</a></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_FORECLOSURE>Foreclosures<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a></TMPL_IF></li>
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
	 <td width="2%" valign="top">&nbsp;</td>

         <td width="23%" valign="top">
	 <div id="hpColHdr">
	 <h4>Assets</h4>
	    <ul>
		    <li><TMPL_IF MVSEARCH_CAP_MET>Motor Vehicles &nbsp;<a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_RT_MVR>Motor Vehicles<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_RT_MVR');">Motor Vehicles</a></TMPL_IF></TMPL_IF></li>
		    <li><TMPL_IF PROPERTYSEARCH_CAP_MET>Real Property (Property Assessments, Deeds &amp; Mortgages)&nbsp;<a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_REAL_PROPERTY>Real Property (Property Assessments, Deeds &amp; Mortgages)<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_REAL_PROPERTY');">Real Property (Property Assessments, Deeds &amp; Mortgages)</a></TMPL_IF></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_VESSEL>Watercraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VESSEL');">Watercraft</a></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_AIRCRAFT>FAA Aircraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_AIRCRAFT');">FAA Aircraft</a></TMPL_IF></li>
	    </ul>
	</div>

	 <div id="hpColHdr">
	 <h4>Phones</h4>
	    <ul>
		    <li><TMPL_IF DIRASSTWIRELESS_CAP_MET>Phones Plus &nbsp;<a href="javascript:void(0);" onMouseOver="set_tip('tip_rem',cap_notice,event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"><img src='<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif' border='0'></a><TMPL_ELSE><TMPL_IF DISABLE_DA_WIRELESS>Phones Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></TMPL_IF></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_DA_BASIC>Basic Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_DA_REVERSE>Reverse Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></TMPL_IF></li>
		    <li><TMPL_IF DISABLE_CANADIAN_PHONES>Canadian Phones<TMPL_ELSE><a href="javascript:cp_modal('Canadian Phones Legal Disclaimer','',0.6,1,1,700);">Canadian Phones</a></TMPL_IF></li>
	    </ul>
	</div>
    <TMPL_IF ALLOW_FIRSTPURSUIT_FCRA_SEARCHES>
    <div id="hpFColHdr">
    <h4>FCRA Gateway</h4>
        <ul>
            <li><TMPL_IF DISABLE_CREDITPURSUIT_SEARCHES>LexisNexis&reg; Credit Pursuit<TMPL_ELSE><a href="javascript:show_post_popup('SEARCH/SHOW_CREDIT_PURSUIT','CreditPursuitWin',900,800,0,0,0,1,1,0);">LexisNexis&reg; Credit Pursuit<b><font color="#ed1c24">&nbsp;NEW!</font></b></a></TMPL_IF></li>
        </ul>
    </div>
    </TMPL_IF>

	</td>
	 <td width="2%" valign="top">&nbsp;</td>

         <td width="23%" valign="top">
	 <div id="hpColHdr">
	 <h4>Licenses</h4>
	    <ul>
		  <li><TMPL_IF DISABLE_PROF_LICENSE>Professional Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a></TMPL_IF></li>
		   <li><TMPL_IF DISABLE_DL>Driver Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_LICENSE');">Driver Licenses</a></TMPL_IF></li>
		   <li><TMPL_IF DISABLE_FAA_PILOT>FAA Pilots<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FAA_PILOT');">FAA Pilots</a></TMPL_IF></li>
		   <li><TMPL_IF DISABLE_HUNTING_LICENSE>Hunting/Fishing Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE');">Hunting/Fishing Licenses</a></TMPL_IF></li>
		   <li><TMPL_IF DISABLE_CONCEALED_WEAPON>Concealed Weapons Permits<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON');">Concealed Weapons Permits</a></TMPL_IF></li>
		   <li><TMPL_IF DISABLE_VOTER_REGISTRATION>Voter Registrations<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registrations</a></TMPL_IF></li>
		   <li><TMPL_IF DISABLE_FIREARMS>Federal Firearms &amp; Explosives<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FIREARMS');">Federal Firearms &amp; Explosives</a></TMPL_IF></li>
		   <li><TMPL_IF DISABLE_DEA>DEA Controlled Substances<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DEA');">DEA Controlled Substances</a></TMPL_IF></li>
		   <!--
		   <TMPL_UNLESS IS_RESELLER><li><TMPL_IF DISABLE_MVR>MVR Reports (Driving Records)<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_MVR');">MVR Reports (Driving Records)</a></TMPL_IF></li></TMPL_UNLESS>
		   -->
	    </ul>
	</div>
	</td>
	 <td width="2%" valign="top">&nbsp;</td>

      </tr>
 </tbody></table>
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
	<TMPL_INCLUDE NAME="search_inputs_recent_searches.tpl">
	<!-- END DIV for right column content container -->

        <!-- Start Security section -->
        <div id="myAccount">
          <span style="color:#ffffff;font-weight:bold;font-size:10pt;">Security News</span>
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
