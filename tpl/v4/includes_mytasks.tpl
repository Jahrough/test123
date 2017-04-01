<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>

<link href="<TMPL_VAR NAME='CSSPATH'>/jquery-ui.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/font-awesome.min.css">

<!-- Consumers First Title, Inc Styles : Please note (smartadmin-production.css) was created using LESS variables -->
<!--<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/smartadmin-production.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/base.css">-->

<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/mytasks/mytasks.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/misc.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/main.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/main_menu.css">

<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/evolution.css"> <!-- mz added -->
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/utility.css">

<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/search_page.css">
<!--<link rel="stylesheet" type="text/css" media="screen,print" href="<TMPL_VAR NAME='CSSPATH'>/search_results.css">-->
<!--<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/portal.css"> <!-- its got some stuff -->
<!--<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/Results.css">-->
<!--<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/smartlinx-report.css">-->
<!--<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/source_doc.css">-->
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/icons.css">
<!--<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/tabs.css">-->
<!--<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/template.css">-->
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/amlsolutions.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/modal_styles.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/favorites_bar.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/phone_finder_styles.css"> <!-- idk if needed -->
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/bootstrap-accessibility_1.0.3.css">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/font-awesome.min.css">

<!-- remove this when done -->
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/history-preferences.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/myaccount/groups.css">
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/mytasks/mytasks.css">


<script data-pace-options='{ "restartOnRequestAfter": true }' src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/pace/pace.min.js"></script>
<script src="<TMPL_VAR NAME=JSPATH>/v4/libs/jquery-1.11.1.min.js"></script>
<script src="<TMPL_VAR NAME=JSPATH>/v4/libs/jquery-ui-1.10.3.min.js"></script>
<script> 
    var cssPath = "<TMPL_VAR NAME='CSSPATH'>"; 
    var isIE8                 = false;
</script>
	
<!--[if lt IE 9]>
    <script>
        isIE8 = true;
        _allow_browser_caching = false;
        if (!window.console) console = {log: function() {}};
    </script>
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/ie8fixes.css" />
    <script src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/html5shiv.min.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/respond.min.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/v4/ie8fixes.js"></script>
<![endif]-->
<!--[if IE 9]>
    <script>
        if (!window.console) console = {log: function() {}};
    </script>
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/ie9fixes.css" />
<![endif]-->
        
<!-- link for Google Maps -->
<TMPL_UNLESS WEB20_PRINT_RESULTS>
<script async defer src="https://maps.googleapis.com/maps/api/js?v=3.exp&client=gme-lexisnexisrisksolutions"></script>
</TMPL_UNLESS>

<!-- IMPORTANT: APP CONFIG -->
<script src="<TMPL_VAR NAME='JSPATH'>/v4/app.config.js"></script> <!-- is this needed from smartadmin i bet???? -->

<!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
<script src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> 
<script src="<TMPL_VAR NAME='JSPATH'>/v4/jquery.placeholder.min.js"></script> 
<!-- BOOTSTRAP JS -->
<script src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/bootstrap.min.js"></script>

<!-- JARVIS WIDGETS -->
<!--<script src="<TMPL_VAR NAME='JSPATH'>/v4/smartwidgets/jarvis.widget.min.js"></script>-->

<!-- Data tables -->
<script src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/datatables/jquery.dataTables.min.js"></script>

<!-- EASY PIE CHARTS -->
<!--<script src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>-->

<!-- JQUERY VALIDATE -->
<script src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/jquery-validate/jquery.validate.min.js"></script>

<!-- JQUERY MASKED INPUT -->
<script src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/masked-input/jquery.maskedinput.min.js"></script>

<!-- MAIN APP JS FILE -->
<script src="<TMPL_VAR NAME='JSPATH'>/v4/app.min.js"></script> <!-- is this needed from smartadmin i bet???? -->
<script src="<TMPL_VAR NAME='JSPATH'>/v4/usertiming.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/web20_markers.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/search_caching.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/preloading_custom_css.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/accurint.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/search.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/print_dialog.js"></script>    
<script src="<TMPL_VAR NAME='JSPATH'>/v4/init.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/web20_validate.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/utility.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/ln/lexis.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/ln/misc.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/framework.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/tab_logic.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/new_report_logic.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/modal_logic.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/search_favorites.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/jq-scrollTo.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/speechbubbles.js"></script>

<!-- <script src="<TMPL_VAR NAME='JSPATH'>/v2/search.js"></script> -->
<script src="<TMPL_VAR NAME='JSPATH'>/v4/quick_search.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/bootstrap-accessibility_1.0.3.js"></script>
        
