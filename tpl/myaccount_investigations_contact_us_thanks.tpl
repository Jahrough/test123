<!-- Begin myaccount_investigations_contact_us_thanks.tpl -->
<html>
<head>
<title>Thank You</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<TMPL_UNLESS ENABLE_V3>
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>
</TMPL_UNLESS>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_UNLESS ENABLE_V3>
<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>
</TMPL_IF>
</TMPL_UNLESS>

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

<TMPL_UNLESS ENABLE_V3>
<TMPL_UNLESS ENABLE_V2>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="284" height="43"></td>
  </tr>
  <tr>
    <td height="10" colspan="2" align="left" valign="bottom"><img alt="" border="0" height="10" width="550" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img alt="" border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
</TMPL_UNLESS>
</TMPL_UNLESS>

<table border="0" cellpadding="10" cellspacing="0" width="550">
  <tr>
    <td>
    <br><br><br>
    <center><span class="largefont1"><b>Your Investigation Referral Form Has Been Sent</b></span></center>
    <br><br>
    <span class="unifont2">This matter has been submitted for investigation.&nbsp;An individual from our Corporate Security Office we will be in contact with you.&nbsp; If you have any additional information that you need to provide in the future pertaining to this investigation, you may submit the information through the same Investigations Referral Form.
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <center><a href="javascript:parent.close();"><b>Close Window</b></a></center>
    </span>
    </td>
  </tr>
</table>

</form>
</body>
</html>
<!-- End myaccount_investigations_contact_us_thanks.tpl -->
