<!DOCTYPE html>
<html>
    <head>
        <title>Secure Token Authenticaion</title>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <script src="<TMPL_VAR NAME='JSPATH'>/dppa_info.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>

        <script>
            function check_otp() 
            {
                df = document.forms[0];
                if (df.OTP_CODE.value.length < 6) {
                alert('Please enter your One Time Authentication code');
                df.OTP_CODE.focus();
                return false;
                } else {
                df.OTP_CODE.value = df.OTP_CODE.value.toUpperCase();
                //df.submit;
                send_event('LOGIN/CHECK_OTP');
                //return true;
                }
            }

            function bypass_otp() 
            {
                    alert("Please note that your privileges will be downgraded for the current login session.");
                send_event('LOGIN/BYPASS_OTP');
            }
        </script>

    </head>
  <body onload="document.forms[0].OTP_CODE.focus();"topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="header_info.tpl">

            <form name="CHECK_OTP" action="<TMPL_VAR NAME=ACTION>" method="post">
             <TMPL_INCLUDE NAME="common_hidden_input.tpl">
              <input type="hidden" name="EVENT" value='LOGIN/CHECK_OTP'>

              <TMPL_IF ERROR_MESSAGE>
                <script>
              alert('<TMPL_VAR ERROR_MESSAGE>');
            </script>
              </TMPL_IF>

            <div class="txtWrapper">
                <div id="txtCon">
                    <div class="mfa-header">Secure Token Authentication</div>
                    <br/>

       <table border="0" cellpadding="1" cellspacing="0" class="myaccountborder" style="margin: 0 auto">
                <tr>
                  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
		    <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
		      <tr>
			<td align="center">
			  <table border="0" cellpadding="10" cellspacing="0" width="600" class="myaccountalert" style="border:none;">
				<tr>
				  <td align=center class="myaccountlabel">
				    To protect your account please enter the code from your Secure Token. 
				    <br/>
				    Please press the button on your token to get a new set of numbers.
				  </td>
				</tr>

				<tr>
				  <td colspan="2" align="center" class="myaccountlabel" valign="middle" height="50">
				  <table border="0" width="500">
				  <tr>
					<!--<td width="50" "FONT-SIZE: 9pt; FONT-FAMILY: Arial;background:#FFFFFF" align="left" valign="top">-->
				    <td class="myaccountlabel" valign="middle" height="50">
					    <table border="0" width="95%">
					    <tr>
					    <td> <img src="<TMPL_VAR NAME="IMGPATH">/otp_security_token.png">
					    </td>
					    </tr>
					    <tr>
					    <td align="center" class="myaccountlabel" valign="middle">
					    <TMPL_IF NAME="IS_SYSTEM_ADMIN">
					        <a class="adver" href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/bps/faq_2factorFAQAdmin.html','2FactorFAQAdmin',750,500,0,0,0,1,1,0);void(0);">Need Assistance?</a></td>
					    <TMPL_ELSE>
					        <a class="adver" href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/bps/faq_2factorFAQ.html','2FactorFAQ',750,500,0,0,0,1,1,0);void(0);">Need Assistance?</a></td>
					    </TMPL_IF>
					    </td>	
					    </tr>	
					    </table>
				    </td>	

				    <td class="myaccountlabel" valign="middle" height="50">
					    <table border="0" width="95%">
					    <tr>
					    <td align="left" class="myaccountlabel" valign="middle" height="50">
					    <b>Enter your Secure Token code</b> : <input type=text name=OTP_CODE size="6">
					    </td>
					    </tr>

					    <tr>
						<td align="left">
                            <a class="myaccount-btn red-btn" name="accept" href="javascript:check_otp();">Continue</a>                      
					    </tr>
					    </table>
				    </td>

				    </tr>
				    </table>
				  </td>
				</tr>


                        <TMPL_IF NAME="ENABLE_OTP_ROAMING">
                        <tr>
                          <td colspan="2" align="center" class="myaccountlabel" height="30" valign="middle">
                            <table width=500>
                              <tr><td class="myaccountlabel" height="30">
                            If you do not have the Secure Token available;  click on the button below to continue with lower privileges: 
                              </td></tr>
                            </table>
                          </td>
                        </tr>

                        <tr>
                          <td align="center">
                            <a class="myaccount-btn red-btn" name="accept" href="javascript:bypass_otp();">Continue Without Token</a>                      
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






                </div>
            </div>
       
        </form>
    </body>
</html>
