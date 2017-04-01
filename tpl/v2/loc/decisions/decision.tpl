<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- BEGIN decision.tpl -->
<html>
<head>
<title>Search Selection</title>
<!--<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/style_decision.css" rel="stylesheet" type="text/css">-->
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/decision.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>
</head>

<body id="hdNoLogo">
<form name="DECISION">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
	    
<table width="100%" cellspacing="0" cellpadding="5">
  <tr>
    <td height="40" colspan="2">
       <div id="searchResults">
	    <h2>Search Selection</h2>
       </div>
    </td>
  </tr>

  <tr>
    <td width="600" valign="top">
	<TMPL_IF SSN_DECISION>
		<TMPL_INCLUDE NAME="decision_ssn.tpl">
	<TMPL_ELSE>
		<TMPL_IF PHONE_DECISION>
			<TMPL_INCLUDE NAME="decision_phone.tpl">
		<TMPL_ELSE>
			<TMPL_IF ADDR_DECISION>
				<TMPL_INCLUDE NAME="decision_addr.tpl">
			<TMPL_ELSE>
				<TMPL_IF COMPANY_DECISION>
					<TMPL_INCLUDE NAME="decision_company.tpl">
				<TMPL_ELSE>
					<TMPL_INCLUDE NAME="decision_all.tpl">
				</TMPL_IF>
			</TMPL_IF>
		</TMPL_IF>
	</TMPL_IF>
    </td>
  </tr>
</table>


<p>&nbsp;</p>
<p align="center"><a href="javascript:window.close();"><img src="<TMPL_VAR NAME=IMGPATH>/btnCloseWin.gif" alt="Close Window" name="submit" width="84" height="17" border="0" id="submit" /></a></p>

</form>
<div id="v2"></div>
<TMPL_INCLUDE NAME="ln_general_footer.tpl">
</body>
</html>
<!-- END decision_ssn.tpl -->
