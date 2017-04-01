<TMPL_INCLUDE NAME="features/forgotpassword/header.tpl">
<!-- info.tpl -->            
        <script>
        function register_later() {
        document.forms['FORGOT_PASSWORD'].I.value='LATER';
        send_event('PRELOGIN/SHOW_INFO')
        }
        </script>
        <noscript>Your browser does not support JavaScript!</noscript>  
          <input type="hidden" name="I" value="">
          <div class="txtWrapper">
            <div id="txtCon">
                <div class="mfa-header">Forgot Password</div>
                <br/>
                <table border="0" cellpadding="10" cellspacing="0" style="border:none;text-align:center;">

                <tr><td>

                  <TMPL_IF NAME=ERROR>
                  <div class="errorbox" align=center>
                  <span class="errmsg"><TMPL_VAR NAME=ERROR></span>
                  </div>
                  </TMPL_IF>

                  <TMPL_IF NAME=NOW>
                <TMPL_IF NAME=INITIAL_REGISTRATION>  
                <TMPL_INCLUDE NAME="features/forgotpassword/continue_now_saved.tpl">
                <TMPL_ELSE>
                <TMPL_INCLUDE NAME="features/forgotpassword/continue_now.tpl">
                </TMPL_IF>
                  <TMPL_ELSE>
                <TMPL_IF NAME=LATER>
                    <TMPL_INCLUDE NAME="features/forgotpassword/continue_later.tpl">
                <TMPL_ELSE>
                    <TMPL_INCLUDE NAME="features/forgotpassword/continue_nothanks.tpl">
                </TMPL_IF>
                  </TMPL_IF>
                </td></tr>
                <tr>
                  <td colspan="2" align="center" class="myaccounttitle" height="100" valign="middle">
                <table border=0 cellspacing=5 cellpadding=5>
                <tr>
                <TMPL_UNLESS NAME=NOW>
                <td valign=middle>
                <a class="myaccount-btn red-btn" name="accept" href="javascript:all_done_continue();">Continue</a>
                </td>
                <TMPL_ELSE>
                <td valign=middle>
                <a class="myaccount-btn red-btn" name="accept" href="javascript:verify_terms();">Continue</a>
                </td>
                <td valign=middle>
                <a class="myaccount-btn darkgrey-btn" name="accept" href="javascript:register_later();">Cancel</a>
                </td>
                </TMPL_UNLESS>
                </tr>
                </table>
              <br><br><br>
            </div>
         </div>
 
<TMPL_INCLUDE NAME="features/forgotpassword/footer.tpl">

<!-- end info.tpl -->
