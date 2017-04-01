<!-- myaccount_info.tpl -->

	      <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr height="12">
                  <td height="12" width="100%" class="unifont1">&nbsp;</td>
                </tr>
              </table>
              
	      <table border="0" cellpadding="0" cellspacing="0" width="100%" class="myaccountbody">
                <tr height="12">
                  <td height="12" width="100%" class="unifont1">&nbsp;</td>
                </tr>
              </table>
              
	      <table align=center border="0" cellpadding="1" cellspacing="0" width=600>
                <tr>
		<td align=center>
		<table border=0 cellspacing=0 cellpadding=0 width="100%">
		
		<tr>
		  <td align="center" class="myaccounttitle" height="20" valign="middle"><br>
		    Forgot Password
		  </td>
                </tr>		
	
		<tr><td align=center>
		<table border=0 cellspacing=0 cellpadding=0>
            
		    <script>
		    function register_later() {
			document.forms['FORGOT_PASSWORD'].I.value='LATER';
			send_event('PRELOGIN/SHOW_INFO')
		    }
		    function verify_terms() {
			send_event('PRELOGIN/SHOW_REGISTER');
		    }
		    </script>
		      
		    <input type="hidden" name="I" value="">
	
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
   
	   <!--xxx --> 
		</table>
	      </td>
	      </tr>
	      </table>
	    </td>
	    </tr>
	    </table>

<!-- end myaccount_info.tpl -->
