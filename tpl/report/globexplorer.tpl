<!-- begin globexplorer_pan_zoom.tpl -->
<HTML>
<HEAD>
	<TITLE>Satellite Map</TITLE>
	<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
	<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
	<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
</HEAD>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
    
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

<TABLE BORDER="0" CELLPADDING="0" ALIGN="CENTER">
<TR>
	<TD align="center">
	<br>
    <table border="0" cellpadding="0" cellspacing="0">
	<form name="SATELLITE" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
	    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
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
        <tr>
	  <td align="left" valign="top" class="myaccountlabel">Mapped Address:</td>
          <TMPL_IF NAME="SHOW_DUMMY_SAT_IMAGE">
	  <td align="left" valign="top" class="smallfont1">&nbsp;&nbsp;12345 MAIN STREET, ANYTOWN, FL 12345</td>
          <TMPL_ELSE>
	  <td align="left" valign="top" class="smallfont1">&nbsp;&nbsp;<TMPL_VAR NAME=ADDRESS>, <TMPL_VAR NAME=CITY> <TMPL_VAR NAME=STATE> <TMPL_VAR NAME=ZIP></td>
          </TMPL_IF>
	</tr>
	<tr>
	  <td colspan="2" align="center" valign="top"><br><img name="slider"  src="<TMPL_VAR NAME=IMGPATH>/mapquest/slider_<TMPL_VAR NAME=ZOOM_LEVEL>.gif" alt="Zoom Control" width="357" height="52" border="0" usemap="#slider"></td>
	</tr>	
	<TMPL_IF NAME="IMAGE_DATE">
		<tr><td colspan="2">&nbsp;&nbsp;</td></tr>
		<tr><td colspan="2" align="center" valign="top" class="smallfont1">Image taken on <TMPL_VAR NAME=IMAGE_DATE></td></tr>
	</TMPL_IF>
    </table>
	</form>
	</TD>
</TR>
<TR>
<TD>

<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="500" ALIGN="CENTER">
<TR>
	<TD><A class="pan" HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/PAN&DIRECTION=NorthWest&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/nw_blue.gif" border="0"></A></TD>
	<TD ALIGN="CENTER"><A class="pan" HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/PAN&DIRECTION=North&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/n_blue.gif" border="0"></A></TD>
	<TD><A class="pan" HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/PAN&DIRECTION=NorthEast&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/ne_blue.gif" border="0"></A></TD>
</TR>
<TR>
	<TD><A class="pan" HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/PAN&DIRECTION=West&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/w_blue.gif" border="0"></A></TD>
	<TD ALIGN="CENTER">
          <TMPL_IF NAME="SHOW_DUMMY_SAT_IMAGE">
	    <img alt="" border="1" height="400" width="400" src="<TMPL_VAR NAME='IMGPATH'>/mapquest/dummy_satellite_image.jpg">
          <TMPL_ELSE>
	    <img alt="" border="1" height="400" width="400" src="<TMPL_VAR NAME=ACTION_MISC>?<TMPL_VAR NAME=GET_IMAGE_URL>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
          </TMPL_IF>
	</TD>
	<TD><A class="pan" HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/PAN&DIRECTION=East&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/e_blue.gif" border="0"></A></TD>
</TR>
<TR>
	<TD><A class="pan" HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/PAN&DIRECTION=SouthWest&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/sw_blue.gif" border="0"></A></TD>
	<TD ALIGN="CENTER"><A class="pan" HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/PAN&DIRECTION=South&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/s_blue.gif" border="0"></A></TD>
	<TD><A class="pan" HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/PAN&DIRECTION=SouthEast&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/mapquest/se_blue.gif" border="0"></A></TD>
</TR>
</TABLE>

</TD>
</TR>

<map name="slider">
        <area class="zoom" shape="circle" coords="340,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=1&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="circle" coords="302,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=2&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="circle" coords="265,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=3&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="circle" coords="228,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=4&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="circle" coords="191,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=5&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="circle" coords="154,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=6&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="circle" coords="118,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=7&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="circle" coords="82,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=8&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="circle" coords="46,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=9&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="circle" coords="10,23, 7" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=10&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="rect" coords="281,0,343,12" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=1&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="rect" coords="225,34,287,46" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=4&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="rect" coords="59,34,121,46" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=7&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
        <area class="zoom" shape="rect" coords="7,0,69,12" href="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=10&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
</map>
<MAP NAME="fine_tune">

<area class="zoom" shape="poly" coords="38,19 44,28 56,27 60,15 54,6 42,9 37,16"
      HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=10&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">
<area class="zoom" shape="poly" coords="6,19 12,27 24,27 29,18 25,7 13,5 6,12 6,18"
      HREF="<TMPL_VAR NAME=ACTION_MISC>?EVENT=SATELLITE/ZOOM&ZOOM_LEVEL=7&<TMPL_VAR NAME=PARAMS>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>">

</MAP>

<TMPL_IF NAME="SHOW_DUMMY_SAT_IMAGE">
<script type="text/javascript">
    if (document.getElementsByTagName) {
        var links = document.getElementsByTagName('a');
        for (var i in links) {
            if (links[i].className == 'pan') {
                links[i].href = 'javascript:alert("This feature is disabled in demo mode")';
            }
        }
        links = document.getElementsByTagName('area');
        for (var i in links) {
            if (links[i].className == 'zoom') {
                links[i].href = 'javascript:alert("This feature is disabled in demo mode")';
            }
        }
    }
</script>
</TMPL_IF>

</BODY>
</HTML>
<!-- end globexplorer_pan_zoom.tpl-->
