<!-- Begin court_header.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Court Search Ordering Wizard</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/court/court.js"></script>
</head>

<body ONLOAD="window.focus()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<form name="TU" action="<TMPL_VAR ACTION_COURT>" method="POST">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type="HIDDEN" NAME="EVENT" VALUE="">
  <INPUT type="HIDDEN" NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type="HIDDEN" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <INPUT TYPE="HIDDEN" NAME="IM_A_REPORT" VALUE="1">
  <INPUT TYPE="HIDDEN" NAME="BUSINESS_CS" VALUE="<TMPL_VAR NAME=BUSINESS_CS>">
  <INPUT TYPE="HIDDEN" NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">

<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis</a></h2>
</div>
<TMPL_ELSE>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td bgcolor="#cccccc" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="1" height="10"><br><img src="<TMPL_VAR NAME=IMGPATH>/cs_hd.gif" border="0" width="177" height="23"><br><br></td>
  </tr>
<!-- Stretching Begins Here -->
  <tr>
    <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
<!-- End Stretching -->
</table>
</TMPL_IF>


<br>

<!-- End court_header.tpl -->
