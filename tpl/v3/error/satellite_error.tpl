<!-- BEGIN satellite_error.tpl -->
<html>
<head>
<title>Error</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/BASE.css" rel="stylesheet" type="text/css">
</head>

<body onload="window.focus();opener.closewaitwin();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#e6e7de">

<TMPL_INCLUDE NAME="../logo.tpl">

<center>
<br /><br /><br />
<table border="0" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td class="unifont1">
		<TMPL_IF NAME="USER_MSG">
			<TMPL_VAR NAME=USER_MSG>
	    <TMPL_ELSE>
			We're sorry... the Satellite Image is not responding at this time. You will not be charged for this request.
	    </TMPL_IF>
    <p />
	</td>
  </tr>  
</table>
<center>
</body>
</html>
<!-- END satellite_error.tpl -->
