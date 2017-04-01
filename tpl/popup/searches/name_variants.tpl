<html>
<head>
<title><TMPL_IF ENABLE_V2>Include similar sounding names<TMPL_ELSE>Search for other possible name spellings</TMPL_IF></title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/popups.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<style type="text/css">
body {
        color:#333333;
        background:#FCFAF5;
        font-family:Verdana, Arial, Helvetica, sans-serif;
        line-height:110%;
}
</style>
</TMPL_IF>
</head>

<body onBlur="window.close();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div align="center">

<table border="0" cellpadding="5" cellspacing="0" width="340">
  <tr>
    <td align="center" class="popuptitle"><br><br><B><TMPL_IF ENABLE_V2>Include name variations<TMPL_ELSE>Search for other possible name spellings</TMPL_IF></B></td>
  </tr>
  <tr>
    <td class="popupbody" align="left">
    <br>
    Check this box if you are unsure of the correct spelling for the first and/or last name that you have entered. If we cannot find the exact name match that you entered, we will attempt to search for different spelling variations of the name.
    </td>
  </tr>
</table>
<br>
<!--
<a href="javascript:parent.close();"><img src="<TMPL_VAR NAME=IMGPATH>/close.gif" width="54" height="29" border="0"></a>
-->
</div>
</body>
</html>
