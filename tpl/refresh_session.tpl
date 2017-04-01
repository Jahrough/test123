<html>
<head>
<title>Session Refreshed</title>
<style type="text/css">
.style1 {FONT-SIZE: 9pt; FONT-FAMILY: arial; color: #000000; }
.style2 {FONT-SIZE: 11pt; FONT-FAMILY: arial; color: #ffffff; font-weight: bold; }
.style3 {FONT-SIZE: 8pt; FONT-FAMILY: arial; color: #000000; }
.bs{ color: #ffffff; width: 75px; font-weight: bold; font-family: arial,helvetica; font-size: 8pt; background: #336699; cursor: hand; }
</style>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<center>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr bgcolor="#336699" style="height: 40px;">
    <td class="style2" align="center">LOGIN SESSION REFRESHED!</td>
  </tr>
  <tr bgcolor="#000000" style="height: 5px;">
    <td></td>
  </tr>
</table>
<br>
<table border="0" cellpadding="10" cellspacing="0" width="95%">
  <tr>
    <td align="center" class="style3">Your current login session has been refreshed.<br><br><!--<TMPL_VAR NAME="REFRESH_TIME"> (EST).--></td>
  </tr>
  <tr>
    <td align="center"><input class="bs" type="button" value="CLOSE" onClick="window.close();"></td>
  </tr>
</table>
</center>

</body>
</html>
