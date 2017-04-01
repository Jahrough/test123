<!-- Begin myaccount_contact_us_thanks.tpl -->
<html>
<head>
<title>Thank You</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<style type="text/css">
<TMPL_IF GOV>
	<TMPL_IF LE_CLIENT>
	   #hd{
		   background:url(<TMPL_VAR NAME='IMGPATH'>/v2/gov/logo_client.png) no-repeat;
		   padding-right:15px;
		   height:75px;
	   }
   </TMPL_IF>
</TMPL_IF>
<TMPL_IF LE>
	<TMPL_IF LE_CLIENT>
	   #hd{
		   background:url(<TMPL_VAR NAME='IMGPATH'>/v2/le/logo_client.png) no-repeat;
		   padding-right:15px;
		   height:75px;
	   }
   </TMPL_IF>
</TMPL_IF>
</style>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>
</TMPL_IF>

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

<TMPL_UNLESS ENABLE_V2>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="2" colspan="2" align="left" valign="bottom"><img border="0" height="2" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
</TMPL_UNLESS>

<table border="0" cellpadding="0" cellspacing="0" width="450">
  <tr>
    <td align="center">
    <span class="largefont1"><br><br><br><br><b>Your Message Has Been Sent.</b>
    <br><br>
    </span>
    <span class="unifont2">
    Thank you.
    <br><br><br><br><br><br><br>
    <a href="javascript:parent.close();"><b>Close Window</b></a></td>
    </span>
  </tr>
</table>

</form>
</body>
</html>
<!-- End myaccount_contact_us_thanks.tpl -->
