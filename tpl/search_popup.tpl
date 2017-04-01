<!--<TMPL_VAR NAME=SERVER_ID>-->
<!-- begin: $RCSfile: search_popup.tpl,v $ -->
<html>
<head>

<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/print.css" rel="stylesheet" type="text/css" media="print">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
<script src="<tmpl_var name='JSPATH'>/ln/misc.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>

</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" class="alternatebody">

<span align="center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td class="unifont1" align="left" width="30%">
        <img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo2.gif" width="111" height="51" border="0">
    </td>
    <td class="unifont1" align="right" width="70%" valign="bottom">
	<table border="0" cellpadding="5" cellspacing="0" width="100%">
	  <tr>
	    <td align="right" class="smallfont1">
	    <a class="searchheader" href="javascript:printit();">Print</a>
	    &nbsp;|&nbsp;
	    <a class="searchheader" href="javascript:window.close();">Close Window</a>
	    </td>
	  </tr>
	</table>
    </td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" height="10" width="100%" bgcolor="#255DA6">
  <tr height="10">
    <td height="10" class="unifont1">&nbsp;</td>
  </tr>
</table>
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
&nbsp;<b>People at Work For:</b> <TMPL_VAR NAME="FIRST_NAME"> <TMPL_VAR NAME="MIDDLE_NAME"> <TMPL_VAR NAME="LAST_NAME">&nbsp;&nbsp;<TMPL_VAR NAME="SSN">
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
