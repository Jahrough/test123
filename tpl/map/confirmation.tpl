<!-- Begin map/confirmation.tpl -->
<html>
<head>
<title>Map Address</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="MAP_ADDRESS" action="<TMPL_VAR NAME=ACTION_COURT>" method="post"> 

      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
      <INPUT type=hidden NAME="EVENT" VALUE="MAP/CREATE_MAP">
      <INPUT type=hidden NAME="COST_CONFIRMATION" VALUE="1">
      <INPUT type=hidden NAME="STREET_ADDRESS" VALUE="<TMPL_VAR NAME="STREET_ADDRESS">">
      <INPUT type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME="CITY">">
      <INPUT type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME="STATE">">
      <INPUT type=hidden NAME="ZIP" VALUE="<TMPL_VAR NAME="ZIP">">
      <INPUT type=hidden NAME="ZIP4" VALUE="<TMPL_VAR NAME="ZIP4">">

<div align="center" id="mainbody">
<img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"><br>
<table border="0" cellpadding="0" cellspacing="0" width="620" bgcolor="#e6e7de">
  <tr>
    <td align="center" colspan="2"><a href="javascript:send_event('MAP/CREATE_MAP')"  onClick="showpw();"><img src="<TMPL_VAR NAME=IMGPATH>/view_map.gif" width="116" height="29"  border="0"></a></td>
  </tr>
</table>
<img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"><br>
<table border="1" cellpadding="0" cellspacing="0" width="640" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table border="0" cellpadding="2" cellspacing="2">
      <tr>
        <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="15" height="1" border="0"></td>
	<td valign="top" align="left" class="unifont1" nowrap><font color="#003399"><b>Address To Map:</b></font><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="25" height="1" border="0"></td>
	<td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="15" height="1" border="0"></td>
      </tr>
      <tr>
        <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="15" height="1" border="0"></td>
	<td valign="top" align="left" class="smallfont1"><b><TMPL_VAR NAME=STREET_ADDRESS>, <TMPL_VAR NAME=CITY> <TMPL_VAR NAME=STATE> <TMPL_VAR NAME=ZIP><TMPL_IF NAME=ZIP4>-<TMPL_VAR NAME=ZIP4></TMPL_IF></b></td>
	<td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="15" height="1" border="0"></td>
      </tr>
    </table>
    </div>  
    </td>
  </tr>
</table>
<img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"><br>
<table border="0" cellpadding="0" cellspacing="0" width="640" bgcolor="#e6e7de">
  <tr>
    <td width="100%" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%" bgcolor="#7e86c0">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="5" cellspacing="0" width="100%" bgcolor="#e6e7de">
	<!--
	  <tr>
	    <td class="unifont1"><font color="#003399"><TMPL_UNLESS HIDE_PRICES><b>Base Map Price:&nbsp;&nbsp;$.10</b><TMPL_ELSE><b>Base Map Features:</b></TMPL_UNLESS>&nbsp;</font></td>
	  </tr>
	-->
	  <tr>
	    <td valign="top" class="smallfont1">
	    <b>NOTE:</b> Some addresses may not map exactly. Examples of this may include, but are not limited to: PO Boxes, rural routes, typographical errors and incomplete or missing address information.
	    </td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>

        </td>
      </tr>
    </table>
    </td>
    </tr>
  <tr>
    <td width="640" valign="top">
    
    <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="20" border="0"><br>
    
    </td>
  </tr>
  <tr>
    <td width="640" valign="top" align="center">
<img src="<TMPL_VAR NAME=IMGPATH>/usa_map.gif" width="500" height="300" border="0"><br>
    
    
    </td>
  </tr>
  <tr>
    <td width="640" valign="top">
    
    <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="5" border="0"><br>
    
    </td>
  </tr>
</table>



</div>


</form>
</body>
</html>
<!-- End map/confirmation.tpl -->
