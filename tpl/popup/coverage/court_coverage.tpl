<html>
<head>
<title>Court Search Coverage Area</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/coverage.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME=JSPATH>/common.js"></script>
<script src="<TMPL_VAR NAME=JSPATH>/shared.js"></script>
<script src="<TMPL_VAR NAME=JSPATH>/overlibmws.js"></script>

<script>
function printit(){
    if (window.print) {
	window.print();
    } else {
	alert("Sorry, your browser does not support this print function.\n\nTo print this page, click OK and then press 'Ctrl+p' on your keyboard.\n\nIf using a Mac, press 'Cmd+p' or 'Apple+p' to print this page.")
    }
}

function openstruct() {
   show_post_popup('LOGIN/SHOW_POPUP','courtstructure',400,375,0,0,0,0,0,0,'','coverage/court_structure');
}

function openfed() {
   window.open('/bps/pdf/court/dist_courts.pdf','PDFwinfed','location=0,resizable=1,scrollbars=1,width=668,height=540');
}

function showlib(desc,state) {
    var layerfgcolor = get_layer_colors('fgcolor');
    var layerbgcolor = get_layer_colors('bgcolor');
    overlib(desc, CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 250, STICKY, CAPTION, '<center>'+state+'</center>', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'/bps/images/closex.gif\'>', MIDX, 0, MIDY, 0);
}

</script>

</head>
<body onload="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>

<form name="TU" action="<TMPL_VAR ACTION_COURT>" method="POST">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
  <INPUT type="HIDDEN" NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type="HIDDEN" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td class="statetitle" align="right" width="70%">Court Search Coverage Area</td>
    <td align="right" width="30%" valign="top"><TMPL_INCLUDE NAME="print_button.tpl"></td>
  </tr>
