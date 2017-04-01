<!-- begin manage_account.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>My Account</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>
<TMPL_IF SHOW_RESEND_VTOKEN>
<script src="<TMPL_VAR NAME='JSPATH'>/ln/lexis.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/ln/misc.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/forgotpassword.js"></script>
</TMPL_IF>

</head>

<body onLoad="<TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>setInterval('checkparent()',2000);</TMPL_UNLESS>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody">

<form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="">

<center>

<TMPL_INCLUDE NAME="admin_header.tpl">

<TMPL_IF NAME="DISABLED">
  <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
<TMPL_ELSE>
  <TMPL_IF NAME="MANAGE_SINGLE_ACCOUNT">
     <TMPL_IF SA_DISABLED>
      <TMPL_INCLUDE NAME="sa_disabled_message.tpl">
    <TMPL_ELSE>
      <TMPL_IF NAME="MANAGE_SINGLE_ACCOUNT_MULTI">
	<TMPL_INCLUDE NAME=manage_account_chpasswd_multi.tpl>
      <TMPL_ELSE>
	  <TMPL_IF NAME="MANAGE_SINGLE_ACCOUNT_SEC_Q">
	    <TMPL_INCLUDE NAME=manage_account_chsecurity_q.tpl>
	  <TMPL_ELSE>
	    <TMPL_INCLUDE NAME=manage_account_chpasswd.tpl>
	  </TMPL_IF>
      </TMPL_IF>
    </TMPL_IF>
  </TMPL_IF>
  <TMPL_IF NAME="MANAGE_SHOW_USERS">
    <TMPL_INCLUDE NAME=manage_account_users.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="MANAGE_ADD_USER">
    <TMPL_INCLUDE NAME=manage_account_add_user.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="MANAGE_UPDATE_USER">
    <TMPL_INCLUDE NAME=manage_account_update_user.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="CREDITCARDS">
    <TMPL_INCLUDE NAME=manage_cards.tpl>
  </TMPL_IF>
</TMPL_IF>

</center>

</form>
<TMPL_INCLUDE NAME="classic_footer.tpl">
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
</body>
</html>
<!-- end manage_account.tpl -->
