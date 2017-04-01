<!-- Begin short_globexplorer_report.tpl -->
<html>
<head>
<title>Satellite Image Report</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="SATELLITE" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
	<TMPL_INCLUDE NAME=common_hidden_input.tpl>
	<INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
    <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
	<INPUT type=hidden NAME="EVENT" VALUE="SATELLITE/DISPLAY_REPORT">
	<INPUT type=hidden NAME="MULTIPLE_LOCATIONS" VALUE="<TMPL_VAR MULTIPLE_LOCATIONS>">
	<INPUT type=hidden NAME="INIT" VALUE="1">
	<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
	<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
	
<TMPL_LOOP LOCATIONS_INPUT>
	<INPUT TYPE="HIDDEN" NAME="ADDRESS_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR NAME=ADDRESS>">
	<INPUT TYPE="HIDDEN" NAME="CITY_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR NAME=CITY>">
	<INPUT TYPE="HIDDEN" NAME="STATE_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR NAME=STATE>">
	<INPUT TYPE="HIDDEN" NAME="ZIP_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR NAME=ZIP>">
	<INPUT type=hidden NAME="XC_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR NAME=XC>">
	<INPUT type=hidden NAME="YC_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR NAME=YC>">
	<INPUT type=hidden NAME="MPP_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR NAME=MPP>">
	<INPUT type=hidden NAME="ADDRESS_XC_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR NAME=ADDRESS_XC>">
	<INPUT type=hidden NAME="ADDRESS_YC_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR NAME=ADDRESS_YC>">
</TMPL_LOOP>
	
<div align="center" id="mainbody">
<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="620">
  <tr>
    <td align="center">
    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
      <tr>
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="Purchase" onMouseDown="flip_style(this,'rbd');" onClick="showpw();self.document.SATELLITE.submit();disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
<table border="1" cellpadding="0" cellspacing="0" width="640" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
	<td valign="top" align="left" class="myaccountlabel" nowrap>Address</td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="myaccountlabel" nowrap>City</td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="myaccountlabel" nowrap>State</td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="myaccountlabel" nowrap>Zip</td>
      </tr>
      <tr>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=ADDRESS_ORIG></td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=CITY_ORIG></td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=STATE_ORIG></td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=ZIP_ORIG></td>
      </tr>
    </table>
    </div>  
    </td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="30">
    <td height="30" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<TMPL_IF MULTIPLE_LOCATIONS>
<table border="0" cellpadding="0" cellspacing="0" width="640">
<tr>
<td class="smallfont1" colspan="2">&nbsp;<b>Multiple addresses match your search criteria. Please select the one you wish to get a satellite image for.</b></td>
</tr>
<tr><td height="10">&nbsp;</td></tr>
<TMPL_LOOP LOCATIONS_INDEX>
<tr>
<td class="smallfont1">&nbsp;<b><INPUT TYPE="RADIO" NAME="LOCATION" VALUE="<TMPL_VAR INDEX>"<TMPL_IF LOCATION_CHECKED> CHECKED</TMPL_IF>>&nbsp;<TMPL_VAR NAME=ADDRESS>,&nbsp;<TMPL_VAR NAME=CITY>,&nbsp;<TMPL_VAR NAME=STATE>&nbsp;&nbsp;<TMPL_VAR NAME=ZIP></b></td>
</tr>
</TMPL_LOOP>
</table>
</TMPL_IF>

<table border="0" cellpadding="0" cellspacing="0" width="640">
  <tr height="30">
    <td height="30" class="unifont2pt">&nbsp;</td>
  </tr>
  <tr>
    <td width="640" valign="top">
		<table border="0" cellpadding="2" cellspacing="0" width="100%">
			<tr>
				<td valign="top" align="left">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td class="myaccounttitle">Neighborhood Image Price:&nbsp;$1.00</td>
						</tr>
					</table>
				</td>
			</tr>
			<!--
			<tr>
				<td class="smallfont1" valign="top" align="left">
					<b>NOTE:</b>&nbsp;&nbsp;You will not be charged for options returning no results.&nbsp;
				</td> 
			</tr>
			-->
		</table>
    </td>
  </tr>
</table>

</div>

</form>
</body>
</html>
<!-- End short_globexplorer_report.tpl -->
