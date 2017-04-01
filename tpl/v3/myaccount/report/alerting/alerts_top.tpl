<html>
<head>
<title>Person Alert</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/options_selection.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post" onsubmit="return validate();">
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="ALERT/SAVE_NEW">
      <INPUT type=hidden NAME="RECID_REPORT" VALUE="<TMPL_VAR NAME="RECID_REPORT">">
      <INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MIDDLE_NAME">">
      <INPUT type=hidden NAME="SUFFIX" VALUE="<TMPL_VAR NAME="SUFFIX">">
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
      <INPUT type=hidden NAME="AGE" VALUE="<TMPL_VAR NAME="AGE">">
      <INPUT type=hidden NAME="ADDRESS" VALUE="<TMPL_VAR NAME="ADDRESS">">
      <INPUT type=hidden NAME="CSZ" VALUE="<TMPL_VAR NAME="CSZ">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE>">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE_EXTRA" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_EXTRA>">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE_ALERT_TEXT" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_ALERT_TEXT>">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE_FORMAT" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_FORMAT>">

<div align="center" id="mainbody">
