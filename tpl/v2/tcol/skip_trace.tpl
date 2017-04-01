<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin col/skip_trace.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>

<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<tmpl_var application_type>/tabs.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/print.css" rel="stylesheet" type="text/css" media="print">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/skiptrace.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/skiptrace.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v2/search.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui-1.10.3.custom.min.js"></script>
<script>var $j = jQuery.noConflict();</script>

<script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/server.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/config.js"></script>

<link href="<TMPL_VAR NAME='CSSPATH'>/feedback.css" rel="stylesheet" type="text/css">

<script src="<tmpl_var name='JSPATH'>/ln/misc.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>
<script src="<tmpl_var name='JSPATH'>/effects.js"></script>
<script src="<tmpl_var name='JSPATH'>/dragdrop.js"></script>

<script>
var disable_search_buttons = <TMPL_IF RESTRICT_MULTIPLE_SUBMITS>true<TMPL_ELSE>false</TMPL_IF>;
var search_report_event = <TMPL_IF REPORT_EVENT>true<TMPL_ELSE>false</TMPL_IF>;
var glb_purpose_value = get_glb(<TMPL_VAR NAME=GLB_PURPOSE_VALUE>);
var dppa_value = get_dppa(<TMPL_VAR NAME=DPPA_VALUE>);
var dmf_purpose_value = get_dmf('<TMPL_VAR NAME=DMF_PURPOSE_VALUE>');
</script>

</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onLoad="setup_form();">

<a class="hideskiplink" href="#skiptosearch">Skip To Search</a>
<TMPL_IF NAME="RESULTS"><a class="hideskiplink" href="#skiptoresults">Skip To Results</a></TMPL_IF>

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint for Collections</a></h2>
<div>
        <p>24/7 Search and Technical Assistance <strong>1-866-277-8407</strong></p>

        <ul>
          <li><a trackid="hdr_help" href="https://learn.lexisnexis.com/lexisnexis/user_home.aspx" target="_blank">Help</a></li>
           <li><a trackid="hdr_my_account" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','475','610',1,1,1,1,1,0,'','contact_select');">Contact Us</a></li>
            <TMPL_IF NAME="RESULTS"><li><a class="hdr_print" href="javascript:print_st_results('<TMPL_VAR NAME='CSSPATH'>','<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>');">Print</a></li></TMPL_IF>
        </ul>

</div>
</div>

<!-- BEGIN wrapper DIV -->
<div id="wrapper">

<table width="100%" border="0" id="containerTable">
   <tbody>
   <tr>
    <td id="containerLeft" valign="top" align="left">

	<TMPL_IF NAME="SEARCH_NAME">
	  <form name="<TMPL_VAR NAME='SEARCH_NAME'>" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
	<TMPL_ELSE>
	  <form name="PERSON_SEARCH" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
	</TMPL_IF>


	<span id="st_form" style="display:none;">
	<h2>Skip Wizard:&nbsp;<span id="st_search_type"></span></h2>
	    <TMPL_INCLUDE NAME="skip_trace/skip_trace_input_form.tpl">
	</span>

	<TMPL_IF NAME="SEARCH_EVENT">
	<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME='SEARCH_EVENT'>">
	</TMPL_IF>

	<TMPL_INCLUDE NAME=common_hidden_input.tpl>
	<INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
	<INPUT type=hidden NAME="RECID" VALUE="">
	<INPUT type=hidden NAME="FULL_NAME" VALUE="">
	<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
	<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
        <INPUT type=hidden NAME="REQUIRE_REF_CODE" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE>">
        <INPUT type=hidden NAME="REQUIRE_REF_CODE_EXTRA" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_EXTRA>">

	<TMPL_IF NAME="CLEAR_REFERENCE_CODE">
	      <INPUT type=hidden NAME="CLEAR_REFERENCE_CODE" VALUE="1">
	</TMPL_IF>

	<TMPL_IF NAME="USE_MISC_PROCESS">
	      <INPUT type=hidden NAME="ACTION_MISC" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
	</TMPL_IF>

	<INPUT type=hidden NAME="CURRENT_RECORD" VALUE="">
	<!--<INPUT type=hidden NAME="KEY_VALUES_ST" VALUE="">-->
	<INPUT type=hidden NAME="CURRENT_ST_RECORD" VALUE="1">

	</form>

	<TMPL_IF NAME="RESULTS"><a name="skiptoresults"></a></TMPL_IF>

	<TMPL_INCLUDE NAME="skip_trace/skip_trace_end_session.tpl">

	<TMPL_INCLUDE NAME="search_hidden_form.tpl">
	<TMPL_INCLUDE NAME="map/hidden_form.tpl">

        <TMPL_INCLUDE NAME="verify_password_trigger.tpl">
    </td>  

  </tr>
  </tbody>
