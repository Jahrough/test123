        <!-- begin: register_section.tpl -->

        <script>
        function register_later() {
            <TMPL_IF MANDATORY_REGISTER>
               send_event('LOGOUT');
            <TMPL_ELSE>
               <TMPL_IF DISABLE_FORGOT_PASSWORD_FEATURE>
                  <TMPL_IF NAME=MYACCOUNT_PREFERENCES>
                     send_event('MYACCOUNT/SHOW_PREFERENCES');
                  <TMPL_ELSE>
                     window.close()
                  </TMPL_IF>
               <TMPL_ELSE>
                  document.forms[0].I.value='LATER';
                  send_event('PRELOGIN/SHOW_INFO')
               </TMPL_IF>
            </TMPL_IF>
        }

        </script>
        <noscript>Your browser does not support JavaScript!</noscript>
        <input type="hidden" name="I" value=''>
        <input type="hidden" name="ORIGIN" value='0'>
        
        <div class="txtWrapper w100pc">
            <div id="txtCon">
                <div class="mfa-header">
                    Forgot Password <TMPL_IF SA><TMPL_IF SA_ALREADY_REGISTERED>User<TMPL_ELSE>Company</TMPL_IF><TMPL_ELSE>User</TMPL_IF> <TMPL_IF NAME="EMAIL_VERIFY">Verification<TMPL_ELSE>Registration</TMPL_IF>
                    <br/><br/>
                    <TMPL_UNLESS NAME=DONE_PRE_VERIFY>
                    <TMPL_UNLESS NAME=DONE_POST_VERIFY>
                    <TMPL_UNLESS EXPIRED>
                    <TMPL_UNLESS NAME=EMAIL_VERIFY>
                    <span class="unifont1">Please enter information below to enable this feature. Please note that all of the information below will be required when using the Forgot Password feature to retrieve a one time password.</span><br><br>

                    <TMPL_ELSE>
                    <span class="unifont1">To enable this feature please enter the code which was sent to you via email:</span><br><br>
                    </TMPL_UNLESS>
                    </TMPL_UNLESS>
                    </TMPL_UNLESS>
                    </TMPL_UNLESS>
                </div>
                <br/>


          <table border="0" cellpadding="10" cellspacing="0">
            <tr><td class="unifont1" align=center>
              <TMPL_IF NAME=ERROR_MESSAGE>
              <div align="center"><span class="errmsg"><TMPL_VAR NAME=ERROR_MESSAGE></span></div>
              <br>
              </TMPL_IF>
              <TMPL_IF NAME=DONE_PRE_VERIFY>
            <TMPL_INCLUDE NAME="features/forgotpassword/register_done_preverify.tpl">
              <TMPL_ELSE>
            <TMPL_IF NAME=DONE_POST_VERIFY>
                <TMPL_INCLUDE NAME="features/forgotpassword/register_done_postverify.tpl">
            <TMPL_ELSE>
                <TMPL_IF NAME=MAX_ERR>
                <!--You have exceeded the maximum allowed number of attempts.-->
                <TMPL_ELSE>
                <TMPL_IF NAME=EMAIL_VERIFY>
                    <TMPL_UNLESS NAME=EXPIRED>
                    <TMPL_INCLUDE NAME="features/forgotpassword/verify_form.tpl">
                    </TMPL_UNLESS>
                <TMPL_ELSE>
                    <TMPL_INCLUDE NAME="features/forgotpassword/register_form.tpl">
                </TMPL_IF>
                </TMPL_IF>
            </TMPL_IF>
              </TMPL_IF>
            </td></tr>
            <tr>
              <td colspan="2" align="center" class="myaccounttitle" height="100" valign="middle">
            <table border=0 cellspacing=5 cellpadding=5>
            <tr>
            <TMPL_IF NAME=DONE_PRE_VERIFY>
            <td valign=middle>
                <a class="myaccount-btn red-btn" name="accept" href="javascript:all_done_continue();">Continue</a>
            </td>
            <TMPL_ELSE>
                <TMPL_IF NAME=DONE_POST_VERIFY>
                <td valign=middle>
                <a class="myaccount-btn red-btn" name="accept" href="javascript:all_done_continue();">Continue</a>
                </td>
                <TMPL_ELSE>
                <TMPL_IF NAME=MAX_ERR>
                <td valign=middle>
                <a class="myaccount-btn red-btn" name="accept" href="javascript:all_done_continue();">Continue</a>
                </td>
                <TMPL_ELSE>
                    <TMPL_IF NAME=EMAIL_VERIFY>
                    <TMPL_IF NAME=EXPIRED>
                        <td valign=middle>
                        <a class="myaccount-btn red-btn" name="accept" href="javascript:send_event('PRELOGIN/SHOW_REGISTER');">Continue</a>
                        </td>
                    <TMPL_ELSE>
                        <td valign=middle>
                        <a class="myaccount-btn red-btn" name="accept" href="javascript:send_event('PRELOGIN/EMAIL_VERIFY');">Continue</a>
                        </td>
                        <td valign=middle>
                        <TMPL_UNLESS MANDATORY_REGISTER>
                           <a class="myaccount-btn darkgrey-btn" name="accept" href="javascript:all_done_continue();">Cancel</a>
                        </TMPL_UNLESS>
                        </td>
                        <td valign=middle>
                        <a class="myaccount-btn grey-btn" name="accept" href="javascript:send_event('PRELOGIN/RESEND_VTOKEN');">Re-send Code</a>
                        </td>
                    </TMPL_IF>
                    <TMPL_ELSE>
                    <td valign=middle>
                    <a class="myaccount-btn red-btn" name="accept" onclick="javascript:check_vals();">Continue</a>
                    </td>
                    <TMPL_UNLESS MANDATORY_REGISTER>
                    <td valign=middle>
                    <a class="myaccount-btn darkgrey-btn" name="accept" href="javascript:register_later();">Cancel</a>
                    </td>
                    </TMPL_UNLESS>
                    </TMPL_IF>
                </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </tr>
            </table>
              </td>
            </tr>
          </table>
         </div>
      </div>
      <br><br><br>

    <!-- end: register_section.tpl -->

