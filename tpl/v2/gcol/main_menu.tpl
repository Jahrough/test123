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

<!-- Custom Logo for Home Page -->
<style>
#hd { background:url(<TMPL_VAR NAME=IMGPATH>/gcol/1/ln_logo_home.gif) no-repeat; }
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
    	<strong>Today is <TMPL_VAR NAME=CURRENT_DATE></strong> | <a href="javascript:void(0);" onMouseOver="$('sec_rem').style.display = 'inline';setOpacity('sec_rem',0);fadeIn('sec_rem',100,2);">Security Reminder</a><br>
        You last signed in on <a class="adver" href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);"><TMPL_VAR NAME=LAST_LOGIN_DATE></a>
      </div>
      <div id="newsHdr">
        <div class="NewsHeader">
          <h2 align="left">New Products &amp; Announcements</h2>
          <div align="left"><span><a href="javascript:send_event('LOGIN/SHOW_WELCOME');">View Past Announcements</a></span></div>
        </div>
      </div>
      <div id="newsBlock">
        <div class="newsRightBkg">
	  <div id="bannerinfo">
	    <ul>
	      <li><strong><a href="http://solutions.lexisnexis.com/accurintforgovernmentcollections" target="_blank">Welcome to the new LexisNexis&reg; Accurint&reg; for Government Collections.  Please visit the resource center by clicking <u>here</u>.</a></strong></li>
	      <li><strong><a href="javascript:open_banner(4);">Important Security Message</a></strong></li>
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
      <div id="clear"></div>

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
              <li><TMPL_IF DISABLE_PERSON>Person Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEARCH');">Person Search</a></TMPL_IF></li>
               <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><li><TMPL_IF DISABLE_ADV>Deep Skip Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_ADV');">Deep Skip Search</a></TMPL_IF></li></TMPL_IF>
              <TMPL_IF SHOW_WORKPLACE_SEARCH>
              <li><TMPL_IF DISABLE_WORKPLACE>Workplace Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_WORKPLACE');">Workplace Locator</a></TMPL_IF></li>
              </TMPL_IF>
              <TMPL_IF SHOW_SOCIAL_REPORT><li><TMPL_IF DISABLE_SOC_REPORT>Social Network Report<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SOC');">Social Network Report</a></TMPL_IF></li></TMPL_IF>
	      <li><TMPL_IF DISABLE_PAW>People at Work Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PAW');">People at Work Locator</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_PATRIOTACT>USA PATRIOT Act<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');">USA PATRIOT Act</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_PROF_LICENSE>Professional Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_DL>Driver Licenses<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_LICENSE');">Driver Licenses</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_VOTER_REGISTRATION>Voter Registration Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registration Locator</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_REAL_PROPERTY>Real Property Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_REAL_PROPERTY');">Real Property Locator</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_RT_MVR>Motor Vehicle Locator<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_RT_MVR');">Motor Vehicle Locator</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_INSTANT_ID>InstantID<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_INSTANT_ID');">InstantID</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_DEATH>Death Records<TMPL_ELSE><a href="javascript:send_event('WS_SEARCH/SHOW_DEATH');">Death Records</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_EMAIL>Email Search<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_EMAIL');">Email Search</a></TMPL_IF></li>
              <TMPL_UNLESS RESTRICT_LNLP_CONTENT><TMPL_UNLESS DONT_SHOW_NEWS><li><TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></TMPL_IF></li></TMPL_UNLESS></TMPL_UNLESS>
            </ul>

            <strong>Phones</strong>
            <ul>
			<li><TMPL_IF DISABLE_RT_PHONE>Real-Time Phones<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_RT_PHONE');">Real-Time Phones</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_DA_WIRELESS>Phones Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_DA_BASIC>Basic Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_DA_REVERSE>Reverse Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></TMPL_IF></li>
	      <li><TMPL_IF DISABLE_CANADIAN_PHONES>Canadian Phones<TMPL_ELSE><a href="javascript:cp_modal('Canadian Phones Legal Disclaimer','',0.6,1,1,700);">Canadian Phones</a></TMPL_IF></li>
            </ul>

            <strong>Business Searches</strong>
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

            <strong>Batch</strong>
            <ul>
	      <li><TMPL_IF DISABLE_BATCH>Batch Services<TMPL_ELSE><a href="javascript:show_post_popup('AHASBATCH/SERVICES','BatchServices',800,600,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Batch Services</a></TMPL_IF></li>
              <TMPL_IF ALLOW_CDM>
               <INPUT type=hidden NAME="CDM_COMPANY_ID" VALUE="">
               <li><a href="javascript:show_post_popup('CDM/START_CDM','Core_Data_Management',1150,800,1,1,1,1,1,0);">Core Data Management</a></li>
              </TMPL_IF>
            </ul>
            
            <TMPL_IF SHOW_IDM_ANALYSIS_SECTION>
            </TMPL_IF>
            <TMPL_IF SHOW_BIZ_ANALYTICS>
               <strong>Analytics</strong>
               <ul>
               	      <li>
                           <a href="javascript:show_post_popup('SEARCH/SHOW_BIZ_ANALYTICS','BusAnalyticsWin',850,650,1,1,1,1,1,0);">Business Integrity Solution</a>
                        </li>
               </ul>
            </TMPL_IF>


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
              <li><TMPL_IF DISABLE_FCRA_REAL_PROPERTY>Real Property <span class="smalltxt">(Assessments, Deeds, and Mortgages)</span><TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FCRA_REAL_PROPERTY');">Real Property</a> <span class="smalltxt">(Assessments, Deeds, and Mortgages)</span></TMPL_IF></li>
              <li><TMPL_IF DISABLE_FCRA_VESSEL>Watercraft<TMPL_ELSE><a href="javascript:send_event('SEARCH2/SHOW_FCRA_VESSEL');">Watercraft</a></TMPL_IF></li>
              <li><TMPL_IF DISABLE_FCRA_AIRCRAFT>FAA Aircraft<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_FCRA_AIRCRAFT');">FAA Aircraft</a></TMPL_IF></li>
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
<TMPL_UNLESS BLIND>
<TMPL_UNLESS HIDE_RECENT_SEARCHES>
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

// hide show_fcra_rs() function below if non-fcra as well as two lines below it.
function show_fcra_rs()
{
	$('li_recentSearch').className = 'fc_nfc_inactive';
	$('nonFcraRecentSearch').style.display = 'none';
	$('li_fcra_recentSearch').className = 'fc_nfc_active';
	$('fcraRecentSearch').style.display = 'block';
}

<TMPL_IF NAME="FCRA_MODE">
show_fcra_rs();
<TMPL_ELSE>
show_rs();
</TMPL_IF>

if ($('li_recentSearch')) { $('li_recentSearch').observe('click', show_rs); }
if ($('li_fcra_recentSearch')) { $('li_fcra_recentSearch').observe('click', show_fcra_rs); }

</script>
</TMPL_UNLESS>
</TMPL_UNLESS>

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