</table>

<div id="skip_session_data" style="margin:10px;display:none;cursor:text;">
<div class="st_head" style="font-size:90%;">
<h2>Skip Session Summary</h2>
</div>

<div id="skip_session_data_container">
</div>

</div>

<FORM NAME="SKIP_TRACE_PARAMS" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
	<INPUT type=hidden NAME="ST_LIMIT_BY_BALANCE" VALUE="<TMPL_VAR NAME=ST_LIMIT_BY_BALANCE>">
	<INPUT type=hidden NAME="ST_ALLOW_ALT_PHONES_STEP" VALUE="<TMPL_VAR NAME=ST_ALLOW_ALT_PHONES_STEP>">
	<INPUT type=hidden NAME="ST_ALT_PHONES_MAX_BAL" VALUE="<TMPL_VAR NAME=ST_ALT_PHONES_MAX_BAL>">
	<INPUT type=hidden NAME="ST_ALT_PHONES_MAX_RES" VALUE="<TMPL_VAR NAME=ST_ALT_PHONES_MAX_RES>">
	<INPUT type=hidden NAME="ST_ALLOW_PRIMARY_LEADS_STEP" VALUE="<TMPL_VAR NAME=ST_ALLOW_PRIMARY_LEADS_STEP>">
	<INPUT type=hidden NAME="ST_PRIMARY_LEADS_MAX_BAL" VALUE="<TMPL_VAR NAME=ST_PRIMARY_LEADS_MAX_BAL>">
	<INPUT type=hidden NAME="ST_PRIMARY_LEADS_MAX_RES" VALUE="<TMPL_VAR NAME=ST_PRIMARY_LEADS_MAX_RES>">
	<INPUT type=hidden NAME="ST_ALLOW_SECONDARY_LEADS_STEP" VALUE="<TMPL_VAR NAME=ST_ALLOW_SECONDARY_LEADS_STEP>">
	<INPUT type=hidden NAME="ST_SECONDARY_LEADS_MAX_BAL" VALUE="<TMPL_VAR NAME=ST_SECONDARY_LEADS_MAX_BAL>">
	<INPUT type=hidden NAME="ST_SECONDARY_LEADS_MAX_RES" VALUE="<TMPL_VAR NAME=ST_SECONDARY_LEADS_MAX_RES>">
	<INPUT type=hidden NAME="ST_DECEASED_FLAG" VALUE="<TMPL_VAR NAME=ST_DECEASED_FLAG>">
	<INPUT type=hidden NAME="ST_BK_FLAG" VALUE="<TMPL_VAR NAME=ST_BK_FLAG>">
</FORM>

<div id="systemWorking" style="position:absolute;top:350px;left:250px;z-index:100;display:none;">
<img id="sWimg" src="<TMPL_VAR NAME=IMGPATH>/bg_searching.gif" alt="Running Search.." />
</div>



<table width="98%" border="0">
  <tbody>
  <tr>
  <td colspan="1">
	<form name="SEARCH_RESULTS" action="<TMPL_VAR NAME=ACTION>" method="post">
	     <INPUT type=hidden NAME="KEY_VALUES_ST" VALUE="">
	     <TMPL_INCLUDE NAME="skip_trace/search_footer.tpl">
	</form>
  </td>
  </tr>
  </tbody>
</table>

