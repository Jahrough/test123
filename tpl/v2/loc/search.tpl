<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin loc/search.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>

<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/tabs.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/tabs.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/print.css" rel="stylesheet" type="text/css" media="print">

<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v2/search.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui-1.10.3.custom.min.js"></script>
<script>var $j = jQuery.noConflict();</script>

<script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/server.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/config.js"></script>

<TMPL_IF NAME="SHOW_GENERIC_FEEDBACK_FORM">
<script src="<TMPL_VAR NAME='JSPATH'>/feedback.js"></script>
</TMPL_IF>

<script src="<tmpl_var name='JSPATH'>/ln/misc.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>

<TMPL_INCLUDE NAME="zip_city_auto_complete_includes.tpl">

<script>
var disable_search_buttons = <TMPL_IF RESTRICT_MULTIPLE_SUBMITS>true<TMPL_ELSE>false</TMPL_IF>;
var search_button_report = <TMPL_IF REPORT_EVENT>true<TMPL_ELSE>false</TMPL_IF>;
var glb_purpose_value = get_glb(<TMPL_VAR NAME=GLB_PURPOSE_VALUE>);
var dppa_value = get_dppa(<TMPL_VAR NAME=DPPA_VALUE>);
var dmf_purpose_value = get_dmf('<TMPL_VAR NAME=DMF_PURPOSE_VALUE>');
</script>

<TMPL_IF NAME=RATE_EVASION_REPORT><script src="<TMPL_VAR NAME='JSPATH'>/res/rate_evasion_info.js"></script></TMPL_IF>


</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onLoad="LN.misc.appInit(<TMPL_IF BLIND>0<TMPL_ELSE><TMPL_IF SKIP_RECENT_SEARCH_AJAX>0<TMPL_ELSE>2</TMPL_IF></TMPL_IF>);setup_form();" class="alternatebody">

<a class="hideskiplink" href="#skiptosearch">Skip To Search</a>
<TMPL_IF NAME="RESULTS"><a class="hideskiplink" href="#skiptoresults">Skip To Results</a></TMPL_IF>

<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>

<TMPL_INCLUDE NAME="search_header.tpl">

<!-- BEGIN wrapper DIV -->
<div id="wrapper">
<table width="100%" border="0" id="containerTable">
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
	<INPUT type=hidden NAME="EVENT" VALUE="SEARCH/SEARCH">
	</TMPL_IF>

	<INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
	<INPUT type=hidden NAME="RECID" VALUE="">
	<INPUT type=hidden NAME="FULL_NAME" VALUE="">
	<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
	<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
	<INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">

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
	</form>

	<TMPL_IF NAME="RESULTS"><a name="skiptoresults"></a></TMPL_IF>

	<TMPL_INCLUDE NAME="search_hidden_form.tpl">
	<TMPL_INCLUDE NAME="map/hidden_form.tpl">

        <TMPL_INCLUDE NAME="verify_password_trigger.tpl">
    </td>  

    <!-- Start Right Column Content -->
    <td valign="top" width="240" id="tdr">
	<div id="containerRight">
	    <TMPL_INCLUDE NAME="loc/search_build_right_pod.tpl">
	</div>
   </td>
  </tr>
  </tbody>
</table>

<table width="98%" border="0">
  <tbody>
  <tr>
  <td colspan="1">
	<form name="SEARCH_RESULTS" action="<TMPL_VAR NAME=ACTION>" method="post">
	     <TMPL_INCLUDE NAME="search_footer.tpl">
	</form>
  </td>
  </tr>
  </tbody>
</table>

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
</TMPL_IF>
<!-- end loc/search.tpl -->
