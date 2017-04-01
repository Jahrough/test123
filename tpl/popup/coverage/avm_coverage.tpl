<html>
<head>
<title>Automated Valuation Models Coverage Area</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/coverage.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script>
function showst(st) {
    var urlpath = 'coverage/avm/' + st;
    show_post_popup('LOGIN/SHOW_POPUP','AVMStates',375,400,0,0,0,1,1,0,'',urlpath);
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
    <td class="coveragetitle" align="right" width="80%"><B>Automated Valuation Models Coverage Area</B></td>
    <td align="right" width="20%" valign="top"><TMPL_INCLUDE NAME="print_button.tpl"></td>
  </tr>
  <tr>
    <td class="coveragetext" valign="top" colspan="2">
    The availability of property records for a given state and county does not ensure the return of an AVM value.&nbsp; Not all properties will receive an AVM value, comparable property information, or nearby property information.&nbsp; AVM values are only calculated for properties that are designated as single family or condominium.&nbsp; An AVM value will be provided for residential properties whenever at least one of the component models (Price Index, Taxed Assessed Value, Hedonic comparison) has sufficient data.&nbsp; Price Index requires a recorded sale of the subject property in the last ten years.&nbsp; Tax Assessed Value requires a tax assessment record recorded in the past three years.&nbsp; Hedonic comparison requires a minimum number of property records within ten miles of the subject property that have similar characteristics and a recorded sale within the past twelve months.&nbsp; If no such comparable property transactions are found, then no comparable properties will be reported.
    </td>
  </tr>
  <tr>
    <td colspan="2" class="coveragetext" align="center"><b>Click States to View Counties</b></td>
  </tr>
</table>
<img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="5" width="1" border="0"><br>
<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td class="coveragetext" width="34%" valign="top">
    <a href="javascript:showst('al');">ALABAMA</a><br>
    <a href="javascript:showst('ak');">ALASKA</a><br>
    <a href="javascript:showst('az');">ARIZONA</a><br>
    <a href="javascript:showst('ar');">ARKANSAS</a><br>
    <a href="javascript:showst('ca');">CALIFORNIA</a><br>
    <a href="javascript:showst('co');">COLORADO</a><br>
    <a href="javascript:showst('ct');">CONNECTICUT</a><br>
    <a href="javascript:showst('de');">DELAWARE</a><br>
    <a href="javascript:showst('dc');">DISTRICT OF COLUMBIA</a><br>
    <a href="javascript:showst('fl');">FLORIDA</a><br>
    <a href="javascript:showst('ga');">GEORGIA</a><br>
    <a href="javascript:showst('hi');">HAWAII</a><br>
    <a href="javascript:showst('id');">IDAHO</a><br>
    <a href="javascript:showst('il');">ILLINOIS</a><br>
    <a href="javascript:showst('in');">INDIANA</a><br>
    <a href="javascript:showst('ia');">IOWA</a><br>
    <a href="javascript:showst('ks');">KANSAS</a><br>
    </td>
    <td class="coveragetext" width="33%" valign="top">
    <a href="javascript:showst('ky');">KENTUCKY</a><br>
    <a href="javascript:showst('la');">LOUISIANA</a><br>
    <a href="javascript:showst('md');">MARYLAND</a><br>
    <a href="javascript:showst('ma');">MASSACHUSETTS</a><br>
    <a href="javascript:showst('mi');">MICHIGAN</a><br>
    <a href="javascript:showst('mn');">MINNESOTA</a><br>
    <a href="javascript:showst('ms');">MISSISSIPPI</a><br>
    <a href="javascript:showst('mo');">MISSOURI</a><br>
    <a href="javascript:showst('mt');">MONTANA</a><br>
    <a href="javascript:showst('ne');">NEBRASKA</a><br>
    <a href="javascript:showst('nv');">NEVADA</a><br>
    <a href="javascript:showst('nh');">NEW HAMPSHIRE</a><br>
    <a href="javascript:showst('nj');">NEW JERSEY</a><br>
    <a href="javascript:showst('nm');">NEW MEXICO</a><br>
    <a href="javascript:showst('ny');">NEW YORK</a><br>
    <a href="javascript:showst('nc');">NORTH CAROLINA</a><br> 
    </td>
    <td class="coveragetext" width="33%" valign="top">
    <a href="javascript:showst('nd');">NORTH DAKOTA</a><br> 
    <a href="javascript:showst('oh');">OHIO</a><br>
    <a href="javascript:showst('ok');">OKLAHOMA</a><br>
    <a href="javascript:showst('or');">OREGON</a><br>
    <a href="javascript:showst('pa');">PENNSYLVANIA</a><br>
    <a href="javascript:showst('ri');">RHODE ISLAND</a><br>
    <a href="javascript:showst('sc');">SOUTH CAROLINA</a><br>
    <a href="javascript:showst('tn');">TENNESSEE</a><br>
    <a href="javascript:showst('tx');">TEXAS</a><br>
    <a href="javascript:showst('ut');">UTAH</a><br>
    <a href="javascript:showst('vt');">VERMONT</a><br>
    <a href="javascript:showst('va');">VIRGINIA</a><br>
    <a href="javascript:showst('wa');">WASHINGTON</a><br>
    <a href="javascript:showst('wv');">WEST VIRGINIA</a><br>
    <a href="javascript:showst('wi');">WISCONSIN</a><br>
    <a href="javascript:showst('wy');">WYOMING</a><br>
    </td>
  </tr>	  
</table>
<br>
<!--
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td align="center" class="coveragetext"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"> Coming Soon! (States NOT Covered at this time)</td>
  </tr>
</table>
-->
</form>
</body>
</html>
