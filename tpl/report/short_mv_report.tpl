<!-- begin: $RCSfile: short_mv_report.tpl,v $ -->
<html>
<head>
<title><TMPL_VAR NAME="REPORT_NAME"></title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
	<TMPL_INCLUDE NAME=common_hidden_input.tpl>
	<INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
  <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
	<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME="REPORT_EVENT">">
	<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
	<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

	<INPUT type=hidden NAME="UNIQUE_ID" VALUE="<TMPL_VAR NAME=UNIQUE_ID>">
	<INPUT type=hidden NAME="STATE_ORIGIN" VALUE="<TMPL_VAR NAME=STATE_ORIGIN>">
	<INPUT type=hidden NAME="SHORT_REPORT" VALUE="1">
	
	
<div align="center" id="mainbody">
<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="620">
  <tr>
    <td align="center">
    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
      <tr>
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="Purchase" onMouseDown="flip_style(this,'rbd');" onClick="showpw();self.document.SHORT_REPORT.submit();disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
<table border="1" cellpadding="0" cellspacing="0" width="640" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<TMPL_LOOP NAME="REPORT_PARAMS">
	<td valign="top" align="left" class="myaccountlabel" nowrap><TMPL_VAR PARAM_NAME></td>
	</TMPL_LOOP>
      </tr>
      <tr>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<TMPL_LOOP NAME="REPORT_PARAMS">
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=PARAM_VALUE></td>
	</TMPL_LOOP>
      </tr>
    </table>
    </div>  
    </td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="30">
    <td height="30" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<tmpl_include name="short_others_report_body.tpl">
</div>

</form>
</body>
</html>
<!-- end: $RCSfile: short_mv_report.tpl,v $ -->
