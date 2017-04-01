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
		function check_vals() {
		    var f = document.forms[0];
		    var cnt=0; var cnt2=0;
		    var qob = new Object();

		    if(f.SECURITY_Q1){ qob[f.SECURITY_Q1.value] =1; cnt++; }
		    if(f.SECURITY_Q2){ qob[f.SECURITY_Q2.value] =1; cnt++; }
		    if(f.SECURITY_Q3){ qob[f.SECURITY_Q3.value] =1; cnt++; }
		    if(f.SECURITY_Q4){ qob[f.SECURITY_Q4.value] =1; cnt++; }
		    for(var i in qob){cnt2++;}


		    if(f.EMAIL_ADDR_PREFIX || f.EMAIL_ADDR_PREFIX2){

				var email_prefix = trim(f.EMAIL_ADDR_PREFIX.value);
				var conf_email_prefix = trim(f.EMAIL_ADDR_PREFIX2.value);
				var email_domain = trim(f.EMAIL_DOMAIN[f.EMAIL_DOMAIN.selectedIndex].text);
				var conf_email_domain = trim(f.EMAIL_DOMAIN2.options[f.EMAIL_DOMAIN2.selectedIndex].text);
				var pattern = /^[a-zA-Z0-9]['\w\.-]*[a-zA-Z0-9]/;

				if(email_prefix != conf_email_prefix){
					alert('\'Email Prefix:\' and \'Confirm Email Prefix:\' Do Not Match.\n\n');
					return false;
				}
				if(email_domain != conf_email_domain){
					alert('\'Email Domain:\' and \'Confirm Email Domain:\' Do Not Match.\n\n');
					return false;
				}else if (email_domain == 'Select One' || conf_email_domain == 'Select One'){
					alert('Please select a domain and cofirm it.\n\n');
					return false;
				}
				if (email_prefix == '' || email_prefix == null ||  !email_prefix.match(pattern)){
					alert('You entered your email prefix in the wrong format. Note that the email prefix is the portion of your email address preceding the "@" sign and typically contains only letters, numbers, and certain special characters. \n\nPlease try again.\n\n');
					return false;
				}

				f.EMAIL_ADDR.value = trim(email_prefix + '@' + email_domain);
		    }

		    if(cnt2 != cnt){
		        alert("You have selected the same security question twice. Please select a different security question");
			return false;
		    }

		    if(f.EMAIL_ADDR && f.EMAIL_ADDR2) {
				if(f.EMAIL_ADDR.value.toLowerCase() != f.EMAIL_ADDR2.value.toLowerCase()){
					alert ("Email addresses do not match. Please try again.");
					return false;
				}
            }
            if (f.LOGINID && !/^[A-Za-z0-9]+[ ]?[\w.@-]+$/.test(f.LOGINID.value)) {
                alert ("Please enter a valid Login ID");
                f.LOGINID.focus();
                return false;
            }

		    if (f.SECURITY_A && !f.SECURITY_A.value) {
				alert("Please provide an answer to your security question.");
				return false;
            }
            if (f.SECURITY_A1 && ((!/^[a-zA-Z0-9 ]+$/.test(f.SECURITY_A1.value)) || (f.SECURITY_A1.value.length < 3))) {
                alert ("Please enter a valid answer, at least 3 characters, alphanumeric only.");
                f.SECURITY_A1.focus();
                return false;
            }
            if (f.SECURITY_A2 && ((!/^[a-zA-Z0-9 ]+$/.test(f.SECURITY_A2.value)) || (f.SECURITY_A2.value.length < 3))) {
                alert ("Please enter a valid answer, at least 3 characters, alphanumeric only.");
                f.SECURITY_A2.focus();
                return false;
            }
            if (f.SECURITY_A3 && ((!/^[a-zA-Z0-9 ]+$/.test(f.SECURITY_A3.value)) || (f.SECURITY_A3.value.length < 3))) {
                alert ("Please enter a valid answer, at least 3 characters, alphanumeric only.");
                f.SECURITY_A3.focus();
                return false;
            }
            if (f.SECURITY_A4 && ((!/^[a-zA-Z0-9 ]+$/.test(f.SECURITY_A4.value)) || (f.SECURITY_A4.value.length < 3))) {
                alert ("Please enter a valid answer, at least 3 characters, alphanumeric only.");
                f.SECURITY_A4.focus();
                return false;
            }


			send_event('PRELOGIN/SAVE_REGISTER')

		}

		function trim(s)
		{
			return s.replace(/^\s*|\s*$/g, '')
		}
		</script>

		<input type="hidden" name="I" value=''>
		<input type="hidden" name="ORIGIN" value='0'>
                <div id="wrapper">
                <table id="use_table">
		<tr>
			<td>

				<br><br>
				<h2>Forgot Password <TMPL_IF SA><TMPL_IF SA_ALREADY_REGISTERED>User<TMPL_ELSE>Company</TMPL_IF><TMPL_ELSE>User</TMPL_IF> <TMPL_IF NAME="EMAIL_VERIFY">Verification<TMPL_ELSE>Registration</TMPL_IF></h2>

				<p class="text12">
				<br/><br/>
				<TMPL_UNLESS NAME=DONE_PRE_VERIFY>
				<TMPL_UNLESS NAME=DONE_POST_VERIFY>
				<TMPL_UNLESS EXPIRED>

				<TMPL_UNLESS NAME=EMAIL_VERIFY>
				
				Please enter information below to enable this feature. Please note that all of the information below will be required when using the Forgot Password feature to retrieve a one time password.<br><br>
				
				<TMPL_ELSE>
				To enable this feature please enter the code which was sent to you via email:<br><br>
				</TMPL_UNLESS>
				</TMPL_UNLESS>
				</TMPL_UNLESS>
				</TMPL_UNLESS>
				</p>

				<TMPL_IF NAME=ERROR_MESSAGE>
				<p class="text12">
				<h3><TMPL_VAR NAME=ERROR_MESSAGE></h3>
				</p>
				<br><br>
				</p>
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

				
				<p class="text12">
				<br><br>

				<TMPL_IF NAME=DONE_PRE_VERIFY>
				<input class="btn btn-danger" type=button value="Continue" onclick="all_done_continue()">
				<TMPL_ELSE>

				<TMPL_IF NAME=DONE_POST_VERIFY>
				<input class="btn btn-danger" type=button value="Continue" onclick="all_done_continue()">
				<TMPL_ELSE>

				<TMPL_IF NAME=MAX_ERR>
				<input class="btn btn-danger" type=button value="Continue" onclick="all_done_continue()">
				<TMPL_ELSE>

				<TMPL_IF NAME=EMAIL_VERIFY>
				<TMPL_IF NAME=EXPIRED>
				<input class="btn btn-danger" type=button value="Continue" onclick="send_event('PRELOGIN/SHOW_REGISTER')">
				<TMPL_ELSE>

				<input class="btn btn-danger" type=button value="Continue" onclick="send_event('PRELOGIN/EMAIL_VERIFY')">

				<TMPL_IF MANDATORY_REGISTER>
				<input class="btn btn-danger" type=button value="Cancel" onclick="send_event('LOGOUT')">
				<TMPL_ELSE>

				<input class="btn btn-danger" type=button value="Cancel" onclick="all_done_continue()">
                                </TMPL_IF>

				<input class="btn btn-danger" type=button value="Re-send Code" onclick="send_event('PRELOGIN/RESEND_VTOKEN')">
				</TMPL_IF>
				<TMPL_ELSE>

				<input class="btn btn-danger" type=button value="Continue" onclick="check_vals()">
				<input class="btn btn-danger" type=button value="Cancel" onclick="register_later()">

				</TMPL_IF>
				</TMPL_IF>
				</TMPL_IF>
				</TMPL_IF>

				</p>
				
			</td>
		      </tr>
		  </table>
		  </div>

		  <br><br><br>

		<!-- end: register_section.tpl -->

