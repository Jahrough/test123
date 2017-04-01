<!-- billing.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Billing</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/billing.js"></script>

</head>

<body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>

<form name="BILLING" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT">

<!--
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td bgcolor="#cccccc"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="5" border="0"></td>
  </tr>
</table>
-->


<div align="center">

<TMPL_INCLUDE NAME="admin_header.tpl">

<TMPL_IF NAME="DISABLED">
  <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
<TMPL_ELSE>
  <TMPL_IF NAME="BILLING_ACTIVITY">
    <TMPL_INCLUDE NAME=billing_activity.tpl>
  </TMPL_IF>
</TMPL_IF>
</div>

</form>
<TMPL_INCLUDE NAME="classic_footer.tpl">
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="billing_activity_hidden_form.tpl">
</body>
</html>
<!-- END billing.tpl -->
