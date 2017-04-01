<!-- begin: myaccount_register_section.tpl -->

		<script>

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

		    if (f.SECURITY_A && !f.SECURITY_A.value) {
				alert("Please provide an answer to your security question.");
                return false;
		    }
            if (f.LOGINID && !/^[A-Za-z0-9]+[ ]?[\w.@-]+$/.test(f.LOGINID.value)) {
				alert ("Please enter a valid Login ID");
                f.LOGINID.focus();
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
		<input type="hidden" name="ORIGIN" value='1'>

		<tr>
                  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="top">
		    <table border="0" cellpadding="1" cellspacing="0" style="margin: 0 auto">

		      <tr>
			<td align="center">
			  <table border="0" cellpadding="10" cellspacing="0">
			    <tr>
				<td align="center" height="20" valign="middle"><br>
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
				</td>
			    </tr>


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
				    You have exceeded the maximum allowed number of attempts.
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
				    <input type=button value="Continue" onclick="go_back()">
				</td>
				<TMPL_ELSE>
				    <TMPL_IF NAME=DONE_POST_VERIFY>
				    <td valign=middle>
				    <input type=button value="Continue" onclick="go_back()">
				    </td>
				    <TMPL_ELSE>
					<TMPL_IF NAME=MAX_ERR>
					<td valign=middle>
					<input type=button value="Continue" onclick="go_back()">
					</td>
					<TMPL_ELSE>
					    <TMPL_IF NAME=EMAIL_VERIFY>
						<TMPL_IF NAME=EXPIRED>
						    <td valign=middle>
						    <input class="btn btn-danger" type=button value="Continue" onclick="go_back()">
						    </td>
						<TMPL_ELSE>
						    <td valign=middle>
						    <input class="btn btn-danger" type=button value="Continue" onclick="send_event('PRELOGIN/EMAIL_VERIFY')">
						    </td>
						    <td valign=middle>
						    <input class="btn btn-danger" type=button value="Cancel" onclick="go_back()()">
						    </td>
						    <td valign=middle>
						    <input class="btn btn-danger" type=button value="Re-send Code" onclick="send_event('PRELOGIN/RESEND_VTOKEN')">
						    </td>
						</TMPL_IF>
					    <TMPL_ELSE>
						<td valign=middle>
						<input class="btn btn-danger" type=button value="Enable" onclick="check_vals()">
						</td>
						<td valign=middle>
						<input class="btn btn-danger" type=button value="Cancel" onclick="go_back()">
						</td>
					    </TMPL_IF>
				    </TMPL_IF>
				</TMPL_IF>
				</TMPL_IF>
				</tr>
				</table>
			      </td>
			    </tr>
			  </table>

			</td>
		      </tr>
		  </table>

		  </td>
                </tr>

		<!-- end: myaccount_register_section.tpl -->

