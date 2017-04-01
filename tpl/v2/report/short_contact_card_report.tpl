<!-- begin: $RCSfile: short_contact_card_report.tpl,v $ -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title><TMPL_VAR NAME="REPORT_NAME"></title>
<!-- Begin short_contact_card_report.tpl -->
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body id="hdNoLogo">

<div id="pleasewait" style="position:absolute; top:250px;left:300px; visibility:hidden; z-index:1000;">
<img src="<TMPL_VAR NAME=IMGPATH>/bg_searching_report.gif" id="pw" name="pw" width="300" height="65" border="0">
</div>

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 
<TMPL_INCLUDE NAME="short_report_hidden_inputs.tpl">	

<div align="center" id="mainbody">

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center"><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();self.document.SHORT_REPORT.submit();disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
    </tr>
  </table>

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>


<table border="1" align="center" cellpadding="0" cellspacing="0" width="600" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table width="100%" border="0" cellpadding="2" cellspacing="0">
      <tr class="medblack">
	<td valign="top" align="left" ><b>Name</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><b>Address</b></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><b>LexID</b></td>
      </tr>
      <tr class="medblack">
	<td valign="top" align="left" ><TMPL_VAR NAME=FULL_NAME></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_VAR NAME=ADDRESS><br><TMPL_VAR NAME=CSZ></td>
	<td valign="top" align="left" >&nbsp;&nbsp;</td>
	<td valign="top" align="left" ><TMPL_VAR NAME=UNIQUEID></td>
      </tr>
    </table>
    </div>  
    </td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<TMPL_INCLUDE NAME="short_contact_card_report_body.tpl">
</div>

</form>

<TMPL_INCLUDE NAME="ln_general_footer.tpl">

</body>
</html>
<!-- end: $RCSfile: short_contact_card_report.tpl,v $ -->
