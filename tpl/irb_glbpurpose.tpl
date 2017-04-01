<!-- begin irb_glbpurpose.tpl-->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Permitted Use Certification</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script language="JavaScript">
function setchecked(button_number)
{
    document.GLB.GLB_PURPOSE.value = button_number;
    document.GLB.EVENT.value = 'SEARCH/SHOW_DPPA';
    document.forms[0].submit();
    <TMPL_IF CLOSE_WINDOW>opener.document.getElementById("glb_reason").innerHTML  = get_glb(button_number);
    window.close();</TMPL_IF>

}
</script>
<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="GLB" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" name="GLB_PURPOSE" value="<TMPL_VAR NAME=GLB_PURPOSE>">
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<div align="center">
<br>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="glbtitle"><B>Permitted Use Certification</B></td>
    <td class="smallfont1">&nbsp; &nbsp; <a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/glb_dppa_faq.html','GLBDPPA','','',0,0,0,1,1,0);void(0);"><b><u>What's This?</b></u></a></td>
  </tr>
</table>
<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td class="unifont1" width="680" align="left">
    This service may contain information governed by the Gramm-Leach-Bliley Act (GLBA).&nbsp;&nbsp;In accordance with the GLBA, <b>PLEASE SELECT</b> the purpose for which you intend to utilize this information.&nbsp;&nbsp;The purpose you select will govern this entire session.&nbsp;&nbsp;If the purpose for which you are conducting searches changes, you will need to exit the system, re-login, and select another purpose. 
    </td>
  </tr>
  <tr>
    <td width="680" align="center" valign="top">
    <table border="0" width="600" cellpadding="6" cellspacing="0">
      <tr>
        <td class="unifont1" width="600" align="left">
  <TMPL_IF NAME=GLB_PURPOSE_LEVEL_01>
	<a class="glb" href="javascript:setchecked(1);">Click to Continue Transactions Authorized by Consumer</a>
	<br>
	As necessary to effect, administer, or enforce a transaction requested or authorized by the consumer
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=GLB_PURPOSE_LEVEL_11>
	<a class="glb" href="javascript:setchecked(11);">Click to Continue Transactions Authorized by Consumer (Application Verification Only)</a>
	<br>
	As necessary to effect, administer, or enforce a transaction requested or authorized by the consumer by verifying the identification information contained in applications
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=GLB_PURPOSE_LEVEL_02>
        <TMPL_IF NAME="GLB_DPPA_LAW_ENFORCEMENT_ALLOWED">
        <a class="glb" href="javascript:setchecked(2);">Click to Continue Law Enforcement Purposes</a>
        <TMPL_ELSE>
        <a class="glb_dppa_disabled" href="javascript:alert('The law enforcement purpose is limited to users listed in our records as law enforcement.');">Click to Continue Law Enforcement Purposes</a>
        </TMPL_IF>
	<br>
	To the extent specifically permitted or required under other provisions of law and in accordance with the Right to Financial Privacy Act of 1978, to law enforcement agencies, self-regulatory organizations, or for an investigation on a matter related to public safety
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=GLB_PURPOSE_LEVEL_03>
	<a class="glb" href="javascript:setchecked(3);">Click to Continue Use by Persons Holding a Legal or Beneficial Interest Relating to the Consumer</a>
	<br>
	For use by persons holding a legal or beneficial interest relating to the consumer
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=GLB_PURPOSE_LEVEL_12>
	<a class="glb" href="javascript:setchecked(12);">Click to Continue Use by Persons Acting in a Fiduciary Capacity on Behalf of the Consumer</a>
	<br>
	For use by persons acting in a fiduciary or representative capacity on behalf of the consumer
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=GLB_PURPOSE_LEVEL_05>
	<a class="glb" href="javascript:setchecked(5);">Click to Continue Fraud Prevention or Detection</a>
	<br>
	For use to protect against or prevent actual or potential fraud, unauthorized transactions, claims, or other liability
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=GLB_PURPOSE_LEVEL_06>
	<a class="glb" href="javascript:setchecked(6);">Click to Continue Required Institutional Risk Control</a>
	<br>
	For required institutional risk control, or for resolving customer disputes or inquiries
	<br><br>
  </TMPL_IF>
  <TMPL_IF NAME=GLB_PURPOSE_LEVEL_07>
	<a class="glb" href="javascript:setchecked(7);">Click to Continue Legal Compliance</a>
	<br>
	For use to comply with Federal, State, or local laws, rules, and other applicable legal requirements
	<br><br>
  </TMPL_IF>
	<a class="glb" href="javascript:setchecked(0);">I Have No Permissible Purpose</a>
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
<!-- end irb_glbpurpose.tpl-->

