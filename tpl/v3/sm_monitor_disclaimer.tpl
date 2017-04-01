<!DOCTYPE html>
<html>
    <head>
        <title>Important Reminder</title>
        <TMPL_INCLUDE NAME="includes_info.tpl">
    </head>
    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
    <TMPL_INCLUDE NAME="header_info.tpl">

<form name="DPPA" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME="common_hidden_input.tpl">
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

            <div align="center">
                <table width="880" border="0" cellSpacing="0" cellPadding="0">
                    <tbody>
                        <tr>
                            <td align="center" vAlign="top">
                                <div class="txtWrapper">
                                    <div id="txtCon">
                                        <div class="mfa-header">Important Reminder</div>
                                        <br/>

                                        <table border="0" cellpadding="12" cellspacing="0" width="100%" class="myaccountborder">
                                            <tr>
                                                <td align="center" valign="middle">

                                                    <table border="0" width="90%" cellpadding="6" cellspacing="0">
                                                      <tr>
                                                        <TMPL_IF LE>
                                                        <td class="medblack" width="90%" align="left">
                                                You are now leaving Accurint for Law Enforcement and are being redirected to LexisNexis&reg; Accurint&reg; Social Media Analytics.  You will be automatically signed in to Accurint&reg; Social Media Analytics using your Accurint login credentials.  As part of the sign-in process, your First and Last Name and Email Address will be provided to a third-party vendor in order to authenticate your login credentials. Please note that Accurint&reg; Social Media Analytics is for criminal justice use only. The user agrees that the information obtained through Accurint&reg; Social Media Analytics will only be used to carry out valid, legal, and official law enforcement, public safety, and correctional facility purposes and for no other purpose. The information obtained through Accurint&reg; Social Media Analytics shall not be disclosed to any third party except when necessary to carry out such law enforcement duties. Any misuse of this information is contrary to the LexisNexis terms of access and use.
                                                        </td>
                                                        <TMPL_ELSE>
                                                        <td class="medblack" width="90%" align="left">
                                                You are now leaving Accurint for Government and are being redirected to LexisNexis&reg; Accurint&reg; Social Media Analytics. You will be automatically signed in to Accurint&reg; Social Media Analytics using your Accurint login credentials. As part of the sign-in process, your First and Last Name and Email Address will be provided to a third-party vendor in order to authenticate your login credentials. The user agrees that the information obtained through Accurint&reg; Social Media Analytics will only be used to carry out valid, legal, and official government program integrity purposes and for no other purpose. The information obtained through Accurint&reg; Social Media Analytics shall not be disclosed to any third party except when necessary to carry out such investigative duties. Any misuse of this information is contrary to the LexisNexis terms of access and use.
                                                        </td>
                                                        </TMPL_IF>
                                                      </tr>
                                                      <tr>
                                                        <td class="medblack" width="90%" align="left">
							The LexisNexis&reg; Accurint&reg; Social Media Analytics services are not provided by "consumer reporting agencies," as that term is defined in the Fair Credit Reporting Act (15 U.S.C. § 1681, et seq.) ("FCRA") and do not constitute "consumer reports," as that term is defined in the FCRA. Accordingly, the LexisNexis&reg; Accurint&reg; Social Media Analytics service may not be used in whole or in part as a factor in determining eligibility for credit, insurance, employment or another purpose in connection with which a consumer report may be used under the FCRA.
                                                        </td>
                                                      </tr>
                                                      <tr>
                                                        <td class="medblack" width="90%" align="left">
                                                If you do not wish to be signed in to Accurint&reg; Social Media Analytics, please click Cancel to exit this window now.  If you wish to proceed, click Continue.
                                                        </td>
                                                      </tr>
                                                    </table>

                                                    <table border="0" cellpadding="0" cellspacing="0" class="myaccountbody">
                                                            <tr>
                                                                <td align="center" valign="middle" height="50">
                                                                    <a class="myaccount-btn red-btn" name="accept" href="javascript:send_event('SAML/ACCESS_SM_MONITOR');" style="float:left;">Continue</a>
                                                                    <a class="myaccount-btn darkgrey-btn" name="accept" href="javascript:window.close();" style="float:left;">Cancel</a>                      
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
