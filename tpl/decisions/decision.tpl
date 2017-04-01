<!-- BEGIN decision.tpl -->
<html>
<head>
<title>Selection</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/style_decision.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/decision.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<form name="DECISION">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <INPUT type=hidden NAME="ENABLE_V2" VALUE="<TMPL_VAR NAME=ENABLE_V2>">
	    
<table border="0" cellpadding="0" cellspacing="0" width="600">
  <tr bgcolor="#000000">
    <td width="600"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="600" height="2" border="0"></td>
  </tr>
  <tr class="searchdecisiontitlebox">
    <td width="600" align="center" class="style1" height="20">SEARCH SELECTION</td>
  </tr>
  <tr bgcolor="#000000">
    <td width="600"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="600" height="2" border="0"></td>
  </tr>
  <tr>
    <td width="600" align="center" valign="top">

<TMPL_IF SSN_DECISION>
	<TMPL_INCLUDE NAME="decision_ssn.tpl">
<TMPL_ELSE>
<TMPL_IF PHONE_DECISION>
	<TMPL_INCLUDE NAME="decision_phone.tpl">
<TMPL_ELSE>
<TMPL_IF DID_DECISION>
	<TMPL_INCLUDE NAME="decision_did.tpl">
<TMPL_ELSE>
<TMPL_IF DL_DECISION>
	<TMPL_INCLUDE NAME="decision_dl.tpl">
<TMPL_ELSE>
<TMPL_IF MV_DECISION>
	<TMPL_INCLUDE NAME="decision_mv.tpl">
<TMPL_ELSE>
<TMPL_IF MD_DECISION>
	<TMPL_INCLUDE NAME="decision_md.tpl">
<TMPL_ELSE>
<TMPL_IF ACCIDENT_DECISION>
	<TMPL_INCLUDE NAME="decision_accident.tpl">
<TMPL_ELSE>
<TMPL_IF PARCEL_DECISION>
	<TMPL_INCLUDE NAME="decision_parcel.tpl">
<TMPL_ELSE>
<TMPL_IF FEIN_DECISION>
	<TMPL_INCLUDE NAME="decision_fein.tpl">
<TMPL_ELSE>
<TMPL_IF FILING_DECISION>
	<TMPL_INCLUDE NAME="decision_filing_number.tpl">
<TMPL_ELSE>
<TMPL_IF CASE_NUMBER_DECISION>
	<TMPL_INCLUDE NAME="decision_casenum.tpl">
<TMPL_ELSE>
<TMPL_IF CHARTER_NUMBER_DECISION>
	<TMPL_INCLUDE NAME="decision_charternum.tpl">
<TMPL_ELSE>
<TMPL_IF LIEN_CASE_NUMBER_DECISION>
	<TMPL_INCLUDE NAME="decision_lien_casenum.tpl">
<TMPL_ELSE>
<TMPL_IF ADDR_DECISION>
	<TMPL_INCLUDE NAME="decision_addr.tpl">
<TMPL_ELSE>
<TMPL_IF COMPANY_DECISION>
	<TMPL_INCLUDE NAME="decision_company.tpl">
<TMPL_ELSE>
<TMPL_IF VESSEL_DECISION>
	<TMPL_INCLUDE NAME="decision_vessel.tpl">
<TMPL_ELSE>
<TMPL_IF DOC_NUMBER_DECISION>
	<TMPL_INCLUDE NAME="decision_docnum.tpl">
<TMPL_ELSE>
<TMPL_IF SHOW_ALL_DECISION>
	<TMPL_INCLUDE NAME="decision_all.tpl">
<TMPL_ELSE>
<TMPL_IF DOMAIN_DECISION>
	<TMPL_INCLUDE NAME="decision_domains.tpl">
<TMPL_ELSE>
<TMPL_IF PROF_LICENSE_NUMBER_DECISION>
	<TMPL_INCLUDE NAME="decision_proflicensenum.tpl">
<TMPL_ELSE>
<TMPL_IF FIREARMS_DECISION>
	<TMPL_INCLUDE NAME="decision_firearms.tpl">
<TMPL_ELSE>
<TMPL_IF DEA_REGISTRATION_NUMBER_DECISION>
	<TMPL_INCLUDE NAME="decision_dea_registration_number.tpl">
<TMPL_ELSE>
<TMPL_IF HULL_ID_DECISION>
	<TMPL_INCLUDE NAME="decision_hull_id.tpl">
<TMPL_ELSE>
<TMPL_IF CANADIAN_NAMES_DECISION>
	<TMPL_INCLUDE NAME="decision_canadian_names.tpl">
<TMPL_ELSE>
<TMPL_IF CANADIAN_ADDR_DECISION>
	<TMPL_INCLUDE NAME="decision_canadian_address.tpl">
<TMPL_ELSE>
<TMPL_INCLUDE NAME="decision_all.tpl">
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
    </td>
  </tr>
<TMPL_IF REPORT_DECISION>
  <tr>
    <td width="600"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="600" height="10" border="0"></td>
  </tr>
  <tr bgcolor="#000000">
    <td width="600"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="600" height="2" border="0"></td>
  </tr>
  <tr class="searchdecisiontitlebox">
    <td width="600" align="center" class="style1" height="20">REPORT SELECTION</td>
  </tr>
  <tr bgcolor="#000000">
    <td width="600"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="600" height="2" border="0"></td>
  </tr>
  <tr>
    <td width="600" align="center" valign="top">
	<TMPL_INCLUDE NAME="decision_report.tpl">
    </td>
  </tr>
</TMPL_IF>
</table>

</form>
</body>
</html>
<!-- END decision_ssn.tpl -->
