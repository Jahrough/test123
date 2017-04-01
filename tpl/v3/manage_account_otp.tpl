<!-- begin manage_account_otp.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->

<html>
<head>
<title>My Account</title>
    <TMPL_INCLUDE NAME="myaccount/myaccount_includes.tpl">
    <script src="<TMPL_VAR NAME='JSPATH'>/myaccount.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/otp.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
</head>


</head>

<body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody">
<TMPL_INCLUDE NAME="myaccount/header_info.tpl">

<form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME="common_hidden_input.tpl">
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="">


<TMPL_INCLUDE NAME="myaccount/myaccount_nav.tpl">


<div class="myaccCon" style="border-radius: 0 0 8px 8px;">
    <div>

     <TMPL_INCLUDE NAME=myaccount/myaccount_messages.tpl>

    <TMPL_IF NAME="DISABLED">
      <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
    <TMPL_ELSE>
      <TMPL_IF NAME="SHOW_ADD_OTP_FORM">
        <TMPL_INCLUDE NAME=myaccount/manage_account_show_otp_tokens.tpl>
      </TMPL_IF>
      <TMPL_IF NAME="SHOW_MANAGE_TOKENS">
        <TMPL_INCLUDE NAME=myaccount/manage_account_show_otp_main.tpl>
      </TMPL_IF>
      <TMPL_IF NAME="SHOW_SEARCH_OTP_FORM">
        <TMPL_INCLUDE NAME=myaccount/manage_account_show_search_otp_form.tpl>
      </TMPL_IF>
      <TMPL_IF NAME="SHOW_REASSIGN_OTP_FORM">
        <TMPL_INCLUDE NAME=myaccount/manage_account_show_reassign_otp_form.tpl>
      </TMPL_IF>
      <TMPL_IF NAME="SHOW_RESYNC_OTP_TOKENS_FORM">
        <TMPL_INCLUDE NAME=manage_account_show_resync_otp_tokens_form.tpl>
      </TMPL_IF>
      <TMPL_IF NAME="SHOW_UNASSIGN_OTP_FORM">
        <TMPL_INCLUDE NAME=myaccount/manage_account_show_unassign_otp_form.tpl>
      </TMPL_IF>
      <TMPL_IF NAME="SHOW_REPORT_LOST_BROKEN_OTP_FORM">
        <TMPL_INCLUDE NAME=myaccount/manage_account_show_report_lost_broken_otp_form.tpl>
      </TMPL_IF>
      <TMPL_IF NAME="SHOW_LOST_BROKEN_TOKEN_FORM">
        <TMPL_INCLUDE NAME=manage_account_show_lost_broken_token_form.tpl>
      </TMPL_IF>
      <TMPL_IF NAME="SHOW_TEST_OTP_FORM">
        <TMPL_INCLUDE NAME=myaccount/manage_account_show_test_otp_form.tpl>
      </TMPL_IF>
      <TMPL_IF NAME="SHOW_TEST_OTP_TOKEN_FORM">
        <TMPL_INCLUDE NAME=manage_account_show_test_otp_token_form.tpl>
      </TMPL_IF>

    </TMPL_IF>


  </div>
</div>


<TMPL_INCLUDE NAME="classic_footer.tpl">


</form>
</body>
</html>
<!-- end manage_account_otp.tpl -->
