<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin fcol/search.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>

<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>IRS Verify</TMPL_IF></title>
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<tmpl_var application_type>/tabs.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurintPrint.css" rel="stylesheet" type="text/css" media="print">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v2/search.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/sourcedocs.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui-1.10.3.custom.min.js"></script>
<script>var $j = jQuery.noConflict();</script>

<script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/server.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/config.js"></script>

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
<script src="<TMPL_VAR NAME='JSPATH'>/iframe_content.js"></script>

<script>
var glb_purpose_value = get_glb(<TMPL_VAR NAME=GLB_PURPOSE_VALUE>);
var dppa_value = get_dppa(<TMPL_VAR NAME=DPPA_VALUE>);
<TMPL_IF NAME=LOGOUT_TIMEOUT>
var temp_timeout = setTimeout (function(){ javascript:send_event('LOGOUT'); }, <TMPL_VAR NAME=LOGOUT_TIMEOUT>);
</TMPL_IF>
var show_print_warning = '<TMPL_VAR NAME=SHOW_PRINT_WARNING>';
</script>



<TMPL_IF NAME=RATE_EVASION_REPORT><script src="<TMPL_VAR NAME='JSPATH'>/res/v2/rate_evasion_info.js"></script></TMPL_IF>


</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" >


<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
<div>
        <p>24/7 Search and Technical Assistance <strong>1-866-277-8407</strong></p>
        <ul>
          <li class="first"><a trackid="hdr_contact_us" href="javascript:send_event('LOGOUT');">Sign Out</a></li>

          <TMPL_IF NAME="SHOW_DEMO_ENV">
          <li><a trackid=hdr_my_account" href="javascript:open_demo_env('<TMPL_VAR NAME="SHOW_DEMO_ENV">');">Enter Demo Environment</a></li>
          <TMPL_ELSE>
          <TMPL_IF NAME="IS_DEMO_ENV">
          <li><font color="#ed1c24"><small><b>Currently Demo Environment</b></small></font></li>
          </TMPL_IF>
          </TMPL_IF>


          <li><a trackid="hdr_help" href="https://learn.lexisnexis.com/lexisnexis/user_home.aspx" target="_blank">Help</a></li>
          <li><a trackid="hdr_my_account" href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php " target="_blank">Live Chat</a></li>
          <li><a trackid="hdr_my_account" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','475','675',0,0,0,1,1,0,'','contact_select');">Contact Us</a></li>
          <TMPL_IF NAME="RESULTS"><li><a class="hdr_print" href="javascript:print_results('<TMPL_VAR NAME='CSSPATH'>','<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>');">Print</a></li></TMPL_IF>
          <TMPL_UNLESS DA_ONLY>
             <li><a trackid="hdr_home_page" href="javascript:send_event('SEARCH/SHOW_MENU')">Home</a></li>
          </TMPL_UNLESS>
        </ul>
</div>
</div>

    <form name="IRS_VERFY_FORM" action="<TMPL_VAR NAME=ACTION>" method="post">

    <div align="center">


<INPUT type=hidden NAME="IRS_VERIFY_URL" VALUE="<TMPL_VAR NAME=IRS_VERIFY_URL>">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <INPUT type=hidden NAME="EVENT" VALUE="">
    <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
    <INPUT type=hidden NAME="HIDE_COURT_POPUP" VALUE="">
    <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="MYACCTAB" VALUE="0">
    <INPUT type=hidden NAME="PMTAB" VALUE="0">
    <INPUT type=hidden NAME="ACTION_ADMIN" VALUE="<TMPL_VAR NAME=ACTION_ADMIN>">
    <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><INPUT type=hidden NAME="ADVANCED_SEARCH" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>"></TMPL_IF>
    <TMPL_IF NAME="ALERTING_NEW_COUNT">
    <INPUT type=hidden NAME="ALERTING_NEW_COUNT" id="ALERTING_NEW_COUNT" VALUE="<TMPL_VAR NAME=ALERTING_NEW_COUNT>">
    </TMPL_IF>


    <br>
    <br>
    <div id="infodivid"></div>
    <iframe id="irs_verify_redirect" name="irs_verify_redirect" width="100%" height="980" frameborder="0" seamless><p>Your browser does not support iframes.</p></iframe>
    <br /><br />
   </div>

<!-- START Footer
<div align="center">
<TMPL_INCLUDE NAME="../main_menu_footer.tpl">
</div>
 -->
</form>
<TMPL_INCLUDE NAME="../lexisnexis_footer.tpl">


<TMPL_INCLUDE NAME="../search_hidden_form.tpl">
<TMPL_INCLUDE NAME="../verify_password_trigger.tpl">
</body>
</html>