<script>
var _has_results = <TMPL_IF RESULTS>true<TMPL_ELSE>false</TMPL_IF>;
var _allow_browser_caching = <TMPL_IF ALLOW_BROWSER_CACHING>true<TMPL_ELSE>false</TMPL_IF>;
var _display_reports_in_tabs = <TMPL_IF DISPLAY_REPORTS_IN_TABS>true<TMPL_ELSE>false</TMPL_IF>;
var _tab_limit = <TMPL_IF TAB_LIMIT><TMPL_VAR NAME="TAB_LIMIT"><TMPL_ELSE>25</TMPL_IF>;
$(function() {
	/*
    init_tabFunctionality();
    if(_has_results) {
        $('#widget-grid .row').first().hide();
    }
    setup_single_or_split_fields();
    show_single_or_split_fields();
    init_portal_decisions();
    ready_smartlinx_report('d03188d6-227c-470a-951f-e709168f9544');
    $('#quick-search').remove();
	*/
});
/*
function setup_single_or_split_fields() {
    $('.only_one_field').on('click', function() {
        _aField = $(this).data('inputfield');
        _altField = $(this).data('altinputfield');
        if (true == this.checked) {
            $('#'+_aField).closest('.row').show();
            $('#'+_altField).closest('.row').hide();
        } else {
            $('#'+_aField).closest('.row').hide();
            $('#'+_altField).closest('.row').show();
        }
    });
}

function show_single_or_split_fields() {
    $('.only_one_field').each( function() {
        // the double click below is to induce show/hide of correct single
        // field rows
		
        var last;
        var middle;
        var first;
        var full;

		//restore values after click, if available.
        if (document.getElementById("LAST_NAME"))
		  last = $('#LAST_NAME')[0].value;
        if (document.getElementById("MI")) 
		  middle = $('#MI')[0].value;
        if (document.getElementById("FIRST_NAME")) 
    	  first = $('#FIRST_NAME')[0].value;
        if (document.getElementById("NAME_FULL")) 
		  full = $('#NAME_FULL')[0].value;
		
        this.click();
        this.click();
		
        if (document.getElementById("LAST_NAME"))
		  $('#LAST_NAME')[0].value = last;
        if (document.getElementById("MI")) 
		  $('#MI')[0].value = middle;
        if (document.getElementById("FIRST_NAME")) 
		  $('#FIRST_NAME')[0].value = first;
        if (document.getElementById("NAME_FULL")) 
		  $('#NAME_FULL')[0].value = full;
    });
}
*/
function setaction(action1) {
    document.SEARCH.action = action1;
}

function submitevent() {

    if (document.SEARCH.MYACCTAB) {
        document.SEARCH.MYACCTAB.value = 0;
    }

    var df = document.SEARCH;
    //toggle_loading();
    df.submit();
}

function srchDecisionEvt(evt)
{
    var df = document.SEARCH;
    df.EVENT.value = evt;
    
    if(df.FEIN && df.FEIN != ''){
        df.FEIN.value = df.FEIN.value.replace('-','');
    }
    
    //toggle_loading();
    //clearPlaceholders();
    if (_allow_browser_caching) {
        submit_ajax_form(df);
    } else {
        df.submit();
    }
    //df.submit();
}

function setevent(event) {
    document.SEARCH.EVENT.value = event;
}

function ready_smartlinx_report(answerSetId) {
    answerSetId = 'd03188d6-227c-470a-951f-e709168f9544';
    try {
        $('#reportBody').css({'font-size': '1.0em'});
    } catch(exp){ /* */ }
    try {
        $('.sectionNotes').unbind('click');
        $(".sectionNotes").click(function() {
            var target = $(this).data("target");
            if (target != undefined)
                $(target).toggle();
            else
                $(this).parent().find(".notesblock").toggle();
        });

        // This ties the Print/Download button's click event to the saveNotes function
        $(".persist-report-trigger").unbind('click');
        $(".persist-report-trigger").click({aAnswerSetId: answerSetId}, saveNotes);
    } catch(exp){ /* */ }
}

function saveNotes(event) {
    var values = new Array();

    // notes
    $('.notesblock').find('textarea,:text').each(function()
    {
        var value = $(this).val();
        if (value != null && value != '')
            values.push({ key: $(this).attr('id'), value: value });
    });

    // collapsed sections
    $("#report fieldset:not(.button)").each(function()
    {
        var isCollapsed = $(this).children("legend").find("i").hasClass("expandTrigger");
        if (isCollapsed)
        {
            values.push({ key: $(this).attr("id") + "Collapsed", value: true });
        }
    });

    // expanded rows
    var expandedRows = {};
    $(".brownTable > tbody > tr > td.rowNumber i.collapseTrigger").each(function()
    {
        var sectionId = $(this).closest("fieldset").attr("id");
        var rowNumber = $(this).parent().contents().filter(function() { return this.nodeType === 3; })[0].data.replace(/[^\d]+/, "");

        if (expandedRows[sectionId] == undefined)
            expandedRows[sectionId] = "";
        else
            expandedRows[sectionId] += ",";

        expandedRows[sectionId] += rowNumber;
    });

    $.each(expandedRows, function(key, value)
    {
        values.push({ key: key + "Expanded", value: value });
    });

    // filters
    $("ul.checkboxList :checkbox").each(function()
    {
        var sectionId = $(this).closest("fieldset").attr("id");
        var selector = $(this).closest("li").data("selector").replace(/[^\w]+/, "");
        var checked = $(this).attr("checked") == "checked";

        values.push({ key: "filter-" + sectionId + "-" + selector + "-checked", value: checked });
    });

    // sorted tables
    $("table.brownTable").filter(function() { return $(this).data("sorted") != undefined })
        .each(function()
        {
            var sectionId = $(this).closest("fieldset").attr("id");
            var sorted = $(this).data("sorted");

            values.push({ key: "sort-" + sectionId, value: sorted });
        });


    var data = { reportType: 'FAP', id: event.data.aAnswerSetId, docid: 1, values: values };
    var result = JSON.stringify({ obj: data });

    $.ajax({
        url: 'WebServices/DataStore/DataStoreService.svc/SaveAnswersetMetadata',
        type: 'POST',
        data: result,
        contentType: 'application/json; charset=utf-8',
        dataType: 'text',
        error: function(result)
        {
            alert('An error occurred while trying to save Notes for this Report.  Note updates will not show up on Report');
        }
    });
}

    <!-- Some more global product vars -->
    <TMPL_IF NAME=PORTAL_FCRA_PURPOSE_VALUE>
	var fcra_entry_disclaimer_shown = true;
	var fcra_exit_disclaimer_shown = false;
    <TMPL_ELSE>
	var fcra_entry_disclaimer_shown = false;
	var fcra_exit_disclaimer_shown = true;
    </TMPL_IF>
</script>

<style>
#main{
    margin-left:0px !important;
}
.row {
    margin-right: 0px; 
}
</style>
