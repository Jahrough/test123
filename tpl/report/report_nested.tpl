<!-- Begin report_nested.tpl -->
<html>
<head>
<title><TMPL_VAR NAME="REPORT_TITLE"></title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>

</head>
<body ONLOAD="window.focus()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<span class="unifont2">&nbsp;<br></span>

<TMPL_INCLUDE NAME="report_footer.tpl">

<TMPL_INCLUDE NAME="report_disclaimer.tpl">

<TMPL_INCLUDE NAME="report_header.tpl">
   
<div align="left" class="smallfont1">  
<blockquote><span class="unifont2" style="color: #003399; font-weight: bold;">Subject Information</span></blockquote>
<blockquote><TMPL_VAR NAME=REPORT></blockquote>
</div>

<span class="unifont2">&nbsp;<br></span>

<TMPL_INCLUDE NAME="report_footer.tpl">

<span class="unifont2">&nbsp;<br></span>

</body>
</html>
<!-- End report_nested.tpl -->
