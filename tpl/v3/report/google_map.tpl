<!DOCTYPE html>
<html>
    <head>
        <title>Showing <TMPL_VAR NAME=PAGE_TITLE></title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        
        <title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>
        <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/demo2.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/sprites.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/skin.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/menus_alerts.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/main_menu.css" rel="stylesheet" type="text/css">
        <style>
        .pageFooterWrapper{min-width:500px;}
            .google-maps img {
                max-width: none !important;
            }
        .gm-style img { max-width: none !important; }
        .gm-style label { width: auto; display: inline !important; }
        .gmnoprint img {
            max-width: none; 
        }
        </style>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui-1.10.3.custom.min.js"></script>
        <script>
            var $j = jQuery.noConflict();
            var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
            var help_path = '<TMPL_VAR NAME=HLPPATH>';
        </script>
        <TMPL_IF NAME="LOAD_GOOGLE_JS">
            <script src="<TMPL_VAR NAME='JSPATH'>/gmapslib.js"></script>
        </TMPL_IF>
		<script src="https://maps.googleapis.com/maps/api/js?v=3.25&client=gme-lexisnexisrisksolutions" type="text/javascript"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/gmapslib.js"></script>
		<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>
    </head>
   <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="header_info.tpl">
    	<TMPL_INCLUDE NAME="report/google_map_body.tpl">
        <TMPL_INCLUDE NAME="footer_info.tpl">
    </body>

    <script>
        $j(function(){
            initMap();
        });
    </script>

</html>
    
