<!-- begin: myaccount_enable_section.tpl -->
			
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
		    if(cnt2 != cnt){
		        alert("You have selected the same security question twice. Please select a different security question");	
			return false;
		    }

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
		<input type="hidden" name="ORIGIN" value='1'>
		
		<tr>
                  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="top">
		    <table border="0" cellpadding="1" cellspacing="0" style="margin: 0 auto">
		      	      
		      <tr>
			<td align="center">
			  <table border="0" cellpadding="10" cellspacing="0">
			    <tr>
				<td align="center" height="20" valign="middle"><br>
				<TMPL_UNLESS NAME=DONE_POST_VERIFY>
				<TMPL_UNLESS EXPIRED>
				<span class="unifont1">Please enter information below to enable this feature:</span><br><br>
				</TMPL_UNLESS>
				</TMPL_UNLESS>
				</td>
			    </tr>
	 
		    
			    <tr><td class="unifont1" align=center>
			      <TMPL_IF NAME=ERROR_MESSAGE>
			      <div align="center"><span class="errmsg"><TMPL_VAR NAME=ERROR_MESSAGE></span></div>
			      <br>
			      </TMPL_IF>
				<TMPL_IF NAME=DONE_POST_VERIFY>
				    <TMPL_INCLUDE NAME="features/forgotpassword/register_done_postverify.tpl">
				<TMPL_ELSE>
				    <TMPL_IF NAME=MAX_ERR>
				    <!--You have exceeded the maximum allowed number of attempts. -->
				    <TMPL_ELSE>
					<TMPL_INCLUDE NAME="features/forgotpassword/register_form.tpl">
				    </TMPL_IF>
				</TMPL_IF>
			    </td></tr>
			    <tr>
			      <td colspan="2" align="center" class="myaccounttitle" height="100" valign="middle">
				<table border=0 cellspacing=5 cellpadding=5>
				<tr>
				    <TMPL_IF NAME=DONE_POST_VERIFY>
				    <td valign=middle>
				    <input class="btn btn-danger" type=button value="Continue" onclick="go_back()">
				    </td>
				    <TMPL_ELSE>
					<TMPL_IF NAME=MAX_ERR>
					<td valign=middle>
					<input class="btn btn-danger" type=button value="Continue" onclick="go_back()">
					</td>
					<TMPL_ELSE>
					    <td valign=middle>
					    <input class="btn btn-danger" type=button value="Enable" onclick="check_vals()">
					    </td>
					    <td valign=middle>
					    <input class="btn btn-danger" type=button value="Cancel" onclick="go_back()">
					    </td>
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
    
		<!-- end: myaccount_enable_section.tpl -->

