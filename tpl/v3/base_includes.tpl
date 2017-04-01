        <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        
        <title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>

        <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/demo.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/demo2.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/sprites.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/print.css" rel="stylesheet" type="text/css" media="print">

        <script src="<TMPL_VAR NAME='JSPATH'>/sourcedocs.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>

        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui.min.js"></script>
        <script>
            var $j = jQuery.noConflict();
            var js_base = "<TMPL_VAR NAME=JSPATH>";
            var css_base = "<TMPL_VAR NAME=CSSPATH>";
            var img_base = "<TMPL_VAR NAME=IMGPATH>";
		    var enable_v3 = 1;

            var help_html_file = '';
            var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
            var help_path = '<TMPL_IF LNHLPPATH><TMPL_VAR NAME=LNHLPPATH><TMPL_ELSE><TMPL_VAR NAME=HLPPATH></TMPL_IF>/v3';
            var help_base = '<TMPL_IF LNHLPPATH><TMPL_VAR NAME=LNHLPPATH><TMPL_ELSE><TMPL_VAR NAME=HLPPATH></TMPL_IF>';
        </script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jsFunctionality.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/browserSpecifics.js"></script>

        <script src="<TMPL_VAR NAME='JSPATH'>/v3/researchPanel.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/offenderImages.js"></script> 
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/init.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/dynamic_desktop.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/entity_alerting.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v2/search.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/security_tips.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/initSearch.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.trap.min.js"></script>

        <TMPL_IF ALLOW_ZIP_CITY_AUTOCOMPLETE>
            <TMPL_IF ENABLE_ZIP_CITY_AUTOCOMPLETE>     
                <script src="<TMPL_VAR NAME='JSPATH'>/v3/initAutoComplete.js"></script>            
            </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF NAME="LOAD_GOOGLE_JS">
            <script src="<TMPL_VAR NAME='JSPATH'>/gmapslib.js"></script>
        </TMPL_IF>
        <script type="text/javascript" src="//maps.googleapis.com/maps/api/js?v=3.17&client=gme-lexisnexisrisksolutions&sensor=false"></script>

        <script src="<TMPL_VAR NAME='JSPATH'>/v3/utility.js"></script>

        <script>
        var disable_search_buttons = <TMPL_IF RESTRICT_MULTIPLE_SUBMITS>true<TMPL_ELSE>false</TMPL_IF>;
        var search_report_event = <TMPL_IF REPORT_EVENT>true<TMPL_ELSE>false</TMPL_IF>;
        var glb_purpose_value = get_glb(<TMPL_VAR NAME=GLB_PURPOSE_VALUE>);
        var dppa_value = get_dppa(<TMPL_VAR NAME=DPPA_VALUE>);
        var dmf_purpose_value = get_dmf('<TMPL_VAR NAME=DMF_PURPOSE_VALUE>');
        var ddesktop = <TMPL_IF NAME=DDESKTOP_SEARCH>true<TMPL_ELSE>false</TMPL_IF>;
        var show_chat_disclaimer = <TMPL_IF NAME=SHOW_CHAT_DISCLAIMER>true<TMPL_ELSE>false</TMPL_IF>;
        var session_timed_out = false;
        <TMPL_IF NAME=ALLOW_CHAT>var _tto = <TMPL_VAR NAME=SESSION_TIME_TO_TIMEOUT>;</TMPL_IF>
        <TMPL_IF NAME=DD_SHOW_MOST_WANTED_WIDGET>var _dd_most_wanted_sites = '<TMPL_VAR NAME=DD_MOST_WANTED_SITE_STR>';</TMPL_IF>
        <TMPL_IF NAME=LOGOUT_TIMEOUT>
        var temp_timeout = setTimeout (function(){ javascript:send_event('LOGOUT'); }, <TMPL_VAR NAME=LOGOUT_TIMEOUT>);
        </TMPL_IF>
        var show_print_warning = '<TMPL_VAR NAME=SHOW_PRINT_WARNING>';
        var isSrchEnabled = <TMPL_IF NAME=SEARCH_DISABLED>0<TMPL_ELSE>1</TMPL_IF>;
        </script>   

       <TMPL_IF SHOW_CASE_CONNECT>
            <script language="javascript" type="text/javascript">
                var Accurint = {};
                Accurint.reportAction = "<TMPL_VAR ACTION_REPORT>";
                Accurint.soundAction = "<TMPL_VAR ACTION_SOUND>";
                Accurint.htmlPath = "<TMPL_VAR HTMLPATH>";
                Accurint.imgPath = "<TMPL_VAR IMGPATH>";
                Accurint.sessionId = "<TMPL_VAR SESSION_ID>";
                Accurint.csrf_token = "<TMPL_VAR CSRF_TOKEN>";
                Accurint.CaseConnect = {};
                Accurint.CaseConnect.extraFeatures = <TMPL_IF CASE_CONNECT_EXTRA>true<TMPL_ELSE>false</TMPL_IF>;
                Accurint.CaseConnect.pollInterval = <TMPL_IF CASE_CONNECT_POLL_INTERVAL><TMPL_VAR CASE_CONNECT_POLL_INTERVAL><TMPL_ELSE>0</TMPL_IF>;
                // this needs to be 1, so that right side pod is updated 
                //  Accurint.CaseConnect.checkNow = <TMPL_IF CASE_CONNECT_CHECK_NOW><TMPL_VAR CASE_CONNECT_CHECK_NOW><TMPL_ELSE>0</TMPL_IF>;
                Accurint.CaseConnect.checkNow = 1;
            </script>
            <script src="<TMPL_VAR JSPATH>/Accurint.js" language="Javascript" type="text/javascript"></script>
            <script src="<TMPL_VAR JSPATH>/CookieJar.js" language="Javascript" type="text/javascript"></script>
            <script src="<TMPL_VAR JSPATH>/Accurint/CaseConnect/Notification.js" language="Javascript" type="text/javascript"></script>
        </TMPL_IF>
        <script>
          function init_search_page(){
      	    $j(function() {
        	  LN.misc.appInit(<TMPL_IF BLIND>0<TMPL_ELSE><TMPL_IF SKIP_RECENT_SEARCH_AJAX>0<TMPL_ELSE>1</TMPL_IF></TMPL_IF>); <TMPL_IF NAME="ALERTING_NEW_COUNT">menu_prompt('<TMPL_VAR NAME="ALERTING_NEW_COUNT">');</TMPL_IF>
        	  <TMPL_IF NAME=SHOW_DYNAMIC_DESKTOP>dynamic_desktop_init();</TMPL_IF>
        	  <TMPL_IF NAME=RT_MVR_SEARCH>init_real_time_mvr_form()</TMPL_IF>
        	  <TMPL_IF NAME=COMBINED_MVR_SEARCH>init_advanced_rtmvr_form()</TMPL_IF>
        	  <TMPL_IF NAME=COMBINED_MVR_MV_SEARCH>init_advanced_rtmvr_form()</TMPL_IF>
        	  <TMPL_IF NAME=COMBINED_MVR_WC_SEARCH>init_advanced_rtmvr_form()</TMPL_IF>
        	  <TMPL_IF NAME=COMBINED_MVR_WC_SEARCH>set_time_out_mv_wildcard()</TMPL_IF>
        	  <TMPL_IF NAME=COMBINED_MVR_MV_SEARCH>set_time_out_mv_wildcard()</TMPL_IF>
        	  <TMPL_IF NAME=COMBINED_MVR_SEARCH>set_time_out_mv_wildcard()</TMPL_IF>
        	  <TMPL_IF NAME=MV_WILDCARD_SEARCH>set_time_out_mv_wildcard()</TMPL_IF>
        	});
          }
          function init_advanced_rtmvr_form(){
             radio_combinedMotorVehicle();
             init_rt_mvr_form("<TMPL_VAR NAME='JSPATH'>/data/mv_make_model.xml", "<TMPL_VAR NAME='GOV'>", "1");
          }

          function init_real_time_mvr_form(){
            <TMPL_IF NAME="DEMO">
            //disable input fields
            for(i=0; i<document.forms[0].elements.length; i++){
               if(document.forms[0].elements[i].type == 'text') {
                 document.forms[0].elements[i].disabled = 'true';
               }
            }
            </TMPL_IF>
            init_rt_mvr_form("<TMPL_VAR NAME='JSPATH'>/data/mv_make_model.xml", "<TMPL_VAR NAME='GOV'>");
          }
          
        </script>
        <TMPL_IF NAME="ADV_SEARCH">
        <script>
          /* Init Datepickers here */
          $j(function() {
            $j( "#DATE_FIRST_SEEN" ).datepicker({
               changeMonth: true,
               changeYear: true,
               yearRange: "-110:+0"
            });
            $j( "#DATE_LAST_SEEN" ).datepicker({
               changeMonth: true,
               changeYear: true,
               yearRange: "-110:+0"
            });
          });          
        </script>
        </TMPL_IF>
