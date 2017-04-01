<!-- delco_report.tpl -->
<html>
<head>
<title>Delaware Corporation Report</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>
<body ONLOAD="window.focus()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<!--
<br>
<TMPL_INCLUDE NAME="report/close_print.tpl">
-->

<br>
<TMPL_INCLUDE NAME="report_header.tpl">

<div align="left" class="smallfont1">  
<blockquote><span class="unifont2" style="color: #003399; font-weight: bold;">Delaware Corporation Information</span></blockquote>
<blockquote><TMPL_INCLUDE NAME="delco_report_body.tpl"></blockquote>
</div>

<!--
<span class="unifont2">&nbsp;<br></span>
<TMPL_INCLUDE NAME="report/close_print.tpl">
-->

<span class="unifont2">&nbsp;<br></span>

</body>
</html>


<!-- END delco_report.tpl -->

