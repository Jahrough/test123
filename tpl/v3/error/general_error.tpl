<!-- general_error.tpl -->
<html>
<head>
<title>Error</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<TMPL_INCLUDE NAME="../logo.tpl">

<center>
<br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <TMPL_IF NAME="ERROR_MESSAGE">
    <td class="unifont1"><TMPL_VAR NAME="ERROR_MESSAGE"></td>
    <TMPL_ELSE>
    <td class="unifont1">There was a problem initializing the application.</td>
    </TMPL_IF>
  </tr>
</table>
<center>

</body>
</html>
<!-- End general_error.tpl -->
