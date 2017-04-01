<!--<TMPL_VAR NAME=SERVER_ID>-->
<!-- begin: $RCSfile: manage_account_top.tpl,v $ -->
<html>
<head>
<title><TMPL_VAR NAME="PAGE_TITLE"></title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/myaccount.js"></script>

</head>

<body <TMPL_UNLESS NAME="STANDALONE">onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody">

<form name="MANAGE" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="STANDALONE" VALUE="<TMPL_VAR NAME=STANDALONE>">
      <input type="hidden" name="FORM_ID" value="<TMPL_VAR NAME="FORM_ID">">
      <input type="hidden" name="VERIFICATION_ID" value="<TMPL_VAR NAME="VERIFICATION_ID">">
      <INPUT type=hidden NAME="EVENT">
      <INPUT type=hidden NAME="OFFSET">
      <INPUT type=hidden NAME="CANCEL">
      <INPUT type=hidden NAME="CURRENT_PAGE" VALUE="<TMPL_VAR NAME=CURRENT_PAGE>">

<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td bgcolor="#cccccc"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="5" border="0"></td>
  </tr>
</table>


<div align="center">

<TMPL_UNLESS NAME="STANDALONE">
<TMPL_INCLUDE NAME="../admin_header.tpl">
<TMPL_ELSE>
<br>
</TMPL_UNLESS>

<table border="0" cellpadding="0" cellspacing="0" width="880">
  <tr>
    <td align="center" valign="middle" class="myaccountborder">
    <table width="856" cellpadding="0" cellspacing="0" border="0">
      <tr>
        <td colspan="5" align="center" width="856"><img width="856" height="12" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
      </tr>
    </table>
    <table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
      <tr>
        <td width="1"><img width="10" height="1" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>

        <td width="65" valign="middle"><TMPL_UNLESS NAME="STANDALONE"><a href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS')"><img width="65" height="24" border="0" name="backadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a></TMPL_UNLESS></td>
        <td width="600" align="center" class="largefont1" nowrap="nowrap" valign="middle">
	    <span class="myaccounttitle"><TMPL_VAR NAME="PAGE_TITLE"></span>
	</td>
        <td width="65"><img width="65" height="24" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
        <td width="1"><img width="1" height="40" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="center" class="myaccountborder"><img border="0" width="1" height="12" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td align="center" class="myaccountborder">
    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody"> 
  <tr>
    <td align="center" colspan="2"><img border="0" width="1" height="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
      <tr>
	<td align="center"><img border="0" width="10" height="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
        <td align="center">
	
	<TMPL_IF NAME="ALERT_MSG">
	<table width="90%" border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <td>
	    <br>
	    <div class="unifont1" style="color: blue; font-weight: bold;"><TMPL_VAR NAME="ALERT_MSG"></div>
	    </td>
	  </tr>
	</table>
	</TMPL_IF>

<!-- end: $RCSfile: manage_account_top.tpl,v $ -->
