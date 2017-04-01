        <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        
        <title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>

        <link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css"/>
        <link href="<TMPL_VAR NAME='CSSPATH'>/demo.css" rel="stylesheet" type="text/css"/>
        <link href="<TMPL_VAR NAME='CSSPATH'>/feedback.css" rel="stylesheet" type="text/css"/>
        <link href="<TMPL_VAR NAME='CSSPATH'>/report.css" rel="stylesheet" type="text/css" />
        <link href="<TMPL_VAR NAME='CSSPATH'>/search_popup.css" rel="stylesheet" type="text/css" />
   
		<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/jquery-1.10.2.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/jquery-print-this-1.5.js"></script>

		<script>var $j = jQuery.noConflict();</script>

        <script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v3/utility.js"></script>
        <script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v3/decision.js"></script>
        <script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v3/initReport.js"></script>
        <TMPL_IF NAME="LOAD_GOOGLE_JS">
            <script src="<TMPL_VAR NAME='JSPATH'>/gmapslib.js"></script>
        </TMPL_IF>

        <script>
        $j(function() {
            $j.each($j('a.searchresultslink'), function() {
                var t = $j(this).attr('href').replace('opener.decision_win','decision_win');
                $j(this).attr('href',t);   
            });
        });
        </script>
<script type="text/javascript">
var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
function open_help() {
    if (vertical == 'gov' || vertical == 'le') {
        window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov");
    } else {
        window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx");
    }
}
function open_help_html(help_url,help_win) {
    general_win('<TMPL_VAR NAME=HLPPATH>/' + help_url,help_win,780,490,1,1,1,1,1,0);
}
function myaccount_event(param1,param2) { // IE 6 Needs
    if (param2) {
  setTimeout(function(){send_event(param1,param2)},250);
    } else {
  setTimeout(function(){send_event(param1)},250);
    }
    showpw();
}
</script>
