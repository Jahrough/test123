<html>
<head>
<title><TMPL_IF ENABLE_V2>Include similar sounding names<TMPL_ELSE>Perform Phonetic Search</TMPL_IF></title>
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

<br>
<table border="0" cellpadding="0" cellspacing="0" width="308">
  <tr>
    <td align="center">
    <br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td align="center" class="popuptitle"><B><TMPL_IF ENABLE_V2>Include similar sounding names<TMPL_ELSE>Perform Phonetic Search</TMPL_IF></B></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<table border="0" cellpadding="20" cellspacing="0" width="308">
  <tr>
    <td class="popupbody" width="308" align="left">Check this box to limit your search results to only include matches on the full name criteria, and/or specific input street addresses. The Strict Search option is a narrower search and will not allow for searching on similar sounding names, Radius searching, or nicknames (where available).</td>
  </tr>
</table>
<br>
<!--
<a href="javascript:parent.close();"><img src="<TMPL_VAR NAME=IMGPATH>/close.gif" width="54" height="29" border="0"></a>
-->
</div>
</body>
</html>
