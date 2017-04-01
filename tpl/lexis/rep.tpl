<!-- begin lexis/rep.tpl -->
<html>
<head>
<title><TMPL_VAR NAME="TITLE"></title>

<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/report.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/print.css" rel="stylesheet" type="text/css" media="print">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#e6e7de">

<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td class="no-print" ><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/news_logo.gif"  border="0"></td>
    <td class="no-print" bgcolor="white" align=right><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/lexis.gif"  border="0"></td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" bgcolor="#cccccc" width="100%">
  <tr>
    <td class="headerseparator" height="17" align="left" valign="bottom"><img border="0" height="17" width="100%" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>  


   <TMPL_VAR NAME=RESULTS>


<table border="0" cellpadding="0" cellspacing="0" width="100%" align="center" class="no-print">
<tr bgcolor="white"><td><br></td></tr>
  <tr bgcolor="white">
    <td align="center"  height="37" class="unifont1">

     <a class="inputlinklabel" href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank"><u>Copyright &copy;</u></a> <script>document.write(new Date().getFullYear());</script> LexisNexis Risk Solutions. All rights reserved. Use of this service is subject to <a href="http://www.lexisnexis.com/risk/terms/" target="_blank" class="inputlinklabel"><u>Terms and Conditions</u></a>	
     
    </td></tr>
</table>    
<!--<br><br>-->
<form name=articleForm method=post>
 <TMPL_INCLUDE NAME=common_hidden_input.tpl>
 <input type=hidden name=CURRENT_EVENT VALUE=<TMPL_VAR NAME=CURRENT_EVENT>>
 <input type=hidden name=REFERENCE_CODE VALUE=<TMPL_VAR NAME=REFERENCE_CODE>>
</form>

</body>
</html>
<!-- end lexis/rep.tpl -->
