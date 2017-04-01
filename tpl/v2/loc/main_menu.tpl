<!-- begin loc/main_menu.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html><head>
<title>LexisNexis&reg; | Accurint Main Menu</title>

<link href="<tmpl_var csspath>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/accurintHomePage.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/diff.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<!--<script src="<TMPL_VAR NAME='JSPATH'>/rotate_banners2.js"></script>-->

<TMPL_INCLUDE NAME="main_menu_banners.tpl">

<script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/misc.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>
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
    <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><INPUT type=hidden NAME="ADVANCED_SEARCH" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>"></TMPL_IF>
    <TMPL_IF NAME="ALERTING_NEW_COUNT">
    <INPUT type=hidden NAME="ALERTING_NEW_COUNT" id="ALERTING_NEW_COUNT" VALUE="<TMPL_VAR NAME=ALERTING_NEW_COUNT>">
    </TMPL_IF>


<table width="100%">
  <tbody><tr>
    <td id="containerLeft" align="left" valign="top">

      <div class="greeting">
        <strong>Today is <TMPL_VAR NAME=CURRENT_DATE></strong> | <a href="javascript:void(0);" onMouseOver="$('sec_rem').style.display = 'inline';">Security Reminder</a><br>
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
            <ul>
	    <li><strong>No Announcements available</strong></li>
            </ul>
            <br>
        </div>
      </div>
      <div id="newsBot">
        <div class="newsBottom"></div>
      </div>
      <div id="clear"></div>


<!-- START Accurint searches table -->
     <table id="searches" cellpadding="2" cellspacing="0">
      <tbody><tr>
         <td colspan="7"><h2>Available Accurint Locator Searches</h2></td>
      </tr>
      <tr>
         <td width="23%"><div id="searchTitle">People</div> </td>
         <td width="2%">&nbsp;</td>
         <td width="23%"><div id="searchTitle">Businesses</div></td>
         <td width="2%">&nbsp;</td>
         <td width="23%"><div id="searchTitle">Phones</div></td>
      </tr>
      <tr>
         <td valign="top">
         <ul>
            <li><TMPL_IF DISABLE_PERSON>Find a Person<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_SEARCH');">Find a Person</a></TMPL_IF></li>
         </ul>

         <p>&nbsp;</p>
	 </td>

         <td valign="top">&nbsp;</td>
         <td valign="top">
         <ul>
            <li><TMPL_IF DISABLE_BUS>Find a Business <TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_BUS');">Find a Business</a></TMPL_IF></li>
         </ul>
         <br>
        </td>
         <td valign="top">&nbsp;</td>
         <td valign="top">
         <ul>
            <li><TMPL_IF DISABLE_DA_BASIC>Find a Phone<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Find a Phone</a></TMPL_IF></li>
         </ul>
         <br>
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
	<TMPL_INCLUDE NAME="loc/search_inputs_myaccount_menu.tpl">
	<!-- End My Account section -->

	<!-- Start Admin section -->
	<div id="myAccount">
		<div class="myAccountHdr">Administration</div>
		<ul>
		<li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_PROFILE','MyAccountWin','','',1,1,1,1,1,0)">Summary</a></li>

		<TMPL_IF NAME=SA><li><a href="javascript:show_post_popup('MANAGE/MANAGE_ACCOUNTS','MyAccountWin','','',1,1,1,1,1,0);">Manage Users</a> </li></TMPL_IF>

		<TMPL_IF NAME=SA><TMPL_UNLESS NAME="MANAGE_COMPANY_DISABLED">
		   <li><a href="javascript:show_post_popup('SECURITY/SHOW_COMPANY_SECURITY','MyAccountWin','','',1,1,1,1,1,0);">Manage Company</a></li>
		</TMPL_UNLESS></TMPL_IF>

		<TMPL_IF SA><li><a href="javascript:show_post_popup('BILLING/SUMMARY','MyAccountWin','','',1,1,1,1,1,0);">Billing Info</a></li></TMPL_IF>

		<li><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ACTIVITY','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');">Activity</a></li>
		<li><a href="javascript:show_post_popup('SECURITY/SHOW_SECURITY','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');">Company Security</a></li>

		</ul>
	</div>
	<div id="myAccountBot"></div>
	<!-- End Admin section -->

	<!-- Start Recent Searches section -->
	<TMPL_INCLUDE NAME="search_inputs_recent_searches.tpl">

	<TMPL_UNLESS DISABLE_LN_INV_NETWORK>
	    <TMPL_INCLUDE NAME="investigators_network_ad.tpl">
	</TMPL_UNLESS>
	<!-- END DIV for right column content container --></td>
</div>


</tr>
</tbody></table>
</div><!-- END wrapper DIV -->
<div id="sec_rem" onMouseOut="this.style.display = 'none';">
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
</body></html>
