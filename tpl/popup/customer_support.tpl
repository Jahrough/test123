<html>
<head>
<title>Product Support</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="2" colspan="2" align="left" valign="bottom"><img border="0" height="2" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
<br><br><br><br><br><br>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="myaccounttitle" align="center"><B>Product Support</B></td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">
    <br>
    <TMPL_IF IRB>
    Hours: 8:30am - 5:30pm Eastern Time<br>
    <b>Phone:&nbsp;800-447-2112</b><br><br>
    <b>Email:&nbsp;</b><a href="javascript:send_event('MYACCOUNT/SHOW_CONTACT_US');">customercare@irbsearch.com</a><br>
    <TMPL_ELSE>
    <b><i>(ID, password, IP maintenance, technical or usability support)</i></b>
    <br><br>
    <center>
    <b>Hours:</b>&nbsp; 24/7, 365 days a year
    <br><br>
    <b>Phone:</b>&nbsp; 1-866-277-8407
    <br><br>
    <a href="javascript:opener.show_post_popup('MYACCOUNT/SHOW_CUSTOMER_SUPPORT_EMAIL','AdminContactUsWin',450,500);"><b>Email Product Support</b></a><br>
    <br>
    </TMPL_IF>
    </td>
  </tr>	  
</table>
</div>
</form>
</body>
</html>
