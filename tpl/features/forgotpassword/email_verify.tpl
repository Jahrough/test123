<!-- email_verify.tpl -->
<TMPL_INCLUDE NAME="features/forgotpassword/header.tpl">
            
	    <script>
	    function register_later() {
		document.forms[0].I.value='LATER';
		send_event('PRELOGIN/SHOW_INFO')
	    }
	    function check_vals() {
		var f = document.forms[0];
		if(f.EMAIL_ADDR  && f.EMAIL_ADDR.value != f.EMAIL_ADDR2.value) {
		    alert ("Email addresses do not match. Please try again.");
		}
		else if (f.SECURITY_A && !f.SECURITY_A.value) {
		    alert("Please provide an answer to your security question.");
		}
		else {
		    send_event('PRELOGIN/SAVE_REGISTER')
		}
	    }
	    </script>
	    
	    <input type="hidden" name="I" value=''>
             
	      <table border="0" cellpadding="0" cellspacing="0" width="756">
                <tr height="12">
                  <td height="12" width="756" class="unifont1">&nbsp;</td>
                </tr>
              </table>
              
	      <table border="0" cellpadding="0" cellspacing="0" width="756" class="myaccountbody">
                <tr>
		  <td align="center" class="myaccounttitle" height="20" valign="middle"><br>
		    Forgot Password: Register
		    <br/><br/>
		  </td>
                </tr>
                <tr>
                  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
		    <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
		      <tr>
			<td align="center">
			  <table border="0" cellpadding="10" cellspacing="0" width="500" class="myaccountalert">
			    <tr><td class="unifont1">
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
				    Please try again later.
				    <TMPL_ELSE>
				    <TMPL_INCLUDE NAME="features/forgotpassword/register_form.tpl">
				    </TMPL_IF>
				</TMPL_IF>
			      </TMPL_IF>

			    </td></tr>
			  </table>
			</td>
		      </tr>
		  </table>
		  </td>
                </tr>
    
                <tr>
                  <td colspan="2" align="center" class="myaccounttitle" height="100" valign="middle">
                    <table border=0 cellspacing=5 cellpadding=5>
		    <tr>
		    
		    <TMPL_IF NAME=DONE_PRE_VERIFY>
		    <td valign=middle>
		    <input type=button value="Continue" onclick="all_done_continue()">
		    </td>
		    <TMPL_ELSE>
			<TMPL_IF NAME=DONE_POST_VERIFY>
			<td valign=middle>
			<input type=button value="Continue" onclick="all_done_continue()">
			</td>
			<TMPL_ELSE>
			<TMPL_IF NAME=MAX_ERR>
			<td valign=middle>
			<input type=button value="Continue" onclick="all_done_continue()">
			</td>
			<TMPL_ELSE>
			<td valign=middle>
			<input type=button value="Continue" onclick="check_vals()">
			</td>
			<td valign=middle>
			<input type=button value="Cancel" onclick="register_later()">
			</td>
			</TMPL_IF>
			</TMPL_IF>
		    </TMPL_IF>
		    </tr>
		    </table>
		  </td>
                </tr>
              </table>
    
<TMPL_INCLUDE NAME="features/forgotpassword/footer.tpl">

<!-- end email_verify.tpl -->
