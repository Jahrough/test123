<html>
<head>
<title>National Motor Vehicle Accidents Coverage</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/coverage.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
</head>
<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td class="coveragetitle" align="center" width="80%"><B>National Motor Vehicle Accidents<br/>Coverage Area</B></td>
    <td align="right" width="20%" valign="top"><TMPL_INCLUDE NAME="print_button.tpl"></td>
  </tr>
</table>
<br>
<table border="0" cellpadding="10" cellspacing="0" width="100%">
  <tr>
    <td class="coveragetext" valign="top" colspan="3">
    <b>STATES COVERED:</b>
    </td>
  </tr>
  <TMPL_UNLESS INS>
  <tr>
    <td class="coveragetext" width="33%" valign="top">
    ALABAMA<br>
    ALASKA<br>
    ARIZONA<br>
    COLORADO<br>
    CONNECTICUT<br>
    DELAWARE<br>
    DISTRICT OF COLUMBIA<br>
    FLORIDA<br>
    GEORGIA<br>
    <TMPL_IF LE>
        HAWAII<br>
    </TMPL_IF>
    IDAHO<br>
    ILLINOIS<br>
    </td>
    <td class="coveragetext" width="34%" valign="top">
    KANSAS<br>
    MAINE<br>
    MARYLAND<br>
    MASSACHUSETTS<br>
    MICHIGAN<br>
    MINNESOTA<br>
    MONTANA<br>
    NEW JERSEY<br>
    NEW MEXICO<br>

    <TMPL_IF LE>
	NORTH CAROLINA<br>
    <TMPL_ELSE>
    <TMPL_IF GOV>
	NORTH CAROLINA<br>
    <TMPL_ELSE>
	NORTH CAROLINA<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    </TMPL_IF>
    </TMPL_IF>

    NORTH DAKOTA<br>
    OHIO<br>
    </td>
    <td class="coveragetext" width="33%" valign="top">
    <TMPL_IF LE>
        OKLAHOMA<br>
    </TMPL_IF>
    OREGON<br>
    <TMPL_IF LE>
        PENSYLVANIA<br>
    </TMPL_IF>
    SOUTH CAROLINA<br>
    SOUTH DAKOTA<br>
    TENNESSEE<br>
    <TMPL_IF LE>
        UTAH<br>
    </TMPL_IF>
    VERMONT<br>
    WEST VIRGINIA<br>
    WISCONSIN<br>
    <TMPL_IF LE>
        WYOMING<br>
    </TMPL_IF>
    </td>
  </tr>
  <TMPL_ELSE>
  <tr>
    <td class="coveragetext" width="33%" valign="top">
    ALABAMA<br>
    ALASKA<br>
    ARIZONA<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    ARKANSAS<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    CALIFORNIA<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    COLORADO<br>
    CONNECTICUT<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    DELAWARE<br>
    DISTRICT OF COLUMBIA<br>
    FLORIDA<br>
    GEORGIA<br>
    HAWAII<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    IDAHO<br>
    ILLINOIS<br>
    INDIANA<br>
    IOWA<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10">
    </td>
    <td class="coveragetext" width="34%" valign="top">
    KANSAS<br>
    KENTUCKY<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    LOUISIANA<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    MAINE<br>
    MARYLAND<br>
    MASSACHUSETTS<br>
    MICHIGAN<br>
    MINNESOTA<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br> 
    MISSISSIPPI<br>
    MISSOURI<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    MONTANA<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    NEBRASKA<br>
    NEVADA<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    NEW HAMPSHIRE<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    NEW JERSEY
    </td>
    <td class="coveragetext" width="33%" valign="top">
    NEW MEXICO<br>
    NEW YORK<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    NORTH CAROLINA<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    NORTH DAKOTA<br>
    OHIO<br>
    OKLAHOMA<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    OREGON<br>
    PENNSYLVANIA<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    RHODE ISLAND<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    SOUTH CAROLINA<br>
    SOUTH DAKOTA<br>
    TENNESSEE<br>
    TEXAS<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    UTAH<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    VERMONT<br>
    VIRGINIA<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    WASHINGTON<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><br>
    WEST VIRGINIA<br>
    WISCONSIN<br>
    WYOMING<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10">
    </td>
  </tr>
  </TMPL_UNLESS>
</table>

<table border="0" cellpadding="10" cellspacing="0">
  <tr>
    <td class="coveragetext">
<TMPL_IF LE>
<TMPL_ELSE>
<TMPL_IF GOV>
<TMPL_ELSE>
    <sup><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"></sup> Approximate Date of Loss is a required search field. 
    <br>
    <sup><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"></sup> Valid DPPA purpose is required and the approximate Date of Loss is a required search field.
    <br><br>
</TMPL_IF>
</TMPL_IF>
    <b>NOTE:</b>&nbsp; Coverage does not represent all accidents for a given coverage area.
    </td>
  </tr>
</table>
<br>

</body>
</html>
