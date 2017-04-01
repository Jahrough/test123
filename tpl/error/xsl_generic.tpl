<!-- BEGIN xsl_generic.tpl -->
<html>
<head>
<title>Error</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>

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
