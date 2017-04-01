<!-- begin:  $RCSfile: duplicate_submit.tpl,v $  -->
<html>
<head>
<title>Error</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
</head>

<body onload="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<TMPL_INCLUDE NAME=generic_header.tpl>


<form name="ERROR" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="EVENT" VALUE="SEARCH/SHOW_MENU">

<center>
<br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td class="unifont1">
    Your user accounts have already been verified.&nbsp;&nbsp;This may be a result of you using your browsers back button.<br><br>
    Please <a href="#" onclick="document.ERROR.submit();">click here</a> to return to the main menu.
    </td>
  </tr>
</table>
</center>

</form>
</body>
</html>
<!-- end:  $RCSfile: duplicate_submit.tpl,v $  -->
