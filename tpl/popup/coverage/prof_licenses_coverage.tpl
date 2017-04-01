<html>
<head>
<title>Professional Licenses Coverage Area</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/coverage.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script>
function showst(st) {
    var urlpath = 'coverage/prof_licenses/' + st;
    show_post_popup('LOGIN/SHOW_POPUP','ProfLicenseStates',450,450,0,0,0,1,1,0,'',urlpath);
}
</script>
</head>
<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<form name="COVERAGE" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td align="center" width="99%" valign="top"><span class="coveragetitle"><B>Professional Licenses Coverage Area</B></span><br><span class="coveragetext"><b>Note:</b>&nbsp;&nbsp;License Types vary by state.</span></td>
    <td align="right" width="1%" valign="top"><TMPL_INCLUDE NAME="print_button.tpl"></td>
  </tr>
</table>
<table border="0" cellpadding="10" cellspacing="0" width="100%">
  <tr>
   <td class="coveragetext" colspan="3" valign="top"><b>STATE LISTINGS -- CLICK TO VIEW A STATE'S PROFESSIONAL LICENSE TYPES:</b></td>
  </tr>
  <tr>
    <td class="coveragetext" width="34%" valign="top">
    <a href="javascript:showst('al');">ALABAMA</a><br>
    <a href="javascript:showst('ak');">ALASKA</a>*<br>
    <a href="javascript:showst('az');">ARIZONA</a>*<br>
    <a href="javascript:showst('ar');">ARKANSAS</a>*<br>
    <a href="javascript:showst('ca');">CALIFORNIA</a><br>
    <a href="javascript:showst('co');">COLORADO</a><br>
    <a href="javascript:showst('ct');">CONNECTICUT</a>*<br>
    <a href="javascript:showst('de');">DELAWARE</a>*<br>
    <a href="javascript:showst('dc');">DISTRICT OF COLUMBIA</a>*<br>
    <a href="javascript:showst('fl');">FLORIDA</a>*<br>
    <a href="javascript:showst('ga');">GEORGIA</a><br>
    <a href="javascript:showst('hi');">HAWAII</a><br>
    <a href="javascript:showst('id');">IDAHO</a>*<br>
    <a href="javascript:showst('il');">ILLINOIS</a><br>
    <a href="javascript:showst('in');">INDIANA</a><br>
    <a href="javascript:showst('ia');">IOWA</a><br>
    <a href="javascript:showst('ks');">KANSAS</a>*<br>
    </td>
    <td class="coveragetext" width="33%" valign="top">
    <a href="javascript:showst('ky');">KENTUCKY</a>*<br>
    <a href="javascript:showst('la');">LOUISIANA</a>*<br>
    <a href="javascript:showst('me');">MAINE</a>*<br>
    <a href="javascript:showst('md');">MARYLAND</a>*<br>
    <a href="javascript:showst('ma');">MASSACHUSETTS</a>*<br>
    <a href="javascript:showst('mi');">MICHIGAN</a>*<br>
    <a href="javascript:showst('mn');">MINNESOTA</a><br>
    <a href="javascript:showst('ms');">MISSISSIPPI</a>*<br>
    <a href="javascript:showst('mo');">MISSOURI</a>*<br>
    <a href="javascript:showst('mt');">MONTANA</a>*<br>
    <a href="javascript:showst('ne');">NEBRASKA</a><br>
    <a href="javascript:showst('nv');">NEVADA</a>*<br>
    <a href="javascript:showst('nh');">NEW HAMPSHIRE</a>*<br>
    <a href="javascript:showst('nj');">NEW JERSEY</a>*<br>
    <a href="javascript:showst('nm');">NEW MEXICO</a>*<br>
    <a href="javascript:showst('ny');">NEW YORK</a>*<br>
    <a href="javascript:showst('nc');">NORTH CAROLINA</a>*<br>
    </td>
    <td class="coveragetext" width="33%" valign="top">
    <a href="javascript:showst('nd');">NORTH DAKOTA</a>*<br>
    <a href="javascript:showst('oh');">OHIO</a>*<br>
    <a href="javascript:showst('ok');">OKLAHOMA</a><br>
    <a href="javascript:showst('or');">OREGON</a>*<br>
    <a href="javascript:showst('pa');">PENNSYLVANIA</a><br>
    <a href="javascript:showst('ri');">RHODE ISLAND</a>*<br>
    <a href="javascript:showst('sc');">SOUTH CAROLINA</a><br>
    <a href="javascript:showst('sd');">SOUTH DAKOTA</a>*<br>
    <a href="javascript:showst('tn');">TENNESSEE</a>*<br>
    <a href="javascript:showst('tx');">TEXAS</a><br>
    <a href="javascript:showst('ut');">UTAH</a>*<br>
    <a href="javascript:showst('vt');">VERMONT</a>*<br>
    <a href="javascript:showst('va');">VIRGINIA</a><br>
    <a href="javascript:showst('wa');">WASHINGTON</a>*<br>
    <a href="javascript:showst('wv');">WEST VIRGINIA</a>*<br>
    <a href="javascript:showst('wi');">WISCONSIN</a><br>
    <a href="javascript:showst('wy');">WYOMING</a><br>
    </td>
  </tr>
  <tr>
   <td class="coveragetext" colspan="3" valign="top">*States with an asterisk represent states with historical data and are not currently updating.</td>
  </tr>
  <tr>
   <td class="coveragetext" colspan="3" valign="top"><b>NATIONAL / FEDERAL LISTINGS:</b></td>
  </tr>
  <tr>
   <td class="coveragetext" colspan="3" valign="top">APPRAISAL SUBCOMMITTEE APPRAISERS</td>
  </tr>
</table>
</form>
</body>
</html>
