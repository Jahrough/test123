<!-- BEGIN general_message.tpl -->
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
    <td class="unifont1">
    <TMPL_IF STATUS>STATUS: <TMPL_VAR STATUS></TMPL_IF> <P>
    <TMPL_VAR MESSAGE>
    </td>
  </tr>
</table>
<center>

</body>
</html>
<!-- END general_message.tpl -->
