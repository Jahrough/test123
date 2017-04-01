<!-- begin vehicle_location.tpl -->
<html>
<head>
<title>LexisNexis Terms and Conditions</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>

<form name="VEHICLE_LOCATION" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" name="LXN_ACPT" value="<TMPL_VAR NAME=LXN_ACPT>">
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">

<div align="center">
<br>
<br>

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="glbtitle"><B>Accessing Vehicle Location History site</B></td>
  </tr>
</table>

<table cellpadding="3" cellspacing="0" valign=top width="800" height="100" class="termstext" wrap>
  <tr>
    <td class="unifont1" bgcolor="white">
      <br>
      <TMPL_IF VEHICLE_LOC_BAD_PERMS>
      <b>Vehicle Location History currently disabled.  Contact your System Administrator or Customer Support for assistance.</b>
      <TMPL_ELSE>
      <b>You are now leaving the Accurint&reg; for Insurance site.&nbsp;&nbsp;Please click below to be transferred to the external Vehicle Location History site provided by a LexisNexis third party service provider.&nbsp;&nbsp;Use of this site is subject to the terms and conditions of your agreement with LexisNexis.</b>
      </TMPL_IF>
      <br><br><br>
    </td>
  </tr>
</table>

<TMPL_UNLESS VEHICLE_LOC_BAD_PERMS>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="glbtitle"><a href="<TMPL_VAR NAME=DRN_LICENSE_URI>" target="VehicleLocWin">Proceed to Vehicle Location History</a></td>
  </tr>
</table><br><br>
</TMPL_UNLESS>

</div>

</form>
</body>
</html>
<!-- end vehicle_location.tpl -->

