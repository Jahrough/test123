 <!-- begin announcement.tpl -->

<TMPL_INCLUDE v4/features/forgotpassword/header.tpl>
    <script>
      function register_now() {
        document.forms[0].I.value='NOW';
        send_event('PRELOGIN/SHOW_VERIFY_PASSWORD')
      }
      function register_later() {
        document.forms[0].I.value='LATER';
        send_event('PRELOGIN/SHOW_INFO')
      }
      function register_end() {
        document.forms[0].I.value='NO';
        send_event('PRELOGIN/SHOW_INFO')
      }
    </script>

    <input type="hidden" name="I" value="">

    <div id="wrapper">
    <table id="use_table">
      <tr>
        <td>
	<br><br>
	<h2><TMPL_IF MANDATORY_REGISTER>Forgot Password Feature<TMPL_ELSE>New Feature: Forgot Password</TMPL_IF></h2>
        <br><br>

 <TMPL_IF SA>
  <TMPL_IF SA_ALREADY_REGISTERED>
              <p class="text12">
                <TMPL_IF MANDATORY_REGISTER>The Forgot Password feature is now a mandatory requirement<TMPL_ELSE>
                The Forgot Password feature is available for your use</TMPL_IF>. This feature allows you and your company's
                users to have a temporary <TMPL_IF RSKM>Risk Management Solutions<TMPL_ELSE>Anti-Money Laundering Solutions</TMPL_IF> password sent to to the email address on record whenever requested.
                <br/><br/>
                Your Company is already registered for this feature 
                <TMPL_IF MANDATORY_REGISTER>, however, you are required to register yourself individually to log in to Accurint. 
                Please click on the "Register Now" button below to register at this time.
                <TMPL_ELSE>. However, you are required to register yourself individually if you plan 
                to use this feature. Please click on the "Register Now" button below to register, 
                or you may register on the My Account page (Preferences section) at any time.</TMPL_IF>
                <br/><br/>
                Utilizing this feature does not vary the terms and conditions of your contract with us. Specifically, all
                 security requirements remain in full force and effect and any misuse of your account, in connection with or
                 related to the Forgot Password feature or otherwise, is strictly the responsibility of you and your company.
              </p>
  <TMPL_ELSE>
              <p class="text12">
               <TMPL_IF MANDATORY_REGISTER>The Forgot Password feature is now a mandatory requirement<TMPL_ELSE>
               <TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> now has a new Forgot Password feature that your
                company is eligible to use</TMPL_IF>.  This feature allows you and your company's
                users to have a temporary <TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> password sent to the email address on record whenever requested.
                <br/><br/>
                In order to use this feature, you or another System Administrator must
                register your company.  You can register your company via the button
                below<TMPL_UNLESS MANDATORY_REGISTER>, or on the My Account page (Preferences section) at any time</TMPL_UNLESS>. Following
                company registration, each user will be prompted to register with a valid email
                address and a security question and answer.
                <br/><br/>
                Utilizing this feature does not vary the terms and conditions of your contract with us.  Specifically, all
                security requirements remain in full force and effect and any misuse of your account, in connection with or
                related to the Forgot Password feature or otherwise, is strictly the responsibility of you and your company.
                <br/><br/>
                Note:  Company Administrators will need to provide their company ID during the registration process.<TMPL_UNLESS MANDATORY_REGISTER> Please
                refer to the Summary tab under My Account for this information if needed.</TMPL_UNLESS>
              </p>
  </TMPL_IF>
<TMPL_ELSE>

              <p class="text12">
                <TMPL_IF MANDATORY_REGISTER>The Forgot Password feature is now a mandatory requirement<TMPL_ELSE>
                The Forgot Password feature is available for your use</TMPL_IF>. This feature allows you to have a temporary
                <TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> password sent to your email address on record whenever requested.
                <br/><br/>
                <TMPL_IF MANDATORY_REGISTER>Y<TMPL_ELSE>If you would like to use this feature, y</TMPL_IF>ou must first register with a valid email address and a personal security question and answer. This information should be kept confidential and you should take appropriate steps to safeguard its security. Please click the 'Register Now' button below to register<TMPL_UNLESS MANDATORY_REGISTER>, or you may register on the My Account page (Preferences section) at any time</TMPL_UNLESS>.
                <br/><br/>
                Your use of this feature does not vary the terms and conditions of your contract with us.  Specifically, all security requirements remain in full force and effect and any misuse in connection with or related to the Forgot Password feature is strictly the responsibility of you and your company.   
                <br/><br/>
                Please contact your System Administrator with any questions you may have.
              </p>
</TMPL_IF>
               <br><br>

		<input class="btn btn-danger" type="button" value="Register Now" onclick="register_now()">&nbsp; 
		&nbsp;
<TMPL_UNLESS MANDATORY_REGISTER>
                <input class="btn btn-danger" type="button" value="Register Later" onclick="register_later()">&nbsp; 
   <TMPL_IF CAN_DECLINE>
                <input class="btn btn-danger" type="button" value="No Thanks" onclick="register_end()"/>&nbsp; 
   </TMPL_IF>
</TMPL_UNLESS>

      </td>
    </tr>
  </table>

<br/><br/><br/>
<br/><br/><br/>
</form>
</div>

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">
</body>
</html>

<!-- end announcement.tpl -->
