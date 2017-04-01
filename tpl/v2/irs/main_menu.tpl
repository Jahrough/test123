<!-- begin irs/main_menu.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html><head>
<title>LexisNexis&reg; | Accurint Main Menu</title>

<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/accurintHomePage.css" rel="stylesheet" type="text/css">
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

<body onLoad="LN.misc.appInit(<TMPL_IF BLIND>0<TMPL_ELSE>1</TMPL_IF>); <TMPL_IF NAME="ALERTING_NEW_COUNT">menu_prompt('<TMPL_VAR NAME="ALERTING_NEW_COUNT">');</TMPL_IF>">

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
    	<strong>Today is <TMPL_VAR NAME=CURRENT_DATE></strong> | <a href="javascript:void(0);" onMouseOver="$('sec_rem').style.display = 'inline';setOpacity('sec_rem',0);fadeIn('sec_rem',100,2);">Security Reminder</a><br>
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

<!-- START Accurint searches table -->
     <table id="searches" cellpadding="2" cellspacing="0">
      <tbody>
        <tr>
         <td colspan="7"><h2>Available Accurint Searches</h2></td>
	</tr>
  <TMPL_IF DOWNGRADE_USER_TO_5B>
  <tr><td colspan="7">
  <TMPL_INCLUDE NAME="downgrade_user_to_5b.tpl">
  </td></tr>
</TMPL_IF>

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
         <td width="23%"><div id="searchTitle">People</div> </td>
         <td width="2%">&nbsp;</td>
         <td width="23%"><div id="searchTitle">Businesses</div></td>
         <td width="2%">&nbsp;</td>
         <td width="23%"><div id="searchTitle">Licenses</div></td>
         <td width="2%">&nbsp;</td>
         <td><div id="searchTitle">Courts</div></td>
      </tr>
      <tr>
         <td valign="top">
         <ul>
            <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><li><TMPL_IF DISABLE_ADV>Advanced Person<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ADV');">Advanced Person</a></TMPL_IF></li></TMPL_IF>
            <li><TMPL_IF DISABLE_PAW>People at Work<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PAW');">People at Work</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_PERSON>Person Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEARCH');">Person Search</a></TMPL_IF></li>
<TMPL_IF SHOW_SOCIAL_REPORT>
            <li><TMPL_IF DISABLE_SOC_REPORT>Virtual Identity<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VIRTUAL_ID');">Virtual Identity</a></TMPL_IF></li>
