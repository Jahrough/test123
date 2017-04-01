<!-- Begin short_delco_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Delaware Corporation Report Options</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="SHORT_BUS_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 

      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/DELCO_REPORT">
      <INPUT type=hidden NAME="COMPANY_NAME" VALUE="<TMPL_VAR NAME=COMPANY_NAME>">
      <INPUT type=hidden NAME="FILE_NUMBER" VALUE="<TMPL_VAR NAME=FILE_NUMBER>">

<div align="center" id="mainbody">
<img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"><br>
<table border="0" cellpadding="0" cellspacing="0" width="620">
  <tr>
    <td align="center" colspan="2">
    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
      <tr>
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/DELCO_REPORT');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"><br>
<table border="1" cellpadding="0" cellspacing="0" width="640" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table border="0" cellpadding="2" cellspacing="2">
      <tr>
        <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="15" height="1" border="0"></td>
        <td valign="top" align="left" class="myaccountlabel">Company Name<img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="25" height="1" border="0"></td>
	<td valign="top" align="left" class="myaccountlabel">File Number<img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="25" height="1" border="0"></td>
      </tr>
      <tr>
	<td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="15" height="1" border="0"></td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=COMPANY_NAME><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="25" height="1" border="0"></td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=FILE_NUMBER><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="25" height="1" border="0">
	</td>
      </tr>
    </table>
    </div>  
    </td>
  </tr>
</table>
<img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"><br>
<TMPL_INCLUDE NAME="short_delco_report_body.tpl">
</div>

</form>
</body>
</html>
<!-- End short_delco_report.tpl -->
