<!-- BEGIN dtr_error.tpl -->
<html>
<head>
<title>Error</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<TMPL_INCLUDE NAME=generic_header.tpl>

<center>
<br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td class="redHead"><br /><br /><br /><TMPL_VAR NAME="DTR_ERROR_MESSAGE">
      <TMPL_IF NAME="DTR_RECOMMENDATION">
	<br /><br /><br /><TMPL_VAR NAME="DTR_RECOMMENDATION">
      </TMPL_IF>
    </td>
  </tr>
</table>
<center>

</body>
</html>
<!-- END dtr_error.tpl -->
