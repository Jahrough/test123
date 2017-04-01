<!-- begin lexis/rep.tpl -->
<html>
<head>
<title><TMPL_VAR NAME="TITLE"></title>

<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/report.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/print.css" rel="stylesheet" type="text/css" media="print">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#e6e7de">

<TMPL_INCLUDE NAME="../ln_report_header.tpl">
<br/>
<TMPL_INCLUDE NAME="../reports_data_disclaimer.tpl">
<br/>
<TMPL_VAR NAME=RESULTS>

<TMPL_INCLUDE NAME="../ln_general_footer.tpl">

<form name=articleForm method=post>
 <TMPL_INCLUDE NAME=common_hidden_input.tpl>
 <input type=hidden name=CURRENT_EVENT VALUE=<TMPL_VAR NAME=CURRENT_EVENT>>
 <input type=hidden name=REFERENCE_CODE VALUE=<TMPL_VAR NAME=REFERENCE_CODE>>
</form>

</body>
</html>
<!-- end lexis/rep.tpl -->
