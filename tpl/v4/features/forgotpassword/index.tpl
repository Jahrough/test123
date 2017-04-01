<!-- index.tpl -->

<TMPL_INCLUDE NAME="v4/features/forgotpassword/header.tpl">

	    <input type="hidden" name="I" value=''>
	    <input type=hidden name=FP_INFO value='<TMPL_VAR NAME=FP_INFO>'>
	   
              
      <table>
				<TMPL_IF NAME=RETRIEVE_SUCCESS>
				    <TMPL_INCLUDE NAME="v4/features/forgotpassword/remember_success.tpl">
				<TMPL_ELSE>
				    <TMPL_IF NAME=MAX_ERR>
            <div class="row">
					This feature has been disabled for your account. Please contact your system administrator.
				</div>
				    <TMPL_ELSE>
					<TMPL_INCLUDE NAME="v4/features/forgotpassword/uid_capt.tpl">
				    </TMPL_IF>
				</TMPL_IF>

            <div class="row"></div>
            <div class="row"></div>
				<TMPL_IF RETRIEVE_SUCCESS>
            <div class="row">
            <button class="btn btn-danger pull-left" type="button" name="CONTINUE" onCLick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>'));">Continue</button>
				</div>
				<TMPL_ELSE>
				<TMPL_UNLESS NAME=MAX_ERR>
            <div class="row">
               <center>
               <div class="input col col-8">
                 <button class="btn btn-danger" type="button" name="CONTINUE" onclick="form_submit();" >Submit</button>&nbsp;&nbsp;
                 <button class="btn btn-default" type="button" name="CLOSE" onCLick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>');">Cancel</button>
				   </div>
               </center>
				</div>
				<TMPL_ELSE>
            <div class="row">
            <button class="btn btn-danger" type="button" name="CONTINUE" onCLick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>');">Continue</button>
				</div>
				</TMPL_UNLESS>
				</TMPL_IF>
            <td width="400">&nbsp; &nbsp;</td>
            </tr>
				</table>

<TMPL_INCLUDE NAME="v4/features/forgotpassword/footer.tpl">

<!-- end index.tpl -->
