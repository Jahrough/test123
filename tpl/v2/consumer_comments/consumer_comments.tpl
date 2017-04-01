<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin consumer_comments/consumer_comments.tpl -->
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

<div id="hd">
<h2><a trackid="hdr_top_logo"><TMPL_IF FCOL>LexisNexis | Collection Solutions<TMPL_ELSE>LexisNexis Accurint for Collections</TMPL_IF></a></h2>
<div>
        <p>24/7 Search and Technical Assistance <strong>1-866-277-8407</strong></p>

        <ul>
          <li><a trackid="hdr_close_cc" href="javascript:window.close();" >Close</a></li>
          <li><a trackid="hdr_help" href="https://learn.lexisnexis.com/lexisnexis/user_home.aspx" target="_blank">Help</a></li>
           <li><a trackid="hdr_my_account" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','475','610',1,1,1,1,1,0,'','contact_select');">Contact Us</a></li>
            <TMPL_IF NAME="RESULTS"><li><a class="hdr_print" href="javascript:print_results('<TMPL_VAR NAME='CSSPATH'>','<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>');">Print</a></li></TMPL_IF>
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


	<span id="consumer_comments_form" style="display:block;">
	<h2>Consumer Comments Search:&nbsp;<span id="st_search_type"></span></h2>
	    <TMPL_INCLUDE NAME="consumer_comments_input_form.tpl">
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


	<TMPL_INCLUDE NAME="search_hidden_form.tpl">
	<TMPL_INCLUDE NAME="map/hidden_form.tpl">

        <TMPL_INCLUDE NAME="verify_password_trigger.tpl">
    </td>  

  </tr>
  </tbody>
</table>

<div id="systemWorking" style="position:absolute;top:350px;left:250px;z-index:100;display:none;">
<img id="sWimg" src="<TMPL_VAR NAME=IMGPATH>/bg_searching.gif" alt="Running Search.." />
</div>



<table width="98%" border="0">
  <tbody>
  <tr>
  <td colspan="1">
	<form name="SEARCH_RESULTS" action="<TMPL_VAR NAME=ACTION>" method="post">
	     <INPUT type=hidden NAME="KEY_VALUES_ST" VALUE="">
	     <TMPL_INCLUDE NAME="search_footer.tpl">
	</form>
  </td>
  </tr>
  </tbody>
</table>

</div><!-- END wrapper DIV -->

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<TMPL_IF NAME="RESULTS">
<script>
$('searchResults').scrollTo();
</script>
</TMPL_IF>
<!-- end consumer_comments/consumer_comments.tpl -->
