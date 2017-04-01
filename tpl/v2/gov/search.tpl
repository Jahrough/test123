<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin gov/search.tpl -->
<!--<TMPL_VAR SERVER_ID>-->
<html>
<head>

<title><TMPL_IF PAGE_TITLE><TMPL_VAR PAGE_TITLE><TMPL_ELSE>Search</TMPL_IF></title>
<TMPL_IF ALLOW_CHAT>
<link type="text/css" href="<tmpl_var CCSS>" rel="stylesheet" charset="utf-8">
<script type="text/javascript" src="<tmpl_var CJS>" charset="utf-8"></script>
</TMPL_IF>
<link href="<TMPL_VAR CSSPATH>/<TMPL_VAR SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css"/>
<link href="<TMPL_VAR CSSPATH>/<TMPL_VAR application_type>/diff.css" rel="stylesheet" type="text/css"/>
<link href="<TMPL_VAR CSSPATH>/accurintSearch.css" rel="stylesheet" type="text/css"/>
<link href="<TMPL_VAR CSSPATH>/accurint.css" rel="stylesheet" type="text/css"/>
<link href="<TMPL_VAR CSSPATH>/<TMPL_VAR application_type>/tabs.css" rel="stylesheet" type="text/css"/>
<link href="<TMPL_VAR CSSPATH>/print.css" rel="stylesheet" type="text/css" media="print"/>
<link href="<TMPL_VAR CSSPATH>/<TMPL_VAR APPLICATION_TYPE>/<TMPL_VAR USER_THEME>.css" rel="stylesheet" type="text/css"/>

<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

<script src="<TMPL_VAR JSPATH>/common.js"></script>
<script src="<TMPL_VAR JSPATH>/search_javascript.js"></script>
<script src="<TMPL_VAR JSPATH>/v2/search.js"></script>
<script src="<TMPL_VAR JSPATH>/shared.js"></script>
<TMPL_IF ENABLE_SOURCE_DOCS_INFO>
<script src="<TMPL_VAR JSPATH>/sourcedocs.js"></script>
</TMPL_IF>
<TMPL_IF NAME=IM_ON_MYACCURINT>
</TMPL_IF>

<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui-1.10.3.custom.min.js"></script>
<script>var $j = jQuery.noConflict();</script>

<script src="<TMPL_VAR JSPATH>/ln/lexis.js"></script>
<script src="<TMPL_VAR JSPATH>/ln/server.js"></script>
<script src="<TMPL_VAR JSPATH>/ln/config.js"></script>

<TMPL_IF SHOW_PHONE_FEEDBACK_FORM>
<script src="<TMPL_VAR JSPATH>/feedback.js"></script>
<link href="<TMPL_VAR CSSPATH>/feedback.css" rel="stylesheet" type="text/css"/>
<TMPL_ELSE> 
    <TMPL_IF NAME="SHOW_ADDRESS_FEEDBACK_FORM"> 
        <script src="<TMPL_VAR JSPATH>/feedback.js"></script> 
        <link href="<TMPL_VAR CSSPATH>/feedback.css" rel="stylesheet" type="text/css"/> 
    </TMPL_IF> 
</TMPL_IF>

<script src="<TMPL_VAR JSPATH>/ln/misc.js"></script>
<script src="<TMPL_VAR JSPATH>/prototype.js"></script>
<TMPL_IF LOAD_GOOGLE_JS>
	<script src="<TMPL_VAR JSPATH>/gmapslib.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?v=3&client=gme-lexisnexisrisksolutions&sensor=false" type="text/javascript"></script>
