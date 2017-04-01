<!-- begin: verify_password.tpl -->

<TMPL_INCLUDE NAME="features/forgotpassword/header.tpl">
	    <script>     
 	    function register_later() {
		document.forms[0].I.value='LATER';
		<TMPL_IF NAME=VERIFY_FEATURE>
		send_event('LOGIN/SHOW_LOGIN')
		<TMPL_ELSE>
		send_event('PRELOGIN/SHOW_INFO')
		</TMPL_IF>
	    }
	    </script>
            <input type=hidden name="I" value="<TMPL_VAR NAME=REGISTER_WHEN>">

    <div id="wrapper">
    <table id="use_table">
      <tr>
        <td>
        <br><br>
	<h2>Forgot Password <TMPL_IF SA><TMPL_IF SA_ALREADY_REGISTERED>User<TMPL_ELSE>Company</TMPL_IF><TMPL_ELSE>User</TMPL_IF> Registration: Login</h2>
        <br><br>
	<p class="text12">


				  <TMPL_IF ENABLE_LOGIN_TOKEN>
				    To ensure the security of your account you are required to
				    enter the following before you can register for this feature:<br><br>
				    <b>Your Password:</b>
				    <br><br>
				  <TMPL_ELSE>
				    To ensure the security of your account you are required to
				    enter your password before you can register for this feature:<br><br>
				  </TMPL_IF>
	</p>

	<h3>
				  <TMPL_IF NAME="ERROR_MESSAGE">
				    <br><br>
				    <TMPL_VAR NAME="ERROR_MESSAGE">
				  </TMPL_IF>
	</h3>

	<p class="text12">

	<TMPL_UNLESS MAX_ERR>

        <input type=hidden name="VERIFY_FEATURE" value="<TMPL_VAR NAME=VERIFY_FEATURE>">
	<b>Login ID:</b>&nbsp; <TMPL_VAR NAME='LOGINID'>
	<br><br>

	<b>Password:</b>&nbsp; <INPUT TYPE="password" NAME="PASSWORD" SIZE="24" VALUE="" autocomplete="off" tabindex="1">
	<br><br>

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

	<input class="btn btn-danger" type=button value="Continue" onclick="send_event('<TMPL_VAR NAME=EVENT>')">&nbsp; 
	<TMPL_UNLESS MANDATORY_REGISTER>
	<input class="btn btn-danger" type=button value="Cancel" onclick="register_later()">&nbsp; 
	</TMPL_UNLESS>

	<TMPL_ELSE>
	<b>Please try again later.</b>
	<br><br>

	<input class="btn btn-danger" type=button value="Continue" onclick="register_later()">
	<br><br>

	</TMPL_UNLESS>
	
	</p>

      </td>
    </tr>
  </table>

</div>

</form>

<br><br><br>
<br><br><br>

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">
</body>
</html>

<!-- end: verify_password.tpl -->
