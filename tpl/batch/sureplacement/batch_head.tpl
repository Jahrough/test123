<html>
<head>
<title>Batch Wizard <TMPL_VAR TITLE_PAGE></title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/batch.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/sureplacement_batch.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/show_please_wait.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
</head>

<body onUnLoad="closewaitwin();" onLoad="fillappendfields();" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">

<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>

<FORM NAME="BATCH" action="<TMPL_VAR NAME=ACTION_BATCH>" METHOD="POST" <TMPL_VAR FORM_ARGS>>
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <INPUT TYPE=HIDDEN NAME=IS_SUREPLACEMENT_BATCH VALUE="1"> 

 
<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#cccccc">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/BATCH/batch22.gif" width="680" height="66" border="0"></td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td class="headerseparator" height="10"><img border="0" height="10" width="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
