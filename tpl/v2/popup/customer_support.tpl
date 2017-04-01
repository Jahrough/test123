<html>
<head>
<title>Product Support</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis</a></h2>
</div>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

<br><br><br><br>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="myaccounttitle" align="center"><B>Product Support</B></td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">
    <TMPL_IF IRB>
    <br>
    <b>Hours:</b> (Eastern)<br>
    8:30am - 7:30pm Mon - Thurs<br>
    8:30am - 5:30pm Friday<br>
    <br>
    <b>Phone:&nbsp;800-447-2112</b><br><br>
    <b>Email:&nbsp;</b><a href="javascript:send_event('MYACCOUNT/SHOW_CONTACT_US');">customercare@irbsearch.com</a><br>
    <TMPL_ELSE>
    <br>
    <b><i>(ID, password, IP maintenance, technical or usability support)</i></b>
    <br><br>
    <center>
    <b>Hours:</b>&nbsp; 24/7, 365 days a year
    <br><br>
    <b>Phone:</b>&nbsp; 1-866-277-8407
    <br><br>
    <a href="javascript:opener.show_post_popup('MYACCOUNT/SHOW_CUSTOMER_SUPPORT_EMAIL','AdminContactUsWin',450,500);"><b>Email Product Support</b></a>&nbsp; <b>OR</b>&nbsp; <a href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php" target="_blank"><b>Click For Live Chat</b></a>
    <br>
    </TMPL_IF>
    </td>
  </tr>	  
</table>
</div>
</form>
</body>
</html>
