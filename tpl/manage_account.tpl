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
<TMPL_IF SHOW_DYNAMIC_DESKTOP_CHAT>
<script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/dynamic_desktop_myaccount.js"></script>
</TMPL_IF>

<script>function load_fskid(id){}</script>

<TMPL_IF IRS>
<TMPL_IF SHOW_RESEND_VTOKEN>
<script src="<TMPL_VAR NAME='JSPATH'>/ln/lexis.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/ln/misc.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/forgotpassword.js"></script>
</TMPL_IF>
</TMPL_IF>

<style type="text/css">
ul#pending_list li { list-style-type: none; }
#info_rem { border-color: #4E8CB9 !important; }
#info_rem_title { background-color: #4E8CB9 !important; }
#wrapperoverlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    background: #333;
    z-index:999;
    display: none;
}

</style>

</head>

<body <TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>onLoad="setInterval('checkparent()',2000);"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>

<form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="CSRF_TOKEN" VALUE="<TMPL_VAR NAME=CSRF_TOKEN>">
<INPUT type=hidden NAME="EVENT" VALUE="">

<!--
<table height="5" border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr height="5">
    <td bgcolor="#cccccc" height="5" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
-->
<center>

<TMPL_INCLUDE NAME="admin_header.tpl">
<TMPL_IF NAME="SHOW_ACTIVE_COMPANY_LINK">
<TMPL_INCLUDE NAME=active_company.tpl>
</TMPL_IF>
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
  <TMPL_IF NAME="MANAGE_CLONE_USER">
    <TMPL_INCLUDE NAME=manage_clone_user.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="MANAGE_CLONE_USER_RECEIPT">
    <TMPL_INCLUDE NAME=manage_clone_user_receipt.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="MANAGE_GROUPS_SHOW">
    <TMPL_IF SA_DISABLED>
      <TMPL_INCLUDE NAME="sa_disabled_message.tpl">
    <TMPL_ELSE>
      <TMPL_INCLUDE NAME=manage_groups.tpl>
    </TMPL_IF>
  </TMPL_IF>

  <TMPL_IF NAME="ADD_GROUP">
	<TMPL_INCLUDE NAME=manage_account_add_group.tpl>
  </TMPL_IF>

  <TMPL_IF NAME="MANAGE_SHOW_USERS">
    <TMPL_IF SA_DISABLED>
      <TMPL_INCLUDE NAME="sa_disabled_message.tpl">
    <TMPL_ELSE>
      <TMPL_INCLUDE NAME=manage_account_users.tpl>
    </TMPL_IF>
  </TMPL_IF>
  <TMPL_IF NAME="MANAGE_ADD_USER">
    <TMPL_INCLUDE NAME=manage_account_add_user.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="MANAGE_ADD_GROUP">
    <TMPL_INCLUDE NAME=manage_account_add_group.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="MANAGE_UPDATE_GROUP">
    <TMPL_INCLUDE NAME=manage_account_update_group.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="MANAGE_UPDATE_USER">
    <TMPL_INCLUDE NAME=manage_account_update_user.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="MANAGE_COPY_USER">
    <TMPL_INCLUDE NAME=manage_account_copy_user.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="SHOW_DYNAMIC_DESKTOP_CHAT">
    <INPUT type=hidden NAME="BUDDY_NAME" VALUE="">
    <TMPL_INCLUDE NAME=manage_chat.tpl>
  </TMPL_IF>


  <TMPL_IF NAME="CREDITCARDS">
    <TMPL_INCLUDE NAME=manage_cards.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="MANAGE_SITEKEY">
      <TMPL_INCLUDE NAME=manage_account_sitekey.tpl>
  </TMPL_IF>

</TMPL_IF>

</center>

</form>
<TMPL_INCLUDE NAME="classic_footer.tpl">
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
</body>
</html>
<!-- end manage_account.tpl -->
