<html>
<head>
<title>Domain Name Lookup</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
</TMPL_IF>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>
</TMPL_IF>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<TMPL_UNLESS ENABLE_V2>
<table border="0" cellpadding="0" cellspacing="0" width="308" class="headerarea">
  <tr>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43"></td>
  </tr>
    <td class="headerseparator" height="2" colspan="2" align="left" valign="bottom"><img alt="" border="0" height="2" width="308" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
</TMPL_UNLESS>
<br>
<div align="center">
<table border="0" cellpadding="10" cellspacing="0">
  <tr>
    <td class="unifont2"><b>IP Address:</b></td>
    <td class="unifont2"><TMPL_VAR NAME="IP"></td>
  </tr>
  <tr>
    <td class="unifont2"><b>Domain Name:</b></td>
    <td class="unifont2"><TMPL_VAR NAME="DOMAIN"></td>
  </tr>
</table>
<br>

<a href="javascript:parent.close();"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/close.gif" width="54" height="29" border="0"></a>

</div>
</body>
</html>
