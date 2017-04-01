<!-- begin equifax_credit_permitted_use.tpl -->
<html>
<head>
<title>Permitted Use</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script language="JavaScript">
function setchecked(button_number)
{
    document.PERMITTED.PERMITTED_PURPOSE.value = button_number;
    document.PERMITTED.EVENT.value = 'SEARCH/SHOW_EQUIFAX_CREDIT';
    document.forms[0].submit();

}
</script>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >
<!--<TMPL_VAR NAME=SERVER_ID>-->

<form name="PERMITTED" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
    <input type="hidden" name="PERMITTED_PURPOSE" value="">
<div align="center">
<br>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td style="font-family: helvetica,arial; font-size: 12pt; color: #003399;"><B>Permitted Use Certification</B></td>
  </tr>
</table>
<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td class="unifont1" width="680" align="left">
This service contains information governed by the Fair Credit Reporting Act (FCRA). In accordance with the FCRA, PLEASE SELECT the permissible purpose for which you intend to utilize the information. The purpose you select will govern this entire session. If the purpose for which you are conducting searches changes, you will need to exit the system, re-login, and select another purpose.
    </td>
  </tr>
</table>
<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td class="unifont1" width="680" align="left">
<a class="glb" href="javascript:setchecked(4)">Collection:</a> In connection with a collection transaction involving the consumer for the collection of an account of the consumer.
    </td>
  </tr>
  <tr>
    <td class="unifont1" width="680" align="left">
<a class="glb" href="javascript:setchecked(5)">Child support:</a> In response to an agency administering a state plan under Section 454 of the Social Security Act (42 U.S.C. 654) for use to set an initial or modified child support award. 
    </td>
  </tr>
  <tr>
    <td class="unifont1" width="680" align="left">
<a class="glb" href="javascript:setchecked(7)">Child support:</a> In response to a request by the head of a state or local child support enforcement agency (or a state or local government official authorized by the head of such an agency) that has met all requirements of Section 604(a)(4)(A,B,C).
    </td>
  </tr>
  <tr>
    <td class="unifont1" width="680" align="left">
<a class="glb" href="javascript:setchecked(8)">Credit transaction not covered by a more specific code:</a> In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer. For use only when the transaction cannot be described with a more specific code.
    </td>
  </tr>
  <tr>
    <td class="unifont1" width="680" align="left">
<a class="glb" href="javascript:setchecked(10)">Government license or benefit:</a> In connection with a determination of eligibility for a license or other benefit granted by a governmental instrument required by law to consider financial responsibility or status.
    </td>
  </tr>
  <tr>
    <td class="unifont1" width="680" align="left">
<a class="glb" href="javascript:setchecked(14)">Court order / subpoena:</a> In response to the order of a court having jurisdiction or a subpoena issued by a federal grand jury.
    </td>
  </tr>
  <tr>
    <td class="unifont1" width="680" align="left">
<a class="glb" href="javascript:setchecked(57)">Credit transaction on a mortgage loan origination:</a> In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer related to a mortgage loan origination.
    </td>
  </tr>
  <tr>
    <td class="unifont1" width="680" align="left">
<a class="glb" href="javascript:setchecked(73)">Housing counseling agency:</a> For use by a housing counseling agency where the consumer has provided his / her specific consent.
    </td>
  </tr>
</table>
<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td class="unifont1" width="680" align="left">
By inputting your response and proceeding with your search, you hereby certify to Lexis Nexis that you are in, and assume full responsibility for, compliance with the FCRA, and in accordance with the Public Records Products Application and Agreement, you agree to indemnify, defend and hold Lexis Nexis, its affiliates and assigns, harmless from any breach of the FCRA by you, your agents or contractors and any damages, fees and costs associated therewith.
    </td>
  </tr>
</table>
</div>
</form> 
</body>
</html>
<!-- end equifax_credit_permitted_use.tpl -->
