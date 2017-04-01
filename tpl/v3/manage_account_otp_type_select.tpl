<!-- begin manage_account_otp_type_select.tpl -->
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

    <div class="myaccount-section-title">Select type of Security Token</div>

    <TMPL_IF NAME="DISABLED">
      <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
    <TMPL_ELSE>

        <INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
        <INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">

        <table border=0 cellpadding="0" cellspacing="0" class="myaccountborder">
          <tr>
            <td align="center" valign="top">
            
                <br/>
                <table border="0" cellpadding="2" cellspacing="2" class="myaccountbody">
                    <tr>
                        <TMPL_IF NAME="MANAGE_USER_OTP">
                            <td>
                                <div>
                                    <a class="btn red-btn" href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS');"><< Back</a>
                                    <a class="btn darkgrey-btn" href="javascript:send_event('OTP/SHOW_ADD_OTP_FORM');">Verisign Token</a>
                                    <a class="btn grey-btn" href="javascript:send_event('OTP/SHOW_ASSIGN_SMS_OTP_FORM');">Multi-Factor Token</a>
                                </div>
                            </td>
                        <TMPL_ELSE>
                            <td>
                                <div>
                                    <a class="btn red-btn" href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS');"><< Back</a>
                                    <a class="btn darkgrey-btn" href="javascript:send_event('OTP/MANAGE_OTP');">Verisign Token</a>
                                    <a class="btn grey-btn" href="javascript:send_event('OTP/MANAGE_SMS_OTP');">Multi-Factor Token</a>
                                </div>
                            </td>
                        </TMPL_IF>
                    </tr>
                </table>
                <br/>
                <br/>
              </td>
            </tr>
            </table>
        </table>
      </TMPL_IF>

    </div>
</div>

<TMPL_INCLUDE NAME="classic_footer.tpl">
<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">
</body>
</html>
<!-- end manage_account_otp_type_select.tpl -->
