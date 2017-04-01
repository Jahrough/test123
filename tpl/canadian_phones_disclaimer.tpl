<!-- begin canadian_phones_disclaimer.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
    <head>
        <title>Legal Disclaimer</title>
        <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
        <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
        <script>
            function submit_disclaimer(canadian_phones_flag) {
                var myform = document.CANADIAN_PHONES_DISCLAIMER;
                myform.CANADIAN_PHONES_DISCLAIMER.value = 1;

                send_event('SEARCH2/SHOW_CANADIAN_PHONES');

            }
        </script>

    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <div id="hd"><span id="hdr_top_logo"></span></div>
        <div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>

        <form name="CANADIAN_PHONES_DISCLAIMER" action="<TMPL_VAR NAME=ACTION>" method="post">
            <TMPL_INCLUDE NAME=common_hidden_input.tpl>
            <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
            <input type="hidden" name="EVENT" value="">
            <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
            <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
            <INPUT type=hidden NAME="CANADIAN_PHONES_DISCLAIMER" VALUE="">
            <div align="center">
                <br>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="glbtitle"><B>Legal Disclaimer</B><br><br></td>
                    </tr>
                </table>
                <table border="0" cellpadding="10" cellspacing="0" width="600">
                    <tr>
                        <td class="unifont1" width="600" align="left">
                            Customer is not prohibited from accessing the Services provided under this Agreement from a location in Canada, provided however: 
                            <br>
                        </td>
                    </tr>
                    <tr>
                        <td width="680" align="center" valign="top">
                            <table border="0" cellpadding="0" cellspacing="0" width="520">
                                <TMPL_IF IRB>
                                    <tr>
                                        <td class="unifont1">
                                            (i) Customer acknowledges and agrees that such Services are provided to it in the United States at the point where the server facilities are located;
                                            <br><br>
                                            (ii) Customer&apos;s decision to access the Services from a location in Canada does not alter the fact that the Services are provided to Customer in the United States; and 
                                            <br><br>
                                            (iii) Customer acknowledges and agrees that IRB and its data providers make no representations regarding the legality of accessing such Services from Canada.
                                            <br><br>
                                        </td>
                                    </tr>
                                    <TMPL_ELSE>
                                        <tr>
                                            <td class="unifont1">
                                                (i) Customer acknowledges that such Services are provided to it in the United States at the point at which Customer accesses the LexisNexis server facilities;
                                                <br><br>
                                                (ii) Customer&apos;s decision to access the Services from a location in Canada does not alter the fact that the Services are provided to Customer in the United States; and 
                                                <br><br>
                                                (iii) Customer acknowledges that LexisNexis makes no representation regarding the legality of accessing such Services from Canada.
                                                <br><br>
                                            </td>
                                        </tr>
                                </TMPL_IF>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="unifont1" width="520" align="center">
                            <style>
                                .termsAcceptBtn,
                                .termsDeclineBtn{
                                    width:80px;
                                    height:20px;
                                    background:#F3352E;
                                    padding:5px 8px 0px 8px;
                                    cursor:pointer;
                                    font:normal 12px "Tahoma";
                                    color:#fff;
                                }
                                .termsDeclineBtn{
                                    background:#888A8A;
                                }
                            </style>
                            <table border="0" cellpadding="10" cellspacing="0" class="myaccountbody">
                                <tr>
                                    <td class="unifont1" align="center" width="50%">
                                        <div tabindex="1" class="rb_otp_small termsAcceptBtn" onClick="javascript:submit_disclaimer(1);">Accept</div>
                                    </td>
                                    <td class="unifont1" align="center" width="50%">
                                        <div tabindex="2" class="rb_otp_small termsDeclineBtn" onClick="send_event('SEARCH/SHOW_MENU');">Back</div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="footer">
                <a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis. All rights Reserved.&nbsp; <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a> <span>|</span> <a href="http://www.lexisnexis.com/en-us/terms/privacy-policy.page" target="_blank">Privacy & Security</a> 
            </div> 
        </form> 
    </body>
</html>
<!-- end canadian_phones_disclaimer.tpl -->


