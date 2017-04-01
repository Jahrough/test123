<!-- begin permitted_use_dmf.tpl-->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Permitted Use Certification</title>
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
    document.DMF.DMF_PURPOSE.value = button_number;
    document.DMF.EVENT.value = 'SEARCH/SAVE_DMF';
    <TMPL_IF CLOSE_WINDOW>opener.document.getElementById("dmf_reason").innerHTML  = get_dmf(button_number);
    document.DMF.CLOSE_WINDOW.value = 1;</TMPL_IF>
    document.forms[0].submit();

}
</script>
<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody_v2">
<div id="hd">
  <h2>LexisNexis Accurint for Collections</h2>
</div>

<form name="DMF" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" name="DMF_PURPOSE" value="<TMPL_VAR NAME=DMF_PURPOSE>">
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
	<td align="left" id="searchResults"><h2>Permitted Use Certification&nbsp; &nbsp; <small><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/glb_dppa_faq.html','GLBDPPA','','',0,0,0,1,1,0);void(0);"><b><u>What's This?</u></b></a></small></h2></td>
	</tr>

	<tr>
	<td class="medblack" align="left"> This service may contain information from the NTIS Limited Access Death Master File (DMF).&nbsp;&nbsp;In accordance with the requirements for accessing the DMF, PLEASE SELECT the purpose for your access to this information.&nbsp;&nbsp;The purpose you select will govern this entire session.&nbsp;&nbsp;If the purpose for which you are conducting searches changes, you will need to begin a new session and select another purpose. </td>
	</tr>

  <tr>
    <td width="100%" align="center" valign="top">
    <table border="0" width="90%" cellpadding="6" cellspacing="0">
      <tr>
        <td class="medblack" width="90%" align="left">
  <TMPL_IF NAME=DMF_PURPOSE_LEVEL_10>
	<a class="phone_searches" href="javascript:setchecked('10');">Click to Continue &mdash; Legitimate Fraud Prevention Interest</a>
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=DMF_PURPOSE_LEVEL_01>
        <a class="phone_searches" href="javascript:setchecked('01');">Click to Continue &mdash; Legitimate Business Purpose Pursuant to a Law, Government Rule, Regulation, or Fiduciary Duty</a>
	<br><br>
  </TMPL_IF>
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
<!-- end permitted_use_dmf.tpl-->

