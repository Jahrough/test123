<!-- payments/payment_top.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title><TMPL_VAR NAME="PAGE_TITLE"></title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/payments.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>

</head>

<body <TMPL_UNLESS NAME="STANDALONE_PAYMENTS">onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>

<form name="PAYMENT" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT">
      <INPUT type=hidden NAME="EDIT_ACCOUNT_ID" VALUE="">

<div align="center">

<TMPL_UNLESS NAME="STANDALONE_PAYMENTS">
<TMPL_INCLUDE NAME="../admin_header.tpl">
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

        <td width="65"><TMPL_IF NAME="DISPLAY_BACK"><TMPL_UNLESS NAME="STANDALONE_PAYMENTS"><a href="javascript:send_event('BILLING/SUMMARY');"><img width="65" height="24" border="0" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a><TMPL_ELSE><a href="javascript: send_event('LOGOUT');"><img width="68" height="29" border="0" src="<TMPL_VAR NAME=IMGPATH>/log_out.gif"></a></TMPL_UNLESS><TMPL_ELSE><img width="65" height="24" border="0" src="<TMPL_VAR NAME="IMGPATH">/spacer.gif"></TMPL_IF></td>
        <td width="600" align="center" class="largefont1" nowrap="nowrap" valign="middle">
	    <TMPL_IF NAME="PAYMENT_PAGE">
		<TMPL_UNLESS NAME="DISABLE_CHECK_PAYMENTS">
		<span class="unifont1"><b>Payment Type:</b>&nbsp;
		<select name="PAYMENT_METHOD" onchange="send_event(this.options[this.selectedIndex].value)">
		    <option name="cc" value="PAYMENT/SHOW_CC_PAYMENT" <TMPL_IF NAME="IS_CC_TPL">selected</TMPL_IF>>Credit Card Payments</option>
		    <option name="cc" value="PAYMENT/SHOW_CHECK_PAYMENT" <TMPL_IF NAME="IS_CHECK_TPL">selected</TMPL_IF>>Check Payments</option>
		</select>
		</TMPL_UNLESS>
	    <TMPL_ELSE>
		<span class="myaccounttitle"><TMPL_VAR NAME="PAGE_TITLE"></span>
	    </TMPL_IF>
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

<!-- END payments/payment_top.tpl -->
