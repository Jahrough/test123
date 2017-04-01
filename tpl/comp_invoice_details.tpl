<!-- begin comp_invoice_details.tpl -->
<html>
<head>
<title>Company Payment Summary</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/billing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/acchistory.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/order_mgr.js"></script>

</head>

<body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody">


<form name="BILLING" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="SUBJECT_ID">
      <INPUT type=hidden NAME="LOGINID">
      <INPUT type=hidden NAME="EVENT">

<!--
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="5">
  <tr height="5">
    <td height="5" bgcolor="#cccccc" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
-->


<div align="center">

<TMPL_INCLUDE NAME="admin_header.tpl">

<table border="0" cellpadding="0" cellspacing="0" width="880">
  <tr>
    <td align="center" valign="top" class="myaccountborder">
    <table width="856" cellpadding="0" cellspacing="0" border="0">
      <tr height="12">
        <td height="12" width="39" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
      <tr>
        <td width="856" align="center" valign="top">
        <table border="0" cellpadding="20" cellspacing="0" width="856">
          <tr>
            <td class="unifont1" width="65"><a href="javascript:send_event('BILLING/SUMMARY');"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif" border="0" width="65" height="24"></a></td>
            <td align="center" class="myaccounttitle">Billing - Invoice Details</td>
            <td class="unifont1" width="65"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="65" height="24"></td>
          </tr>
        </table>
	    <table border="0" cellpadding="0" cellspacing="0" width="650">
	      <tr>
		<td valign="middle">
		  <TMPL_INCLUDE NAME="comp_court_invoices.tpl">
		</td>
	      </tr>
	    </table>
	    <br>
	</td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

</div>

</form>
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="billing_activity_hidden_form.tpl">
</body>
</html>
<!-- end comp_invoice_details.tpl -->
