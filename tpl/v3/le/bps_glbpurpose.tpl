<!DOCTYPE html>
<html>
    <head>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <script language="JavaScript">
            function accept_terms()
            {
                $j('.subTxt > p').css('color', '#aaa');
                send_event('SEARCH/SAVE_DPPA');
            }

            function decline_terms()
            {
                $j('.subTxt > p').css('color', '#aaa');
                send_event('LOGOUT');
            }
        </script>

    </head>
    <body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >
        <TMPL_INCLUDE NAME="header_info.tpl">

        <form name="GLB" method="post">
            <TMPL_INCLUDE NAME="common_hidden_input.tpl">
            <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
            <input type="hidden" name="EVENT" value="">

            <div class="txtWrapper">
                <div id="txtCon">
                    <div class="lnin-header">Terms and Conditions</div>
                    <br/>

                    <p>
                    In consideration for the privilege of access to the information in Accurint for Law Enforcement database ("Accurint LE"), the individual who logged into Accurint LE (the "User") agrees to the following conditions:
                    </p>

                    <div class="subTxt">
                        <p>
                            1. The User acknowledges that LexisNexis Risk Solutions FL Inc. shall not be liable for the use made of Accurint LE by the User or the consequences of that use, and that the User or User's employing agency, or both, remain responsible for the acts or omissions of such User in connection with access to and use of the information in Accurint LE.
                        </p>

                        <p>
                        2. The User is aware that the information found in Accurint LE may contain errors. The User will not take action based solely on this information without independently verifying the validity and accuracy of that information.
                        </p>

                        <p>
                        3. The User understands and accepts that any non-compliance with the terms of this Agreement or any unauthorized or improper use or dissemination of information derived from Accurint LE may subject the User or the User's employing agency to discontinuance of service.  Moreover, certain offenses against system security and the improper dissemination of the information contained therein may be punishable offenses under state and federal law.
                        </p>

                        <p>
                        4. The User agrees to abide by the following rules and understands that access to Accurint LE is strictly conditioned upon such compliance:<br/>
                            A. Individual User codes will be used only for authorized law enforcement investigative or intelligence purposes and only in an official capacity.<br/>
                            B. Individual User passwords will not be disclosed to any other person except as expressly authorized by User's employing agency management.<br/>
                            C. Individual passwords will be changed if the User reasonably suspects that his or her password has been improperly disclosed or compromised.<br/>
                            D. Information will only be accessed or printed out for authorized law enforcement investigative or intelligence purposes and only in an official capacity.<br/>
                            E. <TMPL_IF DMF_PURPOSE_LEVEL_11>By agreeing below you are confirming you have a legitimate fraud prevention interest or you have a legitimate business purpose pursuant to a law, government rule, regulation, or fiduciary duty in order to access the NTIS Limited Access Death Master File (DMF).<TMPL_ELSE><TMPL_IF DMF_PURPOSE_LEVEL_10>By agreeing below you are confirming you have a legitimate fraud prevention interest in order to access the NTIS Limited Access Death Master File (DMF).<TMPL_ELSE><TMPL_IF DMF_PURPOSE_LEVEL_01>By agreeing below you are confirming you have a legitimate business purpose pursuant to a law, government rule, regulation, or fiduciary duty.<TMPL_ELSE>By agreeing below you are confirming you have no Permissible Purpose to access the NTIS Limited Access Death Master File (DMF).</TMPL_IF></TMPL_IF></TMPL_IF><br/>
                        </p>

                        <p>
                        5. The User acknowledges that he/she is aware of and bound by the terms and conditions of the Accurint for Law Enforcement Application and Agreement entered into by the User's employing agency.
                        </p>
                        <p>&nbsp;</p>
                    </div>
    
                        <div style="float:left;width:100%;">
                          <div style="text-align:center;">
                            <a class="myaccount-btn red-btn" name="accept" href="javascript:accept_terms();">I Accept</a>
                            <a class="myaccount-btn darkgrey-btn" name="decline" href="javascript:decline_terms();">I Decline</a>
                          </div>  
                       </div>  
                </div>
            </div>
        
        <TMPL_INCLUDE NAME="verify_password_trigger.tpl">
        </form>
    </body>
</html>
