<!-- Begin emsi_message.tpl -->
<html>
<head>
<title>Medical Records Retrieval</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>
</TMPL_IF>

<form name="APR_REC" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<TMPL_UNLESS ENABLE_V2>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <thead style="display: none">
    <tr>
      <th aria-label="Dummy">&nbsp;</th>
    </tr>
  </thead>
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0" alt=""></td>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43" alt=""></td>
  </tr>
  <tr>
    <td height="10" colspan="2" align="left" valign="bottom"><img alt="" border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img alt="" border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
</TMPL_UNLESS>
<br>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width='94%'>
  <thead style="display: none">
    <tr>
      <th aria-label="Dummy">&nbsp;</th>
    </tr>
  </thead>

  <tr>
    <td class="myaccounttitle" align="center">
    <B>Accessing Medical Records Retrieval site<br><br></B></td>
  </tr>

  <tr>
    <td class="unifont2" valign="top">
	<b>
	   You are now leaving the Accurint&reg;<TMPL_IF HEA> for Health Care</TMPL_IF><TMPL_IF LEG> for Legal Professionals</TMPL_IF><TMPL_IF INS> for Insurance</TMPL_IF><TMPL_IF GOV> for Government</TMPL_IF> site.  Please click below to be transferred to the external Medical Records Retrieval order site provided through a LexisNexis third party service provider.  Use of this site is subject to the additional terms and conditions under which your company has an authorized account. 
	</b>
    </td>
  </tr>

  <tr> </tr>
  
  <tr>
    <td class="unifont2" valign="top" align=center>
	<br>
	<br>
	<a href="<TMPL_VAR NAME=ACTION>?EVENT=SEARCH/SHOW_EMSI&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&EMSI_OK=1"><b><TMPL_UNLESS LEG>Proceed to Medical Records Retrieval<TMPL_ELSE>Proceed to MRR</TMPL_UNLESS></b></a>
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">
    <br><br>
  </td></tr> 
</table>
</div>
</form>
</body>
</html>
<!-- End emsi_message.tpl -->
