<!-- begin esri_map.tpl -->
<HTML>
<HEAD>
<TITLE>Map</TITLE>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
</HEAD>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<!-- begin header -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43"></td>
  </tr>
  <tr>
    <td height="10" colspan="2" align="left" valign="bottom"><img alt="" border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img alt="" border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
<!-- end header -->

<FORM METHOD="POST" ACTION="<TMPL_VAR NAME=ACTION_MISC>" NAME="MAP">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT TYPE="HIDDEN" NAME="ADDRESS" VALUE="<TMPL_VAR NAME=ADDRESS>">
<INPUT TYPE="HIDDEN" NAME="CITY" VALUE="<TMPL_VAR NAME=CITY>">
<INPUT TYPE="HIDDEN" NAME="STATE" VALUE="<TMPL_VAR NAME=STATE>">
<INPUT TYPE="HIDDEN" NAME="ZIP" VALUE="<TMPL_VAR NAME=ZIP>">
<INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
<INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
<INPUT type=hidden NAME="EVENT" VALUE="ESRI/INITIAL_MAP">
<INPUT type=hidden NAME="X" VALUE="<TMPL_VAR NAME=X>">
<INPUT type=hidden NAME="MINX" VALUE="<TMPL_VAR NAME=MINX>">
<INPUT type=hidden NAME="MAXX" VALUE="<TMPL_VAR NAME=MAXX>">
<INPUT type=hidden NAME="Y" VALUE="<TMPL_VAR NAME=Y>">
<INPUT type=hidden NAME="MINY" VALUE="<TMPL_VAR NAME=MINY>">
<INPUT type=hidden NAME="MAXY" VALUE="<TMPL_VAR NAME=MAXY>">
<INPUT type=hidden NAME="ZIP_ONLY" VALUE="<TMPL_VAR NAME=ZIP_ONLY>">
<INPUT type=hidden NAME="ZOOM" VALUE="<TMPL_VAR NAME=ZOOM>">
<INPUT TYPE="HIDDEN" NAME="mouse_mode" VALUE="center">
<TABLE BORDER="0" CELLPADDING="0" ALIGN="CENTER">
<TR>
	<TD COLSPAN="3">
    <table border="0" width="100%">
        <tr>
        <td align="left" valign="top">
            <span style="FONT-SIZE: 10pt; FONT-FAMILY: Arial; color: #003399; font-weight: bold;">Mapped Address:</span>
            <span style="FONT-SIZE: 8pt; FONT-FAMILY: Arial; font-weight: bold;">
            <br />
			<TMPL_IF NAME="ZIP_ONLY">
			Address not found. Displaying the location for Zip Code <TMPL_VAR NAME=ZIP>
			<TMPL_ELSE>
			<TMPL_VAR NAME=ADDRESS>, <TMPL_VAR NAME=CITY> <TMPL_VAR NAME=STATE> <TMPL_VAR NAME=ZIP>
			</TMPL_IF>
            </span>
        </td>
        <td align="right">
            <img name="slider"  src="<TMPL_VAR NAME=IMGPATH>/mapquest/slider_<TMPL_VAR NAME=ZOOM>.gif" alt="Zoom Control" width="357" height="52" border="0" usemap="#slider">
        </td>
        </tr>
    </table></TD>
</TR>
<TR>
	<TD><A HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/PAN&DIRECTION=NorthWest&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/nw_blue.gif" border="0"></A></TD>
	<TD ALIGN="CENTER"><A HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/PAN&DIRECTION=North&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/n_blue.gif" border="0"></A></TD>
	<TD><A HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/PAN&DIRECTION=NorthEast&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/ne_blue.gif" border="0"></A></TD>
</TR>
<TR>
	<TD><A HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/PAN&DIRECTION=West&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/w_blue.gif" border="0"></A></TD>
	<TD ALIGN="CENTER">
		<IMG BORDER="1" WIDTH="640" HEIGHT="400" SRC="<TMPL_VAR NAME=MAP_URL>">
	</TD>
	<TD><A HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/PAN&DIRECTION=East&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/e_blue.gif" border="0"></A></TD>
</TR>
<TR>
	<TD><A HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/PAN&DIRECTION=SouthWest&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/sw_blue.gif" border="0"></A></TD>
	<TD ALIGN="CENTER"><A HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/PAN&DIRECTION=South&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/s_blue.gif" border="0"></A></TD>
	<TD><A HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/PAN&DIRECTION=SouthEast&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/se_blue.gif" border="0"></A></TD>
</TR>
<TR>
	<TD>&nbsp;</TD>
	<TD ALIGN=CENTER>
		<TABLE BORDER=0 WIDTH=500 ALIGN=CENTER>
		<TR>
			<TD ALIGN=CENTER><FONT SIZE=1>
&copy; 2005 Tele Atlas North America, Inc. / Geographic Data Technology,Inc.  All rights reserved. <br>
This material is proprietary and the subject of copyright protection and other intellectual property rights owned by or licensed to Tele Atlas North America, Inc. / Geographic Data Technology, Inc. The use of this material is subject to the terms of a license agreement. You will be held liable for any unauthorized copying
or disclosure of this material. These maps/directions are informational only. No representation is made or warranty given as to their content, road conditions, or route usability, or expeditiousness. User assumes
all risk of use. Accurint and their suppliers assume no responsibility for any loss or delay resulting from such use.
			</FONT></TD>
		</TR>
		</TABLE>
	</TD>
  <TD VALIGN=TOP>&nbsp;&nbsp;&nbsp;&nbsp;</TD>
</TR>
</TABLE>
</FORM>
<map name="slider">
        <area shape="circle" coords="340,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=1&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="circle" coords="302,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=2&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="circle" coords="265,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=3&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="circle" coords="228,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=4&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="circle" coords="191,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=5&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="circle" coords="154,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=6&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="circle" coords="118,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=7&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="circle" coords="82,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=8&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="circle" coords="46,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=9&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="circle" coords="10,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=10&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="rect" coords="281,0,343,12" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=1&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="rect" coords="225,34,287,46" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=4&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="rect" coords="59,34,121,46" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=7&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area shape="rect" coords="7,0,69,12" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=10&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
</map>
<MAP NAME="fine_tune">

<AREA SHAPE="poly" COORDS="38,19 44,28 56,27 60,15 54,6 42,9 37,16"
      HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=10&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
<AREA SHAPE="poly" COORDS="6,19 12,27 24,27 29,18 25,7 13,5 6,12 6,18"
      HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=ESRI/ZOOM&ZOOM_LEVEL=7&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">

</MAP>
</BODY>
</HTML>
<!-- end esri_map.tpl -->