</div><!-- END wrapper DIV -->
<div id="st_close" class="st_flags" style="position:absolute;top:350px;left:100px;z-index:100;display:none;width:75%"></div>

<div id="lightbox1" class="leightbox" style="height:auto;">
	<div id="skipHdr"><h3>Call outcome for <strong><span class="st_curr_phone"></span></strong></h3></div>
	<div style="padding-bottom:5px;padding-left:23px;" class="smallgray">Select a contact type:</div>
	<ul class="medblack" style="padding-left:23px;">
		<li><a onClick="javascript:insert_phone_feedback_st(1)">Right-Party Contact for <span class="st_curr_name"></span></a></li>
		<li style="padding-bottom:2px;"><a onClick="javascript:insert_phone_feedback_st(2)">Alternate Contact of <span class="st_curr_name"></span></a></li>
	</ul>
	<div class="smallgray" style="padding-top:10px;">Your feedback will be used to enhance the LexisNexis database.</div><div class="smallblack" style="cursor:hand;cursor:pointer;float:right;"><a onClick="javascript:close_display_deb_options('lightbox1');">Close</a></div>
</div>


<div id="lightbox2" class="leightbox" style="height:auto;">
	<div id="skipHdr"><h3>Call outcome for <strong><span class="st_curr_phone"></span></strong></h3></div>
	<div style="padding-bottom:5px;padding-left:23px;" class="smallgray">Select a contact type:</div>
	<ul class="medblack" style="padding-left:23px;">
		<li><a onClick="javascript:insert_phone_feedback_st(3)">Wrong Party Claim</a></li>
		<li><a onClick="javascript:insert_phone_feedback_st(4)">Phone Disconnected</a></li>
		<li style="padding-bottom:2px;"><a onClick="javascript:insert_phone_feedback_st(5)">No contact/No knowledge of debtor</a></li>
		<li style="padding-bottom:2px;"><a onClick="javascript:insert_phone_feedback_st(6)">Did not locate</a></li>
	</ul>
	<div class="smallgray" style="padding-top:10px;">Your feedback will be used to enhance the LexisNexis database.</div><div class="smallblack" style="cursor:hand;cursor:pointer;float:right;"><a onClick="javascript:close_display_deb_options('lightbox2');">Close</a></div>
</div>

<TMPL_IF NAME="SHOW_PHONE_FEEDBACK_FORM">
<FORM NAME="PHONE_FEEDBACK" ID="PHONE_FEEDBACK" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <INPUT type=hidden NAME="PHONE" class="resettable">
    <INPUT type=hidden NAME="UNIQUEID" class="resettable">
    <INPUT type=hidden NAME="ZIP5" class="resettable">
    <INPUT type=hidden NAME="STATE" class="resettable">
    <INPUT type=hidden NAME="FIRST_NAME" class="resettable">
    <INPUT type=hidden NAME="MIDDLE_NAME" class="resettable">
    <INPUT type=hidden NAME="LAST_NAME" class="resettable">
    <INPUT type=hidden NAME="PRE_DIR" class="resettable">
    <INPUT type=hidden NAME="POST_DIR" class="resettable">
    <INPUT type=hidden NAME="STREET_NUM" class="resettable">
    <INPUT type=hidden NAME="STREET_NAME" class="resettable">
    <INPUT type=hidden NAME="STREET_SUFFIX" class="resettable">
    <INPUT type=hidden NAME="UNIT_NUM" class="resettable">
    <INPUT type=hidden NAME="UNIT_DESIG" class="resettable">
    <INPUT type=hidden NAME="CITY" class="resettable">
    <INPUT type=hidden NAME="EVENT" class="resettable">
    <INPUT type=hidden NAME="SOURCE_EVENT_ID" class="resettable">
    <INPUT type=hidden NAME="PHONE_CONTACT_TYPE" class="resettable">
    <INPUT type=hidden NAME="SOURCE_EVENT">
</FORM>
</TMPL_IF>


<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<TMPL_IF NAME="RESULTS">
<script>
$('searchResults').scrollTo();
</script>
</TMPL_IF>
<!-- end col/skip_trace.tpl -->
