<!-- begin deeds_coverage_core.tpl -->
<script>
function showddst(st) {
    var urlpath = 'coverage/deeds/' + st;
    show_post_popup('LOGIN/SHOW_POPUP','PropertyDeedStates',375,400,0,0,0,1,1,0,'',urlpath);
}
</script>

<form name="COVERAGE" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td class="coveragetitle" align="right" width="74%"><B>Property Deeds Coverage Area</B></td>
    <td align="right" width="26%" valign="top"><TMPL_INCLUDE NAME="print_button.tpl"></td>
  </tr>
  <tr>
    <td colspan="2" class="coveragetext" align="center"><b>Click States to View Counties</b></td>
  </tr>
</table>
<img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="5" width="1" border="0"><br>
<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td class="coveragetext" width="34%" valign="top">
    <a href="javascript:showddst('al');">ALABAMA</a><br>
    <a href="javascript:showddst('ak');">ALASKA</a><br>
    <a href="javascript:showddst('az');">ARIZONA</a><br>
    <a href="javascript:showddst('ar');">ARKANSAS</a><br>
    <a href="javascript:showddst('ca');">CALIFORNIA</a><br>
    <a href="javascript:showddst('co');">COLORADO</a><br>
    <a href="javascript:showddst('ct');">CONNECTICUT</a><br>
    <a href="javascript:showddst('de');">DELAWARE</a><br>
    <a href="javascript:showddst('dc');">DISTRICT OF COLUMBIA</a><br>
    <a href="javascript:showddst('fl');">FLORIDA</a><br>
    <a href="javascript:showddst('ga');">GEORGIA</a><br>
    <a href="javascript:showddst('hi');">HAWAII</a><br>
    <a href="javascript:showddst('id');">IDAHO</a><br>
    <a href="javascript:showddst('il');">ILLINOIS</a><br>
    <a href="javascript:showddst('in');">INDIANA</a><br>
    <a href="javascript:showddst('ia');">IOWA</a><br>
    </td>
    <td class="coveragetext" width="33%" valign="top">
    <a href="javascript:showddst('ks');">KANSAS</a><br>
    <a href="javascript:showddst('ky');">KENTUCKY</a><br>
    <a href="javascript:showddst('la');">LOUISIANA</a><br>
    <a href="javascript:showddst('me');">MAINE</a><br>
    <a href="javascript:showddst('md');">MARYLAND</a><br>
    <a href="javascript:showddst('ma');">MASSACHUSETTS</a><br>
    <a href="javascript:showddst('mi');">MICHIGAN</a><br>
    <a href="javascript:showddst('mn');">MINNESOTA</a><br>
    <a href="javascript:showddst('ms');">MISSISSIPPI</a><br>
    <a href="javascript:showddst('mo');">MISSOURI</a><br>
    <a href="javascript:showddst('mt');">MONTANA</a><br>
    <a href="javascript:showddst('ne');">NEBRASKA</a><br>
    <a href="javascript:showddst('nv');">NEVADA</a><br>
    <a href="javascript:showddst('nh');">NEW HAMPSHIRE</a><br>
    <a href="javascript:showddst('nj');">NEW JERSEY</a><br>
    <a href="javascript:showddst('nm');">NEW MEXICO</a><br>
    <a href="javascript:showddst('ny');">NEW YORK</a><br>
    <a href="javascript:showddst('nc');">NORTH CAROLINA</a><br> 
    </td>
    <td class="coveragetext" width="33%" valign="top">
    <a href="javascript:showddst('nd');">NORTH DAKOTA</a><br> 
    <a href="javascript:showddst('oh');">OHIO</a><br>
    <a href="javascript:showddst('ok');">OKLAHOMA</a><br>
    <a href="javascript:showddst('or');">OREGON</a><br>
    <a href="javascript:showddst('pa');">PENNSYLVANIA</a><br>
    <a href="javascript:showddst('ri');">RHODE ISLAND</a><br>
    <a href="javascript:showddst('sc');">SOUTH CAROLINA</a><br>
    <a href="javascript:showddst('sd');">SOUTH DAKOTA</a><br>
    <a href="javascript:showddst('tn');">TENNESSEE</a><br>
    <a href="javascript:showddst('tx');">TEXAS</a><br>
    <a href="javascript:showddst('ut');">UTAH</a><br>
    <a href="javascript:showddst('vt');">VERMONT</a><br>
    <a href="javascript:showddst('va');">VIRGINIA</a><br>
    <a href="javascript:showddst('vi');">VIRGIN ISLANDS</a><br>
    <a href="javascript:showddst('wa');">WASHINGTON</a><br>
    <a href="javascript:showddst('wv');">WEST VIRGINIA</a><br>
    <a href="javascript:showddst('wi');">WISCONSIN</a><br>
    <a href="javascript:showddst('wy');">WYOMING</a><br>
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
<!-- end deeds_coverage_core.tpl -->
