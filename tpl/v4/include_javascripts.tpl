<script src="<TMPL_VAR NAME=JSPATH>/v4/libs/jquery-1.11.1.min.js"></script>
<script src="<TMPL_VAR NAME=JSPATH>/v4/libs/jquery-ui-1.10.3.min.js"></script>

<!-- JQUERY VALIDATE (Must load before ie8fixes.js) -->
<script src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/jquery-validate/jquery.validate.min.js"></script>

<script>
    var cssPath               = "<TMPL_VAR NAME='CSSPATH'>";
    var jsPath                = "<TMPL_VAR NAME='JSPATH'>";
    var imgPath               = "<TMPL_VAR NAME='IMGPATH'>";
    var googleChartPath       = "<TMPL_VAR NAME='GOOGLE_CHART_PATH'>";
    var isIE8                 = false;
    
    var _ref_code_min_length  = "<TMPL_VAR NAME=REFERENCE_CODE_MIN_LENGTH>";
    var _ref_code_max_length  = "<TMPL_VAR NAME=REFERENCE_CODE_MAX_LENGTH>";
    var _require_ref_code     = "<TMPL_VAR NAME=REQUIRE_REF_CODE>";
    var _ref_code_is_std      = <TMPL_IF REF_CODE_IS_STD>true<TMPL_ELSE>false</TMPL_IF>;
    var _ref_code_missing_msg = "<TMPL_VAR NAME=REQUIRE_REF_CODE_MISSING_MSG>";
    var _ref_code_regex       = "<TMPL_VAR NAME=REF_CODE_REGEX>";
    var _ref_code_err_msg     = "<TMPL_VAR NAME=REF_CODE_ERR_MSG>";
    var _ref_code_group_value = "<TMPL_VAR NAME=GROUP_REFERENCE_CODE>";
    var _ref_code_group_value_err_msg = "<TMPL_VAR NAME=REF_CODE_GROUP_VALUE_ERROR_MSG>";
    var company_disabled_searches = "<TMPL_VAR COMPANY_DISABLED_SEARCHES>";
    var _has_results = <TMPL_IF RESULTS>true<TMPL_ELSE>false</TMPL_IF>;
    var _allow_browser_caching = <TMPL_IF ALLOW_BROWSER_CACHING>true<TMPL_ELSE>false</TMPL_IF>;
    var _tab_limit = <TMPL_IF TAB_LIMIT><TMPL_VAR NAME="TAB_LIMIT"><TMPL_ELSE>25</TMPL_IF>;
    var _tto = <TMPL_IF SESSION_TIME_TO_TIMEOUT><TMPL_VAR NAME=SESSION_TIME_TO_TIMEOUT><TMPL_ELSE>600</TMPL_IF>;
    var _count_down = <TMPL_IF SESSION_EXPIRE_COUNTDOWN><TMPL_VAR NAME=SESSION_EXPIRE_COUNTDOWN><TMPL_ELSE>600</TMPL_IF>;
    
    <TMPL_IF NAME=PORTAL_FCRA_PURPOSE_VALUE>
        var fcra_entry_disclaimer_shown = true;
        var fcra_exit_disclaimer_shown = false;
    <TMPL_ELSE>
        var fcra_entry_disclaimer_shown = false;
        var fcra_exit_disclaimer_shown = true;
    </TMPL_IF>
    window.ismainmenu = <TMPL_IF MAIN_MENU>true<TMPL_ELSE>false</TMPL_IF>;
</script>

<!-- IE 8&9 Compatibility -->
<!--[if lt IE 9]>
    <script>
        isIE8 = true;
        _allow_browser_caching = false;
        if (!window.console) console = {log: function() {}};
    </script>
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/ie8fixes.css" />
    <script src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/html5shiv.min.js"></script>
    <script defer src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/respond.min.js"></script>
    <script defer src="<TMPL_VAR NAME='JSPATH'>/v4/ie8fixes.js"></script>
<![endif]-->
<!--[if IE 9]>
    <script>
        if (!window.console) console = {log: function() {}};
    </script>
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/ie9fixes.css" />
<![endif]-->

<!-- link for Google Maps -->
<TMPL_UNLESS WEB20_PRINT_RESULTS>
<TMPL_UNLESS MID>
<script async defer src="https://maps.googleapis.com/maps/api/js?v=3.exp&client=gme-lexisnexisrisksolutions"></script>
</TMPL_UNLESS>
</TMPL_UNLESS>

<!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> 
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/jquery.placeholder.min.js"></script> 

<!-- BOOTSTRAP JS -->
<script src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/bootstrap.min.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/collapsemultiple.min.js"></script>

<!-- Data tables -->
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/datatables/jquery.dataTables.min.js"></script>

<!-- JQUERY MASKED INPUT -->
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/masked-input/jquery.maskedinput.min.js"></script>

<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/jquery.highlight-5.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/usertiming.min.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/web20_markers.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/web20_help.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/search_caching.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/form_caching.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/preloading_custom_css.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/accurint.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/search.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/print_dialog.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/utility.js"></script>    
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/init.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/web20_validate.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/mainmenu.js"></script>
<TMPL_IF DEV_ENV>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/debugmode.js"></script>
</TMPL_IF>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/vkbeautify.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/back_forward.js"></script>

<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/refresh_session.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/jquery.printThis.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/jquery.downloadThis.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/ln/lexis.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/ln/misc.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/framework.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/tab_logic.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/new_report_logic.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/modal_logic.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/search_favorites.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/jq-scrollTo.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/speechbubbles.js"></script>

<script defer src="<TMPL_VAR NAME='JSPATH'>/v2/search.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/quick_search.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/shared.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/common.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/bootstrap-accessibility_1.0.3.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/iframe_content.js"></script>
<script>
    $(function() {
        if(_has_results) {
            $('#widget-grid .row').first().hide();
        }
    });
</script>
