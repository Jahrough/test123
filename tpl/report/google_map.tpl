<!-- begin google_map.tpl -->
<HTML>
<HEAD>
<TITLE>Showing <TMPL_VAR NAME=PAGE_TITLE></TITLE>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="https://maps-api-ssl.google.com/maps?file=api&amp;v=2&client=gme-lexisnexisrisksolutions&sensor=false" type="text/javascript"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/gmapslib.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>

</HEAD>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
	<TMPL_INCLUDE NAME="google_map_body.tpl">
</BODY>

<script>
initMap();
</script>
</HTML>
<!-- end google_map.tpl -->
