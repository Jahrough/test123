<!-- begin: register_done_preverify.tpl -->

			      <TMPL_IF SA>
				    
				  <TMPL_IF SA_ALREADY_REGISTERED>
				  <br/>
				  Thank you for completing your information.
				  You will now receive a Verification Email to the email address you
				  provided.  You must enter the code provided in the email within 72 hours to
				  complete the Forgot Password registration process. You will be prompted for this code on your next login<TMPL_UNLESS MANDATORY_REGISTER>, or you can enter it via the My Account page (Preferences section)</TMPL_UNLESS>.
				  <br/><br/>
				  <TMPL_ELSE>
				Thank you for completing your information.
				  You will now receive a Verification Email to the email address you
				  provided.  You must enter the code provided in the email within 72 hours to
				  complete the Forgot Password registration process. You will be prompted for this code on your next login<TMPL_UNLESS MANDATORY_REGISTER>, or you can enter it via the My Account page (Preferences section)</TMPL_UNLESS>.
				  </TMPL_IF>
			      
			      <TMPL_ELSE>
			      	Thank you for completing your information.
				  You will now receive a Verification Email to the email address you
				  provided.  You must enter the code provided in the email within 72 hours to
				  complete the Forgot Password registration process. You will be prompted for this code on your next login<TMPL_UNLESS MANDATORY_REGISTER>, or you can enter it via the My Account page (Preferences section)</TMPL_UNLESS>.

			      </TMPL_IF>

<!-- end: register_done_preverify.tpl -->
