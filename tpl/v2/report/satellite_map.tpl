<!-- begin satellite_map.tpl -->
<HTML>
<HEAD>
<TITLE>Showing <TMPL_VAR NAME=PAGE_TITLE></TITLE>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="https://maps.googleapis.com/maps/api/js?v=3&client=gme-lexisnexisrisksolutions&sensor=false" type="text/javascript"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/gmapslib.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>

</HEAD>
<body id="hdNoLogo">
	<TMPL_INCLUDE NAME="google_map_body.tpl">
</BODY>
<script>
	initMap('S');
</script>
</HTML>
<!-- end satellite_map.tpl -->
