<!-- BEGIN request_submitted.tpl -->
<html>
<head>
<title>Request Submitted</title>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>
</head>

<body ONLOAD="window.focus()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis</a></h2>
</div>
<TMPL_ELSE>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td bgcolor="#cccccc" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="1" height="10"><br><img src="<TMPL_VAR NAME=IMGPATH>/cs_hd.gif" border="0" width="177" height="23"><br><br></td>
  </tr>
<!-- Stretching Begins Here -->
  <tr>
    <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
<!-- End Stretching -->
</table>
</TMPL_IF>

<br><br>
<div align="center" class="unifont1">  
<TMPL_IF SUCCESS>
<b>Thank You<BR><br>
Your order (#<TMPL_VAR SUCCESS>) has been submitted<TMPL_UNLESS NAME="COURT_NONPREPAID"> and your credit card has been charged $<TMPL_VAR TOTAL></TMPL_UNLESS><br><br>
Please use your web browser's print option to print a copy of this page for your records</b>
<P>

<TMPL_IF IDENTITY_LOOP>
<TMPL_LOOP IDENTITY_LOOP>
<table border="0" width="600" cellspacing="0">
<tr>
<td class="unifont1" align="center">
<table><tr><td class="unifont1"><TMPL_INCLUDE NAME="identity.tpl"></td></tr></table>
</td>
</tr>
</table>
<P>
</TMPL_LOOP>
</TMPL_IF>
</div>

<div align="center" class="unifont1">  
<table border="0" width="600" cellspacing="0">
<TMPL_IF RESULTS>
<TMPL_LOOP RESULTS>
<tr>
<td class="unifont1" colspan="3" align="center"><hr width="90%"><b>State: <TMPL_VAR STATE_NAME></b></td>
</tr>

  <TMPL_IF COUNTIES>
  <TMPL_LOOP COUNTIES>
<tr><td>&nbsp;</td></tr>
<tr>
<td class="unifont1" colspan="3"><TMPL_VAR INDENT><b><TMPL_VAR COUNTY> COUNTY ADDRESSES</b></td>
</tr>

    <TMPL_IF ADDRESSES>
    <TMPL_LOOP ADDRESSES>
<tr>
<td class="smallfont1" colspan="3"><TMPL_VAR INDENT><TMPL_INCLUDE NAME="build_address.tpl"></td>
</tr>
  	</TMPL_LOOP>
<tr><td>&nbsp;</td></tr>
  	</TMPL_IF>

<tr>
<td class="unifont1" width="330"><TMPL_VAR INDENT><b><TMPL_VAR COUNTY_DSP> County Searches</b></td>
<td class="unifont1" width="170"><b>Est. Return</b></td>
<td class="unifont1" width="130" align="right"><b>Ext. Price</b></td>
</tr>

    <TMPL_IF SEARCHES>
    <TMPL_LOOP SEARCHES>
<tr>
<td class="smallfont1" width="330"><TMPL_VAR INDENT><TMPL_VAR DESC></td>
<td class="smallfont1" width="170"><TMPL_VAR INDENT>5-14</td>
<td class="smallfont1" width="130" align="right"><TMPL_VAR INDENT><TMPL_IF IS_SURCHARGE>(Incl Surchg) </TMPL_IF>$<TMPL_VAR PRICE></td>
</tr>
  	</TMPL_LOOP>
	<TMPL_ELSE>
<tr>
<td class="unifont1" width="470" colspan="2"><TMPL_VAR INDENT><TMPL_VAR INDENT>[No Searches Selected]</td>
<td class="smallfont1" width="130" align="right"><TMPL_VAR INDENT>$0.00</td>
</tr>
  	</TMPL_IF>
  </TMPL_LOOP>
  </TMPL_IF>

<TMPL_UNLESS BUSINESS_CS>
<tr><td colspan="3">&nbsp;</td></tr>    
<tr>
<td class="unifont1" width="600" colspan="3"><TMPL_VAR INDENT><b>STATE - <TMPL_VAR STATE_NAME></b></td>
</tr>
  <TMPL_IF STATE_SEARCHES>
<tr>
  <TMPL_LOOP STATE_SEARCHES>
    <TMPL_IF SEARCHES>
    <TMPL_LOOP SEARCHES>
<td class="smallfont1" width="330"><TMPL_VAR INDENT><TMPL_VAR DESC></td>
<td class="smallfont1" width="170"><TMPL_VAR INDENT>5-14</td>
<td class="smallfont1" width="130" align="right"><TMPL_VAR INDENT><TMPL_IF HAS_SURCHARGE>(Incl Surchg) </TMPL_IF>$<TMPL_VAR PRICE></td>
</tr>

	</TMPL_LOOP>
	<TMPL_ELSE>
<td class="unifont1" width="470" colspan="2"><TMPL_VAR INDENT><TMPL_VAR INDENT>[No Searches Selected]</td>
<td class="smallfont1" width="130" align="right"><TMPL_VAR INDENT>$0.00</td>
</tr>
	</TMPL_IF>
  </TMPL_LOOP>
  <TMPL_ELSE>
<td class="unifont1" width="470" colspan="2"><TMPL_VAR INDENT><TMPL_VAR INDENT>[No State Searches Available]</td>
<td class="smallfont1" width="130" align="right"><TMPL_VAR INDENT>$0.00</td>
</tr>
  </TMPL_IF>
</TMPL_UNLESS>

  <TMPL_IF FEDERAL>
  <TMPL_LOOP FEDERAL>
<tr><td colspan="3">&nbsp;</td></tr>    
<tr>
<td class="unifont1" colspan="3"><TMPL_VAR INDENT><b>FEDERAL - <TMPL_VAR DISTRICT></b></td>
</tr>
    <TMPL_IF SEARCHES>
    <TMPL_LOOP SEARCHES>
<tr>
<td class="smallfont1" width="330"><TMPL_VAR INDENT><TMPL_VAR DESC></td>
<td class="smallfont1" width="170"><TMPL_VAR INDENT>5-14</td>
<td class="smallfont1" width="130" align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE></td>
</tr>
  	</TMPL_LOOP>
	<TMPL_ELSE>
<tr>
<td class="unifont1" width="470" colspan="2"><TMPL_VAR INDENT><TMPL_VAR INDENT>[No Searches Selected]</td>
<td class="smallfont1" width="130" align="right"><TMPL_VAR INDENT>$0.00</td>
</tr>
  	</TMPL_IF>
  </TMPL_LOOP>
  </TMPL_IF>

<tr><td>&nbsp;</td></tr>
</TMPL_LOOP>
</TMPL_IF>

<TMPL_IF NAME=MANUAL_SELECT_STATE_LOOP>
<tr>
  <td class="unifont1" colspan="3" align="center"><hr width="90%"><b>Custom State Searches</b></td>
</tr>
<tr><td colspan="3">&nbsp;</td></tr>
<TMPL_LOOP NAME=MANUAL_SELECT_STATE_LOOP>
<tr class="ct">
  <td class="smallfont1" nowrap="1"><TMPL_VAR INDENT><TMPL_VAR NAME=DESC></td>
  <td class="smallfont1"><TMPL_VAR INDENT>5-14 DAYS</td>
  <td class="smallfont1" align='right'><TMPL_VAR INDENT><TMPL_IF SURCHARGE>(Incl Surchg) </TMPL_IF>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>
</tr>
<tr>
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
<tr>
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr><td colspan="3">&nbsp;</td></tr>
</TMPL_IF>
<TMPL_IF NAME=MANUAL_SELECT_COUNTY_LOOP>
<tr>
  <td class="unifont1" colspan="3" align="center"><hr width="90%"><b>Custom County Searches</b></td>
</tr>
<tr><td colspan="3">&nbsp;</td></tr>
<TMPL_LOOP NAME=MANUAL_SELECT_COUNTY_LOOP>
<tr class="ct">
  <td class="smallfont1"><TMPL_VAR INDENT><TMPL_VAR NAME=DESC></td>
  <td class="smallfont1"><TMPL_VAR INDENT>5-14 DAYS</td>
  <td class="smallfont1" align='right'><TMPL_VAR INDENT><TMPL_IF SURCHARGE>(Incl Surchg) </TMPL_IF>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>
</tr>
<tr>
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
<tr>
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr><td colspan="3">&nbsp;</td></tr>
</TMPL_IF>
<TMPL_IF NAME=MANUAL_SELECT_FEDERAL_LOOP>
<tr>
  <td class="unifont1" colspan="3" align="center"><hr width="90%"><b>Custom Federal District Searches</b></td>
</tr>
<tr><td colspan="3">&nbsp;</td></tr>
<TMPL_LOOP NAME=MANUAL_SELECT_FEDERAL_LOOP>
<tr class="ct">
  <td class="smallfont1"><TMPL_VAR INDENT><TMPL_VAR NAME=DESC></td>
  <td class="smallfont1"><TMPL_VAR INDENT>5-14 DAYS</td>
  <td class="smallfont1" align='right'><TMPL_VAR INDENT>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>
</tr>
<tr>
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
<tr><td colspan="3">&nbsp;</td></tr>
<tr>
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_IF>

<tr><td class="unifont1" align="right" colspan="3"><b>Total: $<TMPL_VAR TOTAL></b><INPUT TYPE=HIDDEN NAME="TOTAL" VALUE="<TMPL_VAR TOTAL>"></td></tr>
</table>
<TMPL_ELSE>
<TMPL_IF NAME="ERROR_MSG">
<b><TMPL_VAR NAME="ERROR_MSG"><BR><br>

<form name="TU" action="<TMPL_VAR ACTION_COURT>" method="POST">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=HIDDEN NAME="EVENT" VALUE="">
<input type="BUTTON" name="PREVIOUS_BUTTON" value="CHANGE CARD" onClick="send_event('MANAGE/COURT_MANAGE_CARDS');">
</form>
<TMPL_ELSE>
<b>We are unable to process you request at this time.<BR><br>
Please try again in a few minutes.</b>
</TMPL_IF>
</TMPL_IF>

<P>

<div>

</body>
</html>
<!-- END request_submitted.tpl -->
