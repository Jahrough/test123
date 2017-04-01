<!-- begin bps_dppa.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>DPPA Permitted Use Certification</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/dppa_info.js"></script>
<script language="JavaScript">
function setchecked(button_number)
{
    document.DPPA.DPPA.value = button_number;
    document.DPPA.EVENT.value = 'SEARCH/SAVE_DPPA';
    document.forms[0].submit();
    <TMPL_IF CLOSE_WINDOW>opener.document.getElementById("dppa_reason").innerHTML  = get_dppa(button_number);
    window.close();</TMPL_IF>
	
}
</script>
<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>

<form name="DPPA" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" name="DPPA" value="<TMPL_VAR NAME=DPPA>">
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">
<div align="center">
<br>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="glbtitle"><B>DPPA Compliance</B></td>
    <td class="smallfont1">&nbsp; &nbsp; <a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/glb_dppa_faq.html','GLBDPPA','','',0,0,0,1,1,0);void(0);"><b><u>What's This?</u></b></a></td>
  </tr>
</table>
<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td class="unifont1" width="680" align="left">
    This service may contain information governed by the Driver's Privacy Protection Act of 1994 (DPPA).&nbsp;&nbsp;Pursuant to the DPPA, you may only access this database for one of the permitted uses set forth below.&nbsp;&nbsp;The purpose you select will govern this entire session.&nbsp;&nbsp;If the purpose for which you are conducting searches changes, you will need to exit the system, re-login, and select another purpose.
    <br><br>
    Click <img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"> for additional information relating to the Florida DPPA.
    </td>
  </tr>
  <tr>
    <td width="680" align="center" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="unifont1">
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_01>
        <TMPL_IF NAME="GLB_DPPA_LAW_ENFORCEMENT_ALLOWED">
        <a class="glb" href="javascript:setchecked(1);">Click to Continue Court, Law Enforcement, or Government Agencies</a>
        <TMPL_ELSE>
        <a class="glb_dppa_disabled" href="javascript:alert('The law enforcement purpose is limited to users listed in our records as law enforcement.');">Click to Continue Court, Law Enforcement, or Government Agencies</a>
        </TMPL_IF>
	<br>
	Use by a court, law enforcement agency or other government agency or entity, acting directly on behalf of a government agency.
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_02>
	<a class="glb" href="javascript:setchecked(2);">Click to Continue Motor Vehicle Safety or Theft</a>
	<br>
	Use for any matter regarding motor vehicle or driver safety or theft (except by motor vehicle manufacturers).
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_03>
	<a class="glb" href="javascript:setchecked(3);">Click to Continue Use in the Normal Course of Business</a>
	<br>
	For use in the normal course of business but only to verify the accuracy of personal information submitted by the individual to the business; and if the submitted information is incorrect, to obtain the correct information, but only for the purposes of preventing fraud by, pursuing legal remedies against, or recovering on a debt or security interest against, the individual.
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_04>
	<a class="glb" href="javascript:setchecked(4);">Click to Continue Civil, Criminal, Administrative, or Arbitral Proceedings</a>
	<br>
	Use in connection with a civil, criminal, administrative, or arbitral proceeding, including the service of process, investigation in anticipation of litigation, the execution or enforcement of judgments, or compliance with the orders of any court.&nbsp;&nbsp;<a href="javascript:show_more(4);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Information"></a>
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_05>
	<a class="glb" href="javascript:setchecked(5);">Click to Continue Commercial Driver's License</a>
	<br>
	Use by an employer or its agents or insurer to obtain or verify information relating to a holder of a commercial driver's license that is required under chapter 313 of title 49 of the United States Code.
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_06>
	<a class="glb" href="javascript:setchecked(6);">Click to Continue Insurance</a>
	<br>
	Use by an insurer or insurance support organization, in connection with claims investigation activities or antifraud activities.
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_07>
	<a class="glb" href="javascript:setchecked(7);">Click to Continue Licensed Private Investigative or Security Services</a>
	<br>
	Use by a licensed private investigative agency, or licensed security service, for a purpose permitted above.
	<br><br>
  </TMPL_IF>
	<a class="glb" href="javascript:setchecked(8);">I Have No Permissible Purpose</a>
	</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="unifont1" width="680"><TMPL_INCLUDE NAME="glba_dppa_generic_disclaimer.tpl"></td>
  </tr>
</table>
</div>
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</form> 
</body>
</html>
<!-- end bps_dppa.tpl -->
