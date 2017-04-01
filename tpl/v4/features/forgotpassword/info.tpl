<!-- begin: info.tpl -->

<TMPL_INCLUDE NAME="features/forgotpassword/header.tpl">
            
	    <script>
	    function register_later() {
		document.forms['FORGOT_PASSWORD'].I.value='LATER';
		send_event('PRELOGIN/SHOW_INFO')
	    }
	    </script>
	      
	      <input type="hidden" name="I" value="">

		<div id="wrapper">
                <table id="use_table">
		  <tr>
		    <td>
		      <br><br>
		      <h2>Forgot Password</h2>
		      <br><br>
			<p class="text12">      
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
			 </p>
			 <br><br>
			 <TMPL_UNLESS NAME=NOW>
				<input class="btn btn-danger" type="button" value="Continue" onclick="all_done_continue()">	 
			 <TMPL_ELSE>
				<input class="btn btn-danger" type="button" value="Continue" onclick="verify_terms()">	
				&nbsp;
				<input class="btn btn-danger" type="button" value="Cancel" onclick="register_later()">	
			 </TMPL_UNLESS>
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

<!-- end info.tpl -->
