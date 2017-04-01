<!DOCTYPE html>
<html>
    <head>
        <title>Change Password Reminder</title>
    <TMPL_INCLUDE NAME="includes_info.tpl">

        <script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>

        <script type="text/javascript">
            function change_later()
          {
                  document.forms[0].SKIP_PASSWORD_CHANGE.value = 1;
                  send_event('LOGIN/CONTINUE');
              }
        </script>

    </head>
    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
    <TMPL_INCLUDE NAME="header_info.tpl">

        <form name="PWCHREMIND" action="<TMPL_VAR NAME=ACTION>" method="post">
            <TMPL_INCLUDE NAME="common_hidden_input.tpl">
            <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
            <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
            <input type="hidden" name="EVENT" value="">
            <input type="hidden" name="SKIP_PASSWORD_CHANGE" value="">

            <div align="center">
                <table width="880" border="0" cellSpacing="0" cellPadding="0">
                    <tbody>
                        <tr>
                            <td align="center" vAlign="top">
                                <div class="txtWrapper">
                                    <div id="txtCon">
                                        <div class="mfa-header">Change Password Reminder</div>
                                        <br/>

                                        <table border="0" cellpadding="12" cellspacing="0" width="100%" class="myaccountborder">
                                            <tr>
                                                <td align="center" valign="middle">
                                                    <table border="0" cellpadding="0" cellspacing="0" class="myaccountbody">
                                                        <tr>
                                                            <td align="center" valign="middle"><p class="infonote">Your password will expire in <TMPL_VAR NAME="DAYS_TO_EXPIRY"> days.<br>Would you like to change it?</p></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" valign="middle" height="50">
                                                                    <a class="myaccount-btn red-btn" name="accept" href="javascript:send_event('LOGIN/REMIND_PASSWORD_CHANGE_SHOW')" style="float:left;">Change Now</a>
                                                                    <a class="myaccount-btn darkgrey-btn" name="accept" href="javascript:change_later();" style="float:left;">Change Later</a>                      
                                                                </td>
                                                            </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </body>
</html>