</table>
<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td colspan="3" class="coveragetext">
    <b>Federal Civil and Criminal History</b> - Full U.S. Coverage&nbsp;&nbsp;<b><a class="top" href="javascript:openfed();">Federal Districts</a></b><br><br>
    <b>County Civil and Criminal History</b> - Full U.S. Coverage<sup><img src="/bps/images/star.gif" border="0" width="11" height="10"></sup>&nbsp;&nbsp;<b><a class="top" href="javascript:openstruct();">Courts Searched</a></b><br><sup><img src="/bps/images/star.gif" border="0" width="11" height="10"></sup><b>Note:</b>&nbsp;&nbsp;New York City Boroughs search not available.<br><br>
    <b>State Criminal History Databases:</b><br><br>
    <b>NOTE:</b>&nbsp;&nbsp;The State Criminal History database search is broader geographically than our county court search.&nbsp;&nbsp;However, due to the "reporting" of the county court information to a central location, the results are often not as complete or up-to-date as searches performed directly at the county courts.<br><br>
    <b>State Criminal History Databases</b> are available for the following states:</td>
  </tr>
  <tr>
    <td class="coveragetext" width="34%" valign="top">
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Alabama Bureau of Investigation.<br><br>','ALABAMA');">ALABAMA</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Alaska Department of Public Safety.<br><br>','ALASKA');">ALASKA</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Arizona Judicial Branch Court System.<br><br>','ARIZONA');">ARIZONA</a><br>
    <!--<a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Arkansas Administrative Office of the Courts.<br><br>','ARKANSAS');">ARKANSAS</a><br>-->
    <!--CALIFORNIA<br>-->
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Colorado Bureau of Investigation.<br><br>','COLORADO');">COLORADO</a><br>
    <!--CONNECTICUT<br>-->
    <!--<a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Delaware Administrative Office of the Courts.<br><br>','DELAWARE');">DELAWARE</a><br>-->
    <!--DISTRICT OF COLUMBIA<br>-->
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Florida Department of Law Enforcement.<br><br>','FLORIDA');">FLORIDA</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Georgia Bureau of Investigation.<br><br>','GEORGIA');">GEORGIA</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Hawaii Criminal Justice Data Center.<br><br>','HAWAII');">HAWAII</a><br>
    <!--IDAHO<br>-->
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Illinois State Police.<br><br>','ILLINOIS');">ILLINOIS</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Indiana State Police.<br><br>','INDIANA');">INDIANA</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Iowa State Police.<br><br>','IOWA');">IOWA</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Kansas Bureau of Investigation.<br><br>','KANSAS');">KANSAS</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Kentucky State Police.<br><br>','KENTUCKY');">KENTUCKY</a><br>
    </td>
    <td class="coveragetext" width="33%" valign="top">
    <!--LOUISIANA<br>-->
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Maine State Police.<br><br>','MAINE');">MAINE</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Maryland Criminal Justice Information System.<br><br>','MARYLAND');">MARYLAND</a><br>
    <!--<a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Massachusetts Criminal History Systems Board.<br><br>','MASSACHUSETTS');">MASSACHUSETTS</a><br>-->
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Michigan State Police.<br><br>','MICHIGAN');">MICHIGAN</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Minnesota Bureau of Criminal Apprehension.<br><br>','MINNESOTA');">MINNESOTA</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Mississippi Administrative Office of Courts.<br><br>','MISSISSIPPI');">MISSISSIPPI</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Montana Department of Justice.<br><br>','MONTANA');">MONTANA</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Nebraska State Patrol Criminal Identification Division (CID).<br><br>','NEBRASKA');">NEBRASKA</a><br>
    <!--NEVADA<br>-->
    <!--NEW HAMPSHIRE<br>-->
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the New Jersey State Police.<br><br>','NEW JERSEY');">NEW JERSEY</a><br>
    <!--<a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the New Mexico State Police.<br><br>','NEW MEXICO');">NEW MEXICO</a><br>-->
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the New York Office of Court Administration.<br><br>','NEW YORK');">NEW YORK</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the North Carolina Administrative Office of the Courts.<br><br>','NORTH CAROLINA');">NORTH CAROLINA</a><br> 
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the North Dakota Bureau of Criminal Investigations.<br><br>','NORTH DAKOTA');">NORTH DAKOTA</a><br> 
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Oklahoma State Bureau of Investigations.<br><br>','OKLAHOMA');">OKLAHOMA</a><br>
    </td>
    <td class="coveragetext" width="33%" valign="top">
    <!--OHIO<br>-->
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Oregon State Police.<br><br>','OREGON');">OREGON</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Pennsylvania State Police.<br><br>','PENNSYLVANIA');">PENNSYLVANIA</a><br>
    <!--PUERTO RICO<br>-->
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Rhode Island Judiciary.<br><br>','RHODE ISLAND');">RHODE ISLAND</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the South Carolina Law Enforcement Department.<br><br>','SOUTH CAROLINA');">SOUTH CAROLINA</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the South Dakota Division of Criminal Investigation.<br><br>','SOUTH DAKOTA');">SOUTH DAKOTA</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Tennessee Bureau of Investigation.<br><br>','TENNESSEE');">TENNESSEE</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Texas Department of Public Safety.<br><br>','TEXAS');">TEXAS</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Utah Courts Information Exchange System.<br><br>','UTAH');">UTAH</a><br>
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Vermont Criminal Information Center.<br><br>','VERMONT');">VERMONT</a><br>
    <!--VIRGIN ISLANDS<br>-->
    <!--VIRGINIA<br>-->
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Washington State Police.<br><br>','WASHINGTON');">WASHINGTON</a><br>
    <!--WEST VIRGINIA<br>-->
    <a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Wisconsin Department of Justice.<br><br>','WISCONSIN');">WISCONSIN</a><br>
    <!--<a href="javascript:showlib('<br>Search of a centralized statewide criminal records repository managed by the Wyoming State Police.<br><br>','WYOMING');">WYOMING</a><br>-->
    </td>
  </tr>	  
</table>
<br>
<!--
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td align="center" class="coveragetext"><img src="/bps/images/star.gif" border="0" width="11" height="10"> Coming Soon! (States NOT Covered at this time)</td>
  </tr>
</table>
-->
</form>
</body>
</html>
