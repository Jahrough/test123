<!-- Begin provider_screening_error.tpl -->
<html>
<head>
<title>Provider Integrity Scan Error</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
</head>

<body onLoad="window.focus();" onBlur="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>

<form name="Provider Integrity Scan Error" action="<TMPL_VAR NAME=ACTION>" method="post"> 
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

<div align="center"> 

<table cellspacing="4" cellpadding="4" width="600" border="0" align="center">
  <tr>
    <td class="unifont1" style="font-size: 12pt; font-style: italic; text-align: center;" owrap="nowrap"><TMPL_VAR CONTENT></td>
  </tr>
  <tr>
    <td align="center"><input class="bs" type="button" value="CLOSE" onClick="window.close();"></td>
  </tr>
</table>

</div>

</form>
</body>
</html>
<!-- End provider_screening_error.tpl -->

