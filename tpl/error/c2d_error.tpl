<!-- BEGIN c2d_error.tpl -->
<html>
<head>
<title>Error</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
</head>

<body onload="window.focus();opener.closewaitwin();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<TMPL_INCLUDE NAME=generic_header.tpl>

<center>
<br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td class="unifont1">
We're sorry... the <TMPL_IF NAME="SERVICE"><TMPL_VAR NAME="SERVICE"><TMPL_ELSE>Property Deeds</TMPL_IF> Document does not exist. You will not be charged for this <TMPL_IF NAME="ERROR_TYPE"><TMPL_VAR NAME="ERROR_TYPE"><TMPL_ELSE>image</TMPL_IF> request.
    <P>
	</td>
  </tr>  
</table>
<center>
</body>
</html>
<!-- END c2d_error.tpl -->
