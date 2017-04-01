<html>
<head>
<title>Icon Information</title>
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
        <td align="center" class="popuptitle"><B>Include Bankruptcies</B></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<table border="0" cellpadding="20" cellspacing="0" width="308">
  <tr>
    <td class="popupbody" width="308" align="left">
    Check this box if you wish to search for a person and include bankruptcies as well.&nbsp; If a bankruptcy is found on the subject, a bankruptcy icon can be found on the right side of the search results.&nbsp; Click on the bankruptcy icon to <TMPL_IF IRS>view<TMPL_ELSE>purchase</TMPL_IF> the bankruptcy report.
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