</TMPL_IF>
<TMPL_IF NAME="SHOW_DYNAMIC_DESKTOP">
<link href="<TMPL_VAR NAME='CSSPATH'>/dynamic_desktop.css" rel="stylesheet" type="text/css"/>
<TMPL_UNLESS NAME="DDESKTOP_SEARCH">
<link href="<TMPL_VAR NAME='CSSPATH'>/dynamic_desktop_diff.css" rel="stylesheet" type="text/css"/>
</TMPL_UNLESS>
<TMPL_IF NAME="ALLOW_CHAT">
<link href="<TMPL_VAR NAME='CSSPATH'>/dynamic_desktop_with_chat.css" rel="stylesheet" type="text/css"/>
</TMPL_IF>
<script src="<TMPL_VAR name='JSPATH'>/dynamic_desktop.js"></script>
</TMPL_IF>

<TMPL_INCLUDE NAME="zip_city_auto_complete_includes.tpl">

<script>
var disable_search_buttons = <TMPL_IF RESTRICT_MULTIPLE_SUBMITS>true<TMPL_ELSE>false</TMPL_IF>;
var search_report_event = <TMPL_IF REPORT_EVENT>true<TMPL_ELSE>false</TMPL_IF>;
var glb_purpose_value = get_glb(<TMPL_VAR GLB_PURPOSE_VALUE>);
var dppa_value = get_dppa(<TMPL_VAR DPPA_VALUE>);
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
</script>

<TMPL_IF RATE_EVASION_REPORT><script src="<TMPL_VAR JSPATH>/res/v2/rate_evasion_info.js"></script></TMPL_IF>


</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onLoad="LN.misc.appInit(<TMPL_IF BLIND>0<TMPL_ELSE><TMPL_IF SKIP_RECENT_SEARCH_AJAX>0<TMPL_ELSE>2</TMPL_IF></TMPL_IF>);setup_form(); <TMPL_IF NAME=SHOW_DYNAMIC_DESKTOP>dynamic_desktop_init();</TMPL_IF><TMPL_VAR EXTRA_ONLOAD>">

<a class="hideskiplink" href="#skiptosearch">Skip To Search</a>
<TMPL_IF RESULTS><a class="hideskiplink" href="#skiptoresults">Skip To Results</a></TMPL_IF>

<TMPL_INCLUDE search_header.tpl>

