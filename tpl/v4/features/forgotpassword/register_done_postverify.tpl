<!-- begin: register_done_postverify.tpl -->

			    <TMPL_IF FP_VERIFIED>
			      <TMPL_IF SA>
				    
				  <TMPL_IF SA_ALREADY_REGISTERED>
				  <br/>
				  You have now completed registration for the Forgot Password feature.				  <br/><br/>
				  <TMPL_ELSE>
				  You have now completed registration for the Forgot Password feature for your company.				  <br/><br/>

				  </TMPL_IF>
			      
			      <TMPL_ELSE>
				 <TMPL_IF MYACCOUNT_ORIGIN>
				You have successfully enabled the Forgot Password feature.
				 <TMPL_ELSE>
				 You have now completed registration for the Forgot Password feature.	
				 </TMPL_IF>
			      </TMPL_IF>
			    <TMPL_ELSE>
			    No features were found to verify.
			    </TMPL_IF>

			<br><br>

<!-- end: register_done_postverify.tpl -->
