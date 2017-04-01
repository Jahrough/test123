<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>

<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/print.css" rel="stylesheet" type="text/css" media="print">

<TMPL_UNLESS NAME="LITE_APP">
<TMPL_INCLUDE NAME="search_header_preloads.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
</TMPL_UNLESS>

<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
  <TMPL_IF NAME="ENABLE_SOURCE_DOCS_INFO">
<script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
<script src="<TMPL_VAR name='JSPATH'>/ln/misc.js"></script>
<script src="<TMPL_VAR name='JSPATH'>/prototype.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/sourcedocs.js"></script>
  </TMPL_IF>
<script>
var disable_search_buttons = <TMPL_IF RESTRICT_MULTIPLE_SUBMITS>true<TMPL_ELSE>false</TMPL_IF>;
var search_report_event = <TMPL_IF REPORT_EVENT>true<TMPL_ELSE>false</TMPL_IF>;
var glb_purpose_value = get_glb(<TMPL_VAR NAME=GLB_PURPOSE_VALUE>);
var dppa_value = get_dppa(<TMPL_VAR NAME=DPPA_VALUE>);
var dmf_purpose_value = get_dmf('<TMPL_VAR NAME=DMF_PURPOSE_VALUE>');
</script>

<TMPL_UNLESS NAME="LITE_APP">
  <TMPL_IF NAME="IRS">
    <script src="<TMPL_VAR NAME='JSPATH'>/irs/pulldown_menus.js"></script>
  <TMPL_ELSE> 
    <TMPL_IF NAME="HEA">
      <script src="<TMPL_VAR NAME='JSPATH'>/hea/pulldown_menus.js"></script>
    <TMPL_ELSE>
      <TMPL_IF NAME="INS">
	<script src="<TMPL_VAR NAME='JSPATH'>/ins/pulldown_menus.js"></script>
      <TMPL_ELSE>
        <TMPL_IF NAME="LEG">
	  <script src="<TMPL_VAR NAME='JSPATH'>/leg/pulldown_menus.js"></script>
      <TMPL_ELSE>
          <script src="<TMPL_VAR NAME='JSPATH'>/pulldown_menus.js"></script>
      </TMPL_IF>
      </TMPL_IF>
    </TMPL_IF> 
  </TMPL_IF> 
</TMPL_UNLESS>

<TMPL_IF NAME=RATE_EVASION_REPORT><script src="<TMPL_VAR NAME='JSPATH'>/res/rate_evasion_info.js"></script></TMPL_IF>

</head>

<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onLoad="setup_form();" class="alternatebody">

<a class="hideskiplink" href="#skiptosearch">Skip To Search</a>
<TMPL_IF NAME="RESULTS"><a class="hideskiplink" href="#skiptoresults">Skip To Results</a></TMPL_IF>

<TMPL_UNLESS NAME="LITE_APP">
<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
</TMPL_UNLESS>

<TMPL_IF NAME="SEARCH_NAME">
  <form name="<TMPL_VAR NAME='SEARCH_NAME'>" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_ELSE>
  <form name="PERSON_SEARCH" action="<TMPL_VAR NAME=ACTION>" method="post">
</TMPL_IF>

      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
      <INPUT type=hidden NAME="RECID" VALUE="">
      <INPUT type=hidden NAME="FULL_NAME" VALUE="">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE>">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE_EXTRA" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_EXTRA>">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE_ALERT_TEXT" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_ALERT_TEXT>">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE_FORMAT" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_FORMAT>">

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
<TMPL_IF NAME="USE_LP_PROCESS">
      <INPUT type=hidden NAME="ACTION_LP" VALUE="<TMPL_VAR NAME=ACTION_LP>">
</TMPL_IF>

<div align="center">

<TMPL_IF NAME="LITE_APP">
<TMPL_INCLUDE NAME="lite/search_header.tpl">
<TMPL_ELSE>
<TMPL_INCLUDE NAME="search_header.tpl">
</TMPL_IF>

<TMPL_INCLUDE NAME="search_body.tpl">
    <TMPL_IF NAME="SEARCH_EVENT">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME='SEARCH_EVENT'>">
    <TMPL_ELSE>
      <INPUT type=hidden NAME="EVENT" VALUE="SEARCH/SEARCH">
    </TMPL_IF>

</div>

</form>

<form name="SEARCH_RESULTS" action="<TMPL_VAR NAME=ACTION>" method="post" onsubmit="return !send_src_docs_rapid_alert_token()">

<TMPL_IF NAME="RESULTS"><a name="skiptoresults"></a></TMPL_IF>

<TMPL_IF HINTS>
<center>
<div id="search_hints">

<ul>
<TMPL_LOOP NAME="HINTS">
<li><TMPL_VAR NAME="HINT"></li>
</TMPL_LOOP>
</ul>

</div>
</center>
</TMPL_IF>

<div align="center">

<TMPL_VAR NAME="RESULTS">

<TMPL_INCLUDE NAME="search_footer.tpl">

</div>

</form>

<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="map/hidden_form.tpl">

<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</body>
</html>
<TMPL_IF NAME="RESULTS">
<script>
scrollBy(0, document.forms['SEARCH_RESULTS'].offsetTop -80);
</script>
</TMPL_IF>
