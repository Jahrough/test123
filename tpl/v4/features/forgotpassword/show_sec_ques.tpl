<!-- show_sec_ques.tpl -->

<TMPL_INCLUDE NAME="v4/features/forgotpassword/header.tpl">
 	    
	    <input type="hidden" name="I" value=''>
	    <input type=hidden name=FP_INFO value='<TMPL_VAR NAME=FP_INFO>'>

			  <table>
			
				<TMPL_IF NAME=RETRIEVE_SUCCESS>
				    <TMPL_INCLUDE NAME="v4/features/forgotpassword/remember_success.tpl">
				<TMPL_ELSE>
				    <TMPL_IF NAME=MAX_ERR>
                  <td width="15">&nbsp;</td>
                  <td width="500">
                  <div class="row"></div>
                  <div class="row"></div>
                  <div class="row"></div>
                  <div class="row pull-left">
		      			This feature has been disabled for your account. Please contact our Customer Support.
                  </div>
                  <div class="row"></div>
                  <div class="row"></div>
                  <div class="row"></div>
                  <div class="row"></div>
                  <div class="row"></div>
                  <center>
                  <div class="row">
                     <button class="btn btn-danger" type="button" name="CONTINUE" onCLick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>');">Continue</button>
                  </div>
                  </center>
                  </td>
				    <TMPL_ELSE>
					<TMPL_INCLUDE NAME="v4/features/forgotpassword/sec_ques.tpl">
				    </TMPL_IF>
				</TMPL_IF>
				
            <div class="row"></div>
            <div class="row"></div>
            <TMPL_IF RETRIEVE_SUCCESS>
            <div class="row">
            <button class="btn btn-danger" type="button" name="CONTINUE" onCLick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>'));">Continue</button>
            </div>
				<TMPL_ELSE>
				<TMPL_UNLESS NAME=MAX_ERR>
            <center>
            <div class="row">
                 <button class="btn btn-danger" type="button" name="CONTINUE" onclick="form_submit();">Submit</button>&nbsp;&nbsp;&nbsp;&nbsp;
                 <button class="btn btn-default" type="button" name="CLOSE" onCLick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>');">Cancel</button>
            </div>
            </center>
				</TMPL_UNLESS>
				</TMPL_IF>
            <td width="500">
		      </tr> 
		  </table>
    
<TMPL_INCLUDE NAME="v4/features/forgotpassword/footer.tpl">

<!-- end show_sec_ques.tpl -->
