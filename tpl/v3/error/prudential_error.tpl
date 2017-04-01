<!-- prudential_error.tpl -->
<html>
<head>
<title>Error</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<TMPL_UNLESS FROM_WEB>
<XML ID="XMLID">
    <XMLDATA>
	<status><TMPL_VAR NAME="XML_STATUS"></status>
	<reportreference></reportreference>
	<prureference></prureference>
	<reportdate></reportdate>
    </XMLDATA>
</XML>
</TMPL_UNLESS>

<TMPL_INCLUDE NAME="../logo.tpl">

<center>
<br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <TMPL_IF NAME="INIT_CHECK_ERR_MSG">
    <td class="unifont1"><TMPL_VAR NAME="INIT_CHECK_ERR_MSG"></td>
    <TMPL_ELSE>
    <td class="unifont1">There were problem with the provided inputs. Plese enter correct inputs.</td>
    </TMPL_IF>
  </tr>
</table>
<center>

</body>
</html>
<!-- End prudential_error.tpl -->
