<!-- remember.tpl -->

<TMPL_INCLUDE NAME="v4/features/forgotpassword/header.tpl">
 	    
	    <script>
	    function check_vals() {
		var f = document.forms[0];
		if(f.EMAIL_ADDR  && f.EMAIL_ADDR.value != f.EMAIL_ADDR2.value) {
		    alert ("Email addresses do not match. Please try again.");
		}
		else if (f.SECURITY_A && !f.SECURITY_A.value) {
		    alert("Please provide an answer to your security question.");
		}
		else if (!/^\d{5}$/.test(f._T.value)) {
		    alert('Please Enter All 5 Verification Characters to Login.');
		}
		else {
		    send_event('PRELOGIN/RETRIEVE')
		}
	    }
	    </script>
	    
	    <input type="hidden" name="I" value=''>
	    <input type=hidden name=FP_INFO value='<TMPL_VAR NAME=FP_INFO>'>

                <div id="wrapper">
                <table id="use_table">
                  <tr>
                    <td>
                      <br><br>
            <span class="font-em-1_5 textRed clear">Forgot Password</span>
                      <br><br>
                        <p class="text12">

			<TMPL_IF NAME=ERROR_MESSAGE>
			<h3><TMPL_VAR NAME=ERROR_MESSAGE></h3>
			<br><br>
			</TMPL_IF>

			<TMPL_IF NAME=RETRIEVE_SUCCESS>
			<TMPL_INCLUDE NAME="features/forgotpassword/remember_success.tpl">
			<TMPL_ELSE>

			<TMPL_IF NAME=MAX_ERR>
			This feature has been disabled for your account. Please contact your system administrator.
			<TMPL_ELSE>
			<TMPL_INCLUDE NAME="features/forgotpassword/remember_form.tpl">
			</TMPL_IF>

			</TMPL_IF>

			<br><br>

			<TMPL_IF RETRIEVE_SUCCESS>
         <button class="btn btn-danger pull-left" type="button" name="CONTINUE" onCLick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>'));">Continue</button>
			<TMPL_ELSE>

			<TMPL_UNLESS NAME=MAX_ERR>
         <button class="btn btn-danger form-control" type="button" name="CONTINUE" onCLick="prepare();check_vals();">Continue</button>
			<TMPL_ELSE>
         <button class="btn btn-danger pull-left" type="button" name="CONTINUE" onCLick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>'));">Continue</button>
			</TMPL_UNLESS>

			</TMPL_IF>

			</p>
		    </td>
		  </tr>
		</table>
                  </div>

<br><br><br>
<br><br><br>

</form>
<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">
</body>
</html>

<!-- end remember.tpl -->
