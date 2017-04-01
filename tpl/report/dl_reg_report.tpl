<!-- Begin dl_reg_report.tpl -->
<html>
<head>
<title><TMPL_VAR NAME="REPORT_TITLE"></title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>

</head>
<body ONLOAD="window.focus()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >
<form name=DL_REG_REPORT>
<INPUT TYPE=HIDDEN NAME=REFERENCE_CODE VALUE="<TMPL_VAR NAME=REFERENCE_CODE>">
<INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
</form>

<!--
<br>
<TMPL_INCLUDE NAME="close_print.tpl">
-->

<div align="center">

<span class="largefont1">&nbsp;<br><b>Motor Vehicle Report</b></span>
<br><br>

<TMPL_LOOP NAME=RESULTS>

<table border=0 width=640>
<tr>
<td class="unifont1" width="50">TAG:</td><td class="unifont1" align="left"><b><TMPL_VAR TAG></b></td>
</tr>
<tr>
<td class="unifont1" width="50">VIN:</td><td class="unifont1"><b><TMPL_VAR VIN></b></td>
</tr>
<tr>
<td class="unifont1" width="50">Description:</td><td class="unifont1"><b><TMPL_VAR DESCRIPTION></b></td>
</tr>
</table>
<HR width="630" align="center">
<P>

<table border=0 width=640>
<tr>
<td class="unifont1" colspan=4><i><b>Owner Information</b><i></td>
</tr>
<tr>
<td class="unifont1">Name:</td>
<td class="unifont1"><b><TMPL_VAR NAME></b></td>
<td class="unifont1">DOB:</td>
<td class="unifont1"><b><TMPL_VAR DOB></b></td>
</tr>
<tr>
<td class="unifont1">Address:</td>
<td class="unifont1"><b><TMPL_INCLUDE NAME="dl_report_address_url.tpl"></b></td>
<td class="unifont1">Sex:</td>
<td class="unifont1"><b><TMPL_VAR SEX></b></td>
</tr>
<tr>
<td class="unifont1">City/St/zip:</td>
<td class="unifont1"><b><TMPL_INCLUDE NAME="dl_report_csz_url.tpl"></b></td>
<td class="unifont1">Age:</td>
<td class="unifont1"><b><TMPL_VAR AGE></b></td>
</tr>
<tr>
<td class="unifont1">County:</td>
<td class="unifont1"><b><TMPL_VAR COUNTY></b></td>
<td class="unifont1">SSN:</td>
<td class="unifont1"><b><TMPL_IF ssn><TMPL_INCLUDE NAME="search_report_ssn.tpl"></TMPL_IF></b></td>
</tr>
<tr>
<td class="unifont1">DL #:</td>
<td class="unifont1" colspan="3"><b><TMPL_IF LICENSE_NUM><TMPL_INCLUDE NAME="search_report_dlnum_url.tpl"></TMPL_IF></b></td>
</tr>

<tr><td colspan="4">&nbsp;</td></tr>

<tr>
<td class="unifont1" colspan=4><i><b>Vehicle Information</b><i></td>
</tr>
<tr>
<td class="unifont1">Engine:</td>
<td class="unifont1" colspan="3"><b><TMPL_IF CYLINDERS><TMPL_VAR CYLINDERS> Cylinder </TMPL_IF><TMPL_IF CID><TMPL_VAR CID> Cubic Centimeter </TMPL_IF><TMPL_IF FUEL_CODE> -- <TMPL_VAR FUEL_CODE></TMPL_IF></b></td>
</tr>
<tr>
<td class="unifont1">Vehicle Use:</td>
<td class="unifont1" colspan="3"><b><TMPL_VAR VEHICLE_USE></b></td>
</tr>
<tr>
<td class="unifont1">Mileage:</td>
<td class="unifont1" colspan="3"><b><TMPL_VAR MILEAGE></b></td>
</tr>
<tr>
<td class="unifont1">Description:</td>
<td class="unifont1" colspan="3"><b><TMPL_VAR DESCRIPTION></b></td>
</tr>

<tr><td colspan="4">&nbsp;</td></tr>

<tr>
<td class="unifont1" colspan=4><i><b>Lien Holder Information</b><i></td>
</tr>
<tr>
<td class="unifont1">Holder:</td>
<td class="unifont1"><b><TMPL_VAR LIEN_HOLDER></b></td>
<td class="unifont1">Lien Date:</td>
<td class="unifont1"><b><TMPL_VAR LIEN_DATE></b></td>
</tr>
<tr>
<td class="unifont1">Address:</td>
<td class="unifont1" colspan="3"><b><TMPL_VAR LIEN_HOLDER_ADDR><BR><TMPL_VAR LIEN_HOLDER_CSZ></b></td>
</tr>

<tr><td colspan="4">&nbsp;</td></tr>

<tr>
<td class="unifont1" colspan=4><i><b>Other Information</b><i></td>
</tr>
<tr>
<td class="unifont1">Title #:</td>
<td class="unifont1"><b><TMPL_VAR TITLE_NUMBER></b></td>
<td class="unifont1">Decal Date:</td>
<td class="unifont1"><b><TMPL_VAR DECAL_DATE></b></td>
</tr>
<tr>
<td class="unifont1">Title Date:</td>
<td class="unifont1"><b><TMPL_VAR TITLE_DATE></b></td>
<td class="unifont1">Expiration Date:</td>
<td class="unifont1"><b><TMPL_VAR EXP_DATE></b></td>
</tr>
<tr>
<td class="unifont1">Title Status:</td>
<td class="unifont1"><b><TMPL_VAR TITLE_STATUS></b></td>
<td class="unifont1">Registration Status:</td>
<td class="unifont1"><b><TMPL_VAR REGISTRATION_STATUS></b></td>
</tr>
</table>
<P>
</TMPL_LOOP>

</div>

<!--
<br>
<TMPL_INCLUDE NAME="close_print.tpl">
-->

<span class="unifont2">&nbsp;<br></span>

</body>
</html>
<!-- End dl_reg_report.tpl -->
