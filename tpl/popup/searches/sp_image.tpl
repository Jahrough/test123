<html>
<head>
<title>Diplay Offender's Photo</title>
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
        <td align="center" class="popuptitle"><B>Display Offender's Photo</B></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<table border="0" cellpadding="20" cellspacing="0" width="308">
  <tr>
    <td class="popupbody" width="308" align="left">
    Check this box if you wish to have a photo image of each offender display on the Search Results page.  
    Access Preferences within My Account to set the option to always display Sexual Offenders photos on Search Results.  
    Photos are displayed within the Sexual Offenders Report.
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
