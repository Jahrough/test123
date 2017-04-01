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
<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">


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
<script src="<TMPL_VAR name='JSPATH'>/prototype.js"></script>
</TMPL_IF>
<script src="<TMPL_VAR name='JSPATH'>/ln/misc.js"></script>

</head>
<!-- <body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onload="LN.misc.getRecent(1)"> -->

<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">

<span align="center">
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint for Collections</a></h2>
<br>
<div>
<p>24/7 Search and Technical Assistance <strong><TMPL_IF IRS>1-866-277-8407<TMPL_ELSE>1-866-277-8407</TMPL_IF></strong></p>
</div>
</div>
<br/>
<TMPL_INCLUDE NAME="reports_data_disclaimer.tpl">
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

<div align="left" class="unifont1">
&nbsp;<b>Results For:</b> <TMPL_VAR NAME="FULL_NAME">&nbsp;&nbsp;

<TMPL_IF NAME="DOB">
&nbsp;<b>DOB:</b>&nbsp;<TMPL_VAR NAME="DOB">&nbsp;&nbsp;
</TMPL_IF>

<TMPL_IF NAME="SSN">
&nbsp;<b>SSN:</b>&nbsp;<TMPL_VAR NAME="SSN">&nbsp;&nbsp;
</TMPL_IF>

<TMPL_IF NAME="UNIQUEID">
&nbsp;<b>LexID:</b>&nbsp;<TMPL_VAR NAME="UNIQUEID">
</TMPL_IF>
<br>
<br>
</div>


<div align="left" >
<font color="#ed1c24" size=3><strong>&nbsp;Business Link Results</strong></font>
</div>

<div align="center" id="searchResults">
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
