        <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        
        <title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>

        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui.min.js"></script>
        <script>
            var $j = jQuery.noConflict();
            var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
            var help_path = '<TMPL_VAR NAME=HLPPATH>';
        </script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v2/search.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/utility.js"></script>
	    <script src="<TMPL_VAR NAME='JSPATH'>/v3/tips.js"></script>
        <TMPL_IF NAME="LOAD_GOOGLE_JS">
            <script src="<TMPL_VAR NAME='JSPATH'>/gmapslib.js"></script>
        </TMPL_IF>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/header_info_help.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/make_table_508.js"></script>
        <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/demo.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/demo2.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/sprites.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/skin.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/menus_alerts.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function myaccount_event(param1,param2) { // IE 6 Needs
    if (param2) {
  setTimeout(function(){send_event(param1,param2)},250);
    } else {
  setTimeout(function(){send_event(param1)},250);
    }
    showpw();
}

$j(function() {
    $j('#mainbody').css('margin-top','50px');
});
$j(function() {
	$j.each($j('a.glb'),function(){
		var text = $j(this).text();
		var content = text.replace('Click', 'Select');
		$j(this).attr('title',content);
	});
});
</script>