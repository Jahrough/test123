<!-- BEGIN xsl_generic.tpl -->
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
    <td class="redHead">
    <TMPL_IF NAME=ERROR_MESSAGE_OVERRIDE>
    <br /><br /><br /><TMPL_VAR NAME=ERROR_MESSAGE_OVERRIDE>
    <TMPL_ELSE>
    <br /><br /><br />We are currently experiencing technical difficulties.
	<br /><br /><br />
	Please try again in a few minutes.
  </TMPL_IF>
    </td>
  </tr>
  <tr>
    <td class="redHead">
	<br />Error Code:<TMPL_VAR NAME="ERROR_CODE">
  </tr>
  <tr>
  
</table>
<center>

</body>
</html>
<!-- END xsl_generic.tpl -->
