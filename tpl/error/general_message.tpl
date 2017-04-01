<!-- BEGIN general_message.tpl -->
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
<h2><a trackid="hdr_top_logo"><TMPL_IF IRB>IRBsearch, LLC<TMPL_ELSE>LexisNexis Accurint</TMPL_IF></a></h2>
</div>

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
