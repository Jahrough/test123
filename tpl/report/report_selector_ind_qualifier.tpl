<!-- Begin report_selector_ind_qualifier.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Comprehensive Health Care Provider Report -- Select your report</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();" class="alternatebody">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"/></div>

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="REFERENCE_CODE" value="<TMPL_VAR REFERENCE_CODE>"/>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PREFS">
      <INPUT type=hidden NAME="RECID_REPORT" VALUE="<TMPL_VAR NAME="RECID_REPORT">">
      <INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <input type="hidden" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>"/>
      <input type="hidden" name="CITY" value="<TMPL_VAR NAME=CITY>"/>
      <input type="hidden" name="STATE" value="<TMPL_VAR NAME=STATE>"/>
      <input type="hidden" name="ZIP" value="<TMPL_VAR NAME=ZIP>"/>
      <input type="hidden" name="ZIP4" value="<TMPL_VAR NAME=ZIP4>"/>
      <INPUT type=hidden NAME="SSN" VALUE="<TMPL_VAR NAME="SSN">">
      <INPUT type=hidden NAME="COMPANY_NAME" VALUE="<TMPL_VAR NAME="COMPANY_NAME">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MIDDLE_NAME">">
      <input type="hidden" name="MI" value="<TMPL_VAR NAME=MI>"/>
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
    <div align="center" id="mainbody">

<br />
      <TABLE WIDTH="100%" BORDER="0" CELLPADDING="0" CELLSPACING="0">
	<TR>
	<td width"45%" align="right">

    <table width="260" cellspacing="0" cellpadding="0" border="0"
     onmouseover="comp_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/comp_header_noprice_over.gif'" onmouseout="comp_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/comp_header_noprice.gif'">
	<TR>
	  <td width="260" colspan="3"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/report_menu/comp_header_noprice.gif" width="260" height="22" border="0" id="comp_header"/></td>
	</TR>
	<TR>
	  <TD width="13"><img src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_left.gif" alt="" width="13" height="375"/></TD>
	  <TD class="reportselectbox" align="center" valign="top" width="242">
	    <table border="0" cellpadding="0" cellspacing="0" width="237" height="220">
	      <tr height="200">
		<td align="left" width="237" valign="top" height="200">
		  <span class="reportselectboxtext">
			    &#149; Verification<br>
			    &#149; Others Using Same SSN <br>
			    &#149; Date and Location where SSN Issued <br>
			    &#149; Business Address Summary <br>
			    &#149; Business Phone Matches <br>
			    &#149; Professional Licenses <br>
			    &#149; DEA Licenses <br>
			    &#149; Corporate Affiliations <br>
			    &#149; Group Affiliations <br>
			    &#149; Hospital Affiliations  <br>
			    &#149; Education  <br>
			    &#149; Sanctions  <br>
			    &#149; Sexual Offenses<br>
			    &#149; Possible Criminal Records<br>
			    &#149; Bankruptcy<br>
			    &#149; Liens &amp; Judgments<br>
		  <br>
		  </span></td>
	      </tr>
	      <tr height="35">
		<td align="center" height="35" width="237">
		<table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
		  <tr>
<TMPL_IF DISABLE_IND_FR_QUALIFIER_REPORT>
		    <td><input tabindex="5" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled></td>
<TMPL_ELSE>
		    <td><input name="BUTTON" tabindex="5" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/IND_FR_QUALIFIER_REPORT');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
</TMPL_IF>
		  </tr>
		</table>
		</td>
	      </tr>
	    </table>
	  </TD>
	  <TD width="5"><img src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_right.gif" alt="" width="5" height="375"/></TD>
	</TR>
	<TR>
	  <td width="260" colspan="3"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/report_menu/generic_footer.gif" width="260" height="22" border="0"/></td>
	</TR>
  <tr height="10">
    <td colspan="3" height="10" class="unifont2pt">&nbsp;</td>
  </tr>
      </TABLE>
	</td>
	<td width="5%" valign="top">
	    &nbsp;
	</td>
	<td width="50%" valign="top">
    <table width="260" cellspacing="0" cellpadding="0" border="0"
     onmouseover="custom_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/custom_header_over.gif'" onmouseout="custom_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/custom_header.gif'">
      <tr>
        <td width="260" colspan="3"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/report_menu/custom_header.gif" width="260" height="22" border="0" id="custom_header"/></td>
      </tr>
      <tr>
        <td><img src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_left.gif" alt="" width="13" height="90"/></td>
        <td class="reportselectbox" align="center" width="242">
          <table border="0" cellpadding="0" cellspacing="0" width="230" height="70">
            <tr>
              <td align="left" width="230" valign="top"><b><span class="reportselectboxtext"><br>(Pick and choose your report selections.)<br><br></span></b></td>
            </tr>
            <tr>
              <td align="center" width="230">
                <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
                  <tr>
   <TMPL_IF DISABLE_IND_QUALIFIER_REPORT>
                    <td><input tabindex="4" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled></td>
   <TMPL_ELSE>
                    <td>
                      <input name="BUTTON" tabindex="4" class="rb" type="button"
                       value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>"
                       onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/IND_QUALIFIER_REPORT');disable_buttons('BUTTON');"
                       onMouseOut="flip_style(this,'rb');">
                    </td>
   </TMPL_IF>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </td>
        <td><img src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_right.gif" alt="" width="5" height="90"/></td>
        </td>
      </tr>
      <tr>
        <td width="260" colspan="3"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/report_menu/generic_footer.gif" width="260" height="22" border="0"/></td>
      </tr>
      <tr height="10">
        <td colspan="3" height="10" class="unifont2pt">&nbsp;</td>
      </tr>
    </table>
  </td>
</tr>
</table>

  </td>
</tr>
</table>

  </div>
</form>
</body>
</html>
<!-- End report_selector_ind_qualifier.tpl -->
