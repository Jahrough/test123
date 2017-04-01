<!-- begin myaccount_verify_password.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>My Account</title>
<TMPL_INCLUDE NAME="myaccount/myaccount_includes.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/login_script.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/md5.js"></script>

<script type="text/javascript">
  var enable_lh = <TMPL_IF ENABLE_LOGIN_HASHING>1<TMPL_ELSE>0</TMPL_IF>;
  var enable_lt = <TMPL_IF ENABLE_LOGIN_TOKEN>1<TMPL_ELSE>0</TMPL_IF>;
</script>

</head>

<body onload="<TMPL_IF NAME="ERROR_MESSAGE">alert('<TMPL_VAR NAME=ERROR_MESSAGE>');</TMPL_IF>setup_page(); if (window.opener) {<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>}" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>
<TMPL_INCLUDE NAME="header_info.tpl">


<form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post" onSubmit="return prepared_pwd();">
        <TMPL_INCLUDE NAME="common_hidden_input.tpl">
        <input type="hidden" name="MYACCOUNT_AUTH" value="1">
        <input type="hidden" name="BASEP" value="1">
        <input type="hidden" name="EVENT" value="LOGIN/DO_VERIFY_PASSWORD_MYACCOUNT">
        <input type="hidden" name="EVENT_CONTINUE" value="<TMPL_VAR NAME='EVENT_CONTINUE'>">
        <TMPL_IF NAME="DD_DETAIL_SUBSCRIPTION_ID">
            <input type="hidden" name="SUBSCRIPTION_ID" value="<TMPL_VAR NAME="DD_DETAIL_SUBSCRIPTION_ID">">
        </TMPL_IF>
        <TMPL_IF NAME="DCONFLCT_ID">
            <input type="hidden" name="DCONFLCT_ID" value="<TMPL_VAR NAME="DCONFLCT_ID">">
        </TMPL_IF>
      <TMPL_IF ENABLE_LOGIN_HASHING>
        <input type="hidden" name="_K" value="<TMPL_VAR NAME=_K>">
        <input type="hidden" name="_SK" value="<TMPL_VAR NAME=_SK>">
      </TMPL_IF>

    <div class="myaccCon myaccCon2" style="border-radius:8px;min-width:600px;width:600px;">
        <div>

        <div class="myaccount-section-title">Verify Password</div>
            <fieldset style="width:562px;margin:auto;" class="mgt15">
                <div class="section-row">
                    <div>
                        <TMPL_IF ENABLE_LOGIN_TOKEN>
                            To ensure the security of your account you are required to
                            enter the following before you view the MyAccount section:
                            <ul>
                                <li>Your Password</li>
                                <li>Verification characters</li>
                            </ul>
                        <TMPL_ELSE>
                            To ensure the security of your account you are required to
                            enter your password before you view the MyAccount section:
                        </TMPL_IF>
                    </div>
                </div>
                <div class="section-row">
                    <br/>
                    <table>
                        <tbody>

                    <table border="0" cellpadding="2" cellspacing="0" width="360">

                            <tr>
                                <td style="text-align:right;width: 38%;padding: 0 6px 6px 0;">
                                    <b>Login ID:</b>
                                </td>
                                <td style="padding: 0 6px 6px 0;">
                                    <TMPL_VAR NAME='LOGINID'>
                                </td>
                            </tr>

                            <tr>
                                <td style="text-align:right;width: 38%;padding-right: 6px;padding-bottom: 6px;">
                                    <b><label for="pass_wrd">Password:</label></b>
                                </td>
                                <td style="padding: 0 6px 6px 0;">
                                    <INPUT id="pass_wrd" TYPE="password" NAME="PASSWORD" SIZE="24" VALUE="" autocomplete="off" tabindex="1">
                                </td>
                            </tr>
                            <TMPL_IF ENABLE_LOGIN_TOKEN>
                                <input type="hidden" name="_ST" value="">
                                <tr>
                                    <td class="unifont2" align="right" nowrap>
                                        <b>Verification:</b>
                                    </td>
                                    <td align="left" width="200">
                                        <IMG name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b><label for="vfy_txt">Enter the <a class="verification" href="javascript:void(0);" onClick="alert_win('<TMPL_VAR NAME=HTMLPATH>/verification_popup.html');">verification</a> characters:</label></b>
                                    </td>
                                    <td>
                                        <input id="vfy_txt" type="text" name="_T" size="24" autocomplete="off" tabindex="2">
                                    </td>
                                </tr>

                            </TMPL_IF>


                        </tbody>
                    </table>
                </div>
                <div class="section-row mgt10">
                    <div class="section-row child-divs-center">
                        <div>
                            <a class="btn red-btn" href="javascript:$j('form[name=MYACCOUNT]').submit();void(0);">Continue</a>
                        </div>
                        <div class="mgl10">
							<TMPL_IF NAME="MOBILE_ONLY_USER">
									<a class="btn grey-btn" href="javascript:send_event('MYACCOUNT/SHOW_ORDER_MGR');">Cancel</a>
							<TMPL_ELSE>
							  <a class="btn grey-btn" href="javascript:window.close();">Cancel</a>
							</TMPL_IF>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</form>

<TMPL_INCLUDE NAME="classic_footer.tpl">
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
</body>
</html>
<!-- end myaccount_verify_password.tpl -->