<TMPL_IF NAME="DISCLOSED_ENTITY_REPORT">
<script src="<TMPL_VAR NAME='JSPATH'>/sorttable.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/disclosed_entity_report.js"></script>
</TMPL_IF>

<TMPL_IF NAME="PROVIDER_REPORT_CARD">
<script src="<TMPL_VAR NAME='JSPATH'>/sorttable.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/provider_report_card.js"/></script>
</TMPL_IF>

<TMPL_IF NAME="DDESKTOP_SEARCH">
<script>
$j(function(){
    $j('.formBdyRight').hide();
    $j('.ad').hide();
    $j('.formBox .formBody').css('padding','0px');
    $j('.formBdyLeft').css('width','100%');
    $j('.lnin-wrapper').hide();
    $j('.searchFormConWidth').css('width','1151px');
    $j('.formBox, .searchWrapper').css('height','928px');
    $j('.searchWrapper, .searchCon, .formBox, .formBody').css('height','auto');
});
</script>  
</TMPL_IF>
<TMPL_IF NAME="SHOW_DYNAMIC_DESKTOP">
<script src="<TMPL_VAR name='JSPATH'>/entity_alerting.js"></script>
</TMPL_IF>        
<TMPL_IF NAME="COMBINED_MVR_MV_SEARCH">
<script src="<TMPL_VAR NAME='JSPATH'>/v3/combined_mvr_search.js"/></script>
</TMPL_IF>
<TMPL_IF NAME="COMBINED_MVR_WC_SEARCH">
<script src="<TMPL_VAR NAME='JSPATH'>/v3/combined_mvr_search.js"/></script>
</TMPL_IF>
<TMPL_IF NAME="COMBINED_MVR_SEARCH">
<script src="<TMPL_VAR NAME='JSPATH'>/v3/combined_mvr_search.js"/></script>
</TMPL_IF>

