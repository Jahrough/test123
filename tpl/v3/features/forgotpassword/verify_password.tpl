<TMPL_INCLUDE NAME="features/forgotpassword/header.tpl">
<!-- begin: verify_password.tpl -->
        <script>     
        function register_later() {
        document.forms[0].I.value='LATER';
        <TMPL_IF MANDATORY_REGISTER>
          send_event('LOGOUT')
        <TMPL_ELSE>
          <TMPL_IF NAME=VERIFY_FEATURE>
            send_event('LOGIN/SHOW_LOGIN')
          <TMPL_ELSE>
            send_event('PRELOGIN/SHOW_INFO')
          </TMPL_IF>
        </TMPL_IF>
        }
        </script>
        <noscript>Your browser does not support JavaScript!</noscript>
            <input type=hidden name="I" value="<TMPL_VAR NAME=REGISTER_WHEN>">
            <div class="txtWrapper">
                <div id="txtCon">
                    <div class="mfa-header">Forgot Password <TMPL_IF SA><TMPL_IF SA_ALREADY_REGISTERED>User<TMPL_ELSE>Company</TMPL_IF><TMPL_ELSE>User</TMPL_IF> Registration: Login</div>
                    <br/>
              <table border="0" cellpadding="10" cellspacing="0">                
                <tr><td class="unifont1" align="center">
                <!-- x -->
                <table border="0" cellpadding="0" cellspacing="0" width="75%">
                  <tr height="40">
                <td align="center">
                  <table width=100%>
                  <tr><td class=unifont1>
                  <br>
                  <TMPL_IF ENABLE_LOGIN_TOKEN>
                    To ensure the security of your account you are required to
                    enter the following before you can register for this feature:
                    <ul>
                      <li> Your Password
                      <!--
                      <li> Verification characters 
                      -->
                    </ul>
                  <TMPL_ELSE>
                    To ensure the security of your account you are required to
                    enter your password before you can register for this feature:
                  </TMPL_IF>
                  </td></tr>
                  </table>
                </td>
                  </tr>

                <TMPL_IF NAME="ERROR_MESSAGE">
			      <tr height="30">
				        <td align="center">
				        	<div class="section-row pd15">
				            	<div class="warningmessage">
				            		<TMPL_VAR NAME="ERROR_MESSAGE">&nbsp;
				            	</div>
				            </div>
        				</td>
			      </tr>
				  </TMPL_IF>
                  
                  <tr>
                <td align="center">
                    <table border="0" cellpadding="2" cellspacing="0" width="300">
                      
                      <TMPL_UNLESS MAX_ERR>
                      <input type=hidden name="VERIFY_FEATURE" value="<TMPL_VAR NAME=VERIFY_FEATURE>">
                      <tr>
                    <td class="unifont1" align="right" width="80"><b>Login ID:</b></TD>
                    <td class="unifont1" align="left" width="200">&nbsp;<TMPL_VAR NAME='LOGINID'></td>
                      </tr>
                      <tr>
                    <td class="unifont1" align="right" width="80"><b><label for="pass_word">Password:</label></b></TD>
                    <td align="left" width="200">&nbsp;<INPUT id="pass_word" TYPE="password" NAME="PASSWORD" SIZE="24" VALUE="" autocomplete="off" tabindex="1"></td>
                      </tr>
                      <TMPL_IF ENABLE_LOGIN_HASHING>
                    <input type="hidden" name="_K" value="<TMPL_VAR NAME=_K>">
                    <input type="hidden" name="_SK" value="<TMPL_VAR NAME=_SK>">
                      </TMPL_IF>
                      <TMPL_IF ENABLE_LOGIN_TOKEN>
                    <!--
                    <input type="hidden" name="_ST" value="">
                    <tr>
                      <td class="unifont2" align="right" nowrap><b>Verification:</b></td>
                      <td align="left" width="200">&nbsp;<IMG name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:"></td>
                    </tr>
                    <tr>
                      <td class="unifont2" align="right"><b>Enter the <a class="verification" href="javascript:void(0);" onClick="alert_win('<TMPL_VAR NAME=HTMLPATH>/verification_popup.html');">verification</a> characters:</b></td>
                      <td align="left" width="200">&nbsp;<input type="text" name="_T" size="24" autocomplete="off" tabindex="2"></td>
                    </tr>
                      -->
                      </TMPL_IF>
                    
                    <tr>
                      <td colspan="2" align="center">
                        <br>
                        <table border=0 cellspacing=5 cellpadding=5>
                        <tr>
                        <td valign=middle>
                        <a class="myaccount-btn red-btn" name="accept" href="javascript:send_event('<TMPL_VAR NAME=EVENT>');">Continue</a>
                        </td>
                        <TMPL_UNLESS MANDATORY_REGISTER>
                        <td valign=middle>
                           <a class="myaccount-btn grey-btn" name="accept" href="javascript:register_later();">Cancel</a>
                        </td>
                        </TMPL_UNLESS>
                        </tr>
                        </table>
                      </td>
                    </tr>

                      <TMPL_ELSE>
                      <tr>
                    <td colspan=2 class="unifont1">
                    Please try again later.
                    </td>
                      </tr>

                    <tr>
                      <td colspan="2" align="center">
                        <br>
                        <table border=0 cellspacing=5 cellpadding=5>
                        <tr>
                        <td valign=middle>
                           <a class="myaccount-btn red-btn" name="accept" href="javascript:register_later();">Continue</a>
                        </td>
                        </tr>
                        </table>
                      </td>
                    </tr>
                    </TMPL_UNLESS>

                    </table>
                    <br>                
                    </td>
                  </tr>
                </table>
                <!-- x -->
                </td></tr>
              </table>
          <br><br>
          <!--
          </td>
                </tr>
    
              </table>
          -->
    
<TMPL_INCLUDE NAME="features/forgotpassword/footer.tpl">

<!-- end: cancel.tpl -->