<!-- BEGIN wrapper DIV -->
<div id="wrapper">
<table width="1130" border="0" id="containerTable">
   <tbody>
   <tr>
    <td id="containerLeft" valign="top" align="left">

  <TMPL_IF SEARCH_NAME>
    <form id="<TMPL_VAR SEARCH_NAME>_FORM_ID" name="<TMPL_VAR SEARCH_NAME>" action="<TMPL_VAR ACTION>" method="post">
	<TMPL_ELSE>
    <form name="PERSON_SEARCH" action="<TMPL_VAR ACTION>" method="post">
	</TMPL_IF>

  <TMPL_INCLUDE search_body.tpl>
  <TMPL_IF SEARCH_EVENT>
  <input type="hidden" name="EVENT" value="<TMPL_VAR SEARCH_EVENT>"/>
	<TMPL_ELSE>
  <input type="hidden" name="EVENT" value="SEARCH/SEARCH"/>
	</TMPL_IF>

  <input type="hidden" name="CURRENT_EVENT" value="<TMPL_VAR CURRENT_EVENT>"/>
  <input type="hidden" name="RECID" value=""/>
  <input type="hidden" name="FULL_NAME" value=""/>
  <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR SKIN_TYPE>"/>
  <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR APPLICATION_TYPE>"/>
  <input type="hidden" name="COURT_SEARCH_WIZARD" value="<TMPL_VAR COURT_SEARCH_WIZARD>"/>
  <input type="hidden" name="PMTAB" value="0"/>
  <input type="hidden" name="MYACCTAB" value="<TMPL_VAR IM_ON_MYACCURINT>"/>
  <input type="hidden" name="REQUIRE_REF_CODE" value="<TMPL_VAR REQUIRE_REF_CODE>"/>
  <input type="hidden" name="REQUIRE_REF_CODE_EXTRA" value="<TMPL_VAR REQUIRE_REF_CODE_EXTRA>"/>
  <input type="hidden" name="REQUIRE_REF_CODE_ALERT_TEXT" value="<TMPL_VAR REQUIRE_REF_CODE_ALERT_TEXT>"/>
  <input type="hidden" name="REQUIRE_REF_CODE_FORMAT" value="<TMPL_VAR REQUIRE_REF_CODE_FORMAT>"/>
  <INPUT type="hidden" NAME="RECENT_WAIT" VALUE="<TMPL_IF NAME=IM_ON_MYACCURINT><TMPL_IF SHOW_CASE_CONNECT><TMPL_UNLESS SKIP_NOTE_CNT_AJAX>1</TMPL_UNLESS></TMPL_IF></TMPL_IF>">
  <TMPL_IF ENABLE_ADVANCED_SEARCH><input type="hidden" name="ADVANCED_SEARCH" value="<TMPL_VAR APPLICATION_TYPE>"/></TMPL_IF>

  <TMPL_IF PERSON_SEARCH>
        <input TYPE=hidden name="SSN_ONLY_SEARCH" value="<TMPL_VAR SSN_ONLY_SEARCH>"/>
	<TMPL_ELSE>
  <TMPL_IF ADV_SEARCH>
        <input TYPE=hidden name="SSN_ONLY_SEARCH" value="<TMPL_VAR SSN_ONLY_SEARCH>"/>
	</TMPL_IF>
	</TMPL_IF>

  <TMPL_IF CLEAR_REFERENCE_CODE>
        <input type="hidden" name="CLEAR_REFERENCE_CODE" value="1"/>
	</TMPL_IF>

  <TMPL_IF ENABLE_GRAPHVIEW>
        <input type="hidden" name="ENABLE_GRAPHVIEW" value="1"/>
	</TMPL_IF>
  <TMPL_IF USE_MISC_PROCESS>
        <input type="hidden" name="ACTION_MISC" value="<TMPL_VAR ACTION_MISC>"/>
	</TMPL_IF>
  <input type="hidden" name="ACTION_ADMIN" value="<TMPL_VAR ACTION_ADMIN>"/>
	</form>

  <TMPL_IF RESULTS><a name="skiptoresults"></a></TMPL_IF>

  <TMPL_INCLUDE search_hidden_form.tpl>
  <TMPL_INCLUDE map/hidden_form.tpl>

        <TMPL_INCLUDE verify_password_trigger.tpl>
    </td>

    <TMPL_UNLESS NAME="DDESKTOP_SEARCH">
    <!-- Start Right Column Content -->
    <td valign="top" width="240" id="tdr">
	<div id="containerRight">
      <TMPL_INCLUDE search_build_right_pod.tpl>
	</div>
   </td>
   </TMPL_UNLESS>
  </tr>
  </tbody>
</table>

<TMPL_INCLUDE search_inputs_primary_tabs_pulldown_menus.tpl>

<table width="98%" border="0">
  <tbody>
  <tr>
  <td colspan="1">
  <form name="SEARCH_RESULTS" action="<TMPL_VAR ACTION>" method="post">
       <TMPL_INCLUDE search_footer.tpl>
    <input type="hidden" name="GMAP_UNIQUE_ID" value="<TMPL_VAR GMAP_UNIQUE_ID>"/>
    <input type="hidden" name="IMGPATH" value="<TMPL_VAR IMGPATH>"/>
	</form>
  </td>
  </tr>
  </tbody>
</table>

</div><!-- END wrapper DIV -->
<div id="systemWorking" style="position:absolute;top:350px;left:450px;z-index:100;display:none;">
<img id="sWimg" src="<TMPL_VAR IMGPATH>/bg_searching.gif" alt="Running Search.." />
</div>

<TMPL_IF NAME="SHOW_DYNAMIC_DESKTOP">
<TMPL_INCLUDE NAME="dynamic_desktop/ribbon_bar.tpl">
<br><br><br>
<TMPL_ELSE>
<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">
</TMPL_IF>

</body>
</html>
<TMPL_IF RESULTS>
<script>
$('searchResults').scrollTo();
</script>
</TMPL_IF>
<!-- end gov/search.tpl -->
