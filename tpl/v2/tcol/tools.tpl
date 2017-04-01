<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin tcol/tools.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Bankruptcy Tools</TMPL_IF></title>
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<tmpl_var application_type>/tabs.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_IF NAME="FCRA_MODE">2<TMPL_ELSE><TMPL_IF NAME="FTR_MODE">5<TMPL_ELSE><TMPL_VAR NAME=USER_THEME></TMPL_IF></TMPL_IF>.css" rel="stylesheet" type="text/css"> 
<link href="<TMPL_VAR NAME='CSSPATH'>/print.css" rel="stylesheet" type="text/css" media="print">


<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v2/search.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/fcol/quick_search.js"></script>
<TMPL_IF NAME="ENABLE_SOURCE_DOCS_INFO">
<script src="<TMPL_VAR NAME='JSPATH'>/sourcedocs.js"></script>
</TMPL_IF>

<script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/server.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/config.js"></script>

<script src="<tmpl_var name='JSPATH'>/yui/yahoo-dom-event/yahoo-dom-event.js"></script>
<script src="<tmpl_var name='JSPATH'>/yui/connection/connection.js"></script>
<TMPL_IF NAME="SHOW_GENERIC_FEEDBACK_FORM">
<script src="<TMPL_VAR NAME='JSPATH'>/feedback.js"></script>
<link href="<TMPL_VAR NAME='CSSPATH'>/feedback.css" rel="stylesheet" type="text/css">
</TMPL_IF>

<script src="<tmpl_var name='JSPATH'>/ln/misc.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>
<TMPL_IF NAME="LOAD_GOOGLE_JS">
	<script src="<TMPL_VAR NAME='JSPATH'>/gmapslib.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?v=3&client=gme-lexisnexisrisksolutions&sensor=false" type="text/javascript"></script>
</TMPL_IF>

<TMPL_INCLUDE NAME="zip_city_auto_complete_includes.tpl">

<script>
    var disable_search_buttons = <TMPL_IF RESTRICT_MULTIPLE_SUBMITS>true<TMPL_ELSE>false</TMPL_IF>;
    var search_report_event = <TMPL_IF REPORT_EVENT>true<TMPL_ELSE>false</TMPL_IF>;
    var glb_purpose_value = get_glb(<TMPL_VAR NAME=GLB_PURPOSE_VALUE>);
    var dppa_value = get_dppa(<TMPL_VAR NAME=DPPA_VALUE>);
    var dmf_purpose_value = get_dmf('<TMPL_VAR NAME=DMF_PURPOSE_VALUE>');
    var fcra_value = get_pj_fcra(<TMPL_VAR NAME=FCRA_PURPOSE_VALUE>);
    <TMPL_IF NAME=LOGOUT_TIMEOUT>
        var temp_timeout = setTimeout (function(){ javascript:send_event('LOGOUT'); }, <TMPL_VAR NAME=LOGOUT_TIMEOUT>);
    </TMPL_IF>
    var show_print_warning = '<TMPL_VAR NAME=SHOW_PRINT_WARNING>';
    var fcra_mode = <TMPL_IF FCRA_MODE>true<TMPL_ELSE>false</TMPL_IF>;
</script>

<style>
  .hiddenRow{
    display: none;
  }
</style>


</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onLoad="LN.misc.appInit(<TMPL_IF BLIND>0<TMPL_ELSE><TMPL_IF SKIP_RECENT_SEARCH_AJAX>0<TMPL_ELSE>2</TMPL_IF></TMPL_IF>);setup_form();">

<a class="hideskiplink" href="#skiptosearch">Skip To Search</a>
<TMPL_IF NAME="RESULTS"><a class="hideskiplink" href="#skiptoresults">Skip To Results</a></TMPL_IF>

<TMPL_INCLUDE NAME="search_header.tpl">

