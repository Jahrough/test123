<!DOCTYPE html>
<html>
    <head>
        <title>Change Password Reminder</title>
    <TMPL_INCLUDE NAME="includes_info.tpl">
    </head>
    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
    <TMPL_INCLUDE NAME="header_info.tpl">

        <form name="CHG_PASSWD" action="<TMPL_VAR NAME=ACTION>" method="post">
            <TMPL_INCLUDE NAME="common_hidden_input.tpl">
            <input type="hidden" name="EVENT" value="MESSAGE/MESSAGES">
            <input type="hidden" name="CLIENT_TYPE" value="WEB">
            <input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='LOGINID'>">
            <input type="hidden" name="PASSWORD_CHANGED" value="1">

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
                                                            <td align="center" valign="middle"><p class="infonote">Your password has been changed</p></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" valign="middle" height="50">
                                                                <a class="myaccount-btn red-btn" name="accept" href="javascript:send_event('LOGIN/CONTINUE')" style="display:inline-block;">Continue</a>
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
