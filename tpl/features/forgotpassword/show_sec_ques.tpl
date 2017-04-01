<!-- show_sec_ques.tpl -->

<TMPL_INCLUDE NAME="features/forgotpassword/header.tpl">
 	    
	    <script>
	    function check_vals() {
		var f = document.forms[0];
 		if (f.ANSWER && !f.ANSWER.value) {
		    alert("Please provide an answer to your security question.");
		} else {
		    send_event('PRELOGIN/PROC_SECQUES')
		}
	    }
	    </script>
	    <noscript>Your browser does not support JavaScript!</noscript>
	    <input type="hidden" name="I" value=''>
	    <input type=hidden name=FP_INFO value='<TMPL_VAR NAME=FP_INFO>'>
	   
	      <table border="0" cellpadding="0" cellspacing="0" width="756">
                <tr height="12">
                  <td height="12" width="756" class="unifont1">&nbsp;</td>
                </tr>
              </table>
              
	      <!--
	      <table border="0" cellpadding="0" cellspacing="0" width="756" class="myaccountbody">
                <tr><td align=center><br><br></td></tr>
		<tr>
                  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
	      -->
		    <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
		      <tr>
			<td align="center">
			  <table border="0" cellpadding="10" cellspacing="0" width="500" class="myaccountalert">
			    <tr>
			      <td align="center" class="myaccounttitle" height="20" valign="middle"><br>
				 Forgot Password
				<br/><br/>
			      </td>
			    </tr>
				
			    <tr><td class="unifont1">
			      
			      <TMPL_IF NAME=ERROR_MESSAGE>
			      <div align="center"><span class="errmsg"><TMPL_VAR NAME=ERROR_MESSAGE></span></div>
			      <br>
			      </TMPL_IF>
			
				<TMPL_IF NAME=RETRIEVE_SUCCESS>
				    <TMPL_INCLUDE NAME="features/forgotpassword/remember_success.tpl">
				<TMPL_ELSE>
				    <TMPL_IF NAME=MAX_ERR>
					This feature has been disabled for your account. Please contact our Customer Support.
				    <TMPL_ELSE>
					<TMPL_INCLUDE NAME="features/forgotpassword/sec_ques.tpl">
				    </TMPL_IF>
				</TMPL_IF>

			    </td></tr>
			    <tr>
			      <td colspan="2" align="center" class="myaccounttitle" height="100" valign="middle">
				<table border=0 cellspacing=5 cellpadding=5>
				<tr>
				<TMPL_IF RETRIEVE_SUCCESS>
				<td valign=middle>
				<input tabindex=4 type=button name="CONTINUE" value="Continue" onclick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>')">
				</td>
				<TMPL_ELSE>
				<TMPL_UNLESS NAME=MAX_ERR>
				<td valign=middle>
				<input tabindex=4 type=button name="CONTINUE" value="Continue" onclick="check_vals();">
				</td>
				<TMPL_ELSE>
				<td valign=middle>
				<input tabindex=4 type=button name="CONTINUE" value="Continue" onclick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>')">
				</td>
				</TMPL_UNLESS>
				</TMPL_IF>
				</tr>
				</table>
			      </td>
			    </tr>

			  </table>
			</td>
		      </tr> 
		  </table>
		  <br><br><br>
		  <!--
		  </td>
                </tr>
    
              </table>
	      -->
    
<TMPL_INCLUDE NAME="features/forgotpassword/footer.tpl">

<!-- end show_sec_ques.tpl -->
