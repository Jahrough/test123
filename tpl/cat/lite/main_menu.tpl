<!-- begin lite/main_menu.tpl -->
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
            <td bgcolor="#ffffff" align="center" class="logo">Accurint for<br>Catastrophe Response</td>
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
	        <td><input class="bs" type="button" value="Coverage" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','680','425',1,1,1,1,1,0,'','<TMPL_VAR NAME=APPLICATION_TYPE>/main_coverage');" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td>
		<TMPL_UNLESS IS_RESELLER><TMPL_UNLESS HIDE_PRICES><td><input class="bs" type="button" value="Pricing" onClick="general_win('http://www.accurint.com/price2.html','PriceSchedule','','',1,1,1,1,1,0);void(0);" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td></TMPL_UNLESS></TMPL_UNLESS>
		<TMPL_UNLESS IS_RESELLER><td><input class="bs" type="button" value="Announcements" onClick="send_event('LOGIN/SHOW_WELCOME');" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td></TMPL_UNLESS>
		<TMPL_UNLESS IS_RESELLER><td><input class="bs" type="button" value="FAQs" onClick="show_post_popup('LOGIN/SHOW_POPUP','FAQMenuWindow','450','500',1,0,0,1,1,0,'','faq');" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td></TMPL_UNLESS>
	      </tr>
	    </table>
	    </td>
	    <td align="right">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
	        <td><input class="bs" type="button" value="Help" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','680','420',1,1,1,1,1,0,'','<TMPL_VAR NAME=APPLICATION_TYPE>/main_help');" onMouseOver="flip_style(this,'bso');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></a></td>
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


