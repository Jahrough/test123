<TMPL_IF ENABLE_MYACC_V3>

    <TMPL_INCLUDE NAME=header_v3.tpl>

        <script>
            function do_sms_2fa_auth()
        {
                df = document.forms[0];
                if (df.SMS_OTP_CODE.value.length < 6) {
                    alert('Please enter your 6 digit verification code');
                    df.SMS_OTP_CODE.focus();
                    return false;
                } else {
                    df.SMS_OTP_CODE.value = df.SMS_OTP_CODE.value.toUpperCase();
                    //df.submit;
                    send_event('LOGIN/DO_SMS_2FA_AUTH');
                    //return true;
                }
            }
            function bypass_otp()
        {
                alert("Please note that your privileges will be downgraded for the current login session.");
                send_event('LOGIN/BYPASS_OTP');
            }

            function resend_sms_2fa_auth()
        {
                send_event('LOGIN/RESEND_SMS_2FA_OTP');
            }
        </script>


        <form name="SET_SMS_2FA" action="<TMPL_VAR NAME=ACTION>" method="post">
            <TMPL_INCLUDE NAME=common_hidden_input.tpl>
            <input type="hidden" name="EVENT" value='LOGIN/DO_SMS_2FA_AUTH'>
            <input type=hidden NAME="_K" VALUE="<TMPL_VAR NAME=_K>">
            <input type=hidden NAME="_SK" VALUE="<TMPL_VAR NAME=_SK>">
            <input type="hidden" name="INIT_LOGIN" value="<TMPL_VAR NAME=INIT_LOGIN>">

            <!--<TMPL_IF ERROR_MESSAGE>
              <script>
            alert('<TMPL_VAR ERROR_MESSAGE>');
          </script>
            </TMPL_IF>-->

                    <div class="mfa-header">Multi-Factor Authentication Registration</div>
                    <br/>


                    <table border="0" cellpadding="1" cellspacing="0" class="myaccountborder" style="margin: 0 auto">
                        <tr>
                            <td align="center">
                                <table border="0" cellpadding="10" cellspacing="0" width="600" class="myaccountalert">
                                    <TMPL_IF NAME=ERROR_MESSAGE>
                                        <tr>
                                            <td align=center colspan=2 class="errormessage">
                                                <span class="errormessage"><TMPL_VAR NAME="ERROR_MESSAGE">&nbsp;</span>
                                                <br>
                                            </td>
                                        </tr>
                                    </TMPL_IF>
                                    <TMPL_IF NAME=MESSAGE>
                                        <tr>
                                            <td align=center colspan=2 class="errormessage">
                                                <span class="successmessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
                                                <br>
                                            </td>
                                        </tr>
                                    </TMPL_IF>
                                    <tr>
                                        <td align=center colspan=2 class="myaccountlabel">
                                            Please verify your <TMPL_VAR NAME="SMS_CARRIER_DESC"> cell phone by entering the 6-digit code that we sent to your cell phone over SMS.
                                        <br>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td align=center class="myaccountlabel"><b>Enter the 6-digit verification code<br />(Verification Code expires in 30 minutes)</b></td>
                                            <td><input type=text name="SMS_OTP_CODE" size="6" maxlength="6" tabindex="1"></td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="myaccountlabel" colspan="2">
                                                <table border="0">
                                                    <tr>
                                                        <td class="myaccountlabel" valign="middle" height="50">
                                                            <table border="0">
                                                                <tr>
                                                                <TMPL_IF NAME="ENABLE_OTP_ROAMING">
                                                                    <TMPL_IF NAME="INIT_LOGIN">
                                                                        <td>
                                                                            <div class="myaccount-btn red-btn" name="accept" onclick="return do_sms_2fa_auth();" style="float:left;">Continue</div>                      
                                                                        </td>
                                                                        <td style="width:10px;"></td>
                                                                        <td>
                                                                            <div class="myaccount-btn darkgrey-btn" name="accept" onclick="return resend_sms_2fa_auth();" style="float:left;">Resend</div>                      
                                                                        </td>
                                                                        <td style="width:10px;"></td>
                                                                        <td>
                                                                            <div class="myaccount-btn grey-btn" name="accept" onclick="return bypass_otp();" style="float:left;">Skip</div>                      
                                                                        </td>
                                                                        <TMPL_ELSE>
                                                                            <td>
                                                                                <div class="myaccount-btn red-btn" name="accept" onclick="return do_sms_2fa_auth();" style="float:left;">Continue</div>                      
                                                                            </td>
                                                                            <td style="width:10px;"></td>
                                                                            <td>
                                                                                <div class="myaccount-btn darkgrey-btn" name="accept" onclick="return resend_sms_2fa_auth();" style="float:left;">Resend</div>                      
                                                                            </td>
                                                                    </TMPL_IF>
                                                                    <TMPL_ELSE>
                                                                        <td>
                                                                            <div class="myaccount-btn red-btn" name="accept" onclick="return do_sms_2fa_auth();" style="float:left;">Continue</div>                      
                                                                        </td>
                                                                        <td style="width:10px;"></td>
                                                                        <td>
                                                                            <div class="myaccount-btn darkgrey-btn" name="accept" onclick="return resend_sms_2fa_auth();" style="float:left;">Resend</div>                      
                                                                        </td>
                                                                </TMPL_IF>
                                                    </tr>

                                                </table>
                                            </td>
                                        </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    </td>
                    </tr>
                    </table>



                </div>
            </div>

        </form>





        <TMPL_INCLUDE NAME=footer_v3.tpl>

            <TMPL_ELSE>

                <!-- begin sms_2fa_auth_show.tpl -->
                <!--<TMPL_VAR NAME=SERVER_ID>-->
                <html>
                    <head>
                        <title>Multi-Factor Authentication</title>

                        <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
                        <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
                    <TMPL_IF ENABLE_V2>
                        <link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
                        <link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
                        <link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
                    </TMPL_IF>

                    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
                    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
                    <script>
                        function do_sms_2fa_auth()
                    {
                            df = document.forms[0];
                            if (df.SMS_OTP_CODE.value.length < 6) {
                                alert('Please enter your 6 digit verification code');
                                df.SMS_OTP_CODE.focus();
                                return false;
                            } else {
                                df.SMS_OTP_CODE.value = df.SMS_OTP_CODE.value.toUpperCase();
                                //df.submit;
                                send_event('LOGIN/DO_SMS_2FA_AUTH');
                                //return true;
                            }
                        }
                        function bypass_otp()
                    {
                            alert("Please note that your privileges will be downgraded for the current login session.");
                            send_event('LOGIN/BYPASS_OTP');
                        }

                        function resend_sms_2fa_auth()
                    {
                            send_event('LOGIN/RESEND_SMS_2FA_OTP');
                        }
                    </script>
                    </head>

                    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" onload="document.forms[0].SMS_OTP_CODE.focus();">
                    <TMPL_IF ENABLE_V2>
                        <div id="hd">
                            <h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
                        </div>
                    </TMPL_IF>

                    <form name="SET_SMS_2FA" action="<TMPL_VAR NAME=ACTION>" method="post">
                        <TMPL_INCLUDE NAME=common_hidden_input.tpl>
                        <input type="hidden" name="EVENT" value='LOGIN/DO_SMS_2FA_AUTH'>
                        <input type=hidden NAME="_K" VALUE="<TMPL_VAR NAME=_K>">
                        <input type=hidden NAME="_SK" VALUE="<TMPL_VAR NAME=_SK>">
                        <input type="hidden" name="INIT_LOGIN" value="<TMPL_VAR NAME=INIT_LOGIN>">

                        <!--<TMPL_IF ERROR_MESSAGE>
                          <script>
                        alert('<TMPL_VAR ERROR_MESSAGE>');
                      </script>
                        </TMPL_IF>-->

                        <div align="center">
                            <br><br>
                            <table border="0" cellpadding="0" cellspacing="0" width="856">
                                <tr>
                                    <td align="center" class="myaccounttitle" height="20" valign="middle">
                                        <br>
                                        Multi-Factor Authentication Registration
                                        <br><br>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
                                        <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
                                            <tr>
                                                <td align="center">
                                                    <table border="0" cellpadding="10" cellspacing="0" width="600" class="myaccountalert">
                                                        <TMPL_IF NAME=ERROR_MESSAGE>
                                                            <tr>
                                                                <td align=center colspan=2 class="errormessage">
                                                                    <span class="errormessage"><TMPL_VAR NAME="ERROR_MESSAGE">&nbsp;</span>
                                                                    <br>
                                                                </td>
                                                            </tr>
                                                        </TMPL_IF>
                                                        <TMPL_IF NAME=MESSAGE>
                                                            <tr>
                                                                <td align=center colspan=2 class="errormessage">
                                                                    <span class="successmessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
                                                                    <br>
                                                                </td>
                                                            </tr>
                                                        </TMPL_IF>
                                                        <tr>
                                                            <td align=center colspan=2 class="myaccountlabel">
                                                                Please verify your <TMPL_VAR NAME="SMS_CARRIER_DESC"> cell phone by entering the 6-digit code that we sent to your cell phone over SMS.
                                                            <br>
                                                            </td>
                                                            </tr>
                                                            <tr>
                                                                <td align=center class="myaccountlabel"><b>Enter the 6-digit verification code<br />(Verification Code expires in 30 minutes)</b></td>
                                                                <td><input type=text name="SMS_OTP_CODE" size="6" maxlength="6" tabindex="1"></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="myaccountlabel" colspan="2">
                                                                    <table border="0" width="500">
                                                                        <tr>
                                                                            <td class="myaccountlabel" valign="middle" height="50">
                                                                                <table border="0" width="95%">
                                                                                    <TMPL_IF NAME="ENABLE_OTP_ROAMING">
                                                                                        <TMPL_IF NAME="INIT_LOGIN">
                                                                                            <tr>
                                                                                                <td align="right" width="40%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Continue" onClick="return do_sms_2fa_auth();" onMouseDown="flip_style(this, 'rbd');" onMouseOut="flip_style(this, 'rb');"></td>
                                                                                                <td align="center" width="2%"></td>
                                                                                                <td align="center" width="16%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Resend" onClick="return resend_sms_2fa_auth();" onMouseDown="flip_style(this, 'rbd');" onMouseOut="flip_style(this, 'rb');"></td>
                                                                                                <td align="center" width="2%"></td>
                                                                                                <td align="left" width="40%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Skip" onClick="return bypass_otp();" onMouseDown="flip_style(this, 'rbd');" onMouseOut="flip_style(this, 'rb');"></td>
                                                                                            </tr>
                                                                                            <TMPL_ELSE>
                                                                                                <tr>
                                                                                                    <td align="right" width="40%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Continue" onClick="return do_sms_2fa_auth();" onMouseDown="flip_style(this, 'rbd');" onMouseOut="flip_style(this, 'rb');"></td>
                                                                                                    <td align="center" width="2%"></td>
                                                                                                    <td align="center" width="40%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Resend" onClick="return resend_sms_2fa_auth();" onMouseDown="flip_style(this, 'rbd');" onMouseOut="flip_style(this, 'rb');"></td>
                                                                                                </tr>
                                                                                        </TMPL_IF>
                                                                                        <TMPL_ELSE>
                                                                                            <tr>
                                                                                                <td align="right" width="40%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Continue" onClick="return do_sms_2fa_auth();" onMouseDown="flip_style(this, 'rbd');" onMouseOut="flip_style(this, 'rb');"></td>
                                                                                                <td align="center" width="2%"></td>
                                                                                                <td align="left" width="40%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Resend" onClick="return resend_sms_2fa_auth();" onMouseDown="flip_style(this, 'rbd');" onMouseOut="flip_style(this, 'rb');"></td>
                                                                                            </tr>
                                                                                    </TMPL_IF>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </form>
                    </body>
                </html>
                <!-- end sms_2fa_auth_show.tpl -->
                </TMPL_IF>