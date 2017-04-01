<html>
<head>
<title>Enable Appriss Records Search</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script>
function openfed(fname) {
   window.open(fname,'PDFwinfed','location=0,resizable=1,scrollbars=1,width=600,height=640');
}
</script>

</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<form name="EN_APR_REC" action="<TMPL_VAR NAME=ACTION>" method="post">
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
<table border="0" cellpadding="0" cellspacing="0">
  <tr><td width="15"></td>
    <td class="myaccounttitle" align="center">
    <B>Enabling Appriss Records Retrieval<br><br></B></td>
  </tr>
  <tr><td width="15"></td>
  <td class="unifont2" >
        LexisNexis Appriss Records Retrieval*<br><br>

  </td></tr>
  <tr><td width="15"></td>
    <td class="unifont2" valign="top">

  <TMPL_IF NAME="SA">
	Click the link below to download the form to enable this user for
	Appriss Records Retrieval.  You can include up to four (4) User Names on
	the form. For more than four (4) users please use an additional form.
	<br><br>   	 

  <TMPL_ELSE>
        Appriss Records Retrieval is currently not enabled.  Please contact your
	system administrator for access.
  </TMPL_IF>
    </td>
  </tr>	  

  
</table>
</div>
</form>
</body>
</html>
