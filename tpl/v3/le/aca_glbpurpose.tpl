<!DOCTYPE html>
<html>
    <head>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <script language="JavaScript">
            function accept_terms()
            {
                $j('.subTxt > p').css('color', '#aaa');
                send_event('SAML/ACCESS_ATACRAIDS');
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
                    <div class="lnin-header">Accurint<small><sup>&reg;</sup></small> Crime Analysis Terms and Conditions</div>
                    <br/>
                    
                        <p>
                            Accurint<small><sup>&reg;</sup></small> Crime Analysis is for criminal justice use only. 
                        </p>
                        <p>
                            The user agrees that the information obtained through Accurint Crime Analysis will only be used to carry out valid, legal, and official law enforcement, public safety, and correctional facility purposes and for no other purpose. 
                        </p>
                        <p>
                            The information obtained through Accurint Crime Analysis shall not be disclosed to any third party except when necessary to carry out such law enforcement duties. 
                        </p>
                        <p>
                            Any misuse of this information is contrary to the LexisNexis terms of access and use applicable to you.
                        </p>

                        <p>&nbsp;</p>
                    
    
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
