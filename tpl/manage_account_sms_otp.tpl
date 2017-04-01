<!-- begin manage_account_sms_otp.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>My Account</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/otp.js"></script>

</head>

<body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post" onSubmit="return validate_myaccount()">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="">

<center>

<TMPL_INCLUDE NAME="admin_header.tpl">

<TMPL_IF NAME="DISABLED">
  <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
<TMPL_ELSE>

  <TMPL_IF NAME="SHOW_MANAGE_SMS_TOKENS">
    <TMPL_INCLUDE NAME=manage_account_show_sms_otp_main.tpl>
  <TMPL_ELSE>
    <TMPL_IF NAME="SHOW_MANAGE_SMS_OTP_FORM">
      <TMPL_INCLUDE NAME=manage_account_show_manage_sms_otp.tpl>
    <TMPL_ELSE>
      <TMPL_IF NAME="SHOW_TEST_SMS_OTP_TOKEN_FORM">
        <TMPL_INCLUDE NAME=manage_account_show_test_sms_otp_token_form.tpl>
      <TMPL_ELSE>
        <TMPL_IF NAME="SHOW_EDIT_SMS_OTP_TOKEN_FORM">
          <TMPL_INCLUDE NAME=manage_account_show_edit_sms_otp_token_form.tpl>
        <TMPL_ELSE>
          <TMPL_IF NAME="SHOW_ADD_SMS_OTP_FORM">
            <TMPL_INCLUDE NAME=manage_account_show_add_sms_otp_token_form.tpl>
          <TMPL_ELSE>          
            <TMPL_IF NAME="SHOW_USER_EDIT_SMS_OTP_TOKEN_FORM">
              <TMPL_INCLUDE NAME=manage_account_user_show_edit_sms_otp_token_form.tpl>
            <TMPL_ELSE>
              <TMPL_IF NAME="SHOW_USER_UNASSIGN_SMS_OTP_FORM">
                <TMPL_INCLUDE NAME=manage_account_user_show_unassign_sms_otp_token_form.tpl>
              <TMPL_ELSE>
                <TMPL_IF NAME="SHOW_USER_MFA_EDIT_OTP_TOKEN">
                  <TMPL_INCLUDE NAME=manage_account_show_edit_mfa_otp_token_form.tpl>
                <TMPL_ELSE>
                  <TMPL_IF NAME="SHOW_USER_MFA_TEST_OTP_TOKEN">
                    <TMPL_INCLUDE NAME=manage_account_show_test_mfa_otp_token_form.tpl>
                  <TMPL_ELSE>
                    <TMPL_IF NAME="SHOW_MFA_DEAUTHORIZE_FORM">
                      <TMPL_INCLUDE NAME=manage_account_show_mfa_deauthorize.tpl>
                    <TMPL_ELSE>
                      <TMPL_IF NAME="SEND_MFA_DEAUTHORIZE">
                        <TMPL_INCLUDE NAME=manage_account_mfa_deauthorize_status.tpl>
                      <TMPL_ELSE>
                        <TMPL_INCLUDE NAME=manage_account_show_sms_otp_main.tpl>
                      </TMPL_IF>
                    </TMPL_IF>
                  </TMPL_IF>
                </TMPL_IF>
              </TMPL_IF>
            </TMPL_IF>
          </TMPL_IF>
        </TMPL_IF>
      </TMPL_IF>
    </TMPL_IF>
  </TMPL_IF>


</TMPL_IF>

</center>

</form>
</body>
</html>
<!-- end manage_account_otp.tpl -->
