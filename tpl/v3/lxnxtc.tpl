<!DOCTYPE html>
<html>
    <head>
    <title>LexisNexis Terms and Conditions</title>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <script language="JavaScript">
        function setchecked()
        {
            document.LXNXTC.LXN_ACPT.value = '1';
            document.LXNXTC.EVENT.value = '<TMPL_VAR NAME=CURRENT_EVENT>';
            document.forms[0].submit();
            
        }
        </script>
    </head>

<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="header_info.tpl">

         <form name="LXNXTC" action="<TMPL_VAR NAME=ACTION>" method="post">
           <TMPL_INCLUDE NAME="common_hidden_input.tpl">         
            <input type="hidden" name="LXN_ACPT" value="<TMPL_VAR NAME=LXN_ACPT>">
            <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
            <input type="hidden" name="EVENT" value="">
 
            <div align="center">
                <table width="880" border="0" cellSpacing="0" cellPadding="0">
                    <tbody>
                        <tr>
                            <td align="center" vAlign="top">
                                <div class="txtWrapper">
                                    <div id="txtCon">
                                        <div class="lnin-header">Terms and Conditions</div>
                                        <br/>

                        <table border="1" cellpadding="3" cellspacing="0" valign=top bordercolor="black" height="300" class="termstext" wrap>

                        <tr><td class="unifont1" bgcolor="white">
                        <br>
                        News content is provided by LexisNexis&#174;. <br>
                        Your use of the LexisNexis services (the "Online Services") is governed by the <a href="http://www.lexisnexis.com/terms/general/" target="_blank">General Terms & Conditions </a> for use of  the LexisNexis Services ("General Terms and Conditions").<br><br>
                        All access to and use of the Online Services via mechanical, programmatic, robotic, scripted or any other automated means is strictly prohibited.  Your use of the Online Services shall only be made via manually conducted, discrete, individual search and retrieval activities.
                        <br><br><br>

                        By selecting the "ACCEPT" button below,<br>
                         (i) you agree to the foregoing and represent that you have read the General Terms and Conditions; and<br>
                         (ii) you further agree to be bound by the foregoing and the General Terms & Conditions.<br><br>

                        </td></tr>
                        </table>


                        <table border="0" cellpadding="10" cellspacing="0">
                          <tr>
                            <td align="center" valign="top" wrap>
                              <br>
                              <br>
                            <center>
                                <a class="myaccount-btn red-btn" name="accept" href="javascript:setchecked();" style="float:left;">I Accept</a>
                                <a class="myaccount-btn darkgrey-btn" name="accept" href="javascript:send_event('SEARCH/SHOW_MENU');" style="float:left;">I Decline</a>
                            </center>
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

       
        <TMPL_INCLUDE NAME="verify_password_trigger.tpl">
        </form>
    </body>
</html>