</TMPL_IF>
           <TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_UNLESS DONT_SHOW_NEWS><li><TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS>
            <TMPL_UNLESS DELETE_POWER_BOOLEAN><li><TMPL_IF DISABLE_POWER_BOOLEAN>Power Search<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_POWER_BOOLEAN');">Power Search</a></TMPL_IF></li></TMPL_UNLESS>
         </ul>
	 <br>
         <div id="searchTitle">AVMS</div>
         <ul>
	    <li><TMPL_IF DISABLE_AVM>Automated Valuation Models<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_AVM');">Automated Valuation Models</a></TMPL_IF></li>
         </ul>
         <br>
         <div id="searchTitle">Assets</div>
          <ul>
	    <li><TMPL_IF DISABLE_AIRCRAFT>FAA Aircraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_AIRCRAFT');">FAA Aircraft</a></TMPL_IF></li>
	    <li><TMPL_IF DISABLE_MV>Motor Vehicles<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_DL_REG');">Motor Vehicles</a></TMPL_IF></li>
      <li><TMPL_IF DISABLE_REAL_PROPERTY>Property (Property Assessments, Deeds &amp; Mortgages)<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_REAL_PROPERTY');">Property (Property Assessments, Deeds &amp; Mortgages)</a></TMPL_IF></li>
	    <li><TMPL_IF DISABLE_VESSEL>Watercraft<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_VESSEL');">Watercraft</a></TMPL_IF></li>
         </ul>
         </td>
         <td valign="top">&nbsp;</td>
         <td valign="top">
         <ul>
	   <li><TMPL_IF DISABLE_BUS>Business Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS');">Business Search</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_CORPORATION>Corporation Filings<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_CORPORATION');">Corporation Filings</a></TMPL_IF></li>
	   <li><TMPL_UNLESS DISABLE_BUS_CREDIT><a href="javascript:send_event('SEARCH/SHOW_EXPERIAN');">Experian Business Search</a><TMPL_ELSE>Experian Business Search</TMPL_UNLESS></li>
	   <li><TMPL_UNLESS DISABLE_FICTIOUS><a href="javascript:send_event('SEARCH/SHOW_FICTIOUS');">Fictitious Business Name Information</a><TMPL_ELSE>Fictitious Business Name Information</TMPL_UNLESS></li>
	   <li><TMPL_IF DISABLE_UCC>National UCC Filings<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_UCC');">National UCC Filings</a></TMPL_IF></li>
	   <TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_UNLESS DONT_SHOW_NEWS><li><TMPL_IF DISABLE_BUS_NEWS>Businesses in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS>
	   <TMPL_IF IS_BATCH_ADMIN><TMPL_UNLESS IS_RESELLER><li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('BATCH/BUS_START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Business Batching</a><TMPL_ELSE>Business Batching</TMPL_UNLESS></li></TMPL_UNLESS></TMPL_IF>
	   <TMPL_UNLESS RESTRICT_LNLP_CONTENT><li><TMPL_UNLESS DISABLE_SEC><a href="javascript:send_event('SEARCH/SHOW_SEC');">SEC Filings Search</a><TMPL_ELSE>SEC Filings Search</TMPL_UNLESS></li></TMPL_UNLESS>
	   <TMPL_UNLESS RESTRICT_LNLP_CONTENT><li><TMPL_UNLESS DISABLE_TRADEMARK><a href="javascript:send_event('SEARCH/SHOW_TRADEMARK');">Trademarks Search</a><TMPL_ELSE>Trademarks Search</TMPL_UNLESS></li></TMPL_UNLESS>
         </ul>
         <br>
         <div id="searchTitle">Directory Assistance</div>
         <ul>
            <!--
	    <li><TMPL_IF DISABLE_RT_PHONE>Real-Time Phones<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_RT_PHONE');">Real-Time Phones</a></TMPL_IF></li>
	    -->
            <li><TMPL_IF DISABLE_DA_WIRELESS>Phones Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DA_BASIC>Basic Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DA_REVERSE>Reverse Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></TMPL_IF></li>
         </ul>
         </td>
         <td valign="top">&nbsp;</td>
         <td valign="top">
         <ul>
	   <li><TMPL_IF DISABLE_CONCEALED_WEAPON>Concealed Weapons Permits<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON');">Concealed Weapons Permits</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_DEA>DEA Controlled Substances<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DEA');">DEA Controlled Substances</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_DL>Driver Licenses<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_LICENSE');">Driver Licenses</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_FAA_PILOT>FAA Pilots<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FAA_PILOT');">FAA Pilots</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_FIREARMS>Federal Firearms &amp; Explosives<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FIREARMS');">Federal Firearms &amp; Explosives</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_HUNTING_LICENSE>Hunting/Fishing Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE');">Hunting/Fishing Licenses</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_PROF_LICENSE>Professional Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_VOTER_REGISTRATION>Voter Registrations<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registrations</a></TMPL_IF></li>
         </ul>
         <TMPL_IF SHOW_BATCH_UPDATE>
         <br>
         <div id="searchTitle">Batch</div>
         <ul>
            <TMPL_IF SHOW_BATCH_UPDATE>
            <li><TMPL_IF ALLOW_BATCH_JOBS><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ORDER_MGR_BATCH','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');" title="View Saved Batch Results">Batch Output</a><TMPL_ELSE>Batch output</TMPL_IF></li>
            </TMPL_IF>
            <TMPL_IF SHOW_BATCH_UPDATE>
            <li><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('BATCH/SERVICES','BatchServices',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');" title="View Online Batch Services">Online Batch Services</a><TMPL_ELSE>Online Batch Services</TMPL_UNLESS></li>
            </TMPL_IF>
         </ul>
         </TMPL_IF>
         
         <TMPL_IF SHOW_IDM_ANALYSIS_SECTION>
             <br>
               <TMPL_IF SHOW_BIZ_ANALYTICS>
                 <TMPL_UNLESS HIDE_BIZ_ANALYTICS_USER>
                   <div id="searchTitle">Analytics</div>
                      <ul>
             	         <li>
                            <a href="javascript:show_post_popup('SEARCH/SHOW_BIZ_ANALYTICS','BusAnalyticsWin',850,650,1,1,1,1,1,0);">Business Integrity Solution</a>
                         </li>
                      </ul>
                 </TMPL_UNLESS>
               </TMPL_IF>
             <br>
         </TMPL_IF>

         </td>
         <td valign="top" width="1%">&nbsp;</td>
         <td valign="top">
         <ul>
	   <li><TMPL_IF DISABLE_BANKRUPTCY>Bankruptcy<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BANKRUPTCY');">Bankruptcy</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_CIVIL_COURT>Civil Courts<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT');">Civil Courts</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_CRIM>Criminal Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_CRIM');">Criminal Records</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_ACCIDENT>Florida Accidents<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ACCIDENT');">Florida Accidents</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_FORECLOSURE>Foreclosures<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_LIEN>Liens &amp; Judgments<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_LIENS');">Liens &amp; Judgments</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_MARRIAGE>Marriages / Divorces<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_MARRIAGE');">Marriages / Divorces</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_OFFICIAL_RECORDS>Official Records<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS');">Official Records</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_PATRIOTACT>USA PATRIOT Act<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');">USA PATRIOT Act</a></TMPL_IF></li>
	   <li><TMPL_IF DISABLE_SEXPREDATOR>Sexual Offenders<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR');">Sexual Offenders</a></TMPL_IF></li>
         </ul>
	 <br>
       <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
         <div id="searchTitle">News</div>
          <ul>
	    <li><TMPL_IF DISABLE_ARCHIVED_NEWS>Archived News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ARCHIVED_NEWS');">Archived News</a></TMPL_IF></li>
	    <li><TMPL_IF DISABLE_NON_US_NEWS>Non-U.S. News Publications<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NON_US_NEWS');">Non-U.S. News Publications</a></TMPL_IF></li>
	    <li><TMPL_IF DISABLE_TODAYS_NEWS>Todays News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_TODAYS_NEWS');">Todays News</a></TMPL_IF></li>
	    <li><TMPL_IF DISABLE_US_NEWS>U.S. News Publications<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_US_NEWS');">U.S. News Publications</a></TMPL_IF></li>
         </ul>
       </TMPL_UNLESS>
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
	<br><br><TMPL_INCLUDE NAME="search_inputs_myaccount_menu.tpl">
	<!-- End My Account section -->

	<!-- Start Security section -->
	<!--
	<div id="myAccount">
	  <div class="myAccountHdr">Security</div>
	  <ul>
	    <li><a href="javascript:void(0)" onClick="window.open('http://www.accurint.com/security_center');" title="Security Center">Security Center</a></li>
	    <li><a href="javascript:void(0)" onClick="general_win('http://www.accurint.com/security/Securityv1.htm','SecurityPresentation','1100','700',0,0,0,1,1,0);void(0);" title="Security Presentation">Security Presentation</a></li>
	  </ul>
	</div>	
	<div id="myAccountBot"></div>
	-->
	<!-- End Security section -->

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
