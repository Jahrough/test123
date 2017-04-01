<html>
<head>
<title>Access JusticeXchange</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<form name="APR_REC" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43"></td>
  </tr>
  <tr>
    <td height="10" colspan="2" align="left" valign="bottom"><img border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
<br>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width='94%'>
  <tr>
    <td class="myaccounttitle" align="center">
    <B>Accessing JusticeXchange<br><br></B></td>
  </tr>

  <tr>
    <td class="unifont2" valign="top" align=center>
	<b>You are now leaving LexisNexis and Accessing JusticeXchange<br><br></b>
    </td>
  </tr>

  <tr>
  <td class="unifont2">
      The user understands and agrees that LexisNexis assumes no liability for 
      the content of JusticeXchange and other third parties, including their 
      accuracy, completeness, or timeliness.  Please note that JusticeXchange 
      is for criminal justice use only. The user agrees that the information 
      obtained through JusticeXchange will only be used to carry out valid, 
      legal, and official law enforcement, public safety, and correctional 
      facility purposes and for no other reason. The information obtained 
      through JusticeXchange shall not be disclosed to any third party except 
      when necessary to carry out law enforcement duties. The information 
      obtained shall not be used to discriminate, threaten or harass any 
      person. Any misuse of this information may result in criminal charges. 
   </td></tr>
  
  <TMPL_IF NAME="DONT_SHOW_APPRISS">
  <tr>
    <td class="unifont2" valign="top" align=center>
	<br>
	<br>
	<a href="javascript:med_win('<TMPL_VAR NAME=ACTION>?EVENT=SEARCH/SHOW_APPRISS&SESSION_ID=<TMPL_VAR NAME=SESSION_ID&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>','MedWin');window.close();"><b>Click to Continue</b></a>
    </td>
  </tr>
  <TMPL_ELSE>
  <tr>
    <td class="unifont2" valign="top" align=left>
	<br>
	<br>
	<b>This Search is disabled for the user.</b>
    </td>
  </tr>
  </TMPL_IF>
  <tr>
    <td class="unifont2" valign="top">
    <br><br>
  </td></tr> 
</table>
</div>
</form>
</body>
</html>
