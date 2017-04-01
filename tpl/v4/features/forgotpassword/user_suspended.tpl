<!-- user_suspended.tpl -->

<TMPL_INCLUDE NAME="features/forgotpassword/header.tpl">
 	    
	    
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

				<p>
				<br>
				<center><b>Code : FPW14</b></center>
				<br><br>
                Please contact Customer Support at <TMPL_IF IRB>800.447.2112<TMPL_ELSE>866.277.8407</TMPL_IF> for further assistance.</p>
				<br>
			      

			    </td></tr>
			    <tr>
			      <td colspan="2" align="center" class="myaccounttitle" height="100" valign="middle">
				<table border=0 cellspacing=5 cellpadding=5>
				<tr>
				<td valign=middle>
				<input tabindex=4 type=button name="CONTINUE" value="Continue" onclick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>')">
				</td>
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

<!-- end user_suspended.tpl -->
