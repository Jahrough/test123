<html>
<head>
<title>Comprehensive Health Care Provider Report Coverage Area</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/coverage.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script>
function display_coverage(tpl_name) {
    document.COVERAGE.TPL.value = tpl_name;
    send_event("LOGIN/SHOW_POPUP");
}
</script>
</head>
<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="COVERAGE" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="TPL" VALUE="">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

<table border="0" cellpadding="5" cellspacing="0" width="100%">
    <tr>
	<td align="center" width="99%" valign="top"><span class="coveragetitle"><B>Comprehensive Health Care Provider Coverage Area</B></span></td>
	<td align="right" width="1%" valign="top"><TMPL_INCLUDE NAME="print_button.tpl"></td>
    </tr>
</table>

<table border="0" cellpadding="10" cellspacing="0" width="100%">
    <tr>
	<td class="coveragetext" colspan="3" valign="top"><b>CLICK THE LINKS BELOW TO VIEW THE COVERAGE FOR THE INDIVIDUAL REPORT SECTIONS:</b></td>
    </tr>
    <tr>
	<td class="coveragetext" valign="top">
	<a href="javascript:void(0);" onClick="display_coverage('coverage/all50_coverage');">Provider Information</a><br>
	<a href="javascript:void(0);" onClick="display_coverage('coverage/prof_licenses_coverage');">Professional Licenses</a><br>
	<a href="javascript:void(0);" onClick="display_coverage('coverage/all50_plus_dc_coverage');">DEA Licenses</a><br>
	<a href="javascript:void(0);" onClick="display_coverage('coverage/all50_coverage');">Provider Sanctions</a><br>
	<a href="javascript:void(0);" onClick="display_coverage('coverage/sexual_offenders_coverage');">Sexual Offenses</a><br>
	<a href="javascript:void(0);" onClick="display_coverage('coverage/crim_coverage');">Possible Criminal Records</a><br>
	<a href="javascript:void(0);" onClick="display_coverage('coverage/bankruptcy_coverage');">Bankruptcy</a><br>
	<a href="javascript:void(0);" onClick="display_coverage('coverage/liens_coverage');">Liens &amp; Judgments</a>
	</td>
    </tr>
</table>
</form>
</body>
</html>
