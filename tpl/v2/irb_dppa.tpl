<!-- begin irb_dppa.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>DPPA Permitted Use Certification</title>
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script language="JavaScript">
function setchecked(button_number)
{
    document.DPPA.DPPA.value = button_number;
    document.DPPA.EVENT.value = 'SEARCH/SAVE_DPPA';
    <TMPL_IF CLOSE_WINDOW>opener.document.getElementById("dppa_reason").innerHTML  = get_dppa(button_number);
    document.DPPA.CLOSE_WINDOW.value = 1;</TMPL_IF>
    document.forms[0].submit();
	
}
</script>
<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody_v2">

<div id="hd">
  <h2>LexisNexis Accurint for Collections</h2>
</div>

<form name="DPPA" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" name="DPPA" value="<TMPL_VAR NAME=DPPA>">
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
    <input type="hidden" name="CLOSE_WINDOW" value="0">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">
    <INPUT type=hidden NAME="MYACCTAB" VALUE="<TMPL_VAR NAME=MYACCTAB>">

<div align="center">

<table border="0" cellpadding="5" cellspacing="0" width="90%">

  <tr>
    <td align="left" id="searchResults"><h2>DPPA Compliance&nbsp; &nbsp; <small><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/glb_dppa_faq.html','GLBDPPA','','',0,0,0,1,1,0);void(0);"><u><b>What's This?</b></u></a></small></h2></td>
  </tr>
  <tr>
    <td class="medblack" align="left"> 
    This service may contain information governed by the Driver's Privacy Protection Act of 1994 (DPPA).&nbsp;&nbsp;Pursuant to the DPPA, you may only access this database for one of the permitted uses set forth below.&nbsp;&nbsp;The purpose you select will govern this entire session.&nbsp;&nbsp;If the purpose for which you are conducting searches changes, you will need to exit the system, re-login, and select another purpose.
    <br><br>
    Click <img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" border="0" width="14" height="13"> for additional information relating to the Florida DPPA.
    </td>
  </tr>

  <tr>
    <td width="100%" align="center" valign="top">
    <table border="0" cellpadding="6" cellspacing="0" width="90%">
      <tr>
        <td class="medblack" width="90%" align="left">
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_01>
        <TMPL_IF NAME="GLB_DPPA_LAW_ENFORCEMENT_ALLOWED">
	<a class="phone_searches" href="javascript:setchecked(1);">Click to Continue Court, Law Enforcement, or Government Agencies</a>
        <TMPL_ELSE>
        <a class="glb_dppa_disabled" href="javascript:glba_dppa_law_alert();">Click to Continue Court, Law Enforcement, or Government Agencies</a>
        </TMPL_IF>
	<br>
	Use by a court, law enforcement agency or other government agency or entity, acting directly on behalf of a government agency.
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_02>
	<a class="phone_searches" href="javascript:setchecked(2);">Click to Continue Motor Vehicle Safety or Theft</a>
	<br>
	Use for any matter regarding motor vehicle or driver safety or theft (except by motor vehicle manufacturers).
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_03>
	<a class="phone_searches" href="javascript:setchecked(3);">Click to Continue Use in the Normal Course of Business</a>
	<br>
	For use in the normal course of business but only to verify the accuracy of personal information submitted by the individual to the business; and if the submitted information is incorrect, to obtain the correct information, but only for the purposes of preventing fraud by, pursuing legal remedies against, or recovering on a debt or security interest against, the individual.
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_04>
	<a class="phone_searches" href="javascript:setchecked(4);">Click to Continue Civil, Criminal, Administrative, or Arbitral Proceedings</a>
	<br>
	Use in connection with a civil, criminal, administrative, or arbitral proceeding, including the service of process, investigation in anticipation of litigation, the execution or enforcement of judgments, or compliance with the orders of any court.&nbsp;&nbsp;<a href="javascript:dppa_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" border="0" width="14" height="13" alt="More Information"></a>
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_05>
	<a class="phone_searches" href="javascript:setchecked(5);">Click to Continue Commercial Driver's License</a>
	<br>
	Use by an employer or its agents or insurer to obtain or verify information relating to a holder of a commercial driver's license that is required under chapter 313 of title 49 of the United States Code.
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_06>
	<a class="phone_searches" href="javascript:setchecked(6);">Click to Continue Insurance</a>
	<br>
	Use by an insurer or insurance support organization, in connection with claims investigation activities or antifraud activities.
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_07>
	<a class="phone_searches" href="javascript:setchecked(7);">Click to Continue Licensed Private Investigative or Security Services</a>
	<br>
	Use by a licensed private investigative agency, or licensed security service, for a purpose permitted above.
	<br><br>
  </TMPL_IF>
	<a class="phone_searches" href="javascript:setchecked(8);">I Have No Permissible Purpose</a>
	</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
     <td class="smallblack2" align="left"><div id="lineVertRedDot"></div><TMPL_INCLUDE NAME="glba_dppa_generic_disclaimer.tpl"></td>
  </tr>
</table>
</div>
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</form> 

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<!-- end irb_dppa.tpl -->
