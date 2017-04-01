<!-- info.tpl -->
<TMPL_INCLUDE NAME="features/forgotpassword/header.tpl">
            
	    <script>
	    function register_later() {
		document.forms['FORGOT_PASSWORD'].I.value='LATER';
		send_event('PRELOGIN/SHOW_INFO')
	    }
	    </script>
	      
	      <input type="hidden" name="I" value="">
	      
	      <table border="0" cellpadding="0" cellspacing="0">
                <tr height="12">
                  <td height="12" width="100%" class="unifont1">&nbsp;</td>
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
				<br/>
			      </td>
			    </tr>	    
			    
			    <tr><td class="unifont1">
			      
			      <TMPL_IF NAME=ERROR>
			      <div class="errorbox" align=center>
			      <span class="errmsg"><TMPL_VAR NAME=ERROR></span>
			      </div>
			      </TMPL_IF>
			      
			      <TMPL_IF NAME=NOW>
				<TMPL_IF NAME=INITIAL_REGISTRATION>  
				<TMPL_INCLUDE NAME="features/forgotpassword/continue_now_saved.tpl">
				<TMPL_ELSE>
				<TMPL_INCLUDE NAME="features/forgotpassword/continue_now.tpl">
				</TMPL_IF>
			      <TMPL_ELSE>
				<TMPL_IF NAME=LATER>
				    <TMPL_INCLUDE NAME="features/forgotpassword/continue_later.tpl">
				<TMPL_ELSE>
				    <TMPL_INCLUDE NAME="features/forgotpassword/continue_nothanks.tpl">
				</TMPL_IF>
			      </TMPL_IF>
			    </td></tr>
			    <tr>
			      <td colspan="2" align="center" class="myaccounttitle" height="100" valign="middle">
				<table border=0 cellspacing=5 cellpadding=5>
				<tr>
				<TMPL_UNLESS NAME=NOW>
				<td valign=middle>
				<input type="button" value="Continue" onclick="all_done_continue()">	 
				</td>
				<TMPL_ELSE>
				<td valign=middle>
				<input type="button" value="Continue" onclick="verify_terms()">	
				</td>
				<td valign=middle>
				<input type="button" value="Cancel" onclick="register_later()">	
				</td>
				</TMPL_UNLESS>
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

<!-- end info.tpl -->