<table border="0" cellpadding="0" cellspacing="5">
  <tr>

    <!-- People and DA -->
    <td align="left" valign="top" width="120">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">

      <!-- People -->
      <tr>
        <td valign="top" align="left" width="120">
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
	  <tr class="people">
	    <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
	    <td height="40" colspan="3" align="center" valign="middle" class="unifont12white" width="100%"><b>people</b></td>
	    <td rowspan="3" class="unifont2" width="1">&nbsp;</td>
	  </tr>
	  <tr>
	    <td bgcolor="white" valign="top" align="left" colspan="3">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="161">
	      <tr>
	        <td valign="top" align="left">
		<table border="0" cellpadding="0" cellspacing="5" width="120">
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_PERSON>Person Search<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_SEARCH');">Person Search</a></TMPL_IF></td>
		  </tr>
		  <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH">
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_ADV>Advanced Person Search<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_ADV');">Advanced Person Search</a></TMPL_IF></td>
		  </tr>
		  </TMPL_IF>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>		
    <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_PAW>People at Work<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_PAW');">People at Work</a></TMPL_IF></td>
		  </tr>
		 
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" class="smallfont1grey"><TMPL_IF DISABLE_INSTANT_ID>InstantID<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_INSTANT_ID');">InstantID</a></TMPL_IF></td>
                  </tr>

	       <TMPL_UNLESS DONT_SHOW_NEWS> 
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>		
    <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_NEWS');">People in the News</a></TMPL_IF></td>
		  </tr>
		</TMPL_UNLESS>  

                <tr>
                   <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                   <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_UNLESS DISABLE_DEATH><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_DEATH');">Death Records</a><TMPL_ELSE>Death Records</TMPL_UNLESS></td>
                </tr>
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" class="smallfont1grey"><TMPL_IF DISABLE_EMAIL>Email Search<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_EMAIL');">Email Search</a></TMPL_IF></td>
                  </tr>
                </table>
                </td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	  <tr class="people">
	    <td height="15" class="unifont2" colspan="3">&nbsp;</td>
	  </tr>
	</table>
	</td>
      </tr>

      <tr>
        <td class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td class="unifont2"></td>
      </tr>


      <!-- DA -->
      <tr>
        <td valign="bottom" align="left" width="120">
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
	  <tr class="da">
	    <td rowspan="3" class="unifont2">&nbsp;</td>
	    <td height="40" align="center" valign="middle" class="unifont12white"><b>phones</b></td>
	    <td rowspan="3" class="unifont2">&nbsp;</td>
	  </tr>
	  <tr>
	    <td bgcolor="white" valign="top" align="left">
	    <table border="0" cellpadding="0" cellspacing="0" width="120" height="60">
	      <tr>
	        <td valign="top" align="left">
		<table border="0" cellpadding="0" cellspacing="5" width="120">
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_DA_WIRELESS>Phones Plus<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></TMPL_IF></td>
		  </tr>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_DA_BASIC>Basic Lookup<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></TMPL_IF></td>
		  </tr>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_DA_REVERSE>Reverse Lookup<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></TMPL_IF></td>
		  </tr>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_CANADIAN_PHONES>Canadian Phones<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH2/SHOW_CANADIAN_PHONES');">Canadian Phones</a></TMPL_IF></td>
		  </tr>
		</table>
		</td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	  <tr class="da">
	    <td height="15" class="unifont2" colspan="3">&nbsp;</td>
	  </tr>
	</table>
	</td>
      </tr>
    </table>
    </td>

    <!-- Business -->
    <td valign="top" align="left" width="120" height="100%">
    <table border="0" cellpadding="0" cellspacing="0" width="120" height="100%">
        

      <!-- Business -->
      <tr class="business" height="1%">
        <td rowspan="3" class="unifont2">&nbsp;</td>
	<td height="40" align="center" valign="middle" class="unifont12white"><b>businesses</b></td>
	<td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr height="98%">
        <td bgcolor="white" valign="top" align="left">
	   <table border="0" cellpadding="0" cellspacing="0" width="120" height="280">
	  <tr>
	    <td valign="top" align="left">
	    <table border="0" cellpadding="0" cellspacing="5" width="120">
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_BUS>Business Search<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_BUS');">Business Search</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_CORPORATION>Corporation Filings<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_CORPORATION');">Corporation Filings</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_UCC>National UCC Filings<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_UCC');">National UCC Filings</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_WHOIS>Internet Domains<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_WHOIS');">Internet Domains</a></TMPL_IF></td>
	      </tr>

	      <TMPL_UNLESS IS_RESELLER>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_BUS_CREDIT>Business Credit<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_BUS_CREDIT');">Business Credit</a></TMPL_IF></td>
	      </tr>
	      </TMPL_UNLESS>
	     
	    <TMPL_UNLESS DONT_SHOW_NEWS> 
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_BUS_NEWS>Businesses in the News<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a></TMPL_IF></td>
	      </tr>
	    </TMPL_UNLESS>
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_BUS_INSTANT_ID>Business InstantID<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_BUS_INSTANT_ID');">Business InstantID</a></TMPL_IF></td>
		  </tr>
	      
	    </table>
	    </td>
	  </tr>
	</table>
	</td>
      </tr>
      <tr class="business" height="1%">
        <td height="15" class="unifont2" colspan="3">&nbsp;</td>
      </tr>
    </table>
    </td>
    <!-- End of Business -->
    

    <!-- Assets -->
    <td valign="top" align="left" width="120" height="100%">
    <table border="0" cellpadding="0" cellspacing="0" width="120" height="100%">
      <tr class="asset" height="1%">
        <td rowspan="3" class="unifont2">&nbsp;</td>
	<td height="40" align="center" valign="middle" class="unifont12white"><b>assets</b></td>
	<td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr height="98%">
        <td bgcolor="white" valign="top" align="left">
	<table border="0" cellpadding="0" cellspacing="0" width="120" height="280">
	  <tr>
	    <td valign="top" align="left">
	    <table border="0" cellpadding="0" cellspacing="5" width="120">
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_MV>Motor Vehicles<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_DL_REG');">Motor Vehicles</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_ASSESSMENT>Property Assessments<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_PROP');">Property Assessments</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_DEEDS>Property Deeds<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_PROP_DEED');">Property Deeds</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_VESSEL>Watercraft<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_VESSEL');">Watercraft</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_AIRCRAFT>FAA Aircraft<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_AIRCRAFT');">FAA Aircraft</a></TMPL_IF></td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	</table>
	</td>
      </tr>
      <tr class="asset" height="1%">
        <td height="15" class="unifont2" colspan="3">&nbsp;</td>
      </tr>
    </table>
    </td>

    <!-- Licenses -->
    <td valign="top" align="left" width="120" height="100%">
    <table border="0" cellpadding="0" cellspacing="0" width="120" height="100%">
      <tr class="license" height="1%">
        <td rowspan="3" class="unifont2">&nbsp;</td>
	<td height="40" align="center" valign="middle" class="unifont12white"><b>licenses</b></td>
	<td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr height="98%">
        <td bgcolor="white" valign="top" align="left">
	<table border="0" cellpadding="0" cellspacing="0" width="120" height="280">
	  <tr>
	    <td valign="top" align="left">
	    <table border="0" cellpadding="0" cellspacing="5" width="120">
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_DL>Driver Licenses<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_LICENSE');">Driver Licenses</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_PROF_LICENSE>Professional Licenses<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_FAA_PILOT>FAA Pilots<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_FAA_PILOT');">FAA Pilots</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_HUNTING_LICENSE>Hunting/Fishing Licenses<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_HUNTING_LICENSE');">Hunting/Fishing Licenses</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_CONCEALED_WEAPON>Concealed<br>&nbsp;Weapons Permits<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_CONCEALED_WEAPON');">Concealed<br>&nbsp;Weapons Permits</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_VOTER_REGISTRATION>Voter Registrations<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('WS_SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registrations</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_FIREARMS>Federal Firearms &amp; Explosives<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_FIREARMS');">Federal Firearms &amp; Explosives</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_DEA>DEA Controlled Substances<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_DEA');">DEA Controlled Substances</a></TMPL_IF></td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	</table>
	</td>
      </tr>
      <tr class="license" height="1%">
        <td height="15" class="unifont2" colspan="3">&nbsp;</td>
      </tr>
    </table>
    </td>

    <!-- Courts -->
    <td valign="top" align="left" width="120" height="100%">
    <table border="0" cellpadding="0" cellspacing="0" width="120" height="100%">
      <tr class="court" height="1%">
        <td rowspan="3" class="unifont2">&nbsp;</td>
	<td height="40" align="center" valign="middle" class="unifont12white"><b>courts</b></td>
	<td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr height="98%">
	<td bgcolor="white" valign="top" align="left">
	<table border="0" cellpadding="0" cellspacing="0" width="120" height="280">
	  <tr>
	    <td valign="top" align="left">
	    <table border="0" cellpadding="0" cellspacing="5" width="120">
	      <tr>
		<td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_BANKRUPTCY>Bankruptcy<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_BANKRUPTCY');">Bankruptcy</a></TMPL_IF></td>
	      </tr>
	      <tr>
		<td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_CRIM>Criminal Records<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_CRIM');">Criminal Records</a></TMPL_IF></td>
	      </tr>
	      <tr>
		<td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_CIVIL_COURT>Civil Courts<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_CIVIL_COURT');">Civil Courts</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_ACCIDENT>Florida Accidents<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_ACCIDENT');">Florida Accidents</a></TMPL_IF></td>
	      </tr>
	      <tr>
		<td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_PATRIOTACT>Patriot Act<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_PATRIOTACT');">Patriot Act</a></TMPL_IF></td>
	      </tr>
	      <tr>
		<td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_SEXPREDATOR>Sexual Offenders<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_SEXPREDATOR');">Sexual Offenders</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_OFFICIAL_RECORDS>Official Records<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_OFFICIAL_RECORDS');">Official Records</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_MARRIAGE>Marriages / Divorces<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_MARRIAGE');">Marriages / Divorces</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_FORECLOSURE>Foreclosures<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a></TMPL_IF></td>
	      </tr>
	      <tr>
	        <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		<td valign="top" align="left" width="116" class="smallfont1grey"><TMPL_IF DISABLE_LIEN>Liens &amp; Judgments<TMPL_ELSE><a class="mainmenu" href="javascript:send_event('SEARCH/SHOW_LIENS');">Liens &amp; Judgments</a></TMPL_IF></td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	</table>
	</td>
      </tr>
      <tr class="court" height="1%">
        <td height="15" class="unifont2" colspan="3">&nbsp;</td>
      </tr>
    </table>
    </td>

    <!-- My Account -->
    <td valign="top" align="left" width="120" height="100%">
    <table border="0" cellpadding="0" cellspacing="0" width="120" height="100%">
      <tr class="myaccount" height="1%">
        <td rowspan="3" class="unifont2">&nbsp;</td>
	<td height="40" align="center" valign="middle" class="unifont12white"><b>my account</b></td>
	<td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr height="98%">
        <td bgcolor="white" valign="top" align="left">
	<table border="0" cellpadding="0" cellspacing="0" width="120" height="280">
	  <tr>
	    <td valign="top" align="left">
	    <table border="0" cellpadding="0" cellspacing="5" width="120">
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:show_post_popup('MYACCOUNT/SHOW_PROFILE','MyAccountWin','','',1,1,1,1,1,0);" title="Company Information, User&#10;Information and Sales Contact">Summary</a></td>
              </tr>
              <TMPL_IF NAME=SA><tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:show_post_popup('MANAGE/MANAGE_ACCOUNTS','MyAccountWin','','',1,1,1,1,1,0);" title="Add User, Change User Passwords and Enable / Disable&#10;Report / Search Settings For a User">Manage Users</a></td>
              </tr></TMPL_IF>
              <TMPL_IF NAME=SA><TMPL_UNLESS NAME="MANAGE_COMPANY_DISABLED"><tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:show_post_popup('SECURITY/SHOW_COMPANY_SECURITY','MyAccountWin','','',1,1,1,1,1,0);" title="Enable / Disable Report and Search&#10;Settings For This Company">Manage Company</a></td>
              </tr></TMPL_UNLESS></TMPL_IF>
              <TMPL_UNLESS NAME="DISABLE_USER_PASSWORD_CHANGES">
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:show_post_popup('MANAGE/MANAGE_SINGLE_ACCOUNT','MyAccountWin','','',1,1,1,1,1,0);" title="Change User Password">Change Password</a></td>
              </tr>
              </TMPL_UNLESS>
              <TMPL_IF NAME=SA><tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:show_post_popup('BILLING/SUMMARY','MyAccountWin','','',1,1,1,1,1,0);" title="Account Summary, Account History&#10;and Post Payments">Billing Info</a></td>
              </tr></TMPL_IF>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:show_post_popup('MYACCOUNT/SHOW_ACTIVITY','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');" title="View User Activity">Activity</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:show_post_popup('SECURITY/SHOW_SECURITY','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');" title="View User Login Information">Company Security</a></td>
              </tr>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);" title="Report and Other User Preferences">Preferences</a></td>
              </tr>
              <TMPL_IF NAME="SHOW_REPORT_MANAGER">
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:show_post_popup('MYACCOUNT/SHOW_ORDER_MGR','MyAccountWin','','',1,1,1,1,1,0);" title="View Saved Online Reports&#10;and Court Search Reports">Report Manager</a></td>
              </tr>
              </TMPL_IF>
              <TMPL_IF NAME=SA>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','AdminContactUsWin','450','500',0,0,0,0,0,0,'','customer_support');" title="Customer Support For&#10;Administrator Accounts">Accurint Customer Support</a></td>
              </tr>
              </TMPL_IF>
              <TMPL_UNLESS IS_RESELLER>
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','FAQMenuWindow','450','500',1,0,0,1,1,0'','faq');" title="Frequently Asked Questions">Frequently Asked Questions</a></td>
              </tr>
              </TMPL_UNLESS>
	    </table>
	    </td>
	  </tr>
	</table>
	</td>
      </tr>
      <tr class="myaccount" height="1%">
        <td height="15" class="unifont2" colspan="3">&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</form> 
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</body>
</html>
<!-- end lite/main_menu.tpl -->
