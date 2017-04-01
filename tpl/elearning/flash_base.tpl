<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Accurint General - <TMPL_VAR NAME=WHICH_HELP></title>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body bgcolor="#F1F4F5">
<form name="FLASH_HELP" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<center>
	<object  codebase="https://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="815" height="615">
		<param name="movie" value="/app/help/elearn/<TMPL_VAR NAME=FNAME>">
		<param name="quality" value="high">
		<param name="loop" value="0">
		<embed src="/app/help/elearn/<TMPL_VAR NAME=FNAME>" width="815" height="615" loop="0" quality="high" pluginspage="https://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" menu="false"></embed>
	</object>
</center>
</form>
</body>
</html>
