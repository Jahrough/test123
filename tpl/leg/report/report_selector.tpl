<!-- Begin leg/report/report_selector.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Report -- Select your report</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();" class="alternatebody">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PREFS">
      <INPUT type=hidden NAME="RECID_REPORT" VALUE="<TMPL_VAR NAME="RECID_REPORT">">
      <INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <INPUT type=hidden NAME="ADDRESS" VALUE="<TMPL_VAR NAME="ADDRESS">">
      <INPUT type=hidden NAME="CSZ" VALUE="<TMPL_VAR NAME="CSZ">">
      <INPUT type=hidden NAME="AGE" VALUE="<TMPL_VAR NAME="AGE">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MIDDLE_NAME">">
      <INPUT type=hidden NAME="SUFFIX" VALUE="<TMPL_VAR NAME="SUFFIX">">
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
    <div align="center" id="mainbody">
      <table border="0" cellpadding="0" cellspacing="0" width="100%" height="20">
        <tr height="20">
	  <td height="20" class="unifont2pt">&nbsp;</td>
	</tr>
      </table>
      <table border="0" cellpadding="0" cellspacing="0" width="575" height="582">
        <tr height="225">
	<TMPL_UNLESS DELETE_SUMMARY_REPORT>
        <td valign="top" align="center" width="283" height="225">
          <TABLE WIDTH=260 BORDER=0 CELLPADDING=0 CELLSPACING=0 onmouseover="summary_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/summary_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>_over.gif'" onmouseout="summary_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/summary_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>.gif'">
            <TR>
	      <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/summary_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>.gif" width="260" height="22" border="0" id="summary_header"></td>
            </TR>
            <TR>
              <TD width="13"><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_left.gif" WIDTH=13 HEIGHT=165></TD>
              <TD align="center" class="reportselectbox" width="242">
                <table border="0" cellpadding="0" cellspacing="0" width="233" height="154">
                  <tr height="107">
                    <td align="left" width="233" height="107" valign="top">
                      <span class="reportselectboxtext">
                        &#149; Address Summary<br>
                        &#149; Others using SSN<br>
                        &#149; Date/Locations where SSN Issued<br>
                        &#149; Census Data<br>
                        &#149; Bankruptcy Indicator<br>
                        &#149; Property Indicator<br>
                        &#149; Corporate Affiliations Indicator<br>
                        <br>
                        <br>
                      </span>
                    </td>
                  </tr>
                  <tr height="35">
                    <td align="center" height="35" width="233" valign="bottom">
		    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
		      <tr>
		      <TMPL_IF NAME="DISABLE_SUMMARY_REPORT">
			<td><input tabindex="1" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled></td>
		      <TMPL_ELSE>
		        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/SUMMARY');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
		      </TMPL_IF>
		      </tr>
		    </table>
                    </td>
                  </tr>
                </table>
              </TD>
              <TD width="5"><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_right.gif" WIDTH=5 HEIGHT=165></TD>
            </TR>
            <TR>
	      <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/generic_footer.gif" width="260" height="22" border="0"></td>
            </TR>
	    <tr height="10">
	      <td colspan="3" height="10" class="unifont2pt">&nbsp;</td>
	    </tr>
	  </table>
        </TMPL_UNLESS>	

	
        <TMPL_UNLESS NAME="DELETE_ASSET_REPORT">
          <TABLE WIDTH=260 BORDER=0 CELLPADDING=0 CELLSPACING=0  onmouseover="assets_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/assets_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>_over.gif'" onmouseout="assets_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/assets_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>.gif'">
            <TR>
	      <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/assets_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>.gif" width="260" height="22" border="0" id="assets_header"></td>
            </TR>
            <TR>
              <TD width="13"><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_left.gif" WIDTH=13 HEIGHT=145></TD>
              <TD class="reportselectbox" align="center" width="242">
                <table border="0" cellpadding="0" cellspacing="0" width="232">
                  <tr>
                    <td align="left" width="232" valign="top">
                      <span class="reportselectboxtext">
                        &#149; Summary Report<br>
                        &#149; Property Deeds &amp; Assessments<br>
                        &#149; Vehicle Registrations<br>
                        &#149; Watercraft<br>
                        &#149; FAA Pilots &amp; FAA Aircraft<br>													
                        &#149; UCC Filings<br>
			<br>
                      </span>
                    </td>
                  </tr>
                  <tr>
                    <td align="center" width="232">
		    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
		      <tr>
		      <TMPL_IF NAME="DISABLE_ASSET_REPORT">
		        <td><input tabindex="3" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled></td>
		      <TMPL_ELSE>
		        <td><input name="BUTTON" tabindex="3" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/ASSET');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
		      </TMPL_IF>
		      </tr>
		    </table>
                    </td>
                  </tr>
                </table>
              </TD>
              <TD width="5"><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_right.gif" WIDTH=5 HEIGHT=145></TD>
            </TR>
            <TR>
	      <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/generic_footer.gif" width="260" height="22" border="0"></td>
            </TR>
	    <tr height="10">
	      <td colspan="3" height="10" class="unifont2pt">&nbsp;</td>
	    </tr>
          </TABLE>
	  </TMPL_UNLESS>

          <!-- Add the new stuff here -->
        <TMPL_UNLESS DELETE_PRE_LIT_REPORT>
          <TABLE WIDTH=260 BORDER=0 CELLPADDING=0 CELLSPACING=0  onmouseover="pre_lit_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/pre_lit_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>_over.gif'" onmouseout="pre_lit_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/pre_lit_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>.gif'">
            <TR>
	      <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/pre_lit_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>.gif" width="260" height="22" border="0" id="pre_lit_header"></td>
            </TR>
            <TR>
              <TD width="13"><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_left.gif" WIDTH=13 HEIGHT=254></TD>
              <TD align="center" class="reportselectbox" width="242">
                <table border="0" cellpadding="0" cellspacing="0" width="233" height="200">
                  <tr height="107">
                    <td align="left" width="233" height="107" valign="top">
                      <span class="reportselectboxtext">
                        &#149; Summary Report (Indicators and more)<br>
                        &#149; Address Summary<br>
                        &#149; Property Deeds &amp; Assessments<br>
                        &#149; Motor Vehicles<br>
                        &#149; Watercraft<br>
                        &#149; UCC Filings<br>
                        &#149; People at Work<br>
                        &#149; Bankruptcies<br>
                        &#149; Liens and Judgments<br>
                        &#149; Deceased Indicator<br>
                        <!--&#149; Marriage/Divorce Records<br>
                        &#149; USA PATRIOT Act Search<br> -->
                        &#149; Professional Licenses<br>
                      </span>
                    </td>
                  </tr>
                  <tr height="35">
                    <td align="center" height="50" width="233" valign="bottom">
		    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
		      <tr>
		      <TMPL_IF NAME="DISABLE_PRE_LIT_REPORT">
			<td><input tabindex="1" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled></td>
		      <TMPL_ELSE>
		        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/PRE_LIT');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
		      </TMPL_IF>
		      </tr>
		    </table>
                    </td>
                  </tr>
                </table>
              </TD>
              <TD width="5"><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_right.gif" WIDTH=5 HEIGHT=254></TD>
            </TR>
            <TR>
	      <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/generic_footer.gif" width="260" height="22" border="0"></td>
            </TR>
	    <tr height="10">
	      <td colspan="3" height="10" class="unifont2pt">&nbsp;</td>
	    </tr>
	  </table>
        </TMPL_UNLESS>

          <TMPL_UNLESS NAME="DELETE_CONTACT_CARD_REPORT">
          <TABLE WIDTH=260 BORDER=0 CELLPADDING=0 CELLSPACING=0  onmouseover="contact_card_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/contact_card_header_over.gif'" onmouseout="contact_card_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/contact_card_header.gif'">
            <TR>
              <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/contact_card_header.gif" width="260" height="22" border="0" id="contact_card_header"></td>
            </TR>
            <TR>
              <TD><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_left.gif" WIDTH=13 HEIGHT=225></TD>
              <TD class="reportselectbox" align="center" width="242">
                <table border="0" cellpadding="0" cellspacing="0" width="233" height="200">
                  <tr>
                   <td align="left" width="232" valign="top">
                      <span class="reportselectboxtext">
                       &#149; Summary Report (Indicators and more)<br>
                       &#149; Contact List<br>
                         &nbsp;&nbsp;&nbsp;&nbsp;&#149; At Home<br>
                         &nbsp;&nbsp;&nbsp;&nbsp;&#149; At Work<br>
                         &nbsp;&nbsp;&nbsp;&nbsp;&#149; Through Family<br>
                         &nbsp;&nbsp;&nbsp;&nbsp;&#149; Through Associates<br>
                         &nbsp;&nbsp;&nbsp;&nbsp;&#149; Phones Plus (optional)<br>
                         &nbsp;&nbsp;&nbsp;&nbsp;&#149; Through Neighbors<br>
                         &nbsp;&nbsp;&nbsp;&nbsp;&#149; Possible Relocation<br>
                       &#149; Address Summary<br>
                       &#149; Bankruptcy Filings<br>
                      <br>
                      </span>
                    </td>
                  </tr>
                  <tr>
                    <td align="center"width="233" valign="bottom">
                    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
                      <tr>
                      <TMPL_IF NAME="DISABLE_CONTACT_CARD_REPORT">
                        <td><input tabindex="4" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled></td>
                      <TMPL_ELSE>
                        <td><input name="BUTTON" tabindex="4" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/CONTACT_CARD_REPORT');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
                      </TMPL_IF>
                      </tr>
                    </table>
                    </td>
                  </tr>
                </table>
                </td>
              <TD><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_right.gif" WIDTH=5 HEIGHT=225></TD>
              </TD>
            </TR>
            <TR>
              <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/generic_footer.gif" width="260" height="22" border="0"></td>
            </TR>
            <tr height="10">
              <td colspan="3" height="10" class="unifont2pt">&nbsp;</td>
            </tr>
          </TABLE>
          </TMPL_UNLESS>

	</td>    
        
	<td align="center" height="231" valign="top">

       <TMPL_UNLESS NAME="DELETE_PEOPLE_FINDER_REPORT">
          <TABLE WIDTH=260 BORDER=0 CELLPADDING=0 CELLSPACING=0 onmouseover="people_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/people_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>_over.gif'" onmouseout="people_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/people_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>.gif'">
            <TR>
              <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/people_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>.gif" width="260" height="22" border="0" id="people_header"></td>
            </TR>
            <TR>
              <TD width="13"><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_left.gif" WIDTH=13 HEIGHT=204></TD>
              <TD align="center" class="reportselectbox" width="242">
                <table border="0" cellpadding="0" cellspacing="0" width="234" height="151">
                  <tr height="109">
                    <td align="left" width="234" height="109" valign="top">
                      <span class="reportselectboxtext">
                        &#149; Summary Report<br>
                        &#149; Phone Summary<br>
                      &nbsp;&nbsp;&nbsp;&nbsp;&#149; Current Listed Phones<br>
                      &nbsp;&nbsp;&nbsp;&nbsp;&#149; Unverified phones <br>
                      &nbsp;&nbsp;&nbsp;&nbsp;&#149; Current Neighbor Phones<br>
                      &nbsp;&nbsp;&nbsp;&nbsp;&#149; Possible Relatives Phones - (2 Degrees)<br>
                      &nbsp;&nbsp;&nbsp;&nbsp;&#149; Possible Associate Phones<br>
                      &nbsp;&nbsp;&nbsp;&nbsp;&#149; Phones at Historical Addresses<br>
                        &#149; Bankruptcy Filings<br>
                        &#149; Corporate Affiliations
                      </span>
                    </td>
                  </tr>
                  <tr height="44">
                    <td align="center" height="50" width="234" valign="bottom">
                    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
                      <tr>
                      <TMPL_IF NAME="DISABLE_PEOPLE_FINDER_REPORT">
                        <td><input tabindex="2" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled></td>
                      <TMPL_ELSE>
                        <td><input name="BUTTON" tabindex="2" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/SHORT_PHONE_REPORT');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
                      </TMPL_IF>
                      </tr>
                    </table>
                    </td>
                  </tr>
                </table>
              </TD>
              <TD width="5"><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_right.gif" WIDTH=5 HEIGHT=204></TD>
            </TR>
            <TR>
              <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/generic_footer.gif" width="260" height="22" border="0"></td>
            </TR>
            <tr height="10">
              <td colspan="3" height="10" class="unifont2pt">&nbsp;</td>
            </tr>
          </TABLE>
        </TMPL_UNLESS>


	<TMPL_UNLESS DELETE_COMPREHENSIVE_REPORT>
          <TABLE WIDTH="260" BORDER="0" CELLPADDING="0" CELLSPACING="0" onmouseover="comp_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/comp_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>_over.gif'" onmouseout="comp_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/comp_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>.gif'">
            <TR>
	      <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/comp_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>.gif" width="260" height="22" border="0" id="comp_header"></td>
            </TR>
            <TR>
              <TD width="13"><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_left.gif" WIDTH=13 HEIGHT=375></TD>
              <TD class="reportselectbox" align="center" valign="top" width="242">
                <table border="0" cellpadding="0" cellspacing="0" width="237" height="220">
                  <tr height="200">
                    <td align="left" width="237" valign="top" height="200">
                      <span class="reportselectboxtext">
                                &#149; Summary Report<br>
                                &#149; Bankruptcy<br>
                                &#149; Liens and Judgments<br>
                                &#149; UCC Filings<br>
                                &#149; People at Work<br>
                                &#149; Driver Licenses<br>
                                &#149; Vehicle Registrations<br>
                                &#149; Property<br>
                                &#149; Watercraft<br>
                                &#149; FAA Pilots<br>
                                &#149; FAA Aircraft<br>
                                &#149; Professional Licenses<br>
                                &#149; Florida Accidents<br>
                                &#149; Voter Registration<br>
                                &#149; Hunting/Fishing Permits<br>
                                &#149; Concealed Weapons Permits<br>
                                &#149; Associates<br>
                                &#149; Relatives (3 Degrees)<br>
                                &#149; Neighbors<br>
                                &#149; Criminal Records<br>
                                &#149; Sexual Offenders<br>
			        <TMPL_IF DO_SHOW_PHONES_PLUS>&#149; Phones Plus<br></TMPL_IF>
		      <br>
                      </span></td>
                  </tr>
                  <tr height="35">
                    <td align="center" height="35" width="237">
		    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
		      <tr>
		      <TMPL_IF NAME="DISABLE_COMPREHENSIVE_REPORT">
		        <td><input tabindex="5" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled></td>
		      <TMPL_ELSE>
		        <td><input name="BUTTON" tabindex="5" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/COMPREHENSIVE');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
		      </TMPL_IF>
		      </tr>
		    </table>
                    </td>
                  </tr>
                </table>
              </TD>
              <TD width="5"><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_right.gif" WIDTH=5 HEIGHT=375></TD>
            </TR>
            <TR>
	      <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/generic_footer.gif" width="260" height="22" border="0"></td>
            </TR>
          </TABLE>
	</TMPL_UNLESS>

	  <TMPL_UNLESS DELETE_COMP_REPORT>
          <TABLE WIDTH=260 BORDER=0 CELLPADDING=0 CELLSPACING=0  onmouseover="custom_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/custom_header_over.gif'" onmouseout="custom_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/custom_header.gif'">
            <TR>
	      <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/custom_header.gif" width="260" height="22" border="0" id="custom_header"></td>
            </TR>
            <TR>
              <TD><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_left.gif" WIDTH=13 HEIGHT=90></TD>
              <TD class="reportselectbox" align="center" width="242">
                <table border="0" cellpadding="0" cellspacing="0" width="230" height="70">
                  <tr>
                    <td align="left" width="230" valign="top"><b><span class="reportselectboxtext"><br>(Pick and choose your report selections.)<br><br></span></b></td>
                  </tr>
                  <tr>
                    <td align="center" width="230">
		    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
		      <tr>
		      <TMPL_IF NAME="DISABLE_COMP_REPORT">
		        <td><input tabindex="4" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled></td>
		      <TMPL_ELSE>
		        <td><input name="BUTTON" tabindex="4" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/SHORT_REPORT');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
		      </TMPL_IF>
		      </tr>
		    </table>
                    </td>
                  </tr>
                </table>
		</td>
              <TD><IMG src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_right.gif" WIDTH=5 HEIGHT=90></TD>
              </TD>
            </TR>
            <TR>
	      <td width="260" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/report_menu/generic_footer.gif" width="260" height="22" border="0"></td>
            </TR>
	    <tr height="10">
	      <td colspan="3" height="10" class="unifont2pt">&nbsp;</td>
	    </tr>
          </TABLE>
	  </TMPL_UNLESS>

	  </td>
        </tr>
      </table>
  </div>
</form>
</body>
</html>
<!-- End leg/report/report_selector.tpl -->