<!-- BEGIN wrapper DIV -->
<div id="wrapper">
<table width="1120" border="0" id="containerTable">
   <tbody>
   <tr>
    <td id="containerLeft" valign="top" align="left">

	<TMPL_IF NAME="SEARCH_NAME">
	  <form name="<TMPL_VAR NAME='SEARCH_NAME'>" action="<TMPL_VAR NAME=ACTION>" method="post">
	<TMPL_ELSE>
	  <form name="PERSON_SEARCH" action="<TMPL_VAR NAME=ACTION>" method="post">
	</TMPL_IF>

	<TMPL_INCLUDE NAME="search_body.tpl">
	<TMPL_IF NAME="SEARCH_EVENT">
	<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME='SEARCH_EVENT'>">
	<TMPL_ELSE>
	<INPUT type=hidden NAME="EVENT" VALUE="">
	</TMPL_IF>

	<INPUT type=hidden NAME="RECID" id="RECID" VALUE="">
	<INPUT type=hidden NAME="FULL_NAME" VALUE="">
	<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
	<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
	<INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">
	<INPUT type=hidden NAME="PMTAB" VALUE="0">
	<INPUT type=hidden NAME="MYACCTAB" VALUE="<TMPL_VAR IM_ON_MYACCURINT>">
  <TMPL_UNLESS NAME="COURTTRUSTEE">
  <INPUT type=hidden NAME="REQUIRE_REF_CODE" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE>">
  <INPUT type=hidden NAME="REQUIRE_REF_CODE_EXTRA" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_EXTRA>">
  <INPUT type=hidden NAME="REQUIRE_REF_CODE_ALERT_TEXT" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_ALERT_TEXT>">
  <INPUT type=hidden NAME="REQUIRE_REF_CODE_FORMAT" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_FORMAT>">
  </TMPL_UNLESS>
	<TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><INPUT type=hidden NAME="ADVANCED_SEARCH" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>"></TMPL_IF>

	<TMPL_IF NAME=PERSON_SEARCH>
	      <INPUT TYPE=hidden NAME="SSN_ONLY_SEARCH" VALUE="<TMPL_VAR NAME=SSN_ONLY_SEARCH>">
	<TMPL_ELSE>
	<TMPL_IF NAME=ADV_SEARCH>
	      <INPUT TYPE=hidden NAME="SSN_ONLY_SEARCH" VALUE="<TMPL_VAR NAME=SSN_ONLY_SEARCH>">
	</TMPL_IF>
	</TMPL_IF>

	<TMPL_IF NAME="CLEAR_REFERENCE_CODE">
	      <INPUT type=hidden NAME="CLEAR_REFERENCE_CODE" VALUE="1">
	</TMPL_IF>

	<TMPL_IF NAME="ENABLE_GRAPHVIEW">
	      <INPUT type=hidden NAME="ENABLE_GRAPHVIEW" VALUE="1">
	</TMPL_IF>
	<TMPL_IF NAME="USE_MISC_PROCESS">
	      <INPUT type=hidden NAME="ACTION_MISC" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
	</TMPL_IF>
  <INPUT type=hidden NAME="ACTION_ADMIN" VALUE="<TMPL_VAR NAME=ACTION_ADMIN>">
	</form>

<TMPL_UNLESS NAME="SEARCH_ERROR_MESSAGE">
   <TMPL_UNLESS NAME="RESULTS">
      <TMPL_UNLESS NAME="SHOW_FCRA_SEARCH_TITLE">
        <div id="searchTips">
	    <TMPL_INCLUDE NAME="tips/search_tips.tpl">
        </div>
      </TMPL_UNLESS>
   </TMPL_UNLESS>
</TMPL_UNLESS>

	<TMPL_IF NAME="RESULTS"><a name="skiptoresults"></a></TMPL_IF>



        <TMPL_INCLUDE NAME="verify_password_trigger.tpl">
    </td>

    <!-- Start Right Column Content -->
    <td valign="top" width="240" id="tdr">
	<div id="containerRight">
	    <TMPL_INCLUDE NAME="search_build_right_pod.tpl">
	    <TMPL_INCLUDE NAME="search_inputs_search_tips.tpl">
	</div>
   </td>
  </tr>
  </tbody>
</table>

<TMPL_INCLUDE NAME="search_inputs_primary_tabs_pulldown_menus.tpl">


</div><!-- END wrapper DIV -->
<div id="systemWorking" style="position:absolute;top:350px;left:450px;z-index:100;display:none;">
<img id="sWimg" src="<TMPL_VAR NAME=IMGPATH>/bg_searching.gif" alt="Running Search.." />
</div>


<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<TMPL_IF NAME="RESULTS">
<script>
$('searchResults').scrollTo();
</script>
<TMPL_ELSE>
<TMPL_IF NAME="FCRA_PICK_DATA">
<script>
$('searchResults').scrollTo();
</script>
</TMPL_IF>
</TMPL_IF>
<!-- end tcol/tools.tpl -->
