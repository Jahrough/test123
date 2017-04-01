<!-- Begin globexplorer_price_confirmation.tpl -->
<html>
<head>
<title>Satellite Image Report</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="SATELLITE" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
	<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
	<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
	<INPUT TYPE="HIDDEN" NAME="ADDRESS" VALUE="<TMPL_VAR NAME=ADDRESS>">
	<INPUT TYPE="HIDDEN" NAME="CITY" VALUE="<TMPL_VAR NAME=CITY>">
	<INPUT TYPE="HIDDEN" NAME="STATE" VALUE="<TMPL_VAR NAME=STATE>">
	<INPUT TYPE="HIDDEN" NAME="ZIP" VALUE="<TMPL_VAR NAME=ZIP>">
	<INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
    <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
	<INPUT type=hidden NAME="EVENT" VALUE="SATELLITE/DISPLAY_REPORT">
	<INPUT type=hidden NAME="XC" VALUE="<TMPL_VAR NAME=XC>">
	<INPUT type=hidden NAME="YC" VALUE="<TMPL_VAR NAME=YC>">
	<INPUT type=hidden NAME="MPP" VALUE="<TMPL_VAR NAME=MPP>">
	<INPUT type=hidden NAME="ADDRESS_XC" VALUE="<TMPL_VAR NAME=ADDRESS_XC>">
	<INPUT type=hidden NAME="ADDRESS_YC" VALUE="<TMPL_VAR NAME=ADDRESS_YC>">
	<INPUT type=hidden NAME="XUL" VALUE="<TMPL_VAR NAME=XUL>">
	<INPUT type=hidden NAME="YUL" VALUE="<TMPL_VAR NAME=YUL>">
	<INPUT type=hidden NAME="XLR" VALUE="<TMPL_VAR NAME=XLR>">
	<INPUT type=hidden NAME="YLR" VALUE="<TMPL_VAR NAME=YLR>">
	<INPUT type=hidden NAME="PAN_ZOOM" VALUE="<TMPL_VAR NAME=PAN_ZOOM>">
	
	
<div align="center" id="mainbody">
<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
      <tr>
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="Cancel" onMouseDown="flip_style(this,'rbd');" onClick="history.back();" onMouseOut="flip_style(this,'rb');"></td>
      </tr>
    </table>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="30" height="1"></td>
    <td>
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
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=ADDRESS></td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=CITY></td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=STATE></td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=ZIP></td>
      </tr>
    </table>
    </div>  
    </td>
  </tr>
</table>
<!--
<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="30">
    <td height="30" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
-->

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
							<td class="myaccounttitle">$1.00 charge applies to every zoom or pan.<br />
							</td>
						</tr>
		<tr>
			<td class="smallfont1">&nbsp;<b><INPUT TYPE="checkbox" NAME="PRICE_CONFIRMED" VALUE="1">&nbsp;Do not show me this again.</b></td>
		</tr>
					</table>
				</td>
			</tr>
  <!--  		
  <tr height="30">
    <td height="30" class="unifont2pt">&nbsp;</td>
  </tr>
  <tr height="30">
    <td height="30" class="unifont2pt">&nbsp;</td>
  </tr>
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
<!-- End s globexplorer_price_confirmation.tpl -->
