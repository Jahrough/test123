<!--<TMPL_VAR NAME=SERVER_ID>-->
<!-- begin: $RCSfile: search_popup.tpl,v $ -->
<html>
<head>

<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/print.css" rel="stylesheet" type="text/css" media="print">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui-1.10.3.custom.min.js"></script>
<script>var $j = jQuery.noConflict();</script>

<script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/server.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/config.js"></script>

<TMPL_IF NAME="SHOW_GENERIC_FEEDBACK_FORM">
<script src="<TMPL_VAR NAME='JSPATH'>/feedback.js"></script>
<script src="<TMPL_VAR name='JSPATH'>/ln/misc.js"></script>
<script src="<TMPL_VAR name='JSPATH'>/prototype.js"></script>
</TMPL_IF>

</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">

<span align="center">
<TMPL_IF NAME="SUPPRESS_HEADER">
<div id="hdblank">
<TMPL_ELSE>
<div id="hd">
</TMPL_IF>
<h2><a trackid="hdr_top_logo">LexisNexis Accurint for Collections</a></h2>
<br>
<div>
	<ul>
		<li class="first"><a trackid="hdr_contact_us" href="https://learn.lexisnexis.com/lexisnexis/user_home.aspx" target="_blank">Help</a></li>
		<li><a trackid="hdr_my_account" href="javascript:do_print_report();">Print Report</a></li>	
	</ul>
	<br>
	<p>24/7 Search and Technical Assistance <strong><TMPL_IF IRS>1-866-277-8407<TMPL_ELSE>1-866-277-8407</TMPL_IF></strong></p>
</div>
</div>

<br/>
<TMPL_UNLESS SEARCH_CP_EQ_DTEC>
<TMPL_UNLESS SEARCH_CP_EQ_FINDERS>
<TMPL_UNLESS SEARCH_CP_EQ_IDREPORT>
<TMPL_UNLESS SEARCH_CP_TU_CON_REPORT>
<TMPL_UNLESS SEARCH_CP_TU_REPORT>
    <TMPL_INCLUDE NAME="reports_data_disclaimer.tpl">
</TMPL_UNLESS>
</TMPL_UNLESS>
</TMPL_UNLESS>
</TMPL_UNLESS>
</TMPL_UNLESS>
<br/>

  <form name="<TMPL_IF NAME="SEARCH_NAME"><TMPL_VAR NAME='SEARCH_NAME'><TMPL_ELSE>RNA_SEARCH</TMPL_IF>" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <TMPL_IF NAME="SEARCH_EVENT">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME='SEARCH_EVENT'>">
    <TMPL_ELSE>
      <INPUT type=hidden NAME="EVENT" VALUE="SEARCH/SEARCH">
    </TMPL_IF>

   </form>
</span>


<form name="SEARCH_RESULTS" action="<TMPL_VAR NAME=ACTION>" method="post">

<TMPL_IF NAME="PAW_POP_SEARCH">
<div align="left" class="unifont1">
&nbsp;<b>People at Work <TMPL_IF WATER_DOWN_NON_FCRA>Locator </TMPL_IF>For:</b> <TMPL_VAR NAME="FIRST_NAME"> <TMPL_VAR NAME="MIDDLE_NAME"> <TMPL_VAR NAME="LAST_NAME">&nbsp;&nbsp;<TMPL_VAR NAME="SSN">
<br>
<br>
</div>
</TMPL_IF>

<div align="center">

<TMPL_IF NAME="RESULTS">
<TMPL_VAR NAME="RESULTS">
<TMPL_ELSE>
<span class="unifont1"><TMPL_VAR NAME="SEARCH_ERROR_MESSAGE"></span>
</TMPL_IF>

</div>

</form>

<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="map/hidden_form.tpl">

</body>
</html>
<!-- end: $RCSfile: search_popup.tpl,v $ -->
