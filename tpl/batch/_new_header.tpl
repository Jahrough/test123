<html>
	<head>
		<title><TMPL_VAR TITLE><TMPL_IF TITLE_PAGE> <TMPL_VAR TITLE_PAGE></TMPL_IF></title>
		<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
		<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>

		<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/batch.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/show_please_wait.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
		<script>
		close_x = new Image();
		close_x.src = "/bps/images/closex.gif";
		</script>
	</head>

	<body onUnLoad="closewaitwin();" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<TMPL_IF ENABLE_V2>
<div id="hd"><span id="hdr_top_logo"></span></div>
</TMPL_IF>

	<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>

	<form name="BATCH" action="<TMPL_VAR NAME=ACTION_BATCH>" method="POST" <TMPL_VAR FORM_ARGS>>
  		<TMPL_INCLUDE NAME=common_hidden_input.tpl>
		<input type=hidden name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
		<input type=hidden name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
 
<TMPL_UNLESS ENABLE_V2>
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
</TMPL_UNLESS>
